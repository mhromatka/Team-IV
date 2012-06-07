FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/RequestWaypointInfo.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_RequestWaypointInfo.lisp"
  "../srv_gen/lisp/LoadCourse.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_LoadCourse.lisp"
  "../srv_gen/lisp/CreateSimulatedPlane.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_CreateSimulatedPlane.lisp"
  "../srv_gen/lisp/RequestPlaneID.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_RequestPlaneID.lisp"
  "../srv_gen/lisp/LoadPath.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_LoadPath.lisp"
  "../srv_gen/lisp/DeleteSimulatedPlane.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_DeleteSimulatedPlane.lisp"
  "../srv_gen/lisp/GoToWaypoint.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_GoToWaypoint.lisp"
  "../srv_gen/lisp/SaveFlightData.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SaveFlightData.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
