FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_gensrv_java_topic_tools"
  "../srv_gen/java/ros/pkg/topic_tools/srv/MuxList.java"
  "../srv_gen/java/ros/pkg/topic_tools/srv/MuxAdd.java"
  "../srv_gen/java/ros/pkg/topic_tools/srv/MuxSelect.java"
  "../srv_gen/java/ros/pkg/topic_tools/srv/MuxDelete.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_java_topic_tools.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
