FILE(REMOVE_RECURSE
  "msg_gen"
  "srv_gen"
  "src/AU_UAV_ROS/msg"
  "src/AU_UAV_ROS/srv"
  "msg_gen"
  "srv_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "src/AU_UAV_ROS/msg/__init__.py"
  "src/AU_UAV_ROS/msg/_TelemetryUpdate.py"
  "src/AU_UAV_ROS/msg/_Command.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
