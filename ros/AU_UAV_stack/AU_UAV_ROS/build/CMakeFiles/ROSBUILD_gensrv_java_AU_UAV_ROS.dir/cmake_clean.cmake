FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_java_AU_UAV_ROS"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/RequestWaypointInfo.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/LoadCourse.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/CreateSimulatedPlane.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/RequestPlaneID.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/LoadPath.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/DeleteSimulatedPlane.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/GoToWaypoint.java"
  "../srv_gen/java/ros/pkg/AU_UAV_ROS/srv/SaveFlightData.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_java_AU_UAV_ROS.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
