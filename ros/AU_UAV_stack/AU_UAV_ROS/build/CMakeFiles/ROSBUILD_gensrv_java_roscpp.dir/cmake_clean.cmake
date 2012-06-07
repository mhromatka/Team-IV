FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_java_roscpp"
  "../srv_gen/java/ros/pkg/roscpp/srv/SetLoggerLevel.java"
  "../srv_gen/java/ros/pkg/roscpp/srv/GetLoggers.java"
  "../srv_gen/java/ros/pkg/roscpp/srv/Empty.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_java_roscpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
