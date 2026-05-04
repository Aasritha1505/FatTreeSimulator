#
# OMNeT++/OMNEST Makefile for FatTreeDataCenterSimulator
#
# This file was generated with the command:
#  opp_makemake -f --deep
#

# Name of target to be created (-o option)
TARGET = FatTreeDataCenterSimulator$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I. \
    -IFatTree \
    -IFatTree/simulations \
    -IFatTree/simulations/results \
    -IFatTree/src \
    -IFatTree/src/components \
    -IFatTree/src/ecmp \
    -IFatTree/src/logic \
    -IFatTree/src/logic/ipaddress \
    -IFatTree/src/logic/routing \
    -IFatTree/src/messages \
    -IFatTree/src/router \
    -IFatTree/src/tcpapp \
    -IFatTree/src/trafficgeneration \
    -IFatTree/src/util \
    -Iinet \
    -Iinet/doc \
    -Iinet/doc/walkthrough \
    -Iinet/doc/walkthrough/images \
    -Iinet/doc/walkthrough/thumbs \
    -Iinet/etc \
    -Iinet/etc/plugins \
    -Iinet/examples \
    -Iinet/examples/adhoc \
    -Iinet/examples/adhoc/ieee80211 \
    -Iinet/examples/adhoc/mf80211 \
    -Iinet/examples/adhoc/mobility \
    -Iinet/examples/emulation \
    -Iinet/examples/emulation/extclient \
    -Iinet/examples/emulation/extserver \
    -Iinet/examples/emulation/traceroute \
    -Iinet/examples/ethernet \
    -Iinet/examples/ethernet/arptest \
    -Iinet/examples/ethernet/arptest2 \
    -Iinet/examples/ethernet/lans \
    -Iinet/examples/inet \
    -Iinet/examples/inet/ber \
    -Iinet/examples/inet/bulktransfer \
    -Iinet/examples/inet/flatnet \
    -Iinet/examples/inet/kidsnw1 \
    -Iinet/examples/inet/multicast \
    -Iinet/examples/inet/nclients \
    -Iinet/examples/inet/redtest \
    -Iinet/examples/inet/routerperf \
    -Iinet/examples/inet/tcpclientserver \
    -Iinet/examples/inet/tcpsack \
    -Iinet/examples/inet/tcptimestamps \
    -Iinet/examples/inet/tcpwindowscale \
    -Iinet/examples/ipv6 \
    -Iinet/examples/ipv6/demonetworketh \
    -Iinet/examples/ipv6/ipv6bulk \
    -Iinet/examples/ipv6/ipv6nclients \
    -Iinet/examples/ipv6/nclients \
    -Iinet/examples/mpls \
    -Iinet/examples/mpls/ldp \
    -Iinet/examples/mpls/net37 \
    -Iinet/examples/mpls/testte_failure \
    -Iinet/examples/mpls/testte_failure2 \
    -Iinet/examples/mpls/testte_reroute \
    -Iinet/examples/mpls/testte_routing \
    -Iinet/examples/mpls/testte_tunnel \
    -Iinet/examples/ospfv2 \
    -Iinet/examples/ospfv2/areas \
    -Iinet/examples/ospfv2/backbone \
    -Iinet/examples/ospfv2/fulltest \
    -Iinet/examples/ospfv2/simpletest \
    -Iinet/examples/rtp \
    -Iinet/examples/rtp/data \
    -Iinet/examples/rtp/multicast1 \
    -Iinet/examples/rtp/multicast2 \
    -Iinet/examples/rtp/unicast \
    -Iinet/examples/sctp \
    -Iinet/examples/sctp/multihomed \
    -Iinet/examples/sctp/nclients \
    -Iinet/examples/wireless \
    -Iinet/examples/wireless/handover \
    -Iinet/examples/wireless/hosttohost \
    -Iinet/examples/wireless/lan80211 \
    -Iinet/examples/wireless/throughput \
    -Iinet/migrate \
    -Iinet/out \
    -Iinet/out/clang-debug \
    -Iinet/out/clang-debug/src \
    -Iinet/out/clang-debug/src/applications \
    -Iinet/out/clang-debug/src/applications/ethernet \
    -Iinet/out/clang-debug/src/applications/pingapp \
    -Iinet/out/clang-debug/src/applications/tcpapp \
    -Iinet/out/clang-debug/src/applications/udpapp \
    -Iinet/out/clang-debug/src/base \
    -Iinet/out/clang-debug/src/linklayer \
    -Iinet/out/clang-debug/src/linklayer/contract \
    -Iinet/out/clang-debug/src/linklayer/ethernet \
    -Iinet/out/clang-debug/src/linklayer/ext \
    -Iinet/out/clang-debug/src/linklayer/ieee80211 \
    -Iinet/out/clang-debug/src/linklayer/ieee80211/mac \
    -Iinet/out/clang-debug/src/linklayer/ieee80211/mgmt \
    -Iinet/src \
    -Iinet/src/applications \
    -Iinet/src/applications/ethernet \
    -Iinet/src/applications/generic \
    -Iinet/src/applications/pingapp \
    -Iinet/src/applications/rtpapp \
    -Iinet/src/applications/sctpapp \
    -Iinet/src/applications/tcpapp \
    -Iinet/src/applications/udpapp \
    -Iinet/src/base \
    -Iinet/src/linklayer \
    -Iinet/src/linklayer/contract \
    -Iinet/src/linklayer/ethernet \
    -Iinet/src/linklayer/etherswitch \
    -Iinet/src/linklayer/ext \
    -Iinet/src/linklayer/ieee80211 \
    -Iinet/src/linklayer/ieee80211/mac \
    -Iinet/src/linklayer/ieee80211/mgmt \
    -Iinet/src/linklayer/mf80211 \
    -Iinet/src/linklayer/mf80211/macLayer \
    -Iinet/src/linklayer/mf80211/phyLayer \
    -Iinet/src/linklayer/mf80211/phyLayer/decider \
    -Iinet/src/linklayer/mf80211/phyLayer/snrEval \
    -Iinet/src/linklayer/mfcore \
    -Iinet/src/linklayer/ppp \
    -Iinet/src/linklayer/radio \
    -Iinet/src/mobility \
    -Iinet/src/networklayer \
    -Iinet/src/networklayer/arp \
    -Iinet/src/networklayer/autorouting \
    -Iinet/src/networklayer/common \
    -Iinet/src/networklayer/contract \
    -Iinet/src/networklayer/extras \
    -Iinet/src/networklayer/icmpv6 \
    -Iinet/src/networklayer/ipv4 \
    -Iinet/src/networklayer/ipv6 \
    -Iinet/src/networklayer/ldp \
    -Iinet/src/networklayer/mpls \
    -Iinet/src/networklayer/ospfv2 \
    -Iinet/src/networklayer/ospfv2/interface \
    -Iinet/src/networklayer/ospfv2/messagehandler \
    -Iinet/src/networklayer/ospfv2/neighbor \
    -Iinet/src/networklayer/ospfv2/router \
    -Iinet/src/networklayer/queue \
    -Iinet/src/networklayer/rsvp_te \
    -Iinet/src/networklayer/ted \
    -Iinet/src/nodes \
    -Iinet/src/nodes/adhoc \
    -Iinet/src/nodes/ethernet \
    -Iinet/src/nodes/inet \
    -Iinet/src/nodes/ipv6 \
    -Iinet/src/nodes/mpls \
    -Iinet/src/nodes/wireless \
    -Iinet/src/transport \
    -Iinet/src/transport/contract \
    -Iinet/src/transport/rtp \
    -Iinet/src/transport/rtp/profiles \
    -Iinet/src/transport/rtp/profiles/avprofile \
    -Iinet/src/transport/sctp \
    -Iinet/src/transport/tcp \
    -Iinet/src/transport/tcp/flavours \
    -Iinet/src/transport/tcp/queues \
    -Iinet/src/transport/tcp_nsc \
    -Iinet/src/transport/tcp_nsc/queues \
    -Iinet/src/transport/tcp_old \
    -Iinet/src/transport/tcp_old/flavours \
    -Iinet/src/transport/tcp_old/queues \
    -Iinet/src/transport/udp \
    -Iinet/src/util \
    -Iinet/src/util/headerserializers \
    -Iinet/src/util/headerserializers/headers \
    -Iinet/src/world

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS =

