//
// Author: Michael Klopf
// 

package FatTree.src.router;
import FatTree.src.ecmp.ECMPStandardHost;

//import inet.src.nodes.inet.Router;
import FatTree.src.ecmp.ECMPRouter;

import FatTree.src.logic.ipaddress.CoreIPConfig;
//
// Represents a core router in the fat tree.
//
module CoreRouter extends ECMPStandardHost
{
    parameters:
		@CoreRouter;
        @display("i=abstract/router");
		int k;
        int position; // position among other core routers
        IPForward = default(true);
    submodules:
        ipconfig: CoreIPConfig;
}
