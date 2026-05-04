//
// Author: Michael Klopf
// 

package FatTree.src.tcpapp;

import inet.src.applications.tcpapp.TCPApp;

//
// Edge router tcp application.
//
simple EdgeRouterApp like TCPApp
{
    parameters:
        int powerConSwitch @unit("W");
        double powerConCable @unit("W");
        int k;
        
    gates:
        input tcpIn @labels(TCPCommand/up);
        output tcpOut @labels(TCPCommand/down);
}
