cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
#set(ROS_BUILD_TYPE RelWithDebInfo)

rosbuild_init()

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#uncomment if you have defined messages
rosbuild_genmsg()
#uncomment if you have defined services
rosbuild_gensrv()

#add_jar_dir(/usr/share/java)
#add_runtime_classpath(${PROJECT_SOURCE_DIR}/bin)
#add_java_source_dir(${PROJECT_SOURCE_DIR}/src/JAVA)

#common commands for building c++ executables and libraries
#rosbuild_add_library(${PROJECT_NAME} src/example.cpp)
#target_link_libraries(${PROJECT_NAME} another_library)
#rosbuild_add_boost_directories()
#rosbuild_link_boost(${PROJECT_NAME} thread)
#rosbuild_add_executable(example examples/example.cpp)
#target_link_libraries(example ${PROJECT_NAME})

#C++ executables
rosbuild_add_executable(simulator src/simulator.cpp src/AU_UAV_ROS/SimulatedPlane.cpp src/AU_UAV_ROS/standardDefs.cpp)
rosbuild_add_executable(collisionAvoidance src/collisionAvoidance.cpp src/AU_UAV_ROS/standardDefs.cpp src/AU_UAV_ROS/standardFuncs.cpp)
rosbuild_add_executable(coordinator src/coordinator.cpp src/AU_UAV_ROS/PlaneCoordinator.cpp src/AU_UAV_ROS/standardDefs.cpp)
rosbuild_add_executable(ControlMenu src/ControlMenu.cpp src/AU_UAV_ROS/standardDefs.cpp)
rosbuild_add_executable(KMLCreator src/KMLCreator.cpp)
rosbuild_add_executable(visualization src/visualization.cpp)
rosbuild_add_executable(evaluator src/evaluator.cpp src/AU_UAV_ROS/standardDefs.cpp)
rosbuild_add_executable(rvizTranslator src/rvizTranslator.cpp src/AU_UAV_ROS/standardFuncs.cpp)
rosbuild_add_executable(algo src/main.cpp src/test.cpp src/OutputLVar.cpp src/InputLVar.cpp src/RuleBlock.cpp src/LinguisticVariable.cpp src/FuzzyEngine.cpp src/FuzzyOperator.cpp src/TriangularTerm.cpp src/ShoulderTerm.cpp src/AreaCentroidAlgorithm.cpp src/LinguisticTerm.cpp src/HedgeSet.cpp src/FuzzyException.cpp src/FuzzyExceptions.cpp src/MamdaniRule.cpp src/FuzzyAnd.cpp src/FuzzyOr.cpp src/FuzzyOperation.cpp src/FuzzyModulation.cpp src/FuzzyDefuzzifier.cpp src/TrapezoidalTerm.cpp src/StrOp.cpp src/FuzzyRule.cpp src/CompoundTerm.cpp src/TakagiSugenoRule.cpp src/Hedge.cpp src/FunctionTerm.cpp src/DescriptiveAntecedent.cpp src/MamdaniConsequent.cpp src/FuzzyAntecedent.cpp src/FuzzyConsequent.cpp src/TakagiSugenoConsequent.cpp src/TakagiSugenoTerm.cpp src/InfixToPostfix.cpp src/SingletonTerm.cpp )
#JAVA executables
#rospack_add_java_executable(XBeeIO com/GCS/xbee/XBeeGCS)
