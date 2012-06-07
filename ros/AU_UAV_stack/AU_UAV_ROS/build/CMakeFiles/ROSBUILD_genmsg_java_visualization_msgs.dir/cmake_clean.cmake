FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_java_visualization_msgs"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/ImageMarker.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/MarkerArray.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/Marker.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/MenuEntry.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarkerControl.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarkerUpdate.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarkerFeedback.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarkerPose.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarkerInit.java"
  "../msg_gen/java/ros/pkg/visualization_msgs/msg/InteractiveMarker.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_java_visualization_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
