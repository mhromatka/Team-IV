/*
collisionAvoidance
This is where students will be able to program in a collision avoidance algorithm.  The telemetry callback
is already setup along with a dummy version of how the service request would work.
*/

//standard C++ headers
#include <sstream>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <math.h>
#include <boost/lexical_cast.hpp>



//ROS headers
#include "ros/ros.h"
#include "AU_UAV_ROS/TelemetryUpdate.h"
#include "AU_UAV_ROS/GoToWaypoint.h"
#include <tf/transform_broadcaster.h>
#include <visualization_msgs/Marker.h>


#define WEST_MOST_LONGITUDE -85.490356
#define NORTH_MOST_LATITUDE 32.606573


#define METERS_TO_LATITUDE (1.0/111200.0)
#define EARTH_RADIUS 6371000.0 //meters

#define DEGREES_TO_RADIANS (M_PI/180.0)
#define RADIANS_TO_DEGREES (180.0/M_PI)

//publisher is global so callbacks can access it
ros::Publisher marker_pub;

//ROS service client for calling a service from the coordinator
ros::ServiceClient client;

//keeps count of the number of services requested
int count;

struct waypoint
{
	double latitude;
	double longitude;
	double altitude;
};

struct waypoint origin;

double distance(struct waypoint first, struct waypoint second)
{
	//difference in latitudes in radians
	double lat1 = first.latitude*DEGREES_TO_RADIANS;
	double lat2 = second.latitude*DEGREES_TO_RADIANS;
	double long1 = first.longitude*DEGREES_TO_RADIANS;
	double long2 = second.longitude*DEGREES_TO_RADIANS;
	
	double deltaLat = lat2 - lat1;
	double deltaLong = long2 - long1;
	
	//haversine crazy math, should probably be verified further beyond basic testing
	//calculate distance from current position to destination
	double a = pow(sin(deltaLat / 2.0), 2);
	a = a + cos(lat1)*cos(lat2)*pow(sin(deltaLong/2.0), 2);
	a = 2.0 * asin(sqrt(a));
	
	return EARTH_RADIUS * a;
}

//this function is run everytime new telemetry information from any plane is recieved
void telemetryCallback(const AU_UAV_ROS::TelemetryUpdate::ConstPtr& msg)
{
	//TODO:Make this function do something useful, aka an avoidance algorithm
	//ROS_INFO("Received update #[%lld]", msg->currentWaypointIndex);
	static tf::TransformBroadcaster br;
  	tf::Transform transform;
  	//transform.setOrigin( tf::Vector3(msg->currentLatitude, msg->currentLongitude,msg->currentAltitude) );

	//set up verticies of triangle
	struct waypoint northsouthpoint;
	northsouthpoint.latitude=msg->currentLatitude;
	northsouthpoint.longitude=WEST_MOST_LONGITUDE;
	struct waypoint eastwestpoint;
	eastwestpoint.latitude=NORTH_MOST_LATITUDE;
	eastwestpoint.longitude=msg->currentLongitude;


	transform.setOrigin( tf::Vector3(distance(origin,eastwestpoint), -distance(origin,northsouthpoint),0));
  	transform.setRotation( tf::Quaternion(0, 0, msg->targetBearing) );
	int planeID = msg->planeID;
	char buffer [5];
	sprintf(buffer, "%d",planeID);
  	br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "world", buffer));

	uint32_t shape = visualization_msgs::Marker::SPHERE;

	visualization_msgs::Marker marker;
	// Set the frame ID and timestamp.  See the TF tutorials for information on these.

	std::stringstream sstm;
	sstm << "/" << buffer;
	marker.header.frame_id = sstm.str();


	marker.header.stamp = ros::Time::now();

	// Set the namespace and id for this marker.  This serves to create a unique ID
	// Any marker sent with the same namespace and id will overwrite the old one
	marker.ns = "basic_shapes";
	marker.id = planeID;

	// Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
	marker.type = shape;

	// Set the marker action.  Options are ADD and DELETE
	marker.action = visualization_msgs::Marker::ADD;

	// Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
	marker.pose.position.x = 0;
	marker.pose.position.y = 0;
	marker.pose.position.z = 0;
	marker.pose.orientation.x = 0.0;
	marker.pose.orientation.y = 0.0;
	marker.pose.orientation.z = 0.0;
	marker.pose.orientation.w = 1.0;

	// Set the scale of the marker -- 1x1x1 here means 1m on a side
	marker.scale.x = 24.0;
	marker.scale.y = 24.0;
	marker.scale.z = 24.0;

	// Set the color -- be sure to set alpha to something non-zero!
	marker.color.r = 0.0f;
	marker.color.g = 1.0f;
	marker.color.b = 0.0f;
	marker.color.a = 0.7;

	marker.lifetime = ros::Duration();

	// Publish the marker
	marker_pub.publish(marker);




	uint32_t arrow = visualization_msgs::Marker::ARROW;

	visualization_msgs::Marker marker2;
	// Set the frame ID and timestamp.  See the TF tutorials for information on these.

	marker2.header.frame_id = marker.header.frame_id;


	marker2.header.stamp = ros::Time::now();

	// Set the namespace and id for this marker.  This serves to create a unique ID
	// Any marker sent with the same namespace and id will overwrite the old one
	marker2.ns = "basic_shapes";
	marker2.id = planeID+1000;

	// Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
	marker2.type = arrow;

	// Set the marker action.  Options are ADD and DELETE
	marker2.action = visualization_msgs::Marker::ADD;

	// Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
	marker2.pose.position.x = 0;
	marker2.pose.position.y = 0;
	marker2.pose.position.z = 0;
	marker2.pose.orientation.x = 0.0;
	marker2.pose.orientation.y = 0.0;
	marker2.pose.orientation.z = 0.0;
	marker2.pose.orientation.w = 1.0;

	// Set the scale of the marker -- 1x1x1 here means 1m on a side
	marker2.scale.x = 24.0;
	marker2.scale.y = 24.0;
	marker2.scale.z = 24.0;

	// Set the color -- be sure to set alpha to something non-zero!
	marker2.color.r = 1.0f;
	marker2.color.g = 0.0f;
	marker2.color.b = 0.0f;
	marker2.color.a = 1.0;

	marker2.lifetime = ros::Duration();

	// Publish the marker
	marker_pub.publish(marker2);
}



int main(int argc, char **argv)
{
	origin.latitude=NORTH_MOST_LATITUDE;
	origin.longitude=WEST_MOST_LONGITUDE;
	//standard ROS startup
	ros::init(argc, argv, "rvizTranslator");
	ros::NodeHandle n;
	
	//subscribe to telemetry outputs and create client for the avoid collision service
	ros::Subscriber sub = n.subscribe("telemetry", 1000, telemetryCallback);

	//publish basic shapes to plane positions
  	marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 100);

	//random seed for if statement in telemetryCallback, remove when collision avoidance work begins
	srand(time(NULL));
	
	//initialize counting
	count = 0;

	//needed for ROS to wait for callbacks
	ros::spin();	

	return 0;
}
