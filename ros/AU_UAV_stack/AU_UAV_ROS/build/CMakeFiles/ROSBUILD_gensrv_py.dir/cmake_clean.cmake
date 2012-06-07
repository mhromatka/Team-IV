FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/AU_UAV_ROS/srv/__init__.py"
  "../src/AU_UAV_ROS/srv/_RequestWaypointInfo.py"
  "../src/AU_UAV_ROS/srv/_LoadCourse.py"
  "../src/AU_UAV_ROS/srv/_CreateSimulatedPlane.py"
  "../src/AU_UAV_ROS/srv/_RequestPlaneID.py"
  "../src/AU_UAV_ROS/srv/_LoadPath.py"
  "../src/AU_UAV_ROS/srv/_DeleteSimulatedPlane.py"
  "../src/AU_UAV_ROS/srv/_GoToWaypoint.py"
  "../src/AU_UAV_ROS/srv/_SaveFlightData.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