# Output directory
PROJECT_OUTPUT_DIR = out
PROJECTRELATIVE_PATH =
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/FatTree/src/ecmp/ConfigECMPRouting.o \
    $O/FatTree/src/ecmp/ECMPRoutingTable.o \
    $O/FatTree/src/ecmp/ecmpTopo.o \
    $O/FatTree/src/ecmp/IPECMP.o \
    $O/FatTree/src/logic/ipaddress/AggIPConfig.o \
    $O/FatTree/src/logic/ipaddress/ContIPConfig.o \
    $O/FatTree/src/logic/ipaddress/CoreIPConfig.o \
    $O/FatTree/src/logic/ipaddress/EdgeIPConfig.o \
    $O/FatTree/src/logic/ipaddress/ServerIPConfig.o \
    $O/FatTree/src/logic/ipaddress/VMIPConfig.o \
    $O/FatTree/src/logic/routing/ConfigRouting.o \
    $O/FatTree/src/tcpapp/AggRouterApp.o \
    $O/FatTree/src/tcpapp/CoreRouterApp.o \
    $O/FatTree/src/tcpapp/DCTCPControllerApp.o \
    $O/FatTree/src/tcpapp/DCTCPControllerThread.o \
    $O/FatTree/src/tcpapp/DCTrafGenApp.o \
    $O/FatTree/src/tcpapp/EdgeRouterApp.o \
    $O/FatTree/src/tcpapp/ExtTrafficGenerationApp.o \
    $O/FatTree/src/tcpapp/HyperVisorApp.o \
    $O/FatTree/src/tcpapp/HyperVisorThread.o \
    $O/FatTree/src/tcpapp/SystemController.o \
    $O/FatTree/src/tcpapp/SystemControllerThread.o \
    $O/FatTree/src/tcpapp/TGAppWithIAT.o \
    $O/FatTree/src/tcpapp/TGTestApp.o \
    $O/FatTree/src/tcpapp/TrafficGenerationApp.o \
    $O/FatTree/src/tcpapp/TrafficGenerationThread.o \
    $O/FatTree/src/tcpapp/VirtualMachineApp.o \
    $O/FatTree/src/tcpapp/VirtualMachineThread.o \
    $O/FatTree/src/util/ClientTimeMap.o \
    $O/FatTree/src/util/ServerMap.o \
    $O/FatTree/src/util/ServerStateMap.o \
    $O/FatTree/src/util/ServiceMap.o \
    $O/FatTree/src/util/SocketMapExt.o \
    $O/FatTree/src/util/TCPHVSet.o \
    $O/FatTree/src/util/TCPVMSet.o \
    $O/inet/src/applications/ethernet/EtherAppCli.o \
    $O/inet/src/applications/ethernet/EtherAppSrv.o \
    $O/inet/src/applications/generic/IPTrafGen.o \
    $O/inet/src/applications/pingapp/PingApp.o \
    $O/inet/src/applications/rtpapp/RTPApplication.o \
    $O/inet/src/applications/sctpapp/SCTPClient.o \
    $O/inet/src/applications/sctpapp/SCTPPeer.o \
    $O/inet/src/applications/sctpapp/SCTPServer.o \
    $O/inet/src/applications/tcpapp/TCPBasicClientApp.o \
    $O/inet/src/applications/tcpapp/TCPEchoApp.o \
    $O/inet/src/applications/tcpapp/TCPGenericCliAppBase.o \
    $O/inet/src/applications/tcpapp/TCPGenericSrvApp.o \
    $O/inet/src/applications/tcpapp/TCPGenericSrvThread.o \
    $O/inet/src/applications/tcpapp/TCPSessionApp.o \
    $O/inet/src/applications/tcpapp/TCPSinkApp.o \
    $O/inet/src/applications/tcpapp/TCPSpoof.o \
    $O/inet/src/applications/tcpapp/TCPSrvHostApp.o \
    $O/inet/src/applications/tcpapp/TelnetApp.o \
    $O/inet/src/applications/udpapp/UDPAppBase.o \
    $O/inet/src/applications/udpapp/UDPBasicApp.o \
    $O/inet/src/applications/udpapp/UDPEchoApp.o \
    $O/inet/src/applications/udpapp/UDPSink.o \
    $O/inet/src/applications/udpapp/UDPVideoStreamCli.o \
    $O/inet/src/applications/udpapp/UDPVideoStreamSvr.o \
    $O/inet/src/base/AbstractQueue.o \
    $O/inet/src/base/BasicModule.o \
    $O/inet/src/base/Blackboard.o \
    $O/inet/src/base/ByteArrayMessage.o \
    $O/inet/src/base/Join.o \
    $O/inet/src/base/ModuleAccess.o \
    $O/inet/src/base/NotificationBoard.o \
    $O/inet/src/base/NotifierConsts.o \
    $O/inet/src/base/PassiveQueueBase.o \
    $O/inet/src/base/ProtocolMap.o \
    $O/inet/src/base/QueueBase.o \
    $O/inet/src/base/QueueWithQoS.o \
    $O/inet/src/base/ReassemblyBuffer.o \
    $O/inet/src/base/Sink.o \
    $O/inet/src/linklayer/contract/MACAddress.o \
    $O/inet/src/linklayer/ethernet/EtherBus.o \
    $O/inet/src/linklayer/ethernet/EtherEncap.o \
    $O/inet/src/linklayer/ethernet/EtherHub.o \
    $O/inet/src/linklayer/ethernet/EtherLLC.o \
    $O/inet/src/linklayer/ethernet/EtherMAC.o \
    $O/inet/src/linklayer/ethernet/EtherMAC2.o \
    $O/inet/src/linklayer/ethernet/EtherMACBase.o \
    $O/inet/src/linklayer/etherswitch/MACRelayUnitBase.o \
    $O/inet/src/linklayer/etherswitch/MACRelayUnitNP.o \
    $O/inet/src/linklayer/etherswitch/MACRelayUnitPP.o \
    $O/inet/src/linklayer/ext/cSocketRTScheduler.o \
    $O/inet/src/linklayer/ext/ExtInterface.o \
    $O/inet/src/linklayer/ieee80211/mac/Ieee80211Mac.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211AgentSTA.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAdhoc.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAP.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPSimplified.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTA.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTASimplified.o \
    $O/inet/src/linklayer/mf80211/macLayer/CSMAMacLayer.o \
    $O/inet/src/linklayer/mf80211/macLayer/Mac80211.o \
    $O/inet/src/linklayer/mf80211/phyLayer/decider/Decider80211.o \
    $O/inet/src/linklayer/mf80211/phyLayer/decider/ErrAndCollDecider.o \
    $O/inet/src/linklayer/mf80211/phyLayer/decider/SnrDecider.o \
    $O/inet/src/linklayer/mf80211/phyLayer/snrEval/GilbertElliotSnr.o \
    $O/inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.o \
    $O/inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval80211.o \
    $O/inet/src/linklayer/mfcore/BasicDecider.o \
    $O/inet/src/linklayer/mfcore/BasicSnrEval.o \
    $O/inet/src/linklayer/mfcore/WirelessMacBase.o \
    $O/inet/src/linklayer/ppp/DropsGenerator.o \
    $O/inet/src/linklayer/ppp/DuplicatesGenerator.o \
    $O/inet/src/linklayer/ppp/PPP.o \
    $O/inet/src/linklayer/ppp/ThruputMeter.o \
    $O/inet/src/linklayer/radio/AbstractRadio.o \
    $O/inet/src/linklayer/radio/GenericRadio.o \
    $O/inet/src/linklayer/radio/GenericRadioModel.o \
    $O/inet/src/linklayer/radio/Ieee80211Radio.o \
    $O/inet/src/linklayer/radio/Ieee80211RadioModel.o \
    $O/inet/src/linklayer/radio/Modulation.o \
    $O/inet/src/linklayer/radio/PathLossReceptionModel.o \
    $O/inet/src/mobility/ANSimMobility.o \
    $O/inet/src/mobility/BasicMobility.o \
    $O/inet/src/mobility/BonnMotionFileCache.o \
    $O/inet/src/mobility/BonnMotionMobility.o \
    $O/inet/src/mobility/CircleMobility.o \
    $O/inet/src/mobility/ConstSpeedMobility.o \
    $O/inet/src/mobility/LinearMobility.o \
    $O/inet/src/mobility/LineSegmentsMobilityBase.o \
    $O/inet/src/mobility/MassMobility.o \
    $O/inet/src/mobility/NullMobility.o \
    $O/inet/src/mobility/RandomWPMobility.o \
    $O/inet/src/mobility/RectangleMobility.o \
    $O/inet/src/mobility/TurtleMobility.o \
    $O/inet/src/networklayer/arp/ARP.o \
    $O/inet/src/networklayer/autorouting/FlatNetworkConfigurator.o \
    $O/inet/src/networklayer/autorouting/FlatNetworkConfigurator6.o \
    $O/inet/src/networklayer/autorouting/NetworkConfigurator.o \
    $O/inet/src/networklayer/common/InterfaceEntry.o \
    $O/inet/src/networklayer/common/InterfaceTable.o \
    $O/inet/src/networklayer/contract/IPAddress.o \
    $O/inet/src/networklayer/contract/IPAddressResolver.o \
    $O/inet/src/networklayer/contract/IPControlInfo.o \
    $O/inet/src/networklayer/contract/IPv6Address.o \
    $O/inet/src/networklayer/contract/IPv6ControlInfo.o \
    $O/inet/src/networklayer/contract/IPvXAddress.o \
    $O/inet/src/networklayer/extras/Dummy.o \
    $O/inet/src/networklayer/extras/FailureManager.o \
    $O/inet/src/networklayer/extras/NetworkInfo.o \
    $O/inet/src/networklayer/icmpv6/ICMPv6.o \
    $O/inet/src/networklayer/icmpv6/IPv6NeighbourCache.o \
    $O/inet/src/networklayer/icmpv6/IPv6NeighbourDiscovery.o \
    $O/inet/src/networklayer/ipv4/ErrorHandling.o \
    $O/inet/src/networklayer/ipv4/ICMP.o \
    $O/inet/src/networklayer/ipv4/IP.o \
    $O/inet/src/networklayer/ipv4/IPFragBuf.o \
    $O/inet/src/networklayer/ipv4/IPRoute.o \
    $O/inet/src/networklayer/ipv4/IPv4InterfaceData.o \
    $O/inet/src/networklayer/ipv4/RoutingTable.o \
    $O/inet/src/networklayer/ipv4/RoutingTableParser.o \
    $O/inet/src/networklayer/ipv6/IPv6.o \
    $O/inet/src/networklayer/ipv6/IPv6Datagram.o \
    $O/inet/src/networklayer/ipv6/IPv6ErrorHandling.o \
    $O/inet/src/networklayer/ipv6/IPv6FragBuf.o \
    $O/inet/src/networklayer/ipv6/IPv6InterfaceData.o \
    $O/inet/src/networklayer/ipv6/RoutingTable6.o \
    $O/inet/src/networklayer/ldp/LDP.o \
    $O/inet/src/networklayer/mpls/LIBTable.o \
    $O/inet/src/networklayer/mpls/MPLS.o \
    $O/inet/src/networklayer/mpls/MPLSPacket.o \
    $O/inet/src/networklayer/ospfv2/OSPFRouting.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterface.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateBackup.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDesignatedRouter.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStatePointToPoint.o \
    $O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateWaiting.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/HelloHandler.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.o \
    $O/inet/src/networklayer/ospfv2/messagehandler/MessageHandler.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateAttempt.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchange.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateLoading.o \
    $O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.o \
    $O/inet/src/networklayer/ospfv2/router/ASExternalLSA.o \
    $O/inet/src/networklayer/ospfv2/router/NetworkLSA.o \
    $O/inet/src/networklayer/ospfv2/router/OSPFArea.o \
    $O/inet/src/networklayer/ospfv2/router/OSPFRouter.o \
    $O/inet/src/networklayer/ospfv2/router/RouterLSA.o \
    $O/inet/src/networklayer/ospfv2/router/SummaryLSA.o \
    $O/inet/src/networklayer/queue/BasicDSCPClassifier.o \
    $O/inet/src/networklayer/queue/DropTailQoSQueue.o \
    $O/inet/src/networklayer/queue/DropTailQueue.o \
    $O/inet/src/networklayer/queue/REDQueue.o \
    $O/inet/src/networklayer/rsvp_te/RSVP.o \
    $O/inet/src/networklayer/rsvp_te/SimpleClassifier.o \
    $O/inet/src/networklayer/rsvp_te/Utils.o \
    $O/inet/src/networklayer/ted/LinkStateRouting.o \
    $O/inet/src/networklayer/ted/TED.o \
    $O/inet/src/transport/contract/SCTPSocket.o \
    $O/inet/src/transport/contract/TCPSocket.o \
    $O/inet/src/transport/contract/TCPSocketMap.o \
    $O/inet/src/transport/contract/UDPSocket.o \
    $O/inet/src/transport/rtp/reports.o \
    $O/inet/src/transport/rtp/RTCP.o \
    $O/inet/src/transport/rtp/RTCPPacket.o \
    $O/inet/src/transport/rtp/RTP.o \
    $O/inet/src/transport/rtp/RTPInnerPacket.o \
    $O/inet/src/transport/rtp/RTPInterfacePacket.o \
    $O/inet/src/transport/rtp/RTPPacket.o \
    $O/inet/src/transport/rtp/RTPParticipantInfo.o \
    $O/inet/src/transport/rtp/RTPPayloadReceiver.o \
    $O/inet/src/transport/rtp/RTPPayloadSender.o \
    $O/inet/src/transport/rtp/RTPProfile.o \
    $O/inet/src/transport/rtp/RTPReceiverInfo.o \
    $O/inet/src/transport/rtp/RTPSenderInfo.o \
    $O/inet/src/transport/rtp/sdes.o \
    $O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfile.o \
    $O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Receiver.o \
    $O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Sender.o \
    $O/inet/src/transport/sctp/SCTP.o \
    $O/inet/src/transport/sctp/SCTPAlg.o \
    $O/inet/src/transport/sctp/SCTPAssociationBase.o \
    $O/inet/src/transport/sctp/SCTPAssociationEventProc.o \
    $O/inet/src/transport/sctp/SCTPAssociationRcvMessage.o \
    $O/inet/src/transport/sctp/SCTPAssociationSendAll.o \
    $O/inet/src/transport/sctp/SCTPAssociationUtil.o \
    $O/inet/src/transport/sctp/SCTPCCFunctions.o \
    $O/inet/src/transport/sctp/SCTPMessage.o \
    $O/inet/src/transport/sctp/SCTPQueue.o \
    $O/inet/src/transport/sctp/SCTPReceiveStream.o \
    $O/inet/src/transport/sctp/SCTPSendStream.o \
    $O/inet/src/transport/sctp/SCTPSSFunctions.o \
    $O/inet/src/transport/tcp/TCP.o \
    $O/inet/src/transport/tcp/TCPConnectionBase.o \
    $O/inet/src/transport/tcp/TCPConnectionEventProc.o \
    $O/inet/src/transport/tcp/TCPConnectionRcvSegment.o \
    $O/inet/src/transport/tcp/TCPConnectionUtil.o \
    $O/inet/src/transport/tcp/TCPSACKRexmitQueue.o \
    $O/inet/src/transport/tcp/TCPSegment.o \
    $O/inet/src/transport/tcp/flavours/DumbTCP.o \
    $O/inet/src/transport/tcp/flavours/TCPBaseAlg.o \
    $O/inet/src/transport/tcp/flavours/TCPNewReno.o \
    $O/inet/src/transport/tcp/flavours/TCPNoCongestionControl.o \
    $O/inet/src/transport/tcp/flavours/TCPReno.o \
    $O/inet/src/transport/tcp/flavours/TCPTahoe.o \
    $O/inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.o \
    $O/inet/src/transport/tcp/queues/TCPMsgBasedRcvQueue.o \
    $O/inet/src/transport/tcp/queues/TCPMsgBasedSendQueue.o \
    $O/inet/src/transport/tcp/queues/TCPVirtualDataRcvQueue.o \
    $O/inet/src/transport/tcp/queues/TCPVirtualDataSendQueue.o \
    $O/inet/src/transport/tcp_nsc/TCP_NSC.o \
    $O/inet/src/transport/tcp_nsc/TCP_NSC_Connection.o \
    $O/inet/src/transport/tcp_nsc/queues/TCP_NSC_VirtualDataQueues.o \
    $O/inet/src/transport/tcp_old/TCP.o \
    $O/inet/src/transport/tcp_old/TCPConnectionBase.o \
    $O/inet/src/transport/tcp_old/TCPConnectionEventProc.o \
    $O/inet/src/transport/tcp_old/TCPConnectionRcvSegment.o \
    $O/inet/src/transport/tcp_old/TCPConnectionUtil.o \
    $O/inet/src/transport/tcp_old/flavours/DumbTCP.o \
    $O/inet/src/transport/tcp_old/flavours/TCPBaseAlg.o \
    $O/inet/src/transport/tcp_old/flavours/TCPNoCongestionControl.o \
    $O/inet/src/transport/tcp_old/flavours/TCPReno.o \
    $O/inet/src/transport/tcp_old/flavours/TCPTahoe.o \
    $O/inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily.o \
    $O/inet/src/transport/tcp_old/queues/TCPMsgBasedRcvQueue.o \
    $O/inet/src/transport/tcp_old/queues/TCPMsgBasedSendQueue.o \
    $O/inet/src/transport/tcp_old/queues/TCPVirtualDataRcvQueue.o \
    $O/inet/src/transport/tcp_old/queues/TCPVirtualDataSendQueue.o \
    $O/inet/src/transport/udp/UDP.o \
    $O/inet/src/util/common.o \
    $O/inet/src/util/NAMTraceWriter.o \
    $O/inet/src/util/NetAnimTrace.o \
    $O/inet/src/util/opp_utils.o \
    $O/inet/src/util/TCPDump.o \
    $O/inet/src/util/ThruputMeteringChannel.o \
    $O/inet/src/util/XMLUtils.o \
    $O/inet/src/util/headerserializers/ICMPSerializer.o \
    $O/inet/src/util/headerserializers/IPSerializer.o \
    $O/inet/src/util/headerserializers/SCTPSerializer.o \
    $O/inet/src/util/headerserializers/TCPIPchecksum.o \
    $O/inet/src/util/headerserializers/TCPSerializer.o \
    $O/inet/src/util/headerserializers/UDPSerializer.o \
    $O/inet/src/world/ChannelAccess.o \
    $O/inet/src/world/ChannelControl.o \
    $O/inet/src/world/ChannelInstaller.o \
    $O/inet/src/world/NAMTrace.o \
    $O/inet/src/world/ScenarioManager.o \
    $O/FatTree/src/messages/ReplyMsg_m.o \
    $O/FatTree/src/messages/RequestMsg_m.o \
    $O/FatTree/src/messages/ShutDownHV_m.o \
    $O/FatTree/src/messages/ShutDownVM_m.o \
    $O/FatTree/src/messages/StartClient_m.o \
    $O/FatTree/src/messages/StartHV_m.o \
    $O/FatTree/src/messages/StartVM_m.o \
    $O/FatTree/src/messages/StopClient_m.o \
    $O/FatTree/src/messages/TTimer_m.o \
    $O/FatTree/src/messages/TTimerCon_m.o \
    $O/FatTree/src/messages/VMMigMsg_m.o \
    $O/inet/src/applications/ethernet/EtherApp_m.o \
    $O/inet/src/applications/pingapp/PingPayload_m.o \
    $O/inet/src/applications/tcpapp/GenericAppMsg_m.o \
    $O/inet/src/applications/udpapp/UDPEchoAppMsg_m.o \
    $O/inet/src/base/ByteArrayMessage_m.o \
    $O/inet/src/linklayer/contract/Ieee802Ctrl_m.o \
    $O/inet/src/linklayer/contract/PhyControlInfo_m.o \
    $O/inet/src/linklayer/ethernet/EtherFrame_m.o \
    $O/inet/src/linklayer/ext/ExtFrame_m.o \
    $O/inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.o \
    $O/inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.o \
    $O/inet/src/linklayer/mf80211/macLayer/Mac80211Pkt_m.o \
    $O/inet/src/linklayer/mf80211/macLayer/MacPkt_m.o \
    $O/inet/src/linklayer/mfcore/AirFrame_m.o \
    $O/inet/src/linklayer/mfcore/SnrControlInfo_m.o \
    $O/inet/src/linklayer/mfcore/TransmComplete_m.o \
    $O/inet/src/linklayer/ppp/PPPFrame_m.o \
    $O/inet/src/networklayer/arp/ARPPacket_m.o \
    $O/inet/src/networklayer/contract/IPControlInfo_m.o \
    $O/inet/src/networklayer/contract/IPProtocolId_m.o \
    $O/inet/src/networklayer/contract/IPv6ControlInfo_m.o \
    $O/inet/src/networklayer/icmpv6/ICMPv6Message_m.o \
    $O/inet/src/networklayer/icmpv6/IPv6NDMessage_m.o \
    $O/inet/src/networklayer/ipv4/ControlManetRouting_m.o \
    $O/inet/src/networklayer/ipv4/ICMPMessage_m.o \
    $O/inet/src/networklayer/ipv4/IPDatagram_m.o \
    $O/inet/src/networklayer/ipv6/IPv6Datagram_m.o \
    $O/inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.o \
    $O/inet/src/networklayer/ldp/LDPPacket_m.o \
    $O/inet/src/networklayer/ospfv2/OSPFPacket_m.o \
    $O/inet/src/networklayer/ospfv2/OSPFTimer_m.o \
    $O/inet/src/networklayer/rsvp_te/IntServ_m.o \
    $O/inet/src/networklayer/rsvp_te/RSVPHello_m.o \
    $O/inet/src/networklayer/rsvp_te/RSVPPacket_m.o \
    $O/inet/src/networklayer/rsvp_te/RSVPPathMsg_m.o \
    $O/inet/src/networklayer/rsvp_te/RSVPResvMsg_m.o \
    $O/inet/src/networklayer/rsvp_te/SignallingMsg_m.o \
    $O/inet/src/networklayer/ted/LinkStatePacket_m.o \
    $O/inet/src/networklayer/ted/TED_m.o \
    $O/inet/src/transport/contract/SCTPCommand_m.o \
    $O/inet/src/transport/contract/TCPCommand_m.o \
    $O/inet/src/transport/contract/UDPControlInfo_m.o \
    $O/inet/src/transport/rtp/RTPSenderControlMessage_m.o \
    $O/inet/src/transport/rtp/RTPSenderStatusMessage_m.o \
    $O/inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.o \
    $O/inet/src/transport/sctp/SCTPMessage_m.o \
    $O/inet/src/transport/tcp/TCPSegment_m.o \
    $O/inet/src/transport/udp/UDPPacket_m.o

# Message files
MSGFILES = \
    FatTree/src/messages/ReplyMsg.msg \
    FatTree/src/messages/RequestMsg.msg \
    FatTree/src/messages/ShutDownHV.msg \
    FatTree/src/messages/ShutDownVM.msg \
    FatTree/src/messages/StartClient.msg \
    FatTree/src/messages/StartHV.msg \
    FatTree/src/messages/StartVM.msg \
    FatTree/src/messages/StopClient.msg \
    FatTree/src/messages/TTimer.msg \
    FatTree/src/messages/TTimerCon.msg \
    FatTree/src/messages/VMMigMsg.msg \
    inet/src/applications/ethernet/EtherApp.msg \
    inet/src/applications/pingapp/PingPayload.msg \
    inet/src/applications/tcpapp/GenericAppMsg.msg \
    inet/src/applications/udpapp/UDPEchoAppMsg.msg \
    inet/src/base/ByteArrayMessage.msg \
    inet/src/linklayer/contract/Ieee802Ctrl.msg \
    inet/src/linklayer/contract/PhyControlInfo.msg \
    inet/src/linklayer/ethernet/EtherFrame.msg \
    inet/src/linklayer/ext/ExtFrame.msg \
    inet/src/linklayer/ieee80211/mac/Ieee80211Frame.msg \
    inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames.msg \
    inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives.msg \
    inet/src/linklayer/mf80211/macLayer/Mac80211Pkt.msg \
    inet/src/linklayer/mf80211/macLayer/MacPkt.msg \
    inet/src/linklayer/mfcore/AirFrame.msg \
    inet/src/linklayer/mfcore/SnrControlInfo.msg \
    inet/src/linklayer/mfcore/TransmComplete.msg \
    inet/src/linklayer/ppp/PPPFrame.msg \
    inet/src/networklayer/arp/ARPPacket.msg \
    inet/src/networklayer/contract/IPControlInfo.msg \
    inet/src/networklayer/contract/IPProtocolId.msg \
    inet/src/networklayer/contract/IPv6ControlInfo.msg \
    inet/src/networklayer/icmpv6/ICMPv6Message.msg \
    inet/src/networklayer/icmpv6/IPv6NDMessage.msg \
    inet/src/networklayer/ipv4/ControlManetRouting.msg \
    inet/src/networklayer/ipv4/ICMPMessage.msg \
    inet/src/networklayer/ipv4/IPDatagram.msg \
    inet/src/networklayer/ipv6/IPv6Datagram.msg \
    inet/src/networklayer/ipv6/IPv6ExtensionHeaders.msg \
    inet/src/networklayer/ldp/LDPPacket.msg \
    inet/src/networklayer/ospfv2/OSPFPacket.msg \
    inet/src/networklayer/ospfv2/OSPFTimer.msg \
    inet/src/networklayer/rsvp_te/IntServ.msg \
    inet/src/networklayer/rsvp_te/RSVPHello.msg \
    inet/src/networklayer/rsvp_te/RSVPPacket.msg \
    inet/src/networklayer/rsvp_te/RSVPPathMsg.msg \
    inet/src/networklayer/rsvp_te/RSVPResvMsg.msg \
    inet/src/networklayer/rsvp_te/SignallingMsg.msg \
    inet/src/networklayer/ted/LinkStatePacket.msg \
    inet/src/networklayer/ted/TED.msg \
    inet/src/transport/contract/SCTPCommand.msg \
    inet/src/transport/contract/TCPCommand.msg \
    inet/src/transport/contract/UDPControlInfo.msg \
    inet/src/transport/rtp/RTPSenderControlMessage.msg \
    inet/src/transport/rtp/RTPSenderStatusMessage.msg \
    inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket.msg \
    inet/src/transport/sctp/SCTPMessage.msg \
    inet/src/transport/tcp/TCPSegment.msg \
    inet/src/transport/udp/UDPPacket.msg

#------------------------------------------------------------------------------

