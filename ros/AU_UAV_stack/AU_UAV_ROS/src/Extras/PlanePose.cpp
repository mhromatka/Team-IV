
#include "ros/ros.h"
#include "AU_UAV_ROS/standardFuncs.h"

//Define a waypoint
struct waypoint
{
	double latitude;
	double longitude;
	double altitude;
};


//default constructor
AU_UAV_ROS::PlanePose::PlanePose(){
	this->id = 0;
	this->x = 0;
	this->y = 0;
	this->z = 0;
	this->heading = 0;
}

AU_UAV_ROS::PlanePose::PlanePose(int id, double x, double y, double z, double heading){
	this->id = id;
	this->x = x;
	this->y = y;
	this->z = z;
	this->heading = heading;
}

double AU_UAV_ROS::PlanePose::setX(double newX){
	this->x = newX; 
}

double AU_UAV_ROS::PlanePose::setY(double newY){
	this->y = newY; 
}
double AU_UAV_ROS::PlanePose::setZ(double newZ){
	this->z = newZ; 
}
double AU_UAV_ROS::PlanePose::setHeading(double newHeading){
	this->heading = newHeading; 
}

void AU_UAV_ROS::PlanePose::update(const AU_UAV_ROS::TelemetryUpdate &msg){
	struct waypoint telemetryInfo;
	telemetryInfo.latitude = msg.currentLatitude;
	telemetryInfo.longitude = msg.currentLongitude;
	telemetryInfo.altitude = msg.currentAltitude;	

	struct waypoint newPosData = getXYZ(telemetryInfo);	/* call inherited function */

	this->setX(newPosData.latitude); 
	this->setLongitude(newPosData.longitude); 
	this->setAltitude(newPosData.altitude);

}
