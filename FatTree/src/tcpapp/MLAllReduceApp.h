#ifndef __FATTREE_MLALLREDUCEAPP_H_
#define __FATTREE_MLALLREDUCEAPP_H_

#include <omnetpp.h>
#include <map>
#include <set>
#include <vector>

#include "TCPSocket.h"
#include "TCPSocketMap.h"
#include "IPvXAddress.h"

class TCPStatusInfo;

class MLAllReduceApp : public cSimpleModule, public TCPSocket::CallbackInterface
{
  protected:
    TCPSocket listenSocket;
    std::vector<TCPSocket *> peerSockets;
    std::set<int> peerConnIds;
    TCPSocketMap socketMap;
    std::map<int, TCPSocket *> sockByConnId;

    int localPort;
    int destPort;
    std::vector<IPvXAddress> destAddrs;

    simtime_t flowStartTime;
    long bytesThisIter;
    long expectedBytesThisIter;
    long chunkBytes;

    unsigned int establishedPeers;
    bool burstPending;

    cMessage *computeTimer;
    simsignal_t flowCompletedSignal;
    simsignal_t throughputSignal;

  protected:
    // FIX: Use multi-stage initialization
    virtual int numInitStages() const { return 4; }
    virtual void initialize(int stage);
    
    virtual void handleMessage(cMessage *msg);
    virtual void finish();

    void parseDestAddresses();
    void openListenSocket();
    void openPeerConnections();
    void scheduleNextBurst();
    void startIteration();
    void sendGradientBurst();
    unsigned int computeExpectedPeers() const;

    virtual void socketDataArrived(int connId, void *yourPtr, cPacket *msg, bool urgent);
    virtual void socketEstablished(int connId, void *yourPtr);
    virtual void socketPeerClosed(int connId, void *yourPtr);
    virtual void socketClosed(int connId, void *yourPtr);
    virtual void socketFailure(int connId, void *yourPtr, int code);
    virtual void socketStatusArrived(int connId, void *yourPtr, TCPStatusInfo *status);

  public:
    MLAllReduceApp();
};

#endif