# Pull in OMNeT++ configuration (Makefile.inc or configuser.vc)

ifneq ("$(OMNETPP_CONFIGFILE)","")
CONFIGFILE = $(OMNETPP_CONFIGFILE)
else
ifneq ("$(OMNETPP_ROOT)","")
CONFIGFILE = $(OMNETPP_ROOT)/Makefile.inc
else
CONFIGFILE = $(shell opp_configfilepath)
endif
endif

ifeq ("$(wildcard $(CONFIGFILE))","")
$(error Config file '$(CONFIGFILE)' does not exist -- add the OMNeT++ bin directory to the path so that opp_configfilepath can be found, or set the OMNETPP_CONFIGFILE variable to point to Makefile.inc)
endif

include $(CONFIGFILE)

# Simulation kernel and user interface libraries
OMNETPP_LIB_SUBDIR = $(OMNETPP_LIB_DIR)/$(TOOLCHAIN_NAME)
OMNETPP_LIBS = -L"$(OMNETPP_LIB_SUBDIR)" -L"$(OMNETPP_LIB_DIR)" -loppmain$D $(USERIF_LIBS) $(KERNEL_LIBS) $(SYS_LIBS)

COPTS = $(CFLAGS)  $(INCLUDE_PATH) -I$(OMNETPP_INCL_DIR)
MSGCOPTS = $(INCLUDE_PATH)

# we want to recompile everything if COPTS changes,
# so we store COPTS into $COPTS_FILE and have object
# files depend on it (except when "make depend" was called)
COPTS_FILE = $O/.last-copts
ifneq ($(MAKECMDGOALS),depend)
ifneq ("$(COPTS)","$(shell cat $(COPTS_FILE) 2>/dev/null || echo '')")
$(shell $(MKPATH) "$O" && echo "$(COPTS)" >$(COPTS_FILE))
endif
endif

#------------------------------------------------------------------------------
# User-supplied makefile fragment(s)
# >>>
# <<<
#------------------------------------------------------------------------------

# Main target
all: $O/$(TARGET)
	$(LN) $O/$(TARGET) .

$O/$(TARGET): $(OBJS)  $(wildcard $(EXTRA_OBJS)) Makefile
	@$(MKPATH) $O
	$(CXX) $(LDFLAGS) -o $O/$(TARGET)  $(OBJS) $(EXTRA_OBJS) $(AS_NEEDED_OFF) $(WHOLE_ARCHIVE_ON) $(LIBS) $(WHOLE_ARCHIVE_OFF) $(OMNETPP_LIBS)

.PHONY: all clean cleanall depend msgheaders

.SUFFIXES: .cc

$O/%.o: %.cc $(COPTS_FILE)
	@$(MKPATH) $(dir $@)
	$(CXX) -c $(COPTS) -o $@ $<

%_m.cc %_m.h: %.msg
	$(MSGC) -s _m.cc $(MSGCOPTS) $?

msgheaders: $(MSGFILES:.msg=_m.h)

