//
// Author: Michael Klopf
// 

package FatTree.src.tcpapp;

//
// Monitors system state. Starts/Deactivates servers and
// virtual machines. Initiates virtual machine migrations.
// Deactivates/Activates network components.
//
simple SystemController extends DCTCPControllerApp
{
    parameters:
        @class(SystemController);
        volatile double replyDelay @unit("s") = default(0s);
        bool dncycle = default(false);
}
