/* Auto-generated by genmsg_cpp for file /home/michelle/Team-IV/ros/AU_UAV_stack/AU_UAV_ROS/srv/GoToWaypoint.srv */
#ifndef AU_UAV_ROS_SERVICE_GOTOWAYPOINT_H
#define AU_UAV_ROS_SERVICE_GOTOWAYPOINT_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "ros/service_traits.h"




namespace AU_UAV_ROS
{
template <class ContainerAllocator>
struct GoToWaypointRequest_ {
  typedef GoToWaypointRequest_<ContainerAllocator> Type;

  GoToWaypointRequest_()
  : planeID(0)
  , latitude(0.0)
  , longitude(0.0)
  , altitude(0.0)
  , isAvoidanceManeuver(false)
  , isNewQueue(false)
  {
  }

  GoToWaypointRequest_(const ContainerAllocator& _alloc)
  : planeID(0)
  , latitude(0.0)
  , longitude(0.0)
  , altitude(0.0)
  , isAvoidanceManeuver(false)
  , isNewQueue(false)
  {
  }

  typedef int16_t _planeID_type;
  int16_t planeID;

  typedef double _latitude_type;
  double latitude;

  typedef double _longitude_type;
  double longitude;

  typedef double _altitude_type;
  double altitude;

  typedef uint8_t _isAvoidanceManeuver_type;
  uint8_t isAvoidanceManeuver;

  typedef uint8_t _isNewQueue_type;
  uint8_t isNewQueue;


  typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GoToWaypointRequest
typedef  ::AU_UAV_ROS::GoToWaypointRequest_<std::allocator<void> > GoToWaypointRequest;

typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointRequest> GoToWaypointRequestPtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointRequest const> GoToWaypointRequestConstPtr;


template <class ContainerAllocator>
struct GoToWaypointResponse_ {
  typedef GoToWaypointResponse_<ContainerAllocator> Type;

  GoToWaypointResponse_()
  : error()
  {
  }

  GoToWaypointResponse_(const ContainerAllocator& _alloc)
  : error(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error;


  typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GoToWaypointResponse
typedef  ::AU_UAV_ROS::GoToWaypointResponse_<std::allocator<void> > GoToWaypointResponse;

typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointResponse> GoToWaypointResponsePtr;
typedef boost::shared_ptr< ::AU_UAV_ROS::GoToWaypointResponse const> GoToWaypointResponseConstPtr;

struct GoToWaypoint
{

typedef GoToWaypointRequest Request;
typedef GoToWaypointResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct GoToWaypoint
} // namespace AU_UAV_ROS

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2e058964f456d53e9679e3d97faca340";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x2e058964f456d53eULL;
  static const uint64_t static_value2 = 0x9679e3d97faca340ULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/GoToWaypointRequest";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int16 planeID\n\
float64 latitude\n\
float64 longitude\n\
float64 altitude\n\
bool isAvoidanceManeuver\n\
bool isNewQueue\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "eca8b96616c32aacf1be8bbf14c70eba";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xeca8b96616c32aacULL;
  static const uint64_t static_value2 = 0xf1be8bbf14c70ebaULL;
};

template<class ContainerAllocator>
struct DataType< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/GoToWaypointResponse";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "string error\n\
\n\
\n\
";
  }

  static const char* value(const  ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.planeID);
    stream.next(m.latitude);
    stream.next(m.longitude);
    stream.next(m.altitude);
    stream.next(m.isAvoidanceManeuver);
    stream.next(m.isNewQueue);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GoToWaypointRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.error);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GoToWaypointResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<AU_UAV_ROS::GoToWaypoint> {
  static const char* value() 
  {
    return "c8cfaca8efcd99e3add29323eb5d2746";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypoint&) { return value(); } 
};

template<>
struct DataType<AU_UAV_ROS::GoToWaypoint> {
  static const char* value() 
  {
    return "AU_UAV_ROS/GoToWaypoint";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypoint&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c8cfaca8efcd99e3add29323eb5d2746";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/GoToWaypoint";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypointRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c8cfaca8efcd99e3add29323eb5d2746";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "AU_UAV_ROS/GoToWaypoint";
  }

  static const char* value(const AU_UAV_ROS::GoToWaypointResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // AU_UAV_ROS_SERVICE_GOTOWAYPOINT_H

