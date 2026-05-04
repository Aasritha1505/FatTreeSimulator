//
// Hypervisor for virtual machine observation. It's forwarding the traffic
// to the vms.
//
// Author: Michael Klopf
// 

package FatTree.src.components;

//import inet.src.nodes.inet.StandardHost;
import FatTree.src.ecmp.ECMPStandardHost;

module Hypervisor extends ECMPStandardHost
{
    parameters:
        @Hypervisor;
        IPForward = default(true);
}
