//
// Author: Michael Klopf
// 

package FatTree.src.tcpapp;

import inet.src.applications.tcpapp.TCPBasicClientApp;
//
// Adding a reply delay time to the TCPBasicClientApp.
// Used for traffic generation.
//
simple DCTrafGenApp extends TCPBasicClientApp
{
    parameters:
    	@class(DCTrafGenApp);
        volatile double replyDelay @unit("s") = default(1s);
        
        @signal[processingTime](type="double");
        @statistic[processingTime](title="Time to process a job.";source="processingTime";record=vector);
}
