#
# OMNeT++/OMNEST Makefile for FatTree
#
# This file was generated with the command:
#  opp_makemake -f --deep -I../../inet/src/networklayer/ipv4 -I../../inet/src/networklayer/common -I../../inet/src/networklayer/rsvp_te -I../../inet/src/networklayer/icmpv6 -I../../inet/src/transport/tcp -I../../inet/src/networklayer/mpls -I../../inet/src/base -I../../inet/src/networklayer/ted -I../../inet/src/util/headerserializers -I../../inet/src/networklayer/contract -I../../inet/src/util -I../../inet/src/transport/contract -I../../inet/src/linklayer/mfcore -I../../inet/src/networklayer/ipv6 -I../../inet/src/transport/sctp -I../../inet/src/world -I../../inet/src/applications/pingapp -I../../inet/src/linklayer/contract -I../../inet/src/networklayer/arp -I../../inet/src/networklayer/ldp -I../../inet/src/transport/udp -I../../inet/src/applications/tcpapp -L../../inet/out/gcc-debug/src -linet -KINET_PROJ=../../inet
#

# Name of target to be created (-o option)
TARGET = FatTree$(EXE_SUFFIX)

# User interface (uncomment one) (-u option)
USERIF_LIBS = $(ALL_ENV_LIBS) # that is, $(TKENV_LIBS) $(CMDENV_LIBS)
#USERIF_LIBS = $(CMDENV_LIBS)
#USERIF_LIBS = $(TKENV_LIBS)

# C++ include paths (with -I)
INCLUDE_PATH = \
    -I../../inet/src/networklayer/ipv4 \
    -I../../inet/src/networklayer/common \
    -I../../inet/src/networklayer/rsvp_te \
    -I../../inet/src/networklayer/icmpv6 \
    -I../../inet/src/transport/tcp \
    -I../../inet/src/networklayer/mpls \
    -I../../inet/src/base \
    -I../../inet/src/networklayer/ted \
    -I../../inet/src/util/headerserializers \
    -I../../inet/src/networklayer/contract \
    -I../../inet/src/util \
    -I../../inet/src/transport/contract \
    -I../../inet/src/linklayer/mfcore \
    -I../../inet/src/networklayer/ipv6 \
    -I../../inet/src/transport/sctp \
    -I../../inet/src/world \
    -I../../inet/src/applications/pingapp \
    -I../../inet/src/linklayer/contract \
    -I../../inet/src/networklayer/arp \
    -I../../inet/src/networklayer/ldp \
    -I../../inet/src/transport/udp \
    -I../../inet/src/applications/tcpapp \
    -I. \
    -Icomponents \
    -Iecmp \
    -Ilogic \
    -Ilogic/ipaddress \
    -Ilogic/routing \
    -Imessages \
    -Irouter \
    -Itcpapp \
    -Itrafficgeneration \
    -Iutil

# Additional object and library files to link with
EXTRA_OBJS =

# Additional libraries (-L, -l options)
LIBS = -L../../inet/out/gcc-debug/src  -linet
LIBS += -Wl,-rpath,`abspath ../../inet/out/gcc-debug/src`

# Output directory
PROJECT_OUTPUT_DIR = ../out
PROJECTRELATIVE_PATH = /src
O = $(PROJECT_OUTPUT_DIR)/$(CONFIGNAME)/$(PROJECTRELATIVE_PATH)

