//
// Author: Michael Klopf
// 

package FatTree.src.components;
import inet.src.linklayer.ppp.PPP;
import inet.src.networklayer.queue.OutputQueue;

//
// Extended the PPPInterface in inet.linklayer.ppp to support bigger MTUs.
//
module ExtPPPInterface
{
    parameters:
        string queueType = default("DropTailQueue");
        @display("i=block/ifcard");
    gates:
        input netwIn;
        output netwOut;
        inout phys @labels(PPPFrame);
    submodules:
        queue: <queueType> like OutputQueue {
            parameters:
                @display("p=60,85;q=l2queue");
        }
        ppp: PPP {
            parameters:
                queueModule = "queue";
                txQueueLimit = 1; // queue sends one packet at a time
                mtu = 1000000;
                @display("p=88,165");
        }
    connections:
        netwIn --> { @display("m=n"); } --> queue.in;
        queue.out --> ppp.netwIn;
        netwOut <-- { @display("m=n"); } <-- ppp.netwOut;
        phys <--> { @display("m=s"); } <--> ppp.phys;
}
