//
// Author: Michael Klopf
// 

#include "EdgeRouterApp.h"
#include "DCTCPControllerApp.h"

Define_Module(EdgeRouterApp);

void EdgeRouterApp::initialize(int stage)
{
	if (stage == 2) {
	    DCTCPControllerApp *conApp = check_and_cast<DCTCPControllerApp *>(findControllerModule());

	    // emit SwitchPower - we assume it is always on therefore only positive value.
	    conApp->emitEnergyConsumption((int)par("powerConSwitch"));

	    // emit CablePower - we assume it's always on.
	    conApp->emitEnergyConsumption((int)par("k")/2*(int)par("powerConCable"));
	}
}

void EdgeRouterApp::handleMessage(cMessage *msg)
{
    // nothing to do yet
}

cModule *EdgeRouterApp::findControllerModule()
{
	cModule *net = getParentModule()->getParentModule()->getParentModule()->getParentModule();
	cModule *controller = net->getSubmodule("Controller", 0);
	cModule *tcHost = controller->getSubmodule("TrafficController", 0);
	if (!tcHost)
		tcHost = controller->getSubmodule("trafficController", 0);
	return tcHost ? tcHost->getSubmodule("tcpApp", 0) : NULL;
}
