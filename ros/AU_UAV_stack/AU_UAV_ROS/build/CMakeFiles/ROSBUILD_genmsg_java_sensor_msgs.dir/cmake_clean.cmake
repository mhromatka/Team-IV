FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_java_sensor_msgs"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/Range.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/ChannelFloat32.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/JoyFeedbackArray.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/PointField.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/NavSatFix.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/RegionOfInterest.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/NavSatStatus.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/JoyFeedback.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/PointCloud.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/CompressedImage.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/Joy.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/JointState.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/Imu.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/CameraInfo.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/PointCloud2.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/Image.java"
  "../msg_gen/java/ros/pkg/sensor_msgs/msg/LaserScan.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_java_sensor_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
