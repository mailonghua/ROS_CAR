# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exploration_msgs: 7 messages, 1 services")

set(MSG_I_FLAGS "-Iexploration_msgs:/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exploration_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" "std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:exploration_msgs/ExploreFeedback:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/PoseStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" "actionlib_msgs/GoalID:exploration_msgs/ExploreGoal:std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" "exploration_msgs/ExploreResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" "geometry_msgs/Point32:geometry_msgs/PolygonStamped:geometry_msgs/Polygon:std_msgs/Header"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" "actionlib_msgs/GoalID:exploration_msgs/ExploreActionResult:actionlib_msgs/GoalStatus:exploration_msgs/ExploreGoal:geometry_msgs/Quaternion:std_msgs/Header:exploration_msgs/ExploreActionGoal:geometry_msgs/PointStamped:exploration_msgs/ExploreResult:geometry_msgs/Pose:geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:exploration_msgs/ExploreActionFeedback:geometry_msgs/PoseStamped:exploration_msgs/ExploreFeedback:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_cpp(exploration_msgs
  "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_cpp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exploration_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_gencpp)
add_dependencies(exploration_msgs_gencpp exploration_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)
_generate_msg_eus(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_eus(exploration_msgs
  "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_eus(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(exploration_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_eus _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_geneus)
add_dependencies(exploration_msgs_geneus exploration_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_lisp(exploration_msgs
  "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_lisp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exploration_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genlisp)
add_dependencies(exploration_msgs_genlisp exploration_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)
_generate_msg_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_nodejs(exploration_msgs
  "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_nodejs(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(exploration_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_nodejs _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_gennodejs)
add_dependencies(exploration_msgs_gennodejs exploration_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_py(exploration_msgs
  "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_py(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exploration_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genpy)
add_dependencies(exploration_msgs_genpy exploration_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/exploration_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(exploration_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(exploration_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/exploration_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(exploration_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(exploration_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
