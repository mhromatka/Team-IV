FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../src/AU_UAV_ROS/msg"
  "../src/AU_UAV_ROS/srv"
  "../msg_gen"
  "../srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_java_geometry_msgs"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Pose2D.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PoseStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PoseArray.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/TransformStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Vector3.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/TwistStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PolygonStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/WrenchStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PointStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Vector3Stamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Polygon.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Point.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Transform.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PoseWithCovarianceStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/PoseWithCovariance.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/QuaternionStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Quaternion.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Wrench.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Pose.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/TwistWithCovariance.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/TwistWithCovarianceStamped.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Twist.java"
  "../msg_gen/java/ros/pkg/geometry_msgs/msg/Point32.java"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_java_geometry_msgs.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
