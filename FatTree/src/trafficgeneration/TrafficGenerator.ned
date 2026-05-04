//
// Creates messages according to a distribution.
//
// Author: Michael Klopf
// 

package FatTree.src.trafficgeneration;

//import inet.src.nodes.inet.StandardHost;
import FatTree.src.ecmp.ECMPStandardHost;

module TrafficGenerator extends ECMPStandardHost
{
    parameters:
        @Controller;
}