# Object files for local .cc and .msg files
OBJS = \
    $O/ecmp/ConfigECMPRouting.o \
    $O/ecmp/ECMPRoutingTable.o \
    $O/ecmp/ecmpTopo.o \
    $O/ecmp/IPECMP.o \
    $O/logic/ipaddress/AggIPConfig.o \
    $O/logic/ipaddress/ContIPConfig.o \
    $O/logic/ipaddress/CoreIPConfig.o \
    $O/logic/ipaddress/EdgeIPConfig.o \
    $O/logic/ipaddress/ServerIPConfig.o \
    $O/logic/ipaddress/VMIPConfig.o \
    $O/logic/routing/ConfigRouting.o \
    $O/tcpapp/AggRouterApp.o \
    $O/tcpapp/CoreRouterApp.o \
    $O/tcpapp/DCTCPControllerApp.o \
    $O/tcpapp/DCTCPControllerThread.o \
    $O/tcpapp/DCTrafGenApp.o \
    $O/tcpapp/EdgeRouterApp.o \
    $O/tcpapp/ExtTrafficGenerationApp.o \
    $O/tcpapp/HyperVisorApp.o \
    $O/tcpapp/HyperVisorThread.o \
    $O/tcpapp/MLAllReduceApp.o \
    $O/tcpapp/SystemController.o \
    $O/tcpapp/SystemControllerThread.o \
    $O/tcpapp/TGAppWithIAT.o \
    $O/tcpapp/TGTestApp.o \
    $O/tcpapp/TrafficGenerationApp.o \
    $O/tcpapp/TrafficGenerationThread.o \
    $O/tcpapp/VirtualMachineApp.o \
    $O/tcpapp/VirtualMachineThread.o \
    $O/util/ClientTimeMap.o \
    $O/util/ServerMap.o \
    $O/util/ServerStateMap.o \
    $O/util/ServiceMap.o \
    $O/util/SocketMapExt.o \
    $O/util/TCPHVSet.o \
    $O/util/TCPVMSet.o \
    $O/messages/ReplyMsg_m.o \
    $O/messages/RequestMsg_m.o \
    $O/messages/ShutDownHV_m.o \
    $O/messages/ShutDownVM_m.o \
    $O/messages/StartClient_m.o \
    $O/messages/StartHV_m.o \
    $O/messages/StartVM_m.o \
    $O/messages/StopClient_m.o \
    $O/messages/TTimer_m.o \
    $O/messages/TTimerCon_m.o \
    $O/messages/VMMigMsg_m.o

# Message files
MSGFILES = \
    messages/ReplyMsg.msg \
    messages/RequestMsg.msg \
    messages/ShutDownHV.msg \
    messages/ShutDownVM.msg \
    messages/StartClient.msg \
    messages/StartHV.msg \
    messages/StartVM.msg \
    messages/StopClient.msg \
    messages/TTimer.msg \
    messages/TTimerCon.msg \
    messages/VMMigMsg.msg