clean:
	-rm -rf $O
	-rm -f FatTreeDataCenterSimulator FatTreeDataCenterSimulator.exe libFatTreeDataCenterSimulator.so libFatTreeDataCenterSimulator.a libFatTreeDataCenterSimulator.dll libFatTreeDataCenterSimulator.dylib
	-rm -f ./*_m.cc ./*_m.h
	-rm -f FatTree/*_m.cc FatTree/*_m.h
	-rm -f FatTree/simulations/*_m.cc FatTree/simulations/*_m.h
	-rm -f FatTree/simulations/results/*_m.cc FatTree/simulations/results/*_m.h
	-rm -f FatTree/src/*_m.cc FatTree/src/*_m.h
	-rm -f FatTree/src/components/*_m.cc FatTree/src/components/*_m.h
	-rm -f FatTree/src/ecmp/*_m.cc FatTree/src/ecmp/*_m.h
	-rm -f FatTree/src/logic/*_m.cc FatTree/src/logic/*_m.h
	-rm -f FatTree/src/logic/ipaddress/*_m.cc FatTree/src/logic/ipaddress/*_m.h
	-rm -f FatTree/src/logic/routing/*_m.cc FatTree/src/logic/routing/*_m.h
	-rm -f FatTree/src/messages/*_m.cc FatTree/src/messages/*_m.h
	-rm -f FatTree/src/router/*_m.cc FatTree/src/router/*_m.h
	-rm -f FatTree/src/tcpapp/*_m.cc FatTree/src/tcpapp/*_m.h
	-rm -f FatTree/src/trafficgeneration/*_m.cc FatTree/src/trafficgeneration/*_m.h
	-rm -f FatTree/src/util/*_m.cc FatTree/src/util/*_m.h
	-rm -f inet/*_m.cc inet/*_m.h
	-rm -f inet/doc/*_m.cc inet/doc/*_m.h
	-rm -f inet/doc/walkthrough/*_m.cc inet/doc/walkthrough/*_m.h
	-rm -f inet/doc/walkthrough/images/*_m.cc inet/doc/walkthrough/images/*_m.h
	-rm -f inet/doc/walkthrough/thumbs/*_m.cc inet/doc/walkthrough/thumbs/*_m.h
	-rm -f inet/etc/*_m.cc inet/etc/*_m.h
	-rm -f inet/etc/plugins/*_m.cc inet/etc/plugins/*_m.h
	-rm -f inet/examples/*_m.cc inet/examples/*_m.h
	-rm -f inet/examples/adhoc/*_m.cc inet/examples/adhoc/*_m.h
	-rm -f inet/examples/adhoc/ieee80211/*_m.cc inet/examples/adhoc/ieee80211/*_m.h
	-rm -f inet/examples/adhoc/mf80211/*_m.cc inet/examples/adhoc/mf80211/*_m.h
	-rm -f inet/examples/adhoc/mobility/*_m.cc inet/examples/adhoc/mobility/*_m.h
	-rm -f inet/examples/emulation/*_m.cc inet/examples/emulation/*_m.h
	-rm -f inet/examples/emulation/extclient/*_m.cc inet/examples/emulation/extclient/*_m.h
	-rm -f inet/examples/emulation/extserver/*_m.cc inet/examples/emulation/extserver/*_m.h
	-rm -f inet/examples/emulation/traceroute/*_m.cc inet/examples/emulation/traceroute/*_m.h
	-rm -f inet/examples/ethernet/*_m.cc inet/examples/ethernet/*_m.h
	-rm -f inet/examples/ethernet/arptest/*_m.cc inet/examples/ethernet/arptest/*_m.h
	-rm -f inet/examples/ethernet/arptest2/*_m.cc inet/examples/ethernet/arptest2/*_m.h
	-rm -f inet/examples/ethernet/lans/*_m.cc inet/examples/ethernet/lans/*_m.h
	-rm -f inet/examples/inet/*_m.cc inet/examples/inet/*_m.h
	-rm -f inet/examples/inet/ber/*_m.cc inet/examples/inet/ber/*_m.h
	-rm -f inet/examples/inet/bulktransfer/*_m.cc inet/examples/inet/bulktransfer/*_m.h
	-rm -f inet/examples/inet/flatnet/*_m.cc inet/examples/inet/flatnet/*_m.h
	-rm -f inet/examples/inet/kidsnw1/*_m.cc inet/examples/inet/kidsnw1/*_m.h
	-rm -f inet/examples/inet/multicast/*_m.cc inet/examples/inet/multicast/*_m.h
	-rm -f inet/examples/inet/nclients/*_m.cc inet/examples/inet/nclients/*_m.h
	-rm -f inet/examples/inet/redtest/*_m.cc inet/examples/inet/redtest/*_m.h
	-rm -f inet/examples/inet/routerperf/*_m.cc inet/examples/inet/routerperf/*_m.h
	-rm -f inet/examples/inet/tcpclientserver/*_m.cc inet/examples/inet/tcpclientserver/*_m.h
	-rm -f inet/examples/inet/tcpsack/*_m.cc inet/examples/inet/tcpsack/*_m.h
	-rm -f inet/examples/inet/tcptimestamps/*_m.cc inet/examples/inet/tcptimestamps/*_m.h
	-rm -f inet/examples/inet/tcpwindowscale/*_m.cc inet/examples/inet/tcpwindowscale/*_m.h
	-rm -f inet/examples/ipv6/*_m.cc inet/examples/ipv6/*_m.h
	-rm -f inet/examples/ipv6/demonetworketh/*_m.cc inet/examples/ipv6/demonetworketh/*_m.h
	-rm -f inet/examples/ipv6/ipv6bulk/*_m.cc inet/examples/ipv6/ipv6bulk/*_m.h
	-rm -f inet/examples/ipv6/ipv6nclients/*_m.cc inet/examples/ipv6/ipv6nclients/*_m.h
	-rm -f inet/examples/ipv6/nclients/*_m.cc inet/examples/ipv6/nclients/*_m.h
	-rm -f inet/examples/mpls/*_m.cc inet/examples/mpls/*_m.h
	-rm -f inet/examples/mpls/ldp/*_m.cc inet/examples/mpls/ldp/*_m.h
	-rm -f inet/examples/mpls/net37/*_m.cc inet/examples/mpls/net37/*_m.h
	-rm -f inet/examples/mpls/testte_failure/*_m.cc inet/examples/mpls/testte_failure/*_m.h
	-rm -f inet/examples/mpls/testte_failure2/*_m.cc inet/examples/mpls/testte_failure2/*_m.h
	-rm -f inet/examples/mpls/testte_reroute/*_m.cc inet/examples/mpls/testte_reroute/*_m.h
	-rm -f inet/examples/mpls/testte_routing/*_m.cc inet/examples/mpls/testte_routing/*_m.h
	-rm -f inet/examples/mpls/testte_tunnel/*_m.cc inet/examples/mpls/testte_tunnel/*_m.h
	-rm -f inet/examples/ospfv2/*_m.cc inet/examples/ospfv2/*_m.h
	-rm -f inet/examples/ospfv2/areas/*_m.cc inet/examples/ospfv2/areas/*_m.h
	-rm -f inet/examples/ospfv2/backbone/*_m.cc inet/examples/ospfv2/backbone/*_m.h
	-rm -f inet/examples/ospfv2/fulltest/*_m.cc inet/examples/ospfv2/fulltest/*_m.h
	-rm -f inet/examples/ospfv2/simpletest/*_m.cc inet/examples/ospfv2/simpletest/*_m.h
	-rm -f inet/examples/rtp/*_m.cc inet/examples/rtp/*_m.h
	-rm -f inet/examples/rtp/data/*_m.cc inet/examples/rtp/data/*_m.h
	-rm -f inet/examples/rtp/multicast1/*_m.cc inet/examples/rtp/multicast1/*_m.h
	-rm -f inet/examples/rtp/multicast2/*_m.cc inet/examples/rtp/multicast2/*_m.h
	-rm -f inet/examples/rtp/unicast/*_m.cc inet/examples/rtp/unicast/*_m.h
	-rm -f inet/examples/sctp/*_m.cc inet/examples/sctp/*_m.h
	-rm -f inet/examples/sctp/multihomed/*_m.cc inet/examples/sctp/multihomed/*_m.h
	-rm -f inet/examples/sctp/nclients/*_m.cc inet/examples/sctp/nclients/*_m.h
	-rm -f inet/examples/wireless/*_m.cc inet/examples/wireless/*_m.h
	-rm -f inet/examples/wireless/handover/*_m.cc inet/examples/wireless/handover/*_m.h
	-rm -f inet/examples/wireless/hosttohost/*_m.cc inet/examples/wireless/hosttohost/*_m.h
	-rm -f inet/examples/wireless/lan80211/*_m.cc inet/examples/wireless/lan80211/*_m.h
	-rm -f inet/examples/wireless/throughput/*_m.cc inet/examples/wireless/throughput/*_m.h
	-rm -f inet/migrate/*_m.cc inet/migrate/*_m.h
	-rm -f inet/out/*_m.cc inet/out/*_m.h
	-rm -f inet/out/clang-debug/*_m.cc inet/out/clang-debug/*_m.h
	-rm -f inet/out/clang-debug/src/*_m.cc inet/out/clang-debug/src/*_m.h
	-rm -f inet/out/clang-debug/src/applications/*_m.cc inet/out/clang-debug/src/applications/*_m.h
	-rm -f inet/out/clang-debug/src/applications/ethernet/*_m.cc inet/out/clang-debug/src/applications/ethernet/*_m.h
	-rm -f inet/out/clang-debug/src/applications/pingapp/*_m.cc inet/out/clang-debug/src/applications/pingapp/*_m.h
	-rm -f inet/out/clang-debug/src/applications/tcpapp/*_m.cc inet/out/clang-debug/src/applications/tcpapp/*_m.h
	-rm -f inet/out/clang-debug/src/applications/udpapp/*_m.cc inet/out/clang-debug/src/applications/udpapp/*_m.h
	-rm -f inet/out/clang-debug/src/base/*_m.cc inet/out/clang-debug/src/base/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/*_m.cc inet/out/clang-debug/src/linklayer/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/contract/*_m.cc inet/out/clang-debug/src/linklayer/contract/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/ethernet/*_m.cc inet/out/clang-debug/src/linklayer/ethernet/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/ext/*_m.cc inet/out/clang-debug/src/linklayer/ext/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/ieee80211/*_m.cc inet/out/clang-debug/src/linklayer/ieee80211/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/ieee80211/mac/*_m.cc inet/out/clang-debug/src/linklayer/ieee80211/mac/*_m.h
	-rm -f inet/out/clang-debug/src/linklayer/ieee80211/mgmt/*_m.cc inet/out/clang-debug/src/linklayer/ieee80211/mgmt/*_m.h
	-rm -f inet/src/*_m.cc inet/src/*_m.h
	-rm -f inet/src/applications/*_m.cc inet/src/applications/*_m.h
	-rm -f inet/src/applications/ethernet/*_m.cc inet/src/applications/ethernet/*_m.h
	-rm -f inet/src/applications/generic/*_m.cc inet/src/applications/generic/*_m.h
	-rm -f inet/src/applications/pingapp/*_m.cc inet/src/applications/pingapp/*_m.h
	-rm -f inet/src/applications/rtpapp/*_m.cc inet/src/applications/rtpapp/*_m.h
	-rm -f inet/src/applications/sctpapp/*_m.cc inet/src/applications/sctpapp/*_m.h
	-rm -f inet/src/applications/tcpapp/*_m.cc inet/src/applications/tcpapp/*_m.h
	-rm -f inet/src/applications/udpapp/*_m.cc inet/src/applications/udpapp/*_m.h
	-rm -f inet/src/base/*_m.cc inet/src/base/*_m.h
	-rm -f inet/src/linklayer/*_m.cc inet/src/linklayer/*_m.h
	-rm -f inet/src/linklayer/contract/*_m.cc inet/src/linklayer/contract/*_m.h
	-rm -f inet/src/linklayer/ethernet/*_m.cc inet/src/linklayer/ethernet/*_m.h
	-rm -f inet/src/linklayer/etherswitch/*_m.cc inet/src/linklayer/etherswitch/*_m.h
	-rm -f inet/src/linklayer/ext/*_m.cc inet/src/linklayer/ext/*_m.h
	-rm -f inet/src/linklayer/ieee80211/*_m.cc inet/src/linklayer/ieee80211/*_m.h
	-rm -f inet/src/linklayer/ieee80211/mac/*_m.cc inet/src/linklayer/ieee80211/mac/*_m.h
	-rm -f inet/src/linklayer/ieee80211/mgmt/*_m.cc inet/src/linklayer/ieee80211/mgmt/*_m.h
	-rm -f inet/src/linklayer/mf80211/*_m.cc inet/src/linklayer/mf80211/*_m.h
	-rm -f inet/src/linklayer/mf80211/macLayer/*_m.cc inet/src/linklayer/mf80211/macLayer/*_m.h
	-rm -f inet/src/linklayer/mf80211/phyLayer/*_m.cc inet/src/linklayer/mf80211/phyLayer/*_m.h
	-rm -f inet/src/linklayer/mf80211/phyLayer/decider/*_m.cc inet/src/linklayer/mf80211/phyLayer/decider/*_m.h
	-rm -f inet/src/linklayer/mf80211/phyLayer/snrEval/*_m.cc inet/src/linklayer/mf80211/phyLayer/snrEval/*_m.h
	-rm -f inet/src/linklayer/mfcore/*_m.cc inet/src/linklayer/mfcore/*_m.h
	-rm -f inet/src/linklayer/ppp/*_m.cc inet/src/linklayer/ppp/*_m.h
	-rm -f inet/src/linklayer/radio/*_m.cc inet/src/linklayer/radio/*_m.h
	-rm -f inet/src/mobility/*_m.cc inet/src/mobility/*_m.h
	-rm -f inet/src/networklayer/*_m.cc inet/src/networklayer/*_m.h
	-rm -f inet/src/networklayer/arp/*_m.cc inet/src/networklayer/arp/*_m.h
	-rm -f inet/src/networklayer/autorouting/*_m.cc inet/src/networklayer/autorouting/*_m.h
	-rm -f inet/src/networklayer/common/*_m.cc inet/src/networklayer/common/*_m.h
	-rm -f inet/src/networklayer/contract/*_m.cc inet/src/networklayer/contract/*_m.h
	-rm -f inet/src/networklayer/extras/*_m.cc inet/src/networklayer/extras/*_m.h
	-rm -f inet/src/networklayer/icmpv6/*_m.cc inet/src/networklayer/icmpv6/*_m.h
	-rm -f inet/src/networklayer/ipv4/*_m.cc inet/src/networklayer/ipv4/*_m.h
	-rm -f inet/src/networklayer/ipv6/*_m.cc inet/src/networklayer/ipv6/*_m.h
	-rm -f inet/src/networklayer/ldp/*_m.cc inet/src/networklayer/ldp/*_m.h
	-rm -f inet/src/networklayer/mpls/*_m.cc inet/src/networklayer/mpls/*_m.h
	-rm -f inet/src/networklayer/ospfv2/*_m.cc inet/src/networklayer/ospfv2/*_m.h
	-rm -f inet/src/networklayer/ospfv2/interface/*_m.cc inet/src/networklayer/ospfv2/interface/*_m.h
	-rm -f inet/src/networklayer/ospfv2/messagehandler/*_m.cc inet/src/networklayer/ospfv2/messagehandler/*_m.h
	-rm -f inet/src/networklayer/ospfv2/neighbor/*_m.cc inet/src/networklayer/ospfv2/neighbor/*_m.h
	-rm -f inet/src/networklayer/ospfv2/router/*_m.cc inet/src/networklayer/ospfv2/router/*_m.h
	-rm -f inet/src/networklayer/queue/*_m.cc inet/src/networklayer/queue/*_m.h
	-rm -f inet/src/networklayer/rsvp_te/*_m.cc inet/src/networklayer/rsvp_te/*_m.h
	-rm -f inet/src/networklayer/ted/*_m.cc inet/src/networklayer/ted/*_m.h
	-rm -f inet/src/nodes/*_m.cc inet/src/nodes/*_m.h
	-rm -f inet/src/nodes/adhoc/*_m.cc inet/src/nodes/adhoc/*_m.h
	-rm -f inet/src/nodes/ethernet/*_m.cc inet/src/nodes/ethernet/*_m.h
	-rm -f inet/src/nodes/inet/*_m.cc inet/src/nodes/inet/*_m.h
	-rm -f inet/src/nodes/ipv6/*_m.cc inet/src/nodes/ipv6/*_m.h
	-rm -f inet/src/nodes/mpls/*_m.cc inet/src/nodes/mpls/*_m.h
	-rm -f inet/src/nodes/wireless/*_m.cc inet/src/nodes/wireless/*_m.h
	-rm -f inet/src/transport/*_m.cc inet/src/transport/*_m.h
	-rm -f inet/src/transport/contract/*_m.cc inet/src/transport/contract/*_m.h
	-rm -f inet/src/transport/rtp/*_m.cc inet/src/transport/rtp/*_m.h
	-rm -f inet/src/transport/rtp/profiles/*_m.cc inet/src/transport/rtp/profiles/*_m.h
	-rm -f inet/src/transport/rtp/profiles/avprofile/*_m.cc inet/src/transport/rtp/profiles/avprofile/*_m.h
	-rm -f inet/src/transport/sctp/*_m.cc inet/src/transport/sctp/*_m.h
	-rm -f inet/src/transport/tcp/*_m.cc inet/src/transport/tcp/*_m.h
	-rm -f inet/src/transport/tcp/flavours/*_m.cc inet/src/transport/tcp/flavours/*_m.h
	-rm -f inet/src/transport/tcp/queues/*_m.cc inet/src/transport/tcp/queues/*_m.h
	-rm -f inet/src/transport/tcp_nsc/*_m.cc inet/src/transport/tcp_nsc/*_m.h
	-rm -f inet/src/transport/tcp_nsc/queues/*_m.cc inet/src/transport/tcp_nsc/queues/*_m.h
	-rm -f inet/src/transport/tcp_old/*_m.cc inet/src/transport/tcp_old/*_m.h
	-rm -f inet/src/transport/tcp_old/flavours/*_m.cc inet/src/transport/tcp_old/flavours/*_m.h
	-rm -f inet/src/transport/tcp_old/queues/*_m.cc inet/src/transport/tcp_old/queues/*_m.h
	-rm -f inet/src/transport/udp/*_m.cc inet/src/transport/udp/*_m.h
	-rm -f inet/src/util/*_m.cc inet/src/util/*_m.h
	-rm -f inet/src/util/headerserializers/*_m.cc inet/src/util/headerserializers/*_m.h
	-rm -f inet/src/util/headerserializers/headers/*_m.cc inet/src/util/headerserializers/headers/*_m.h
	-rm -f inet/src/world/*_m.cc inet/src/world/*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc FatTree/*.cc FatTree/simulations/*.cc FatTree/simulations/results/*.cc FatTree/src/*.cc FatTree/src/components/*.cc FatTree/src/ecmp/*.cc FatTree/src/logic/*.cc FatTree/src/logic/ipaddress/*.cc FatTree/src/logic/routing/*.cc FatTree/src/messages/*.cc FatTree/src/router/*.cc FatTree/src/tcpapp/*.cc FatTree/src/trafficgeneration/*.cc FatTree/src/util/*.cc inet/*.cc inet/doc/*.cc inet/doc/walkthrough/*.cc inet/doc/walkthrough/images/*.cc inet/doc/walkthrough/thumbs/*.cc inet/etc/*.cc inet/etc/plugins/*.cc inet/examples/*.cc inet/examples/adhoc/*.cc inet/examples/adhoc/ieee80211/*.cc inet/examples/adhoc/mf80211/*.cc inet/examples/adhoc/mobility/*.cc inet/examples/emulation/*.cc inet/examples/emulation/extclient/*.cc inet/examples/emulation/extserver/*.cc inet/examples/emulation/traceroute/*.cc inet/examples/ethernet/*.cc inet/examples/ethernet/arptest/*.cc inet/examples/ethernet/arptest2/*.cc inet/examples/ethernet/lans/*.cc inet/examples/inet/*.cc inet/examples/inet/ber/*.cc inet/examples/inet/bulktransfer/*.cc inet/examples/inet/flatnet/*.cc inet/examples/inet/kidsnw1/*.cc inet/examples/inet/multicast/*.cc inet/examples/inet/nclients/*.cc inet/examples/inet/redtest/*.cc inet/examples/inet/routerperf/*.cc inet/examples/inet/tcpclientserver/*.cc inet/examples/inet/tcpsack/*.cc inet/examples/inet/tcptimestamps/*.cc inet/examples/inet/tcpwindowscale/*.cc inet/examples/ipv6/*.cc inet/examples/ipv6/demonetworketh/*.cc inet/examples/ipv6/ipv6bulk/*.cc inet/examples/ipv6/ipv6nclients/*.cc inet/examples/ipv6/nclients/*.cc inet/examples/mpls/*.cc inet/examples/mpls/ldp/*.cc inet/examples/mpls/net37/*.cc inet/examples/mpls/testte_failure/*.cc inet/examples/mpls/testte_failure2/*.cc inet/examples/mpls/testte_reroute/*.cc inet/examples/mpls/testte_routing/*.cc inet/examples/mpls/testte_tunnel/*.cc inet/examples/ospfv2/*.cc inet/examples/ospfv2/areas/*.cc inet/examples/ospfv2/backbone/*.cc inet/examples/ospfv2/fulltest/*.cc inet/examples/ospfv2/simpletest/*.cc inet/examples/rtp/*.cc inet/examples/rtp/data/*.cc inet/examples/rtp/multicast1/*.cc inet/examples/rtp/multicast2/*.cc inet/examples/rtp/unicast/*.cc inet/examples/sctp/*.cc inet/examples/sctp/multihomed/*.cc inet/examples/sctp/nclients/*.cc inet/examples/wireless/*.cc inet/examples/wireless/handover/*.cc inet/examples/wireless/hosttohost/*.cc inet/examples/wireless/lan80211/*.cc inet/examples/wireless/throughput/*.cc inet/migrate/*.cc inet/out/*.cc inet/out/clang-debug/*.cc inet/out/clang-debug/src/*.cc inet/out/clang-debug/src/applications/*.cc inet/out/clang-debug/src/applications/ethernet/*.cc inet/out/clang-debug/src/applications/pingapp/*.cc inet/out/clang-debug/src/applications/tcpapp/*.cc inet/out/clang-debug/src/applications/udpapp/*.cc inet/out/clang-debug/src/base/*.cc inet/out/clang-debug/src/linklayer/*.cc inet/out/clang-debug/src/linklayer/contract/*.cc inet/out/clang-debug/src/linklayer/ethernet/*.cc inet/out/clang-debug/src/linklayer/ext/*.cc inet/out/clang-debug/src/linklayer/ieee80211/*.cc inet/out/clang-debug/src/linklayer/ieee80211/mac/*.cc inet/out/clang-debug/src/linklayer/ieee80211/mgmt/*.cc inet/src/*.cc inet/src/applications/*.cc inet/src/applications/ethernet/*.cc inet/src/applications/generic/*.cc inet/src/applications/pingapp/*.cc inet/src/applications/rtpapp/*.cc inet/src/applications/sctpapp/*.cc inet/src/applications/tcpapp/*.cc inet/src/applications/udpapp/*.cc inet/src/base/*.cc inet/src/linklayer/*.cc inet/src/linklayer/contract/*.cc inet/src/linklayer/ethernet/*.cc inet/src/linklayer/etherswitch/*.cc inet/src/linklayer/ext/*.cc inet/src/linklayer/ieee80211/*.cc inet/src/linklayer/ieee80211/mac/*.cc inet/src/linklayer/ieee80211/mgmt/*.cc inet/src/linklayer/mf80211/*.cc inet/src/linklayer/mf80211/macLayer/*.cc inet/src/linklayer/mf80211/phyLayer/*.cc inet/src/linklayer/mf80211/phyLayer/decider/*.cc inet/src/linklayer/mf80211/phyLayer/snrEval/*.cc inet/src/linklayer/mfcore/*.cc inet/src/linklayer/ppp/*.cc inet/src/linklayer/radio/*.cc inet/src/mobility/*.cc inet/src/networklayer/*.cc inet/src/networklayer/arp/*.cc inet/src/networklayer/autorouting/*.cc inet/src/networklayer/common/*.cc inet/src/networklayer/contract/*.cc inet/src/networklayer/extras/*.cc inet/src/networklayer/icmpv6/*.cc inet/src/networklayer/ipv4/*.cc inet/src/networklayer/ipv6/*.cc inet/src/networklayer/ldp/*.cc inet/src/networklayer/mpls/*.cc inet/src/networklayer/ospfv2/*.cc inet/src/networklayer/ospfv2/interface/*.cc inet/src/networklayer/ospfv2/messagehandler/*.cc inet/src/networklayer/ospfv2/neighbor/*.cc inet/src/networklayer/ospfv2/router/*.cc inet/src/networklayer/queue/*.cc inet/src/networklayer/rsvp_te/*.cc inet/src/networklayer/ted/*.cc inet/src/nodes/*.cc inet/src/nodes/adhoc/*.cc inet/src/nodes/ethernet/*.cc inet/src/nodes/inet/*.cc inet/src/nodes/ipv6/*.cc inet/src/nodes/mpls/*.cc inet/src/nodes/wireless/*.cc inet/src/transport/*.cc inet/src/transport/contract/*.cc inet/src/transport/rtp/*.cc inet/src/transport/rtp/profiles/*.cc inet/src/transport/rtp/profiles/avprofile/*.cc inet/src/transport/sctp/*.cc inet/src/transport/tcp/*.cc inet/src/transport/tcp/flavours/*.cc inet/src/transport/tcp/queues/*.cc inet/src/transport/tcp_nsc/*.cc inet/src/transport/tcp_nsc/queues/*.cc inet/src/transport/tcp_old/*.cc inet/src/transport/tcp_old/flavours/*.cc inet/src/transport/tcp_old/queues/*.cc inet/src/transport/udp/*.cc inet/src/util/*.cc inet/src/util/headerserializers/*.cc inet/src/util/headerserializers/headers/*.cc inet/src/world/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/FatTree/src/ecmp/ConfigECMPRouting.o: FatTree/src/ecmp/ConfigECMPRouting.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  FatTree/src/ecmp/ConfigECMPRouting.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/ModuleAccess.h \
  FatTree/src/ecmp/ecmpTopo.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h
$O/FatTree/src/ecmp/ECMPRoutingTable.o: FatTree/src/ecmp/ECMPRoutingTable.cc \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  FatTree/src/ecmp/ECMPRoutingTable.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h
$O/FatTree/src/ecmp/IPECMP.o: FatTree/src/ecmp/IPECMP.cc \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/base/ProtocolMap.h \
  FatTree/src/ecmp/ECMPRoutingTable.h \
  inet/src/networklayer/arp/ARPPacket_m.h \
  inet/src/networklayer/ipv4/IPFragBuf.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/AbstractQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/base/ReassemblyBuffer.h \
  inet/src/networklayer/ipv4/ICMPAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  FatTree/src/ecmp/IPECMP.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/ICMP.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/QueueBase.h \
  inet/src/networklayer/ipv4/RoutingTable.h
$O/FatTree/src/ecmp/ecmpTopo.o: FatTree/src/ecmp/ecmpTopo.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  FatTree/src/ecmp/ecmpTopo.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/FatTree/src/logic/ipaddress/AggIPConfig.o: FatTree/src/logic/ipaddress/AggIPConfig.cc \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/logic/ipaddress/AggIPConfig.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h
$O/FatTree/src/logic/ipaddress/ContIPConfig.o: FatTree/src/logic/ipaddress/ContIPConfig.cc \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  FatTree/src/logic/ipaddress/ContIPConfig.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h
$O/FatTree/src/logic/ipaddress/CoreIPConfig.o: FatTree/src/logic/ipaddress/CoreIPConfig.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  FatTree/src/logic/ipaddress/CoreIPConfig.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h
$O/FatTree/src/logic/ipaddress/EdgeIPConfig.o: FatTree/src/logic/ipaddress/EdgeIPConfig.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  FatTree/src/logic/ipaddress/EdgeIPConfig.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h
$O/FatTree/src/logic/ipaddress/ServerIPConfig.o: FatTree/src/logic/ipaddress/ServerIPConfig.cc \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  FatTree/src/logic/ipaddress/ServerIPConfig.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h
$O/FatTree/src/logic/ipaddress/VMIPConfig.o: FatTree/src/logic/ipaddress/VMIPConfig.cc \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  FatTree/src/logic/ipaddress/VMIPConfig.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h
$O/FatTree/src/logic/routing/ConfigRouting.o: FatTree/src/logic/routing/ConfigRouting.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  FatTree/src/logic/routing/ConfigRouting.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h
$O/FatTree/src/messages/ReplyMsg_m.o: FatTree/src/messages/ReplyMsg_m.cc \
  inet/src/base/INETDefs.h \
  FatTree/src/messages/ReplyMsg_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/RequestMsg_m.o: FatTree/src/messages/RequestMsg_m.cc \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/base/INETDefs.h
$O/FatTree/src/messages/ShutDownHV_m.o: FatTree/src/messages/ShutDownHV_m.cc \
  inet/src/base/INETDefs.h \
  FatTree/src/messages/ShutDownHV_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/ShutDownVM_m.o: FatTree/src/messages/ShutDownVM_m.cc \
  FatTree/src/messages/ShutDownVM_m.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/StartClient_m.o: FatTree/src/messages/StartClient_m.cc \
  inet/src/base/INETDefs.h \
  FatTree/src/messages/StartClient_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/StartHV_m.o: FatTree/src/messages/StartHV_m.cc \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/messages/StartHV_m.h \
  inet/src/base/INETDefs.h
$O/FatTree/src/messages/StartVM_m.o: FatTree/src/messages/StartVM_m.cc \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/messages/StartVM_m.h \
  inet/src/base/INETDefs.h
$O/FatTree/src/messages/StopClient_m.o: FatTree/src/messages/StopClient_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/messages/StopClient_m.h
$O/FatTree/src/messages/TTimerCon_m.o: FatTree/src/messages/TTimerCon_m.cc \
  inet/src/base/INETDefs.h \
  FatTree/src/messages/TTimerCon_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/TTimer_m.o: FatTree/src/messages/TTimer_m.cc \
  FatTree/src/messages/TTimer_m.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/messages/VMMigMsg_m.o: FatTree/src/messages/VMMigMsg_m.cc \
  FatTree/src/messages/VMMigMsg_m.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/base/INETDefs.h
$O/FatTree/src/tcpapp/AggRouterApp.o: FatTree/src/tcpapp/AggRouterApp.cc \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/util/ServerMap.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  FatTree/src/tcpapp/AggRouterApp.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h
$O/FatTree/src/tcpapp/CoreRouterApp.o: FatTree/src/tcpapp/CoreRouterApp.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/tcpapp/CoreRouterApp.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/tcpapp/DCTCPControllerApp.o: FatTree/src/tcpapp/DCTCPControllerApp.cc \
  inet/src/networklayer/common/IInterfaceTable.h \
  FatTree/src/tcpapp/SystemController.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/util/ClientTimeMap.h \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  FatTree/src/tcpapp/VirtualMachineApp.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/messages/TTimerCon_m.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/messages/StartClient_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/messages/ReplyMsg_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/tcpapp/HyperVisorApp.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h
$O/FatTree/src/tcpapp/DCTCPControllerThread.o: FatTree/src/tcpapp/DCTCPControllerThread.cc \
  FatTree/src/tcpapp/DCTCPControllerThread.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/ReplyMsg_m.h
$O/FatTree/src/tcpapp/DCTrafGenApp.o: FatTree/src/tcpapp/DCTrafGenApp.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPBasicClientApp.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/messages/ReplyMsg_m.h \
  inet/src/applications/tcpapp/TCPGenericCliAppBase.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/tcpapp/DCTrafGenApp.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/FatTree/src/tcpapp/EdgeRouterApp.o: FatTree/src/tcpapp/EdgeRouterApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/tcpapp/EdgeRouterApp.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/FatTree/src/tcpapp/ExtTrafficGenerationApp.o: FatTree/src/tcpapp/ExtTrafficGenerationApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/StopClient_m.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/tcpapp/ExtTrafficGenerationApp.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/messages/TTimer_m.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h
$O/FatTree/src/tcpapp/HyperVisorApp.o: FatTree/src/tcpapp/HyperVisorApp.cc \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/tcpapp/HyperVisorApp.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/util/TCPVMSet.h \
  FatTree/src/tcpapp/VirtualMachineApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h
$O/FatTree/src/tcpapp/HyperVisorThread.o: FatTree/src/tcpapp/HyperVisorThread.cc \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/util/TCPVMSet.h \
  FatTree/src/tcpapp/VirtualMachineApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/ShutDownHV_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/messages/StartHV_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/tcpapp/HyperVisorApp.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/tcpapp/HyperVisorThread.h
$O/FatTree/src/tcpapp/SystemController.o: FatTree/src/tcpapp/SystemController.cc \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/util/ClientTimeMap.h \
  FatTree/src/tcpapp/SystemController.h \
  inet/src/transport/contract/TCPCommand_m.h \
  FatTree/src/messages/ShutDownVM_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/messages/StartVM_m.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/StartClient_m.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/StopClient_m.h
$O/FatTree/src/tcpapp/SystemControllerThread.o: FatTree/src/tcpapp/SystemControllerThread.cc \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ClientTimeMap.h \
  FatTree/src/tcpapp/SystemController.h \
  inet/src/transport/contract/TCPCommand_m.h \
  FatTree/src/messages/ShutDownVM_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/tcpapp/SystemControllerThread.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/messages/StartVM_m.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/StartClient_m.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/messages/StopClient_m.h
$O/FatTree/src/tcpapp/TGAppWithIAT.o: FatTree/src/tcpapp/TGAppWithIAT.cc \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/tcpapp/TGAppWithIAT.h \
  FatTree/src/messages/StopClient_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/messages/TTimer_m.h \
  FatTree/src/util/ServiceMap.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h
$O/FatTree/src/tcpapp/TGTestApp.o: FatTree/src/tcpapp/TGTestApp.cc \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/tcpapp/TGTestApp.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/messages/StopClient_m.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/util/ServerMap.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/messages/TTimer_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h
$O/FatTree/src/tcpapp/TrafficGenerationApp.o: FatTree/src/tcpapp/TrafficGenerationApp.cc \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  FatTree/src/tcpapp/TrafficGenerationApp.h
$O/FatTree/src/tcpapp/TrafficGenerationThread.o: FatTree/src/tcpapp/TrafficGenerationThread.cc \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/tcpapp/TrafficGenerationThread.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/messages/StartClient_m.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/util/ServerMap.h \
  FatTree/src/tcpapp/TGAppWithIAT.h \
  FatTree/src/messages/StopClient_m.h \
  FatTree/src/messages/ReplyMsg_m.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  FatTree/src/messages/TTimer_m.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/FatTree/src/tcpapp/VirtualMachineApp.o: FatTree/src/tcpapp/VirtualMachineApp.cc \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/tcpapp/HyperVisorApp.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/util/ServerMap.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  FatTree/src/logic/routing/ConfigRouting.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/util/ServerStateMap.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/messages/RequestMsg_m.h \
  FatTree/src/tcpapp/VirtualMachineApp.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/IInterfaceTable.h
$O/FatTree/src/tcpapp/VirtualMachineThread.o: FatTree/src/tcpapp/VirtualMachineThread.cc \
  FatTree/src/logic/routing/ConfigRouting.h \
  FatTree/src/messages/ReplyMsg_m.h \
  FatTree/src/util/SocketMapExt.h \
  FatTree/src/tcpapp/HyperVisorApp.h \
  FatTree/src/messages/VMMigMsg_m.h \
  FatTree/src/tcpapp/VirtualMachineThread.h \
  FatTree/src/messages/StartHV_m.h \
  FatTree/src/util/ServerMap.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/transport/contract/TCPSocketMap.h \
  FatTree/src/messages/StartVM_m.h \
  FatTree/src/messages/ShutDownHV_m.h \
  inet/src/transport/contract/TCPSocket.h \
  FatTree/src/util/ServerStateMap.h \
  FatTree/src/messages/RequestMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/tcpapp/VirtualMachineApp.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPCommand_m.h \
  FatTree/src/messages/ShutDownVM_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  FatTree/src/tcpapp/DCTCPControllerApp.h \
  FatTree/src/util/ServiceMap.h
$O/FatTree/src/util/ClientTimeMap.o: FatTree/src/util/ClientTimeMap.cc \
  FatTree/src/util/ClientTimeMap.h
$O/FatTree/src/util/ServerMap.o: FatTree/src/util/ServerMap.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  FatTree/src/util/ServerMap.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/FatTree/src/util/ServerStateMap.o: FatTree/src/util/ServerStateMap.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  FatTree/src/util/ServerStateMap.h
$O/FatTree/src/util/ServiceMap.o: FatTree/src/util/ServiceMap.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/util/ServiceMap.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/FatTree/src/util/SocketMapExt.o: FatTree/src/util/SocketMapExt.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  FatTree/src/util/SocketMapExt.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/transport/contract/TCPSocket.h
$O/FatTree/src/util/TCPHVSet.o: FatTree/src/util/TCPHVSet.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  FatTree/src/util/TCPHVSet.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/FatTree/src/util/TCPVMSet.o: FatTree/src/util/TCPVMSet.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  FatTree/src/util/TCPVMSet.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/applications/ethernet/EtherAppCli.o: inet/src/applications/ethernet/EtherAppCli.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/applications/ethernet/EtherAppCli.h \
  inet/src/applications/ethernet/EtherApp_m.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/applications/ethernet/EtherAppSrv.o: inet/src/applications/ethernet/EtherAppSrv.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/applications/ethernet/EtherApp_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/applications/ethernet/EtherAppSrv.h
$O/inet/src/applications/ethernet/EtherApp_m.o: inet/src/applications/ethernet/EtherApp_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/applications/ethernet/EtherApp_m.h
$O/inet/src/applications/generic/IPTrafGen.o: inet/src/applications/generic/IPTrafGen.cc \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/applications/generic/IPTrafGen.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h
$O/inet/src/applications/pingapp/PingApp.o: inet/src/applications/pingapp/PingApp.cc \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/applications/pingapp/PingApp.h \
  inet/src/applications/pingapp/PingPayload_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h
$O/inet/src/applications/pingapp/PingPayload_m.o: inet/src/applications/pingapp/PingPayload_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/applications/pingapp/PingPayload_m.h
$O/inet/src/applications/rtpapp/RTPApplication.o: inet/src/applications/rtpapp/RTPApplication.cc \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPInterfacePacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/applications/rtpapp/RTPApplication.h \
  inet/src/base/INETDefs.h
$O/inet/src/applications/sctpapp/SCTPClient.o: inet/src/applications/sctpapp/SCTPClient.cc \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/applications/sctpapp/SCTPClient.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/transport/contract/SCTPSocket.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h
$O/inet/src/applications/sctpapp/SCTPPeer.o: inet/src/applications/sctpapp/SCTPPeer.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/SCTPSocket.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/applications/sctpapp/SCTPPeer.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h
$O/inet/src/applications/sctpapp/SCTPServer.o: inet/src/applications/sctpapp/SCTPServer.cc \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPSocket.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/applications/sctpapp/SCTPServer.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h
$O/inet/src/applications/tcpapp/GenericAppMsg_m.o: inet/src/applications/tcpapp/GenericAppMsg_m.cc \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/applications/tcpapp/TCPBasicClientApp.o: inet/src/applications/tcpapp/TCPBasicClientApp.cc \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/TCPGenericCliAppBase.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPBasicClientApp.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/applications/tcpapp/TCPEchoApp.o: inet/src/applications/tcpapp/TCPEchoApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPEchoApp.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h
$O/inet/src/applications/tcpapp/TCPGenericCliAppBase.o: inet/src/applications/tcpapp/TCPGenericCliAppBase.cc \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/TCPGenericCliAppBase.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h
$O/inet/src/applications/tcpapp/TCPGenericSrvApp.o: inet/src/applications/tcpapp/TCPGenericSrvApp.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/applications/tcpapp/TCPGenericSrvApp.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/inet/src/applications/tcpapp/TCPGenericSrvThread.o: inet/src/applications/tcpapp/TCPGenericSrvThread.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/GenericAppMsg_m.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/applications/tcpapp/TCPGenericSrvThread.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h
$O/inet/src/applications/tcpapp/TCPSessionApp.o: inet/src/applications/tcpapp/TCPSessionApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/applications/tcpapp/TCPSessionApp.h
$O/inet/src/applications/tcpapp/TCPSinkApp.o: inet/src/applications/tcpapp/TCPSinkApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/applications/tcpapp/TCPSinkApp.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/applications/tcpapp/TCPSpoof.o: inet/src/applications/tcpapp/TCPSpoof.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/tcpapp/TCPSpoof.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h
$O/inet/src/applications/tcpapp/TCPSrvHostApp.o: inet/src/applications/tcpapp/TCPSrvHostApp.cc \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/TCPSrvHostApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/applications/tcpapp/TelnetApp.o: inet/src/applications/tcpapp/TelnetApp.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/applications/tcpapp/TelnetApp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/tcpapp/TCPGenericCliAppBase.h
$O/inet/src/applications/udpapp/UDPAppBase.o: inet/src/applications/udpapp/UDPAppBase.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/applications/udpapp/UDPAppBase.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/applications/udpapp/UDPBasicApp.o: inet/src/applications/udpapp/UDPBasicApp.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/applications/udpapp/UDPAppBase.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/udpapp/UDPBasicApp.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/applications/udpapp/UDPEchoApp.o: inet/src/applications/udpapp/UDPEchoApp.cc \
  inet/src/applications/udpapp/UDPBasicApp.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/udpapp/UDPAppBase.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/applications/udpapp/UDPEchoApp.h \
  inet/src/applications/udpapp/UDPEchoAppMsg_m.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/applications/udpapp/UDPEchoAppMsg_m.o: inet/src/applications/udpapp/UDPEchoAppMsg_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/applications/udpapp/UDPEchoAppMsg_m.h
$O/inet/src/applications/udpapp/UDPSink.o: inet/src/applications/udpapp/UDPSink.cc \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/udpapp/UDPSink.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/udpapp/UDPAppBase.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/applications/udpapp/UDPVideoStreamCli.o: inet/src/applications/udpapp/UDPVideoStreamCli.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/applications/udpapp/UDPVideoStreamCli.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/applications/udpapp/UDPAppBase.h
$O/inet/src/applications/udpapp/UDPVideoStreamSvr.o: inet/src/applications/udpapp/UDPVideoStreamSvr.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/applications/udpapp/UDPVideoStreamSvr.h \
  inet/src/applications/udpapp/UDPAppBase.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPControlInfo_m.h
$O/inet/src/base/AbstractQueue.o: inet/src/base/AbstractQueue.cc \
  inet/src/base/AbstractQueue.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/BasicModule.o: inet/src/base/BasicModule.cc \
  inet/src/base/BasicModule.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/Blackboard.o: inet/src/base/Blackboard.cc \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/Blackboard.h
$O/inet/src/base/ByteArrayMessage.o: inet/src/base/ByteArrayMessage.cc \
  inet/src/base/ByteArrayMessage.h \
  inet/src/base/ByteArrayMessage_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/ByteArrayMessage_m.o: inet/src/base/ByteArrayMessage_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/ByteArrayMessage_m.h
$O/inet/src/base/Join.o: inet/src/base/Join.cc \
  inet/src/base/INETDefs.h
$O/inet/src/base/ModuleAccess.o: inet/src/base/ModuleAccess.cc \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/NotificationBoard.o: inet/src/base/NotificationBoard.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/NotifierConsts.o: inet/src/base/NotifierConsts.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h
$O/inet/src/base/PassiveQueueBase.o: inet/src/base/PassiveQueueBase.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/base/IPassiveQueue.h
$O/inet/src/base/ProtocolMap.o: inet/src/base/ProtocolMap.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/ProtocolMap.h
$O/inet/src/base/QueueBase.o: inet/src/base/QueueBase.cc \
  inet/src/base/AbstractQueue.h \
  inet/src/base/QueueBase.h \
  inet/src/base/INETDefs.h
$O/inet/src/base/QueueWithQoS.o: inet/src/base/QueueWithQoS.cc \
  inet/src/base/QueueWithQoS.h \
  inet/src/base/INETDefs.h \
  inet/src/base/EnqueueHook.h \
  inet/src/base/AbstractQueue.h
$O/inet/src/base/ReassemblyBuffer.o: inet/src/base/ReassemblyBuffer.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/ReassemblyBuffer.h
$O/inet/src/base/Sink.o: inet/src/base/Sink.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/Sink.h
$O/inet/src/linklayer/contract/Ieee802Ctrl_m.o: inet/src/linklayer/contract/Ieee802Ctrl_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/linklayer/contract/MACAddress.o: inet/src/linklayer/contract/MACAddress.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/linklayer/contract/PhyControlInfo_m.o: inet/src/linklayer/contract/PhyControlInfo_m.cc \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/ethernet/EtherBus.o: inet/src/linklayer/ethernet/EtherBus.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherBus.h
$O/inet/src/linklayer/ethernet/EtherEncap.o: inet/src/linklayer/ethernet/EtherEncap.cc \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ethernet/EtherMACBase.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/ethernet/EtherEncap.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/ethernet/EtherMAC.h
$O/inet/src/linklayer/ethernet/EtherFrame_m.o: inet/src/linklayer/ethernet/EtherFrame_m.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/ethernet/EtherHub.o: inet/src/linklayer/ethernet/EtherHub.cc \
  inet/src/linklayer/ethernet/EtherHub.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/ethernet/EtherLLC.o: inet/src/linklayer/ethernet/EtherLLC.cc \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ethernet/EtherLLC.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/ethernet/EtherMAC.o: inet/src/linklayer/ethernet/EtherMAC.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/ethernet/EtherMAC.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ethernet/EtherMACBase.h \
  inet/src/base/INotifiable.h
$O/inet/src/linklayer/ethernet/EtherMAC2.o: inet/src/linklayer/ethernet/EtherMAC2.cc \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/ethernet/EtherMACBase.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/linklayer/ethernet/EtherMAC2.h
$O/inet/src/linklayer/ethernet/EtherMACBase.o: inet/src/linklayer/ethernet/EtherMACBase.cc \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/linklayer/ethernet/EtherMACBase.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/etherswitch/MACRelayUnitBase.o: inet/src/linklayer/etherswitch/MACRelayUnitBase.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/etherswitch/MACRelayUnitBase.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/etherswitch/MACRelayUnitNP.o: inet/src/linklayer/etherswitch/MACRelayUnitNP.cc \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/etherswitch/MACRelayUnitBase.h \
  inet/src/linklayer/etherswitch/MACRelayUnitNP.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/linklayer/etherswitch/MACRelayUnitPP.o: inet/src/linklayer/etherswitch/MACRelayUnitPP.cc \
  inet/src/linklayer/etherswitch/MACRelayUnitBase.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/linklayer/etherswitch/MACRelayUnitPP.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/ext/ExtFrame_m.o: inet/src/linklayer/ext/ExtFrame_m.cc \
  inet/src/linklayer/ext/ExtFrame_m.h
$O/inet/src/linklayer/ext/ExtInterface.o: inet/src/linklayer/ext/ExtInterface.cc \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/linklayer/ext/ExtFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  inet/src/util/headerserializers/IPSerializer.h \
  inet/src/linklayer/ext/ExtInterface.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/ext/cSocketRTScheduler.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/linklayer/ext/cSocketRTScheduler.o: inet/src/linklayer/ext/cSocketRTScheduler.cc \
  inet/src/linklayer/ext/cSocketRTScheduler.h \
  inet/src/base/INETDefs.h \
  inet/src/util/headerserializers/headers/ethernet.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/linklayer/ext/ExtFrame_m.h
$O/inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.o: inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h
$O/inet/src/linklayer/ieee80211/mac/Ieee80211Mac.o: inet/src/linklayer/ieee80211/mac/Ieee80211Mac.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/FSMA.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Mac.h \
  inet/src/linklayer/mfcore/WirelessMacBase.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Consts.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211AgentSTA.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211AgentSTA.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211AgentSTA.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAP.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAP.cc \
  inet/src/base/IPassiveQueue.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAP.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ethernet/Ethernet.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.cc \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPSimplified.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPSimplified.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ethernet/EtherFrame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPSimplified.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAPBase.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/linklayer/ethernet/Ethernet.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAdhoc.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAdhoc.cc \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtAdhoc.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.cc \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/PassiveQueueBase.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTA.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTA.cc \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTA.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/IPassiveQueue.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTASimplified.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTASimplified.cc \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtBase.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtSTASimplified.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.o: inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.cc \
  inet/src/linklayer/ieee80211/mac/Ieee80211Frame_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211MgmtFrames_m.h \
  inet/src/linklayer/ieee80211/mgmt/Ieee80211Primitives_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/mf80211/macLayer/CSMAMacLayer.o: inet/src/linklayer/mf80211/macLayer/CSMAMacLayer.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/linklayer/mf80211/macLayer/MacPkt_m.h \
  inet/src/linklayer/mf80211/macLayer/CSMAMacLayer.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/linklayer/mfcore/WirelessMacBase.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/linklayer/mf80211/macLayer/Mac80211.o: inet/src/linklayer/mf80211/macLayer/Mac80211.cc \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/mf80211/macLayer/MacPkt_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/linklayer/mfcore/WirelessMacBase.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/linklayer/mf80211/macLayer/Mac80211.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/mf80211/macLayer/Consts80211.h \
  inet/src/linklayer/mf80211/macLayer/Mac80211Pkt_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceTableAccess.h
$O/inet/src/linklayer/mf80211/macLayer/Mac80211Pkt_m.o: inet/src/linklayer/mf80211/macLayer/Mac80211Pkt_m.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/linklayer/mf80211/macLayer/Mac80211Pkt_m.h \
  inet/src/linklayer/mf80211/macLayer/MacPkt_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/mf80211/macLayer/MacPkt_m.o: inet/src/linklayer/mf80211/macLayer/MacPkt_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/mf80211/macLayer/MacPkt_m.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/linklayer/mf80211/phyLayer/decider/Decider80211.o: inet/src/linklayer/mf80211/phyLayer/decider/Decider80211.cc \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/mf80211/macLayer/Consts80211.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/BasicDecider.h \
  inet/src/base/BasicModule.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/mf80211/phyLayer/decider/Decider80211.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h
$O/inet/src/linklayer/mf80211/phyLayer/decider/ErrAndCollDecider.o: inet/src/linklayer/mf80211/phyLayer/decider/ErrAndCollDecider.cc \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/mf80211/phyLayer/decider/SnrDecider.h \
  inet/src/util/FWMath.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/mfcore/BasicDecider.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mf80211/phyLayer/decider/ErrAndCollDecider.h
$O/inet/src/linklayer/mf80211/phyLayer/decider/SnrDecider.o: inet/src/linklayer/mf80211/phyLayer/decider/SnrDecider.cc \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/BasicDecider.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/linklayer/mf80211/phyLayer/decider/SnrDecider.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h
$O/inet/src/linklayer/mf80211/phyLayer/snrEval/GilbertElliotSnr.o: inet/src/linklayer/mf80211/phyLayer/snrEval/GilbertElliotSnr.cc \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.h \
  inet/src/linklayer/mf80211/phyLayer/snrEval/GilbertElliotSnr.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/base/BasicModule.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/linklayer/mfcore/BasicSnrEval.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h
$O/inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.o: inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.cc \
  inet/src/linklayer/mfcore/BasicSnrEval.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.h \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/base/BasicModule.h
$O/inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval80211.o: inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval80211.cc \
  inet/src/util/FWMath.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/linklayer/mfcore/BasicSnrEval.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mf80211/phyLayer/snrEval/SnrEval80211.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/mf80211/macLayer/Consts80211.h \
  inet/src/world/ChannelAccess.h
$O/inet/src/linklayer/mfcore/AirFrame_m.o: inet/src/linklayer/mfcore/AirFrame_m.cc \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/AirFrame_m.h
$O/inet/src/linklayer/mfcore/BasicDecider.o: inet/src/linklayer/mfcore/BasicDecider.cc \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/BasicDecider.h
$O/inet/src/linklayer/mfcore/BasicSnrEval.o: inet/src/linklayer/mfcore/BasicSnrEval.cc \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/mfcore/BasicSnrEval.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/linklayer/mfcore/TransmComplete_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/BasicModule.h
$O/inet/src/linklayer/mfcore/SnrControlInfo_m.o: inet/src/linklayer/mfcore/SnrControlInfo_m.cc \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/mfcore/SnrControlInfo_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/mfcore/TransmComplete_m.o: inet/src/linklayer/mfcore/TransmComplete_m.cc \
  inet/src/linklayer/mfcore/TransmComplete_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/mfcore/WirelessMacBase.o: inet/src/linklayer/mfcore/WirelessMacBase.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/mfcore/WirelessMacBase.h \
  inet/src/base/INotifiable.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/linklayer/ppp/DropsGenerator.o: inet/src/linklayer/ppp/DropsGenerator.cc \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ppp/DropsGenerator.h
$O/inet/src/linklayer/ppp/DuplicatesGenerator.o: inet/src/linklayer/ppp/DuplicatesGenerator.cc \
  inet/src/linklayer/ppp/DuplicatesGenerator.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/ppp/PPP.o: inet/src/linklayer/ppp/PPP.cc \
  inet/src/linklayer/ppp/PPP.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/linklayer/ppp/PPPFrame_m.h
$O/inet/src/linklayer/ppp/PPPFrame_m.o: inet/src/linklayer/ppp/PPPFrame_m.cc \
  inet/src/linklayer/ppp/PPPFrame_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/ppp/ThruputMeter.o: inet/src/linklayer/ppp/ThruputMeter.cc \
  inet/src/linklayer/ppp/ThruputMeter.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/radio/AbstractRadio.o: inet/src/linklayer/radio/AbstractRadio.cc \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/linklayer/radio/AbstractRadio.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/PhyControlInfo_m.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Consts.h \
  inet/src/util/FWMath.h \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/radio/IRadioModel.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/radio/IReceptionModel.h
$O/inet/src/linklayer/radio/GenericRadio.o: inet/src/linklayer/radio/GenericRadio.cc \
  inet/src/linklayer/radio/AbstractRadio.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h \
  inet/src/linklayer/radio/IReceptionModel.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/radio/GenericRadio.h \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/radio/IRadioModel.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/linklayer/radio/GenericRadioModel.o: inet/src/linklayer/radio/GenericRadioModel.cc \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/SnrList.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/radio/IModulation.h \
  inet/src/linklayer/radio/GenericRadioModel.h \
  inet/src/linklayer/radio/Modulation.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/radio/IRadioModel.h
$O/inet/src/linklayer/radio/Ieee80211Radio.o: inet/src/linklayer/radio/Ieee80211Radio.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/radio/IRadioModel.h \
  inet/src/world/ChannelAccess.h \
  inet/src/linklayer/radio/IReceptionModel.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/contract/RadioState.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/radio/AbstractRadio.h \
  inet/src/linklayer/radio/Ieee80211Radio.h \
  inet/src/linklayer/mfcore/SnrList.h
$O/inet/src/linklayer/radio/Ieee80211RadioModel.o: inet/src/linklayer/radio/Ieee80211RadioModel.cc \
  inet/src/linklayer/radio/Ieee80211RadioModel.h \
  inet/src/linklayer/radio/IRadioModel.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/linklayer/ieee80211/mac/Ieee80211Consts.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/SnrList.h
$O/inet/src/linklayer/radio/Modulation.o: inet/src/linklayer/radio/Modulation.cc \
  inet/src/linklayer/radio/Modulation.h \
  inet/src/linklayer/radio/IModulation.h \
  inet/src/base/INETDefs.h
$O/inet/src/linklayer/radio/PathLossReceptionModel.o: inet/src/linklayer/radio/PathLossReceptionModel.cc \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/linklayer/radio/IReceptionModel.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h \
  inet/src/linklayer/radio/PathLossReceptionModel.h \
  inet/src/util/FWMath.h
$O/inet/src/mobility/ANSimMobility.o: inet/src/mobility/ANSimMobility.cc \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/LineSegmentsMobilityBase.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/ANSimMobility.h \
  inet/src/base/BasicModule.h
$O/inet/src/mobility/BasicMobility.o: inet/src/mobility/BasicMobility.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/BasicModule.h
$O/inet/src/mobility/BonnMotionFileCache.o: inet/src/mobility/BonnMotionFileCache.cc \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BonnMotionFileCache.h \
  inet/src/base/BasicModule.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h
$O/inet/src/mobility/BonnMotionMobility.o: inet/src/mobility/BonnMotionMobility.cc \
  inet/src/mobility/BasicMobility.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BonnMotionMobility.h \
  inet/src/mobility/LineSegmentsMobilityBase.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/BonnMotionFileCache.h \
  inet/src/base/BasicModule.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h
$O/inet/src/mobility/CircleMobility.o: inet/src/mobility/CircleMobility.cc \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/mobility/CircleMobility.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/BasicModule.h
$O/inet/src/mobility/ConstSpeedMobility.o: inet/src/mobility/ConstSpeedMobility.cc \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/ConstSpeedMobility.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h
$O/inet/src/mobility/LineSegmentsMobilityBase.o: inet/src/mobility/LineSegmentsMobilityBase.cc \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/LineSegmentsMobilityBase.h \
  inet/src/base/BasicModule.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h
$O/inet/src/mobility/LinearMobility.o: inet/src/mobility/LinearMobility.cc \
  inet/src/base/BasicModule.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/LinearMobility.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h
$O/inet/src/mobility/MassMobility.o: inet/src/mobility/MassMobility.cc \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/world/ChannelControl.h \
  inet/src/mobility/MassMobility.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/base/BasicModule.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h
$O/inet/src/mobility/NullMobility.o: inet/src/mobility/NullMobility.cc \
  inet/src/base/BasicModule.h \
  inet/src/mobility/NullMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h
$O/inet/src/mobility/RandomWPMobility.o: inet/src/mobility/RandomWPMobility.cc \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/LineSegmentsMobilityBase.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h \
  inet/src/mobility/RandomWPMobility.h
$O/inet/src/mobility/RectangleMobility.o: inet/src/mobility/RectangleMobility.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/BasicModule.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/RectangleMobility.h
$O/inet/src/mobility/TurtleMobility.o: inet/src/mobility/TurtleMobility.cc \
  inet/src/util/FWMath.h \
  inet/src/base/NotifierConsts.h \
  inet/src/mobility/TurtleMobility.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/Coord.h \
  inet/src/base/INotifiable.h \
  inet/src/base/BasicModule.h \
  inet/src/mobility/LineSegmentsMobilityBase.h \
  inet/src/base/NotificationBoard.h \
  inet/src/mobility/BasicMobility.h \
  inet/src/linklayer/mfcore/AirFrame_m.h
$O/inet/src/networklayer/arp/ARP.o: inet/src/networklayer/arp/ARP.cc \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/arp/ARPPacket_m.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/arp/ARP.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h
$O/inet/src/networklayer/arp/ARPPacket_m.o: inet/src/networklayer/arp/ARPPacket_m.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/arp/ARPPacket_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/autorouting/FlatNetworkConfigurator.o: inet/src/networklayer/autorouting/FlatNetworkConfigurator.cc \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/autorouting/FlatNetworkConfigurator.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/common/InterfaceEntry.h
$O/inet/src/networklayer/autorouting/FlatNetworkConfigurator6.o: inet/src/networklayer/autorouting/FlatNetworkConfigurator6.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/autorouting/FlatNetworkConfigurator6.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/networklayer/autorouting/NetworkConfigurator.o: inet/src/networklayer/autorouting/NetworkConfigurator.cc \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/autorouting/NetworkConfigurator.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/common/InterfaceEntry.o: inet/src/networklayer/common/InterfaceEntry.cc \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h
$O/inet/src/networklayer/common/InterfaceTable.o: inet/src/networklayer/common/InterfaceTable.cc \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/networklayer/contract/IPAddress.o: inet/src/networklayer/contract/IPAddress.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/contract/IPAddressResolver.o: inet/src/networklayer/contract/IPAddressResolver.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/contract/IPControlInfo.o: inet/src/networklayer/contract/IPControlInfo.cc \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/contract/IPControlInfo_m.o: inet/src/networklayer/contract/IPControlInfo_m.cc \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/contract/IPProtocolId_m.o: inet/src/networklayer/contract/IPProtocolId_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h
$O/inet/src/networklayer/contract/IPv6Address.o: inet/src/networklayer/contract/IPv6Address.cc \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/networklayer/contract/IPv6ControlInfo.o: inet/src/networklayer/contract/IPv6ControlInfo.cc \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h
$O/inet/src/networklayer/contract/IPv6ControlInfo_m.o: inet/src/networklayer/contract/IPv6ControlInfo_m.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h
$O/inet/src/networklayer/contract/IPvXAddress.o: inet/src/networklayer/contract/IPvXAddress.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/extras/Dummy.o: inet/src/networklayer/extras/Dummy.cc
$O/inet/src/networklayer/extras/FailureManager.o: inet/src/networklayer/extras/FailureManager.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/extras/FailureManager.h \
  inet/src/base/IScriptable.h
$O/inet/src/networklayer/extras/NetworkInfo.o: inet/src/networklayer/extras/NetworkInfo.cc \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/extras/NetworkInfo.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/IScriptable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/networklayer/icmpv6/ICMPv6.o: inet/src/networklayer/icmpv6/ICMPv6.cc \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/icmpv6/ICMPv6.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv6/RoutingTable6Access.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h
$O/inet/src/networklayer/icmpv6/ICMPv6Message_m.o: inet/src/networklayer/icmpv6/ICMPv6Message_m.cc \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/icmpv6/IPv6NDMessage_m.o: inet/src/networklayer/icmpv6/IPv6NDMessage_m.cc \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/icmpv6/IPv6NDMessage_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h
$O/inet/src/networklayer/icmpv6/IPv6NeighbourCache.o: inet/src/networklayer/icmpv6/IPv6NeighbourCache.cc \
  inet/src/networklayer/icmpv6/IPv6NeighbourCache.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/icmpv6/IPv6NeighbourDiscovery.o: inet/src/networklayer/icmpv6/IPv6NeighbourDiscovery.cc \
  inet/src/networklayer/icmpv6/IPv6NeighbourDiscovery.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/icmpv6/ICMPv6Access.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/icmpv6/IPv6NDMessage_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/icmpv6/ICMPv6.h \
  inet/src/networklayer/icmpv6/IPv6NeighbourCache.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ipv6/RoutingTable6Access.h
$O/inet/src/networklayer/ipv4/ErrorHandling.o: inet/src/networklayer/ipv4/ErrorHandling.cc \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ipv4/ErrorHandling.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ipv4/ICMPMessage.h
$O/inet/src/networklayer/ipv4/ICMP.o: inet/src/networklayer/ipv4/ICMP.cc \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/ICMP.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPControlInfo.h
$O/inet/src/networklayer/ipv4/ICMPMessage_m.o: inet/src/networklayer/ipv4/ICMPMessage_m.cc \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/ipv4/IP.o: inet/src/networklayer/ipv4/IP.cc \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv4/ICMPAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/ReassemblyBuffer.h \
  inet/src/base/QueueBase.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/ICMP.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IP.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/ipv4/IPFragBuf.h \
  inet/src/networklayer/arp/ARPPacket_m.h \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/base/ProtocolMap.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/base/AbstractQueue.h
$O/inet/src/networklayer/ipv4/IPDatagram_m.o: inet/src/networklayer/ipv4/IPDatagram_m.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h
$O/inet/src/networklayer/ipv4/IPFragBuf.o: inet/src/networklayer/ipv4/IPFragBuf.cc \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/ReassemblyBuffer.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/ipv4/ICMP.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/networklayer/ipv4/IPFragBuf.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h
$O/inet/src/networklayer/ipv4/IPRoute.o: inet/src/networklayer/ipv4/IPRoute.cc \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h
$O/inet/src/networklayer/ipv4/IPv4InterfaceData.o: inet/src/networklayer/ipv4/IPv4InterfaceData.cc \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/ipv4/RoutingTable.o: inet/src/networklayer/ipv4/RoutingTable.cc \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/RoutingTableParser.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h
$O/inet/src/networklayer/ipv4/RoutingTableParser.o: inet/src/networklayer/ipv4/RoutingTableParser.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/RoutingTableParser.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h
$O/inet/src/networklayer/ipv6/IPv6.o: inet/src/networklayer/ipv6/IPv6.cc \
  inet/src/networklayer/icmpv6/IPv6NeighbourCache.h \
  inet/src/base/AbstractQueue.h \
  inet/src/networklayer/icmpv6/ICMPv6.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ipv6/IPv6FragBuf.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv6/RoutingTable6Access.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/ProtocolMap.h \
  inet/src/networklayer/icmpv6/IPv6NeighbourDiscoveryAccess.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/linklayer/contract/Ieee802Ctrl_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv6/IPv6.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/base/QueueBase.h \
  inet/src/networklayer/icmpv6/IPv6NDMessage_m.h \
  inet/src/networklayer/icmpv6/IPv6NeighbourDiscovery.h \
  inet/src/base/ReassemblyBuffer.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/icmpv6/ICMPv6Access.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h
$O/inet/src/networklayer/ipv6/IPv6Datagram.o: inet/src/networklayer/ipv6/IPv6Datagram.cc \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h
$O/inet/src/networklayer/ipv6/IPv6Datagram_m.o: inet/src/networklayer/ipv6/IPv6Datagram_m.cc \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/networklayer/ipv6/IPv6ErrorHandling.o: inet/src/networklayer/ipv6/IPv6ErrorHandling.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/networklayer/ipv6/IPv6ErrorHandling.h
$O/inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.o: inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h
$O/inet/src/networklayer/ipv6/IPv6FragBuf.o: inet/src/networklayer/ipv6/IPv6FragBuf.cc \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/networklayer/icmpv6/ICMPv6.h \
  inet/src/networklayer/ipv6/RoutingTable6Access.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv6/IPv6FragBuf.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ipv6/IPv6ExtensionHeaders_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/base/ReassemblyBuffer.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/common/InterfaceEntry.h
$O/inet/src/networklayer/ipv6/IPv6InterfaceData.o: inet/src/networklayer/ipv6/IPv6InterfaceData.cc \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/ipv6/RoutingTable6.o: inet/src/networklayer/ipv6/RoutingTable6.cc \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/base/INotifiable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/opp_utils.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceTableAccess.h
$O/inet/src/networklayer/ldp/LDP.o: inet/src/networklayer/ldp/LDP.cc \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/mpls/LIBTable.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/mpls/IClassifier.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ted/TEDAccess.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/transport/udp/UDPPacket.h \
  inet/src/networklayer/mpls/ConstType.h \
  inet/src/transport/udp/UDPPacket_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/networklayer/ldp/LDPPacket_m.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ted/TED.h \
  inet/src/networklayer/mpls/LIBTableAccess.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/networklayer/ldp/LDP.h \
  inet/src/transport/tcp/TCPSegment.h
$O/inet/src/networklayer/ldp/LDPPacket_m.o: inet/src/networklayer/ldp/LDPPacket_m.cc \
  inet/src/networklayer/ldp/LDPPacket_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/mpls/LIBTable.o: inet/src/networklayer/mpls/LIBTable.cc \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/mpls/ConstType.h \
  inet/src/util/XMLUtils.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/mpls/LIBTable.h
$O/inet/src/networklayer/mpls/MPLS.o: inet/src/networklayer/mpls/MPLS.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/mpls/ConstType.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/mpls/LIBTable.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/mpls/IClassifier.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/mpls/LIBTableAccess.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/networklayer/ldp/LDP.h \
  inet/src/networklayer/mpls/MPLSPacket.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/base/NotificationBoard.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/rsvp_te/Utils.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/mpls/MPLS.h \
  inet/src/networklayer/ldp/LDPPacket_m.h \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/contract/TCPSocket.h
$O/inet/src/networklayer/mpls/MPLSPacket.o: inet/src/networklayer/mpls/MPLSPacket.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/mpls/MPLSPacket.h
$O/inet/src/networklayer/ospfv2/OSPFPacket_m.o: inet/src/networklayer/ospfv2/OSPFPacket_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h
$O/inet/src/networklayer/ospfv2/OSPFRouting.o: inet/src/networklayer/ospfv2/OSPFRouting.cc \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/ospfv2/OSPFRouting.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/OSPFTimer_m.o: inet/src/networklayer/ospfv2/OSPFTimer_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterface.o: inet/src/networklayer/ospfv2/interface/OSPFInterface.cc \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.cc \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateBackup.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDesignatedRouter.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateBackup.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateBackup.cc \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateBackup.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDesignatedRouter.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDesignatedRouter.cc \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDesignatedRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.cc \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStatePointToPoint.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateWaiting.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateNotDesignatedRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStatePointToPoint.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStatePointToPoint.cc \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStatePointToPoint.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/router/LSA.h
$O/inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateWaiting.o: inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateWaiting.cc \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceState.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateWaiting.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateLoopback.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterfaceStateDown.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.o: inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h
$O/inet/src/networklayer/ospfv2/messagehandler/HelloHandler.o: inet/src/networklayer/ospfv2/messagehandler/HelloHandler.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h
$O/inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.o: inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h
$O/inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.o: inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.cc \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h
$O/inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.o: inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.cc \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h
$O/inet/src/networklayer/ospfv2/messagehandler/MessageHandler.o: inet/src/networklayer/ospfv2/messagehandler/MessageHandler.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.cc \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.cc \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateAttempt.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateAttempt.cc \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateAttempt.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.cc \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateAttempt.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchange.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchange.cc \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchange.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateLoading.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.cc \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchange.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.cc \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateLoading.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateLoading.cc \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateLoading.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateFull.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h
$O/inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.o: inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.cc \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborState.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateExchangeStart.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateTwoWay.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateInit.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighborStateDown.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h
$O/inet/src/networklayer/ospfv2/router/ASExternalLSA.o: inet/src/networklayer/ospfv2/router/ASExternalLSA.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h
$O/inet/src/networklayer/ospfv2/router/NetworkLSA.o: inet/src/networklayer/ospfv2/router/NetworkLSA.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h
$O/inet/src/networklayer/ospfv2/router/OSPFArea.o: inet/src/networklayer/ospfv2/router/OSPFArea.cc \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ospfv2/router/LSA.h
$O/inet/src/networklayer/ospfv2/router/OSPFRouter.o: inet/src/networklayer/ospfv2/router/OSPFRouter.cc \
  inet/src/networklayer/ospfv2/messagehandler/IMessageHandler.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/ospfv2/router/OSPFRoutingTableEntry.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ospfv2/router/OSPFArea.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateRequestHandler.h \
  inet/src/networklayer/ospfv2/neighbor/OSPFNeighbor.h \
  inet/src/networklayer/ospfv2/OSPFTimer_m.h \
  inet/src/networklayer/ospfv2/messagehandler/MessageHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/HelloHandler.h \
  inet/src/networklayer/ospfv2/interface/OSPFInterface.h \
  inet/src/networklayer/ospfv2/messagehandler/DatabaseDescriptionHandler.h \
  inet/src/networklayer/ospfv2/router/OSPFRouter.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateAcknowledgementHandler.h \
  inet/src/networklayer/ospfv2/messagehandler/LinkStateUpdateHandler.h
$O/inet/src/networklayer/ospfv2/router/RouterLSA.o: inet/src/networklayer/ospfv2/router/RouterLSA.cc \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/networklayer/ospfv2/router/SummaryLSA.o: inet/src/networklayer/ospfv2/router/SummaryLSA.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ospfv2/OSPFPacket_m.h \
  inet/src/networklayer/ospfv2/router/LSA.h \
  inet/src/networklayer/ospfv2/router/OSPFcommon.h
$O/inet/src/networklayer/queue/BasicDSCPClassifier.o: inet/src/networklayer/queue/BasicDSCPClassifier.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/queue/IQoSClassifier.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/queue/BasicDSCPClassifier.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h
$O/inet/src/networklayer/queue/DropTailQoSQueue.o: inet/src/networklayer/queue/DropTailQoSQueue.cc \
  inet/src/networklayer/queue/IQoSClassifier.h \
  inet/src/base/INETDefs.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/networklayer/queue/DropTailQoSQueue.h \
  inet/src/base/PassiveQueueBase.h
$O/inet/src/networklayer/queue/DropTailQueue.o: inet/src/networklayer/queue/DropTailQueue.cc \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/networklayer/queue/DropTailQueue.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/queue/REDQueue.o: inet/src/networklayer/queue/REDQueue.cc \
  inet/src/networklayer/queue/REDQueue.h \
  inet/src/base/PassiveQueueBase.h \
  inet/src/base/IPassiveQueue.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/rsvp_te/IntServ_m.o: inet/src/networklayer/rsvp_te/IntServ_m.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/rsvp_te/RSVP.o: inet/src/networklayer/rsvp_te/RSVP.cc \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/RSVPPathMsg_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/rsvp_te/RSVPHelloMsg.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h \
  inet/src/networklayer/rsvp_te/RSVP.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/rsvp_te/RSVPPathMsg.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/rsvp_te/Utils.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ted/TED.h \
  inet/src/networklayer/mpls/LIBTableAccess.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/rsvp_te/RSVPPacket.h \
  inet/src/networklayer/rsvp_te/IRSVPClassifier.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/mpls/LIBTable.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/mpls/IClassifier.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/rsvp_te/RSVPResvMsg.h \
  inet/src/networklayer/rsvp_te/RSVPHello_m.h \
  inet/src/networklayer/rsvp_te/RSVPResvMsg_m.h \
  inet/src/networklayer/rsvp_te/SignallingMsg_m.h \
  inet/src/networklayer/ted/TEDAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/IScriptable.h \
  inet/src/networklayer/mpls/ConstType.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/util/XMLUtils.h
$O/inet/src/networklayer/rsvp_te/RSVPHello_m.o: inet/src/networklayer/rsvp_te/RSVPHello_m.cc \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/RSVPHello_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h \
  inet/src/networklayer/rsvp_te/RSVPPacket.h
$O/inet/src/networklayer/rsvp_te/RSVPPacket_m.o: inet/src/networklayer/rsvp_te/RSVPPacket_m.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h
$O/inet/src/networklayer/rsvp_te/RSVPPathMsg_m.o: inet/src/networklayer/rsvp_te/RSVPPathMsg_m.cc \
  inet/src/networklayer/rsvp_te/RSVPPacket.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/rsvp_te/RSVPPathMsg_m.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h
$O/inet/src/networklayer/rsvp_te/RSVPResvMsg_m.o: inet/src/networklayer/rsvp_te/RSVPResvMsg_m.cc \
  inet/src/networklayer/rsvp_te/RSVPResvMsg_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/rsvp_te/RSVPPacket.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h
$O/inet/src/networklayer/rsvp_te/SignallingMsg_m.o: inet/src/networklayer/rsvp_te/SignallingMsg_m.cc \
  inet/src/networklayer/rsvp_te/SignallingMsg_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/IntServ.h
$O/inet/src/networklayer/rsvp_te/SimpleClassifier.o: inet/src/networklayer/rsvp_te/SimpleClassifier.cc \
  inet/src/networklayer/rsvp_te/RSVPPathMsg_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/rsvp_te/RSVPPacket_m.h \
  inet/src/networklayer/rsvp_te/RSVPHelloMsg.h \
  inet/src/networklayer/rsvp_te/RSVP.h \
  inet/src/networklayer/rsvp_te/RSVPPathMsg.h \
  inet/src/networklayer/rsvp_te/RSVPAccess.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/mpls/LIBTableAccess.h \
  inet/src/networklayer/rsvp_te/RSVPPacket.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/rsvp_te/IRSVPClassifier.h \
  inet/src/networklayer/mpls/LIBTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/mpls/IClassifier.h \
  inet/src/networklayer/rsvp_te/RSVPResvMsg.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/RSVPHello_m.h \
  inet/src/networklayer/rsvp_te/SimpleClassifier.h \
  inet/src/networklayer/rsvp_te/RSVPResvMsg_m.h \
  inet/src/networklayer/rsvp_te/SignallingMsg_m.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/mpls/ConstType.h \
  inet/src/base/IScriptable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/util/XMLUtils.h
$O/inet/src/networklayer/rsvp_te/Utils.o: inet/src/networklayer/rsvp_te/Utils.cc \
  inet/src/networklayer/rsvp_te/Utils.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/ted/LinkStatePacket_m.o: inet/src/networklayer/ted/LinkStatePacket_m.cc \
  inet/src/networklayer/ted/LinkStatePacket_m.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h
$O/inet/src/networklayer/ted/LinkStateRouting.o: inet/src/networklayer/ted/LinkStateRouting.cc \
  inet/src/networklayer/ted/TED.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ted/LinkStatePacket_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ted/LinkStateRouting.h \
  inet/src/networklayer/ted/TEDAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h
$O/inet/src/networklayer/ted/TED.o: inet/src/networklayer/ted/TED.cc \
  inet/src/networklayer/ted/TED.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h
$O/inet/src/networklayer/ted/TED_m.o: inet/src/networklayer/ted/TED_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ted/TED_m.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/contract/SCTPCommand_m.o: inet/src/transport/contract/SCTPCommand_m.cc \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/RoutingTable.h
$O/inet/src/transport/contract/SCTPSocket.o: inet/src/transport/contract/SCTPSocket.cc \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/SCTPSocket.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/transport/contract/TCPCommand_m.o: inet/src/transport/contract/TCPCommand_m.cc \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/transport/contract/TCPSocket.o: inet/src/transport/contract/TCPSocket.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/transport/contract/TCPSocketMap.o: inet/src/transport/contract/TCPSocketMap.cc \
  inet/src/transport/contract/TCPSocketMap.h \
  inet/src/transport/contract/TCPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/contract/UDPControlInfo_m.o: inet/src/transport/contract/UDPControlInfo_m.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/transport/contract/UDPSocket.o: inet/src/transport/contract/UDPSocket.cc \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/transport/rtp/RTCP.o: inet/src/transport/rtp/RTCP.cc \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPSenderInfo.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPParticipantInfo.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/transport/rtp/sdes.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/rtp/RTCP.h \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/reports.h \
  inet/src/transport/rtp/RTPReceiverInfo.h
$O/inet/src/transport/rtp/RTCPPacket.o: inet/src/transport/rtp/RTCPPacket.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/reports.h \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/sdes.h
$O/inet/src/transport/rtp/RTP.o: inet/src/transport/rtp/RTP.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTP.h \
  inet/src/transport/rtp/RTPProfile.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPInterfacePacket.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h
$O/inet/src/transport/rtp/RTPInnerPacket.o: inet/src/transport/rtp/RTPInnerPacket.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h
$O/inet/src/transport/rtp/RTPInterfacePacket.o: inet/src/transport/rtp/RTPInterfacePacket.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPInterfacePacket.h
$O/inet/src/transport/rtp/RTPPacket.o: inet/src/transport/rtp/RTPPacket.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPPacket.h
$O/inet/src/transport/rtp/RTPParticipantInfo.o: inet/src/transport/rtp/RTPParticipantInfo.cc \
  inet/src/transport/rtp/RTPParticipantInfo.h \
  inet/src/transport/rtp/sdes.h \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/reports.h
$O/inet/src/transport/rtp/RTPPayloadReceiver.o: inet/src/transport/rtp/RTPPayloadReceiver.cc \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPPayloadReceiver.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/rtp/RTPPayloadSender.o: inet/src/transport/rtp/RTPPayloadSender.cc \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTPPayloadSender.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h
$O/inet/src/transport/rtp/RTPProfile.o: inet/src/transport/rtp/RTPProfile.cc \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/transport/rtp/RTPProfile.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/reports.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/sdes.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/RTPPayloadSender.h \
  inet/src/transport/rtp/RTPParticipantInfo.h \
  inet/src/transport/rtp/RTPPayloadReceiver.h
$O/inet/src/transport/rtp/RTPReceiverInfo.o: inet/src/transport/rtp/RTPReceiverInfo.cc \
  inet/src/transport/rtp/sdes.h \
  inet/src/transport/rtp/RTPParticipantInfo.h \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/reports.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPReceiverInfo.h
$O/inet/src/transport/rtp/RTPSenderControlMessage_m.o: inet/src/transport/rtp/RTPSenderControlMessage_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h
$O/inet/src/transport/rtp/RTPSenderInfo.o: inet/src/transport/rtp/RTPSenderInfo.cc \
  inet/src/transport/rtp/RTPSenderInfo.h \
  inet/src/transport/rtp/sdes.h \
  inet/src/transport/rtp/RTPParticipantInfo.h \
  inet/src/transport/rtp/RTCPPacket.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/reports.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/rtp/RTPSenderStatusMessage_m.o: inet/src/transport/rtp/RTPSenderStatusMessage_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h
$O/inet/src/transport/rtp/reports.o: inet/src/transport/rtp/reports.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/reports.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/rtp/sdes.o: inet/src/transport/rtp/sdes.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/sdes.h
$O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfile.o: inet/src/transport/rtp/profiles/avprofile/RTPAVProfile.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/rtp/RTPProfile.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/profiles/avprofile/RTPAVProfile.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h
$O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Receiver.o: inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Receiver.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.h \
  inet/src/transport/rtp/RTPPayloadReceiver.h \
  inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Receiver.h
$O/inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Sender.o: inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Sender.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/rtp/RTPPacket.h \
  inet/src/transport/rtp/RTPSenderStatusMessage_m.h \
  inet/src/transport/rtp/RTPInnerPacket.h \
  inet/src/transport/rtp/RTPPayloadSender.h \
  inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.h \
  inet/src/transport/rtp/RTPSenderControlMessage_m.h \
  inet/src/transport/rtp/profiles/avprofile/RTPAVProfilePayload32Sender.h
$O/inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.o: inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.cc \
  inet/src/transport/rtp/profiles/avprofile/RTPMpegPacket_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/sctp/SCTP.o: inet/src/transport/sctp/SCTP.cc \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/sctp/SCTPAlg.o: inet/src/transport/sctp/SCTPAlg.cc \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/transport/sctp/SCTPAlg.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTable.h
$O/inet/src/transport/sctp/SCTPAssociationBase.o: inet/src/transport/sctp/SCTPAssociationBase.cc \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage.h
$O/inet/src/transport/sctp/SCTPAssociationEventProc.o: inet/src/transport/sctp/SCTPAssociationEventProc.cc \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage.h
$O/inet/src/transport/sctp/SCTPAssociationRcvMessage.o: inet/src/transport/sctp/SCTPAssociationRcvMessage.cc \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h \
  inet/src/networklayer/common/InterfaceEntry.h
$O/inet/src/transport/sctp/SCTPAssociationSendAll.o: inet/src/transport/sctp/SCTPAssociationSendAll.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h
$O/inet/src/transport/sctp/SCTPAssociationUtil.o: inet/src/transport/sctp/SCTPAssociationUtil.cc \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/sctp/SCTPAlgorithm.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/contract/SCTPCommand_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/transport/contract/SCTPCommand.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv6/IPv6InterfaceData.h
$O/inet/src/transport/sctp/SCTPCCFunctions.o: inet/src/transport/sctp/SCTPCCFunctions.cc \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/sctp/SCTPMessage.o: inet/src/transport/sctp/SCTPMessage.cc \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage.h
$O/inet/src/transport/sctp/SCTPMessage_m.o: inet/src/transport/sctp/SCTPMessage_m.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/sctp/SCTPQueue.o: inet/src/transport/sctp/SCTPQueue.cc \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h
$O/inet/src/transport/sctp/SCTPReceiveStream.o: inet/src/transport/sctp/SCTPReceiveStream.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/util/common.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h
$O/inet/src/transport/sctp/SCTPSSFunctions.o: inet/src/transport/sctp/SCTPSSFunctions.cc \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/util/common.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h
$O/inet/src/transport/sctp/SCTPSendStream.o: inet/src/transport/sctp/SCTPSendStream.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/contract/UDPSocket.h
$O/inet/src/transport/tcp/TCP.o: inet/src/transport/tcp/TCP.cc \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/tcp/TCPConnectionBase.o: inet/src/transport/tcp/TCPConnectionBase.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPSACKRexmitQueue.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSendQueue.h
$O/inet/src/transport/tcp/TCPConnectionEventProc.o: inet/src/transport/tcp/TCPConnectionEventProc.cc \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSendQueue.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h
$O/inet/src/transport/tcp/TCPConnectionRcvSegment.o: inet/src/transport/tcp/TCPConnectionRcvSegment.cc \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/transport/tcp/TCPSendQueue.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/TCPSACKRexmitQueue.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h
$O/inet/src/transport/tcp/TCPConnectionUtil.o: inet/src/transport/tcp/TCPConnectionUtil.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/transport/tcp/TCPSACKRexmitQueue.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/transport/tcp/TCPSendQueue.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp/TCPSACKRexmitQueue.o: inet/src/transport/tcp/TCPSACKRexmitQueue.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/TCPSACKRexmitQueue.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/transport/tcp/TCPSegment.o: inet/src/transport/tcp/TCPSegment.cc \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/tcp/TCPSegment_m.o: inet/src/transport/tcp/TCPSegment_m.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp/flavours/DumbTCP.o: inet/src/transport/tcp/flavours/DumbTCP.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/flavours/DumbTCP.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPAlgorithm.h
$O/inet/src/transport/tcp/flavours/TCPBaseAlg.o: inet/src/transport/tcp/flavours/TCPBaseAlg.cc \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPSACKRexmitQueue.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/tcp/flavours/TCPNewReno.o: inet/src/transport/tcp/flavours/TCPNewReno.cc \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/flavours/TCPNewReno.h \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/tcp/flavours/TCPNoCongestionControl.o: inet/src/transport/tcp/flavours/TCPNoCongestionControl.cc \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/flavours/TCPNoCongestionControl.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/tcp/flavours/TCPReno.o: inet/src/transport/tcp/flavours/TCPReno.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp/flavours/TCPReno.h \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h
$O/inet/src/transport/tcp/flavours/TCPTahoe.o: inet/src/transport/tcp/flavours/TCPTahoe.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/flavours/TCPTahoe.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.o: inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.cc \
  inet/src/transport/tcp/flavours/TCPBaseAlg.h \
  inet/src/transport/tcp/flavours/TCPTahoeRenoFamily.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPAlgorithm.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/tcp/queues/TCPMsgBasedRcvQueue.o: inet/src/transport/tcp/queues/TCPMsgBasedRcvQueue.cc \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/queues/TCPMsgBasedRcvQueue.h \
  inet/src/transport/tcp/queues/TCPVirtualDataRcvQueue.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/tcp/queues/TCPMsgBasedSendQueue.o: inet/src/transport/tcp/queues/TCPMsgBasedSendQueue.cc \
  inet/src/transport/tcp/queues/TCPMsgBasedSendQueue.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSendQueue.h
$O/inet/src/transport/tcp/queues/TCPVirtualDataRcvQueue.o: inet/src/transport/tcp/queues/TCPVirtualDataRcvQueue.cc \
  inet/src/transport/tcp/queues/TCPVirtualDataRcvQueue.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/transport/tcp/TCPReceiveQueue.h \
  inet/src/networklayer/contract/IPAddress.h
$O/inet/src/transport/tcp/queues/TCPVirtualDataSendQueue.o: inet/src/transport/tcp/queues/TCPVirtualDataSendQueue.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/queues/TCPVirtualDataSendQueue.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSendQueue.h
$O/inet/src/transport/tcp_nsc/TCP_NSC.o: inet/src/transport/tcp_nsc/TCP_NSC.cc \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_nsc/TCP_NSC_Connection.h \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/transport/tcp_nsc/queues/TCP_NSC_Queues.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/transport/tcp_nsc/TCP_NSC.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/util/headerserializers/TCPSerializer.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp_nsc/TCP_NSC_Connection.o: inet/src/transport/tcp_nsc/TCP_NSC_Connection.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/transport/tcp_nsc/queues/TCP_NSC_Queues.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/transport/tcp_nsc/TCP_NSC_Connection.h \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/util/headerserializers/TCPSerializer.h \
  inet/src/transport/tcp_nsc/TCP_NSC.h \
  inet/src/transport/tcp/TCPSegment.h
$O/inet/src/transport/tcp_nsc/queues/TCP_NSC_VirtualDataQueues.o: inet/src/transport/tcp_nsc/queues/TCP_NSC_VirtualDataQueues.cc \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp_nsc/queues/TCP_NSC_Queues.h \
  inet/src/transport/tcp/TCPConnection.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_nsc/TCP_NSC_Connection.h \
  inet/src/transport/tcp_nsc/queues/TCP_NSC_VirtualDataQueues.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/transport/tcp/TCP.h \
  inet/src/util/headerserializers/TCPSerializer.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h
$O/inet/src/transport/tcp_old/TCP.o: inet/src/transport/tcp_old/TCP.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h
$O/inet/src/transport/tcp_old/TCPConnectionBase.o: inet/src/transport/tcp_old/TCPConnectionBase.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp_old/TCPConnectionEventProc.o: inet/src/transport/tcp_old/TCPConnectionEventProc.cc \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/transport/tcp_old/TCP_old.h
$O/inet/src/transport/tcp_old/TCPConnectionRcvSegment.o: inet/src/transport/tcp_old/TCPConnectionRcvSegment.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h
$O/inet/src/transport/tcp_old/TCPConnectionUtil.o: inet/src/transport/tcp_old/TCPConnectionUtil.cc \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/transport/contract/TCPCommand_m.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h
$O/inet/src/transport/tcp_old/flavours/DumbTCP.o: inet/src/transport/tcp_old/flavours/DumbTCP.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/flavours/DumbTCP_old.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPv6Address.h
$O/inet/src/transport/tcp_old/flavours/TCPBaseAlg.o: inet/src/transport/tcp_old/flavours/TCPBaseAlg.cc \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp_old/flavours/TCPBaseAlg_old.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h
$O/inet/src/transport/tcp_old/flavours/TCPNoCongestionControl.o: inet/src/transport/tcp_old/flavours/TCPNoCongestionControl.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp_old/flavours/TCPNoCongestionControl_old.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp_old/flavours/TCPBaseAlg_old.h
$O/inet/src/transport/tcp_old/flavours/TCPReno.o: inet/src/transport/tcp_old/flavours/TCPReno.cc \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/transport/tcp_old/flavours/TCPReno_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp_old/flavours/TCPBaseAlg_old.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily_old.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/transport/tcp_old/flavours/TCPTahoe.o: inet/src/transport/tcp_old/flavours/TCPTahoe.cc \
  inet/src/transport/tcp_old/flavours/TCPBaseAlg_old.h \
  inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily_old.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp_old/flavours/TCPTahoe_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/base/INETDefs.h
$O/inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily.o: inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily.cc \
  inet/src/transport/tcp_old/TCPAlgorithm_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp_old/flavours/TCPBaseAlg_old.h \
  inet/src/transport/tcp_old/flavours/TCPTahoeRenoFamily_old.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp_old/queues/TCPMsgBasedRcvQueue.o: inet/src/transport/tcp_old/queues/TCPMsgBasedRcvQueue.cc \
  inet/src/transport/tcp_old/queues/TCPMsgBasedRcvQueue_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/transport/tcp_old/queues/TCPVirtualDataRcvQueue_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/transport/tcp_old/queues/TCPMsgBasedSendQueue.o: inet/src/transport/tcp_old/queues/TCPMsgBasedSendQueue.cc \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/transport/tcp_old/queues/TCPMsgBasedSendQueue_old.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/transport/tcp_old/queues/TCPVirtualDataRcvQueue.o: inet/src/transport/tcp_old/queues/TCPVirtualDataRcvQueue.cc \
  inet/src/transport/tcp_old/queues/TCPVirtualDataRcvQueue_old.h \
  inet/src/transport/tcp_old/TCP_old.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCPReceiveQueue_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp/TCPSegment.h
$O/inet/src/transport/tcp_old/queues/TCPVirtualDataSendQueue.o: inet/src/transport/tcp_old/queues/TCPVirtualDataSendQueue.cc \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/tcp_old/queues/TCPVirtualDataSendQueue_old.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp_old/TCPConnection_old.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/tcp_old/TCPSendQueue_old.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/transport/tcp_old/TCP_old.h
$O/inet/src/transport/udp/UDP.o: inet/src/transport/udp/UDP.cc \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/ICMP.h \
  inet/src/transport/udp/UDP.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv6/RoutingTable6.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/icmpv6/ICMPv6Message_m.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/contract/IPv6ControlInfo.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/ipv4/ICMPAccess.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/transport/udp/UDPPacket.h \
  inet/src/networklayer/icmpv6/ICMPv6Access.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/ipv6/IPv6Datagram.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/icmpv6/ICMPv6.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/udp/UDPPacket_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/ipv6/RoutingTable6Access.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/networklayer/contract/IPv6ControlInfo_m.h
$O/inet/src/transport/udp/UDPPacket_m.o: inet/src/transport/udp/UDPPacket_m.cc \
  inet/src/transport/udp/UDPPacket_m.h \
  inet/src/base/INETDefs.h
$O/inet/src/util/NAMTraceWriter.o: inet/src/util/NAMTraceWriter.cc \
  inet/src/util/NAMTraceWriter.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/linklayer/contract/TxNotifDetails.h \
  inet/src/base/NotifierConsts.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/world/NAMTrace.h
$O/inet/src/util/NetAnimTrace.o: inet/src/util/NetAnimTrace.cc \
  inet/src/base/INETDefs.h \
  inet/src/util/NetAnimTrace.h
$O/inet/src/util/TCPDump.o: inet/src/util/TCPDump.cc \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/networklayer/ipv4/ICMPMessage.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/util/headerserializers/IPSerializer.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/util/TCPDump.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/util/common.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/networklayer/ipv6/IPv6Datagram_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/transport/udp/UDPPacket_m.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/base/INotifiable.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/networklayer/ipv4/RoutingTable.h
$O/inet/src/util/ThruputMeteringChannel.o: inet/src/util/ThruputMeteringChannel.cc \
  inet/src/base/INETDefs.h \
  inet/src/util/ThruputMeteringChannel.h
$O/inet/src/util/XMLUtils.o: inet/src/util/XMLUtils.cc \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPAddressResolver.h \
  inet/src/util/XMLUtils.h
$O/inet/src/util/common.o: inet/src/util/common.cc \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/networklayer/contract/IPvXAddress.h
$O/inet/src/util/opp_utils.o: inet/src/util/opp_utils.cc \
  inet/src/util/opp_utils.h \
  inet/src/base/INETDefs.h
$O/inet/src/util/headerserializers/ICMPSerializer.o: inet/src/util/headerserializers/ICMPSerializer.cc \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/headerserializers/headers/in.h \
  inet/src/applications/pingapp/PingPayload_m.h \
  inet/src/util/headerserializers/headers/ip_icmp.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/util/headerserializers/headers/in_systm.h \
  inet/src/util/headerserializers/IPSerializer.h \
  inet/src/util/headerserializers/ICMPSerializer.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/util/headerserializers/headers/ip.h
$O/inet/src/util/headerserializers/IPSerializer.o: inet/src/util/headerserializers/IPSerializer.cc \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/util/headerserializers/IPSerializer.h \
  inet/src/util/headerserializers/ICMPSerializer.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/util/headerserializers/headers/in_systm.h \
  inet/src/util/headerserializers/TCPSerializer.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/util/headerserializers/headers/ip.h \
  inet/src/transport/udp/UDPPacket_m.h \
  inet/src/networklayer/ipv4/ICMPMessage_m.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/util/headerserializers/SCTPSerializer.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/transport/udp/UDPPacket.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/networklayer/ipv4/IPDatagram_m.h \
  inet/src/networklayer/ipv4/IPDatagram.h \
  inet/src/util/headerserializers/headers/in.h \
  inet/src/util/headerserializers/UDPSerializer.h
$O/inet/src/util/headerserializers/SCTPSerializer.o: inet/src/util/headerserializers/SCTPSerializer.cc \
  inet/src/networklayer/common/InterfaceTable.h \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/base/ModuleAccess.h \
  inet/src/util/headerserializers/headers/sctp.h \
  inet/src/networklayer/common/IInterfaceTable.h \
  inet/src/networklayer/rsvp_te/IntServ_m.h \
  inet/src/networklayer/ipv4/RoutingTableAccess.h \
  inet/src/base/INotifiable.h \
  inet/src/util/headerserializers/headers/in.h \
  inet/src/networklayer/ipv4/RoutingTable.h \
  inet/src/util/headerserializers/SCTPSerializer.h \
  inet/src/base/NotifierConsts.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/networklayer/ipv4/IRoutingTable.h \
  inet/src/networklayer/ipv4/IPRoute.h \
  inet/src/networklayer/common/InterfaceEntry.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/util/headerserializers/headers/ip.h \
  inet/src/util/common.h \
  inet/src/networklayer/rsvp_te/IntServ.h \
  inet/src/transport/contract/UDPControlInfo_m.h \
  inet/src/networklayer/common/InterfaceTableAccess.h \
  inet/src/transport/sctp/SCTPQueue.h \
  inet/src/networklayer/contract/IPControlInfo_m.h \
  inet/src/base/NotificationBoard.h \
  inet/src/transport/contract/UDPSocket.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPControlInfo.h \
  inet/src/networklayer/common/InterfaceToken.h \
  inet/src/linklayer/contract/MACAddress.h \
  inet/src/transport/sctp/SCTPMessage.h \
  inet/src/transport/sctp/SCTPAssociation.h \
  inet/src/transport/sctp/SCTPSendStream.h \
  inet/src/transport/sctp/SCTPMessage_m.h \
  inet/src/transport/sctp/SCTP.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/transport/sctp/SCTPReceiveStream.h \
  inet/src/util/headerserializers/headers/in_systm.h
$O/inet/src/util/headerserializers/TCPIPchecksum.o: inet/src/util/headerserializers/TCPIPchecksum.cc \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h
$O/inet/src/util/headerserializers/TCPSerializer.o: inet/src/util/headerserializers/TCPSerializer.cc \
  inet/src/networklayer/contract/IPProtocolId_m.h \
  inet/src/base/INETDefs.h \
  inet/src/util/headerserializers/headers/in.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/util/headerserializers/TCPSerializer.h \
  inet/src/util/headerserializers/headers/in_systm.h \
  inet/src/transport/tcp/TCPSegment_m.h
$O/inet/src/util/headerserializers/UDPSerializer.o: inet/src/util/headerserializers/UDPSerializer.cc \
  inet/src/util/headerserializers/TCPIPchecksum.h \
  inet/src/util/headerserializers/headers/bsdint.h \
  inet/src/transport/udp/UDPPacket.h \
  inet/src/networklayer/contract/IPv6Address.h \
  inet/src/util/headerserializers/headers/tcp.h \
  inet/src/util/headerserializers/headers/udp.h \
  inet/src/networklayer/contract/IPAddress.h \
  inet/src/base/INETDefs.h \
  inet/src/util/headerserializers/UDPSerializer.h \
  inet/src/util/headerserializers/headers/in.h \
  inet/src/transport/tcp/TCPSegment.h \
  inet/src/transport/tcp/TCPSegment_m.h \
  inet/src/util/headerserializers/headers/in_systm.h \
  inet/src/util/headerserializers/headers/defs.h \
  inet/src/networklayer/contract/IPvXAddress.h \
  inet/src/transport/udp/UDPPacket_m.h
$O/inet/src/world/ChannelAccess.o: inet/src/world/ChannelAccess.cc \
  inet/src/base/INotifiable.h \
  inet/src/base/Coord.h \
  inet/src/world/ChannelControl.h \
  inet/src/base/ModuleAccess.h \
  inet/src/base/INETDefs.h \
  inet/src/base/NotifierConsts.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/AirFrame_m.h \
  inet/src/world/ChannelAccess.h \
  inet/src/base/NotificationBoard.h \
  inet/src/base/BasicModule.h
$O/inet/src/world/ChannelControl.o: inet/src/world/ChannelControl.cc \
  inet/src/world/ChannelControl.h \
  inet/src/base/INETDefs.h \
  inet/src/base/Coord.h \
  inet/src/util/FWMath.h \
  inet/src/linklayer/mfcore/AirFrame_m.h
$O/inet/src/world/ChannelInstaller.o: inet/src/world/ChannelInstaller.cc \
  inet/src/base/INETDefs.h \
  inet/src/world/ChannelInstaller.h
$O/inet/src/world/NAMTrace.o: inet/src/world/NAMTrace.cc \
  inet/src/base/INETDefs.h \
  inet/src/world/NAMTrace.h
$O/inet/src/world/ScenarioManager.o: inet/src/world/ScenarioManager.cc \
  inet/src/base/IScriptable.h \
  inet/src/base/INETDefs.h \
  inet/src/world/ScenarioManager.h
