
#include "ros/ros.h"
#include "AU_UAV_ROS/standardFuncs.h"



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

double AU_UAV_ROS::PlanePose::setX(double newX);

double AU_UAV_ROS::PlanePose::setY(double newY);

double AU_UAV_ROS::PlanePose::setZ(double newZ);

double AU_UAV_ROS::PlanePose::setHeading(double newHeading);

void AU_UAV_ROS::PlanePose::update(const AU_UAV_ROS::TelemetryUpdate &msg);
