/*
collisionAvoidance
This is where students will be able to program in a collision avoidance algorithm.  The telemetry callback
is already setup along with a dummy version of how the service request would work.
*/

//standard C++ headers
#include <sstream>
#include <stdlib.h>
#include <time.h>

//ROS headers
#include "ros/ros.h"
#include "AU_UAV_ROS/TelemetryUpdate.h"
#include "AU_UAV_ROS/GoToWaypoint.h"
#include "AU_UAV_ROS/standardFuncs.h"
#include "AU_UAV_ROS/standardDefs.h"

//ROS service client for calling a service from the coordinator
ros::ServiceClient client;

//keeps count of the number of services requested
int count;
double heading = 0.0;//check to make sure planes actually do initiate with 0.0 heading????

//this function is run everytime new telemetry information from any plane is recieved
void telemetryCallback(const AU_UAV_ROS::TelemetryUpdate::ConstPtr& msg)
{
	

	//currentHeading = getNewHeading(msg->planeID);
	
	



	//this 'if' statement will be changed to run when collision avoidance service needs to be used
	if(false) //collision detection OR run everytime
	{
		//this will be replaced by students to do more than just send a string
		std::stringstream ss;
		ss << "Sending service request " << count++;

		//dummying up a service request for the REU students to see
		AU_UAV_ROS::GoToWaypoint srv;
		srv.request.planeID = msg->planeID;
		srv.request.latitude = 32.606573;
		srv.request.longitude = -85.490356;
		srv.request.altitude = 400;
		
		//these settings mean it is an avoidance maneuver waypoint AND to clear the avoidance queue
		srv.request.isAvoidanceManeuver = true;
		srv.request.isNewQueue = false;

		//check to make sure the client call worked (regardless of return values from service)
		if(client.call(srv))
		{
			ROS_INFO("Received response from service request %d", (count-1));
		}
		else
		{
			ROS_ERROR("Did not receive response");
		}
	}
	//else goes back to path planning (straight line) unless clear the que?
}

int main(int argc, char **argv)
{
	//standard ROS startup
	ros::init(argc, argv, "collisionAvoidance");
	ros::NodeHandle n;
	
	//subscribe to telemetry outputs and create client for the avoid collision service
	ros::Subscriber sub = n.subscribe("telemetry", 1000, telemetryCallback);
	client = n.serviceClient<AU_UAV_ROS::GoToWaypoint>("go_to_waypoint");
	
	//random seed for if statement in telemetryCallback, remove when collision avoidance work begins
	srand(time(NULL));
	
	//initialize counting
	count = 0;

	//needed for ROS to wait for callbacks
	ros::spin();	

	return 0;
}
