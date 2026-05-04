//
// Author: Michael Klopf
//


package FatTree.src.ecmp;

import inet.src.applications.pingapp.PingApp;
import inet.src.applications.sctpapp.SCTPApp;
import inet.src.applications.tcpapp.TCPApp;
import inet.src.applications.udpapp.UDPApp;
import inet.src.base.NotificationBoard;
import inet.src.linklayer.ethernet.EthernetInterface;
import inet.src.linklayer.ext.ExtInterface;
//import inet.src.linklayer.ppp.PPPInterface;
import FatTree.src.components.ExtPPPInterface;
import inet.src.networklayer.common.InterfaceTable;
//import inet.src.networklayer.ipv4.RoutingTable;
import inet.src.transport.sctp.SCTP;
import inet.src.transport.tcp.ITCP;
import inet.src.transport.udp.UDP;
import inet.src.util.NAMTraceWriter;
import inet.src.util.TCPDump;


//
// \IP host with SCTP, TCP, UDP layers and applications.
//
module ECMPStandardHost
{
    parameters:
        @node();
        @labels(node,ethernet-node);
        @display("i=device/pc2");
        int numTcpApps = default(0);
        int numUdpApps = default(0);
        int numSctpApps = default(0);
        string tcpAppType = default("n/a");
        string udpAppType = default("n/a");
        string sctpAppType = default("n/a");
        string tcpType = default("TCP");  // tcp implementation (e.g. TCP, TCP_old, TCP_NSC)
        bool IPForward = default(false);
        int namid = default(-1);
        string routingFile = default("");
        int numExtInterfaces = default(0);
    gates:
        inout pppg[] @labels(PPPFrame-conn);
        inout ethg[] @labels(EtherFrame-conn);
    submodules:
        namTrace: NAMTraceWriter {
            parameters:
                namid = namid;
                @display("p=57,294");
        }
        notificationBoard: NotificationBoard {
            parameters:
                @display("p=57,54");
        }
        interfaceTable: InterfaceTable {
            parameters:
                @display("p=57,134");
        }
        routingTable: ECMPRoutingTable {
            parameters:
                IPForward = IPForward;
                routerId = "";
                routingFile = routingFile;
                @display("p=57,214");
        }
        tcpApp[numTcpApps]: <tcpAppType> like TCPApp {
            parameters:
                @display("p=186,54");
        }
        tcp: <tcpType> like ITCP {
            parameters:
                @display("p=186,141");
        }
        udpApp[numUdpApps]: <udpAppType> like UDPApp {
            parameters:
                @display("p=336,54");
        }
        udp: UDP {
            parameters:
                @display("p=336,141");
        }
        sctpApp[numSctpApps]: <sctpAppType> like SCTPApp {
            parameters:
                @display("p=501,54");
        }
        sctp: SCTP {
            @display("p=501,141;i=block/wheelbarrow");
        }
        pingApp: PingApp {
            parameters:
                @display("p=501,230");
        }
        // changed the network layer to ecmp network layer
        networkLayer: ECMPNetworkLayer {
            parameters:
                proxyARP = false;
                @display("p=336,230;q=queue");
            gates:
                ifIn[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
                ifOut[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
        }
        ppp[sizeof(pppg)]: ExtPPPInterface {
            parameters:
                @display("p=186,390,row,90;q=txQueue");
        }
        eth[sizeof(ethg)]: EthernetInterface {
            parameters:
                @display("p=336,390,row,90;q=txQueue");
        }
        ext[numExtInterfaces]: ExtInterface {
            parameters:
                @display("p=501,390,row,90;q=txQueue;i=block/ifcard");
        }
        tcpdump: TCPDump {
            parameters:
                @display("p=336,302;i=abstract/cache_s");
            gates:
                ifIn[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
                in2[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
                ifOut[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
                out2[sizeof(pppg)+sizeof(ethg)+numExtInterfaces];
        }
    connections allowunconnected:
        for i=0..numTcpApps-1 {
            tcpApp[i].tcpOut --> tcp.appIn++;
            tcpApp[i].tcpIn <-- tcp.appOut++;
        }

        tcp.ipOut --> networkLayer.tcpIn;
        tcp.ipIn <-- networkLayer.tcpOut;

        for i=0..numUdpApps-1 {
            udpApp[i].udpOut --> udp.appIn++;
            udpApp[i].udpIn <-- udp.appOut++;
        }

        udp.ipOut --> networkLayer.udpIn;
        udp.ipIn <-- networkLayer.udpOut;

        for i=0..numSctpApps-1 {
            sctpApp[i].sctpOut --> sctp.from_appl++;
            sctp.to_appl++ --> sctpApp[i].sctpIn;
        }
        sctp.to_ip --> networkLayer.sctpIn;
        networkLayer.sctpOut --> sctp.from_ip;

        networkLayer.pingOut --> pingApp.pingIn;
        networkLayer.pingIn <-- pingApp.pingOut;

        // connections to network outside
        for i=0..sizeof(pppg)-1 {
            pppg[i] <--> ppp[i].phys;
            ppp[i].netwOut --> tcpdump.ifIn[i];
            tcpdump.out2[i] --> networkLayer.ifIn[i];
            ppp[i].netwIn <-- tcpdump.ifOut[i];
            tcpdump.in2[i] <-- networkLayer.ifOut[i];
        }

        for i=0..sizeof(ethg)-1 {
            ethg[i] <--> eth[i].phys;
            eth[i].netwOut --> tcpdump.ifIn[sizeof(pppg)+i];
            tcpdump.out2[sizeof(pppg)+i] --> networkLayer.ifIn[sizeof(pppg)+i];
            eth[i].netwIn <-- tcpdump.ifOut[sizeof(pppg)+i];
            tcpdump.in2[sizeof(pppg)+i] <-- networkLayer.ifOut[sizeof(pppg)+i];
        }

        for i=0..numExtInterfaces-1 {
            ext[i].netwOut --> tcpdump.ifIn[sizeof(pppg)+sizeof(ethg)+i];
            tcpdump.out2[sizeof(pppg)+sizeof(ethg)+i] --> networkLayer.ifIn[sizeof(pppg)+sizeof(ethg)+i];
            ext[i].netwIn <-- tcpdump.ifOut[sizeof(pppg)+sizeof(ethg)+i];
            tcpdump.in2[sizeof(pppg)+sizeof(ethg)+i] <-- networkLayer.ifOut[sizeof(pppg)+sizeof(ethg)+i];
        }
}
