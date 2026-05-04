//
// Author: Michael Klopf
// 

package FatTree.src.router;

import inet.src.nodes.inet.Router;

//
// Router to connect the elements in the controller subnetwork for
// traffic generation purposes.
//
module ConNetRouter extends Router
{
    parameters:
        @Controller;
}
