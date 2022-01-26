# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "world_canvas_msgs: 5 messages, 17 services")

set(MSG_I_FLAGS "-Iworld_canvas_msgs:/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iuuid_msgs:/opt/ros/melodic/share/uuid_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(world_canvas_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" "world_canvas_msgs/AnnotationData:uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" "std_msgs/ColorRGBA:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Vector3:geometry_msgs/Pose:geometry_msgs/PoseWithCovariance:geometry_msgs/Quaternion:std_msgs/Header:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" "world_canvas_msgs/MapListEntry"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" "std_msgs/ColorRGBA:geometry_msgs/Vector3:world_canvas_msgs/Annotation:geometry_msgs/Pose:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseWithCovariance:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" "std_msgs/ColorRGBA:geometry_msgs/Vector3:world_canvas_msgs/Annotation:geometry_msgs/Pose:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseWithCovariance:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" "std_msgs/ColorRGBA:geometry_msgs/Vector3:world_canvas_msgs/Annotation:geometry_msgs/Pose:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Quaternion:std_msgs/Header:world_canvas_msgs/AnnotationData:geometry_msgs/PoseWithCovariance:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" "std_msgs/ColorRGBA:geometry_msgs/Vector3:world_canvas_msgs/Annotation:geometry_msgs/Pose:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Quaternion:std_msgs/Header:world_canvas_msgs/AnnotationData:geometry_msgs/PoseWithCovariance:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" "uuid_msgs/UniqueID"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" "std_msgs/ColorRGBA:geometry_msgs/Vector3:world_canvas_msgs/Annotation:geometry_msgs/Pose:geometry_msgs/PoseWithCovarianceStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/PoseWithCovariance:uuid_msgs/UniqueID:geometry_msgs/Point"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_custom_target(_world_canvas_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "world_canvas_msgs" "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_cpp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_cpp(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(world_canvas_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_cpp _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_gencpp)
add_dependencies(world_canvas_msgs_gencpp world_canvas_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_eus(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_eus(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(world_canvas_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_eus _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_geneus)
add_dependencies(world_canvas_msgs_geneus world_canvas_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_lisp(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_lisp(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(world_canvas_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_lisp _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_genlisp)
add_dependencies(world_canvas_msgs_genlisp world_canvas_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_nodejs(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_nodejs(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(world_canvas_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_nodejs _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_gennodejs)
add_dependencies(world_canvas_msgs_gennodejs world_canvas_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_msg_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)

### Generating Services
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
  "${MSG_I_FLAGS}"
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/ColorRGBA.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovarianceStamped.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)
_generate_srv_py(world_canvas_msgs
  "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/uuid_msgs/cmake/../msg/UniqueID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
)

### Generating Module File
_generate_module_py(world_canvas_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(world_canvas_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(world_canvas_msgs_generate_messages world_canvas_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv" NAME_WE)
add_dependencies(world_canvas_msgs_generate_messages_py _world_canvas_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(world_canvas_msgs_genpy)
add_dependencies(world_canvas_msgs_genpy world_canvas_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS world_canvas_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(world_canvas_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET uuid_msgs_generate_messages_cpp)
  add_dependencies(world_canvas_msgs_generate_messages_cpp uuid_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(world_canvas_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(world_canvas_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET uuid_msgs_generate_messages_eus)
  add_dependencies(world_canvas_msgs_generate_messages_eus uuid_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(world_canvas_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(world_canvas_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET uuid_msgs_generate_messages_lisp)
  add_dependencies(world_canvas_msgs_generate_messages_lisp uuid_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(world_canvas_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(world_canvas_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET uuid_msgs_generate_messages_nodejs)
  add_dependencies(world_canvas_msgs_generate_messages_nodejs uuid_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(world_canvas_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/world_canvas_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(world_canvas_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET uuid_msgs_generate_messages_py)
  add_dependencies(world_canvas_msgs_generate_messages_py uuid_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(world_canvas_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
