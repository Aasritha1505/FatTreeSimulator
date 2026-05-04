#include "MLAllReduceApp.h"
#include "IPAddressResolver.h"

Define_Module(MLAllReduceApp);

MLAllReduceApp::MLAllReduceApp()
{
    localPort = -1;
    destPort = -1;
    bytesThisIter = 0;
    expectedBytesThisIter = 0;
    chunkBytes = 0;
    establishedPeers = 0;
    burstPending = false;
    computeTimer = NULL;
}

// FIX: Wait for Stage 3 before doing anything with IP addresses
void MLAllReduceApp::initialize(int stage)
{
    if (stage != 3) {
        return;
    }

    localPort = par("localPort");
    destPort = par("destPort");

    flowCompletedSignal = registerSignal("flowCompleted");
    throughputSignal = registerSignal("throughput");
    computeTimer = new cMessage("mlComputeTimer");

    chunkBytes = par("packetLength");
    if (chunkBytes < 1)
        chunkBytes = 1;

    listenSocket.setOutputGate(gate("tcpOut"));
    listenSocket.setCallbackObject(this);

    parseDestAddresses();
    openListenSocket();
    openPeerConnections();

    scheduleNextBurst();
}

void MLAllReduceApp::parseDestAddresses()
{
    destAddrs.clear();
    const char *destAddrsStr = par("destAddresses").stringValue();
    if (!destAddrsStr || !*destAddrsStr)
        return;

    cStringTokenizer tokenizer(destAddrsStr);
    while (const char *token = tokenizer.nextToken()) {
        IPvXAddress addr = IPAddressResolver().resolve(token);
        destAddrs.push_back(addr);
    }
}

void MLAllReduceApp::openListenSocket()
{
    if (localPort < 0)
        return;

    listenSocket.bind(localPort);
    listenSocket.listen();
}

void MLAllReduceApp::openPeerConnections()
{
    peerSockets.clear();
    peerConnIds.clear();

    for (std::vector<IPvXAddress>::const_iterator it = destAddrs.begin(); it != destAddrs.end(); ++it) {
        const IPvXAddress& addr = *it;
        TCPSocket *sock = new TCPSocket();
        sock->setOutputGate(gate("tcpOut"));
        sock->setCallbackObject(this);
        sock->connect(addr, destPort);

        socketMap.addSocket(sock);
        peerSockets.push_back(sock);
        peerConnIds.insert(sock->getConnectionId());
        sockByConnId[sock->getConnectionId()] = sock;
    }
}

void MLAllReduceApp::scheduleNextBurst()
{
    // cancelEvent throws in OMNeT++ 4.2.2 if the message is not currently
    // scheduled (e.g. first call from initialize, or after timer has fired).
    if (computeTimer->isScheduled())
        cancelEvent(computeTimer);

    simtime_t computePhase = par("computePhase");
    simtime_t startTime = par("startTime");

    if (simTime() < startTime)
        scheduleAt(startTime, computeTimer);
    else
        scheduleAt(simTime() + computePhase, computeTimer);
}

void MLAllReduceApp::startIteration()
{
    flowStartTime = simTime();
    bytesThisIter = 0;
    expectedBytesThisIter = (long)computeExpectedPeers() * chunkBytes;
    sendGradientBurst();
}

unsigned int MLAllReduceApp::computeExpectedPeers() const
{
    int p = par("numPeers");
    if (p > 0)
        return (unsigned int)p;
    return (unsigned int)destAddrs.size();
}

void MLAllReduceApp::sendGradientBurst()
{
    if (establishedPeers < peerSockets.size()) {
        burstPending = true;
        return;
    }
    burstPending = false;

    for (std::vector<TCPSocket *>::iterator it = peerSockets.begin(); it != peerSockets.end(); ++it) {
        TCPSocket *sock = *it;
        cPacket *chunk = new cPacket("GradientChunk");
        chunk->setByteLength(chunkBytes);
        sock->send(chunk);
    }
}

void MLAllReduceApp::handleMessage(cMessage *msg)
{
    if (msg->isSelfMessage() && msg == computeTimer) {
        startIteration();
        return;
    }

    if (TCPSocket::belongsToAnyTCPSocket(msg)) {
        TCPSocket *sock = socketMap.findSocketFor(msg);
        if (!sock) {
            sock = new TCPSocket(msg);
            sock->setOutputGate(gate("tcpOut"));
            sock->setCallbackObject(this);
            socketMap.addSocket(sock);
            sockByConnId[sock->getConnectionId()] = sock;
        }
        sock->processMessage(msg);
        return;
    }
    delete msg;
}

void MLAllReduceApp::socketDataArrived(int, void *, cPacket *msg, bool)
{
    bytesThisIter += msg->getByteLength();
    delete msg;

    if (expectedBytesThisIter > 0 && bytesThisIter >= expectedBytesThisIter) {
        simtime_t fct = simTime() - flowStartTime;
        emit(flowCompletedSignal, fct.dbl());
        if (fct > 0)
            emit(throughputSignal, (double)expectedBytesThisIter / fct.dbl());
        scheduleNextBurst();
    }
}

void MLAllReduceApp::socketEstablished(int connId, void *)
{
    if (peerConnIds.count(connId) == 0) return;
    establishedPeers++;
    if (burstPending && establishedPeers >= peerSockets.size())
        sendGradientBurst();
}

void MLAllReduceApp::socketPeerClosed(int connId, void *)
{
    std::map<int, TCPSocket *>::iterator it = sockByConnId.find(connId);
    if (it != sockByConnId.end() && it->second)
        it->second->close();
}

void MLAllReduceApp::socketClosed(int, void *) {}
void MLAllReduceApp::socketFailure(int, void *, int) {}
void MLAllReduceApp::socketStatusArrived(int, void *, TCPStatusInfo *status) { delete status; }

void MLAllReduceApp::finish()
{
    cancelAndDelete(computeTimer);
    computeTimer = NULL;
    peerSockets.clear();
    peerConnIds.clear();
    sockByConnId.clear();
    socketMap.deleteSockets();
}