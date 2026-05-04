//
// Author: Michael Klopf
// 

package FatTree.src.router;

//import inet.src.nodes.inet.Router;
import FatTree.src.ecmp.ECMPRouter;
import FatTree.src.ecmp.ECMPStandardHost;

import FatTree.src.logic.ipaddress.AggIPConfig;

//
// Representation of an aggregation router in the fat tree network.
//
module AggRouter extends ECMPStandardHost
{
    parameters:
        @AggRouter;
        @display("i=abstract/router");
        int k;
        int position;	// saves position of router in pod.
        IPForward = default(true);
    submodules:
        ipconfig: AggIPConfig;
}
