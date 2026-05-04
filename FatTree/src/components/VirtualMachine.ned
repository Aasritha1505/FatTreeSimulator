//
// Virtual machine representation. Needed for ip assignment.
//
// Author: Michael Klopf
// 

package FatTree.src.components;

//import inet.src.nodes.inet.StandardHost;
import FatTree.src.ecmp.ECMPStandardHost;

module VirtualMachine extends ECMPStandardHost
{
    parameters:
    	@VM;
}
