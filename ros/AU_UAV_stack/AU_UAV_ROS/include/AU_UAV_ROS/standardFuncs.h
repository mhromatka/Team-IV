/*
Standard funcs.

A small collection of functions related to UAV flight that are used throughout the code.
IMPORTANT NOTE: All of the angles passed to the functions and returned from these functions are in degrees.
*/

#ifndef STANDARD_FUNCS
#define STANDARD_FUNCS

#include "AU_UAV_ROS/standardDefs.h" /* for EARTH_RADIUS in meters */
const double PI = 4*atan(1);
const double DEGREE_TO_RAD = PI/180; /* convert degrees to radians */


//returns coordinate position of plane based on waypoint in lat/long
AU_UAV_ROS::waypoint getPlaneXYZ(AU_UAV_ROS::waypoint planePosition);

//gets distance between two positions in lat/long measurements, returns distance in meters
double getActualDistance(AU_UAV_ROS::waypoint first, AU_UAV_ROS::waypoint second);
//get distance between two planes (in meters)
double getPlaneDist(int planeID);

/*
Takes the current location in the form of a waypoint, and given a bearing and angular distance, calculates
a new waypoint at that specified bearing and distance away.
*/
AU_UAV_ROS::waypoint calculateCoordinate(AU_UAV_ROS::waypoint currentPosition, double bearing, double distance);

/*
Takes the bearing given by the UAV that is based off of Cardinal directions and converts
it to the equivalent bearing in the Cartesian plane.  Returns a value on the interval [-180, 180].
*/
double toCartesian(double UAVBearing);

/* 
Takes an angle based on the Cartestian plane and converts to the equivalent 
Cardinal direction.  Returns a value on the interval [-180, 180]
*/
double toCardinal(double angle);

/*
Manipulates the angle parameter so it is always on the interval [-180, 180]
*/
double manipulateAngle(double angle);

/* 
Returns the distance between two points of latitude and longitude in meters.  The first two parameters
are the latitude and longitude of the starting point, and the last two parameters are the latitude and
longitude of the ending point. 
*/
double findDistance(double lat1, double long1, double lat2, double long2);

/* 
Returns the Cardinal angle between two points of latitude and longitude in degrees.  The starting point is given
by lat1 and long1 (the first two parameters), and the final point is given by lat2 and long2 (the final two parameters).
The value returned is on the interval [-180, 180].
*/
double findAngle(double lat1, double long1, double lat2, double long2);

#endif