# Other makefile variables (-K)
INET_PROJ=../../inet

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
	-rm -f FatTree FatTree.exe libFatTree.so libFatTree.a libFatTree.dll libFatTree.dylib
	-rm -f ./*_m.cc ./*_m.h
	-rm -f components/*_m.cc components/*_m.h
	-rm -f ecmp/*_m.cc ecmp/*_m.h
	-rm -f logic/*_m.cc logic/*_m.h
	-rm -f logic/ipaddress/*_m.cc logic/ipaddress/*_m.h
	-rm -f logic/routing/*_m.cc logic/routing/*_m.h
	-rm -f messages/*_m.cc messages/*_m.h
	-rm -f router/*_m.cc router/*_m.h
	-rm -f tcpapp/*_m.cc tcpapp/*_m.h
	-rm -f trafficgeneration/*_m.cc trafficgeneration/*_m.h
	-rm -f util/*_m.cc util/*_m.h

cleanall: clean
	-rm -rf $(PROJECT_OUTPUT_DIR)

depend:
	$(MAKEDEPEND) $(INCLUDE_PATH) -f Makefile -P\$$O/ -- $(MSG_CC_FILES)  ./*.cc components/*.cc ecmp/*.cc logic/*.cc logic/ipaddress/*.cc logic/routing/*.cc messages/*.cc router/*.cc tcpapp/*.cc trafficgeneration/*.cc util/*.cc

# DO NOT DELETE THIS LINE -- make depend depends on it.
$O/ecmp/ConfigECMPRouting.o: ecmp/ConfigECMPRouting.cc \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/ipv4/IRoutingTable.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ecmp/ConfigECMPRouting.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/base/NotifierConsts.h \
  ecmp/ecmpTopo.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/ipv4/IPRoute.h
$O/ecmp/ECMPRoutingTable.o: ecmp/ECMPRoutingTable.cc \
  ../../inet/src/base/NotifierConsts.h \
  ecmp/ECMPRoutingTable.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/ipv4/IPRoute.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/ipv4/IRoutingTable.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/ipv4/RoutingTable.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h
$O/ecmp/IPECMP.o: ecmp/IPECMP.cc \
  ../../inet/src/networklayer/contract/IPControlInfo_m.h \
  ../../inet/src/networklayer/ipv4/RoutingTable.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/networklayer/ipv4/IPFragBuf.h \
  ../../inet/src/base/ReassemblyBuffer.h \
  ecmp/IPECMP.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/ipv4/ICMP.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/ipv4/IPRoute.h \
  ecmp/ECMPRoutingTable.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/arp/ARPPacket_m.h \
  ../../inet/src/base/ProtocolMap.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/networklayer/ipv4/ICMPAccess.h \
  ../../inet/src/networklayer/common/InterfaceTableAccess.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/ipv4/ICMPMessage.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/base/AbstractQueue.h \
  ../../inet/src/networklayer/ipv4/IPDatagram_m.h \
  ../../inet/src/networklayer/ipv4/IRoutingTable.h \
  ../../inet/src/networklayer/ipv4/RoutingTableAccess.h \
  ../../inet/src/base/QueueBase.h \
  ../../inet/src/networklayer/contract/IPControlInfo.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/networklayer/ipv4/IPDatagram.h \
  ../../inet/src/networklayer/ipv4/ICMPMessage_m.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPProtocolId_m.h
$O/ecmp/ecmpTopo.o: ecmp/ecmpTopo.cc \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ecmp/ecmpTopo.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h
$O/logic/ipaddress/AggIPConfig.o: logic/ipaddress/AggIPConfig.cc \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/ModuleAccess.h \
  logic/ipaddress/AggIPConfig.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h
$O/logic/ipaddress/ContIPConfig.o: logic/ipaddress/ContIPConfig.cc \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  logic/ipaddress/ContIPConfig.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h
$O/logic/ipaddress/CoreIPConfig.o: logic/ipaddress/CoreIPConfig.cc \
  ../../inet/src/base/NotifierConsts.h \
  logic/ipaddress/CoreIPConfig.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h
$O/logic/ipaddress/EdgeIPConfig.o: logic/ipaddress/EdgeIPConfig.cc \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  logic/ipaddress/EdgeIPConfig.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/INotifiable.h
$O/logic/ipaddress/ServerIPConfig.o: logic/ipaddress/ServerIPConfig.cc \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  logic/ipaddress/ServerIPConfig.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/INotifiable.h
$O/logic/ipaddress/VMIPConfig.o: logic/ipaddress/VMIPConfig.cc \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  logic/ipaddress/VMIPConfig.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h
$O/logic/routing/ConfigRouting.o: logic/routing/ConfigRouting.cc \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/base/NotificationBoard.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  logic/routing/ConfigRouting.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/ipv4/IRoutingTable.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  ../../inet/src/base/ModuleAccess.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/ipv4/IPRoute.h \
  ../../inet/src/base/INotifiable.h \
  ../../inet/src/networklayer/common/InterfaceTable.h \
  ../../inet/src/base/NotifierConsts.h
$O/messages/ReplyMsg_m.o: messages/ReplyMsg_m.cc \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  messages/ReplyMsg_m.h \
  ../../inet/src/base/INETDefs.h
$O/messages/RequestMsg_m.o: messages/RequestMsg_m.cc \
  ../../inet/src/base/INETDefs.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/messages/ShutDownHV_m.o: messages/ShutDownHV_m.cc \
  messages/ShutDownHV_m.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/messages/ShutDownVM_m.o: messages/ShutDownVM_m.cc \
  messages/ShutDownVM_m.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/messages/StartClient_m.o: messages/StartClient_m.cc \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/base/INETDefs.h \
  messages/StartClient_m.h
$O/messages/StartHV_m.o: messages/StartHV_m.cc \
  messages/StartHV_m.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/messages/StartVM_m.o: messages/StartVM_m.cc \
  ../../inet/src/base/INETDefs.h \
  messages/StartVM_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/messages/StopClient_m.o: messages/StopClient_m.cc \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  messages/StopClient_m.h \
  ../../inet/src/base/INETDefs.h
$O/messages/TTimerCon_m.o: messages/TTimerCon_m.cc \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  messages/TTimerCon_m.h
$O/messages/TTimer_m.o: messages/TTimer_m.cc \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/base/INETDefs.h \
  messages/TTimer_m.h
$O/messages/VMMigMsg_m.o: messages/VMMigMsg_m.cc \
  messages/VMMigMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/base/INETDefs.h
$O/tcpapp/AggRouterApp.o: tcpapp/AggRouterApp.cc \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  tcpapp/AggRouterApp.h \
  messages/VMMigMsg_m.h \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  util/TCPVMSet.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  util/ServiceMap.h
$O/tcpapp/CoreRouterApp.o: tcpapp/CoreRouterApp.cc \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  util/ServiceMap.h \
  tcpapp/CoreRouterApp.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  messages/VMMigMsg_m.h \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h
$O/tcpapp/DCTCPControllerApp.o: tcpapp/DCTCPControllerApp.cc \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/base/NotifierConsts.h \
  messages/TTimerCon_m.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  util/ServiceMap.h \
  tcpapp/VirtualMachineApp.h \
  tcpapp/HyperVisorApp.h \
  messages/StartClient_m.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  tcpapp/SystemController.h \
  messages/ReplyMsg_m.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/TCPVMSet.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  util/ClientTimeMap.h
$O/tcpapp/DCTCPControllerThread.o: tcpapp/DCTCPControllerThread.cc \
  messages/ReplyMsg_m.h \
  util/ServiceMap.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  tcpapp/DCTCPControllerThread.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  util/TCPVMSet.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  tcpapp/DCTCPControllerApp.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h
$O/tcpapp/DCTrafGenApp.o: tcpapp/DCTrafGenApp.cc \
  ../../inet/src/applications/tcpapp/TCPGenericCliAppBase.h \
  tcpapp/DCTrafGenApp.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  messages/ReplyMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPBasicClientApp.h \
  ../../inet/src/transport/contract/TCPCommand_m.h
$O/tcpapp/EdgeRouterApp.o: tcpapp/EdgeRouterApp.cc \
  tcpapp/EdgeRouterApp.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/TCPVMSet.h \
  util/ServiceMap.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  tcpapp/DCTCPControllerApp.h
$O/tcpapp/ExtTrafficGenerationApp.o: tcpapp/ExtTrafficGenerationApp.cc \
  util/ServiceMap.h \
  messages/StopClient_m.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  messages/TTimer_m.h \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/DCTCPControllerApp.h \
  messages/VMMigMsg_m.h \
  tcpapp/ExtTrafficGenerationApp.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h
$O/tcpapp/HyperVisorApp.o: tcpapp/HyperVisorApp.cc \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/TCPVMSet.h \
  tcpapp/HyperVisorApp.h \
  tcpapp/VirtualMachineApp.h \
  util/ServiceMap.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/DCTCPControllerApp.h
$O/tcpapp/HyperVisorThread.o: tcpapp/HyperVisorThread.cc \
  tcpapp/HyperVisorApp.h \
  tcpapp/VirtualMachineApp.h \
  util/ServiceMap.h \
  messages/StartHV_m.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  messages/ShutDownHV_m.h \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/DCTCPControllerApp.h \
  tcpapp/HyperVisorThread.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h
$O/tcpapp/MLAllReduceApp.o: tcpapp/MLAllReduceApp.cc \
  tcpapp/MLAllReduceApp.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/base/INETDefs.h
$O/tcpapp/SystemController.o: tcpapp/SystemController.cc \
  messages/VMMigMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/StartVM_m.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  util/ClientTimeMap.h \
  messages/ShutDownVM_m.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/TCPVMSet.h \
  util/ServiceMap.h \
  tcpapp/SystemController.h \
  messages/StopClient_m.h \
  messages/StartClient_m.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h
$O/tcpapp/SystemControllerThread.o: tcpapp/SystemControllerThread.cc \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  messages/StartVM_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  tcpapp/SystemControllerThread.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  messages/StopClient_m.h \
  tcpapp/SystemController.h \
  messages/StartClient_m.h \
  util/ServiceMap.h \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  messages/ShutDownVM_m.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/ServerMap.h \
  util/ClientTimeMap.h \
  ../../inet/src/networklayer/contract/IPAddress.h
$O/tcpapp/TGAppWithIAT.o: tcpapp/TGAppWithIAT.cc \
  ../../inet/src/networklayer/contract/IPAddress.h \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  messages/TTimer_m.h \
  util/ServerMap.h \
  messages/StopClient_m.h \
  util/ServiceMap.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  tcpapp/TGAppWithIAT.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/DCTCPControllerApp.h
$O/tcpapp/TGTestApp.o: tcpapp/TGTestApp.cc \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  tcpapp/TGTestApp.h \
  tcpapp/DCTCPControllerApp.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  messages/StopClient_m.h \
  util/ServiceMap.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  util/TCPVMSet.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  messages/TTimer_m.h \
  util/ServerMap.h \
  ../../inet/src/transport/contract/TCPSocketMap.h
$O/tcpapp/TrafficGenerationApp.o: tcpapp/TrafficGenerationApp.cc \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  messages/RequestMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  tcpapp/TrafficGenerationApp.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h
$O/tcpapp/TrafficGenerationThread.o: tcpapp/TrafficGenerationThread.cc \
  ../../inet/src/networklayer/contract/IPAddress.h \
  util/TCPVMSet.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  messages/TTimer_m.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  messages/ReplyMsg_m.h \
  messages/StopClient_m.h \
  messages/StartClient_m.h \
  util/ServiceMap.h \
  tcpapp/TGAppWithIAT.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerStateMap.h \
  tcpapp/TrafficGenerationThread.h \
  tcpapp/DCTCPControllerApp.h
$O/tcpapp/VirtualMachineApp.o: tcpapp/VirtualMachineApp.cc \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  messages/RequestMsg_m.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  messages/VMMigMsg_m.h \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/base/NotifierConsts.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  logic/routing/ConfigRouting.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/TCPVMSet.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h \
  util/ServiceMap.h \
  tcpapp/HyperVisorApp.h \
  tcpapp/VirtualMachineApp.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  ../../inet/src/linklayer/contract/MACAddress.h
$O/tcpapp/VirtualMachineThread.o: tcpapp/VirtualMachineThread.cc \
  util/ServiceMap.h \
  tcpapp/HyperVisorApp.h \
  tcpapp/VirtualMachineApp.h \
  ../../inet/src/linklayer/contract/MACAddress.h \
  ../../inet/src/networklayer/ipv4/IPv4InterfaceData.h \
  messages/ReplyMsg_m.h \
  util/SocketMapExt.h \
  ../../inet/src/base/INETDefs.h \
  messages/StartHV_m.h \
  messages/ShutDownHV_m.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPAddressResolver.h \
  tcpapp/VirtualMachineThread.h \
  ../../inet/src/networklayer/common/IInterfaceTable.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  logic/routing/ConfigRouting.h \
  messages/ShutDownVM_m.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  util/TCPVMSet.h \
  messages/StartVM_m.h \
  util/ServerStateMap.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  tcpapp/DCTCPControllerApp.h \
  ../../inet/src/base/NotifierConsts.h \
  ../../inet/src/networklayer/common/InterfaceToken.h \
  messages/VMMigMsg_m.h \
  ../../inet/src/networklayer/common/InterfaceEntry.h \
  ../../inet/src/applications/tcpapp/TCPSrvHostApp.h \
  messages/RequestMsg_m.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/applications/tcpapp/GenericAppMsg_m.h \
  ../../inet/src/transport/contract/TCPSocket.h
$O/util/ClientTimeMap.o: util/ClientTimeMap.cc \
  util/ClientTimeMap.h
$O/util/ServerMap.o: util/ServerMap.cc \
  util/TCPVMSet.h \
  util/ServerMap.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPv6Address.h
$O/util/ServerStateMap.o: util/ServerStateMap.cc \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  util/ServerStateMap.h
$O/util/ServiceMap.o: util/ServiceMap.cc \
  util/ServiceMap.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/networklayer/contract/IPv6Address.h
$O/util/SocketMapExt.o: util/SocketMapExt.cc \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/transport/contract/TCPSocket.h \
  ../../inet/src/transport/contract/TCPCommand_m.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  ../../inet/src/transport/contract/TCPSocketMap.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/base/INETDefs.h \
  util/SocketMapExt.h
$O/util/TCPHVSet.o: util/TCPHVSet.cc \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/TCPHVSet.h \
  ../../inet/src/base/INETDefs.h \
  ../../inet/src/networklayer/contract/IPv6Address.h
$O/util/TCPVMSet.o: util/TCPVMSet.cc \
  ../../inet/src/networklayer/contract/IPv6Address.h \
  ../../inet/src/networklayer/contract/IPAddress.h \
  ../../inet/src/networklayer/contract/IPvXAddress.h \
  util/TCPVMSet.h \
  ../../inet/src/base/INETDefs.h
