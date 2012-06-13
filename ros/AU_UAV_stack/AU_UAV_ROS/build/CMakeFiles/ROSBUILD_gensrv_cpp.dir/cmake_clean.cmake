FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/AU_UAV_ROS/LoadPath.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/GoToWaypoint.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/DeleteSimulatedPlane.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/RequestWaypointInfo.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/RequestPlaneID.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/LoadCourse.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/SaveFlightData.h"
  "../srv_gen/cpp/include/AU_UAV_ROS/CreateSimulatedPlane.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
