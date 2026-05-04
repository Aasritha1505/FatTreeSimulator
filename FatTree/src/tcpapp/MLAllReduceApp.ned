package FatTree.src.tcpapp;

import inet.src.applications.tcpapp.TCPApp;

simple MLAllReduceApp like TCPApp
{
    parameters:
        @class(MLAllReduceApp);
        int localPort = default(5000);           // port to listen on (forking)
        int destPort = default(5000);            // peer listening port
        string destAddresses = default("");      // whitespace-separated list of peers
        int numPeers = default(-1);              // expected chunks per iteration; -1 => destAddresses.size()

        double startTime @unit("s") = default(1s);
        volatile double computePhase @unit("s") = default(10ms); // compute gap between all-reduce bursts
        volatile int packetLength @unit("B") = default(64KiB);

        @signal[flowCompleted](type="double");
        @statistic[fct](title="AllReduce iteration FCT (s)"; source="flowCompleted"; record=vector,mean,max,min);

        @signal[throughput](type="double");
        @statistic[throughput](title="AllReduce iteration throughput (Bps)"; source="throughput"; record=vector,mean,max);

        @display("i=block/app");
    gates:
        input tcpIn @labels(TCPCommand/up);
        output tcpOut @labels(TCPCommand/down);
}

