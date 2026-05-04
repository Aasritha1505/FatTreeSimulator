//
// Network controller consists of traffic controller.
// Traffic controller creates jobs according to a distribution.
// The traffic controller is responsible for load balancing and other tasks.
//
// Author: Michael Klopf
// 

package FatTree.src.components;

import ned.IdealChannel;
import ned.DatarateChannel;

import FatTree.src.trafficgeneration.TrafficController;
import FatTree.src.trafficgeneration.TrafficGenerator;
//import FatTree.src.trafficgeneration.HttpService;
//import FatTree.src.trafficgeneration.FtpService;

import FatTree.src.logic.ipaddress.VMIPConfig;
import FatTree.src.logic.ipaddress.ContIPConfig;
//import FatTree.src.logic.routing.ConfigRouting;
import FatTree.src.ecmp.ConfigECMPRouting;

//import FatTree.src.router.ConNetRouter;

module ECMPController
{
    parameters:
        // Parameter handed over from fattree.ned.
        int k;
        //int numtgs;
        int numHttpClients;
        int numFtpClients;
        int sizecongate = (k/2)^2;
        //int numtgsmatrix = numtgs/4;
        @display("bgb=400,300");
    gates:
        // As many gates as core routers.
        inout controllerg[(k/2)^2];
        inout syscong[(k/2)^2];
    types:
        channel C extends DatarateChannel
        {
            datarate = 1000Gbps;
            delay = 0us;
        }
    submodules:
        TrafficController: TrafficController {
            k = k;
            @display("p=186,229");
            @display("i=block/control");
        }

        Service1: TrafficGenerator {
            //numtg = numHttpClients;
            @display("p=109,114");
            @display("i=block/browser");
            @HTTP;
        }

        Service2: TrafficGenerator {
            //numtg = numFtpClients;
            @display("p=267,114");
            @display("i=block/ftp");
            @FTP;
        }

        SystemController: TrafficGenerator {
            @display("p=314,229");
            @display("i=block/blackboard");
        }
        // Setting up routing behaviour.
        routingsetup: ConfigECMPRouting {
            @display("p=223,31");
        }

        // Assigning ip addresses to the virtual machines.
        vmipconfig: VMIPConfig {
            @display("p=129,31");
        }

        // Assigning ip addresses to elements of controller.
        conipconfig: ContIPConfig {
            @display("p=43,31");
        }

        //trafficGenerators[numtgs]: TrafficGenerator {
        //   @display("p=60,160,m,$numtgsmatrix,160,160"); 
        //}

        //router: ConNetRouter {
        //   @display("p=150,160"); 
        //}
    connections:
        for i=0..numHttpClients-1 {
            Service1.pppg++ <--> C <--> TrafficController.pppg++;
        }

        for i=0..numFtpClients-1 {
            Service2.pppg++ <--> C <--> TrafficController.pppg++;
        }

        SystemController.pppg++ <--> C <--> TrafficController.pppg++;
        //for i=0..sizeof(trafficGenerators)-1 {
        //    trafficGenerators[i].pppg++ <--> C <--> trafficController.pppg++;
        //}

        //router.pppg++ <--> C <--> trafficGenerator.pppg++;

        //trafficController.pppg++ <--> C <--> router.pppg++;

        for i=0..sizeof(controllerg)-1 {
            controllerg[i] <--> IdealChannel <--> TrafficController.pppg++;
        }
        
        for i=0..sizeof(syscong)-1 {
            syscong[i] <--> IdealChannel <--> SystemController.pppg++;
        }
}
