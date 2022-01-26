# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "astra_camera: 0 messages, 19 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(astra_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" "sensor_msgs/CameraInfo:sensor_msgs/RegionOfInterest:std_msgs/Header"
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" ""
)

get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_custom_target(_astra_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "astra_camera" "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)
_generate_srv_cpp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_cpp(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(astra_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_cpp _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_gencpp)
add_dependencies(astra_camera_gencpp astra_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)
_generate_srv_eus(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_eus(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(astra_camera_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_eus _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_geneus)
add_dependencies(astra_camera_geneus astra_camera_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)
_generate_srv_lisp(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_lisp(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(astra_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_lisp _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_genlisp)
add_dependencies(astra_camera_genlisp astra_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)
_generate_srv_nodejs(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_nodejs(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(astra_camera_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_nodejs _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_gennodejs)
add_dependencies(astra_camera_gennodejs astra_camera_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)
_generate_srv_py(astra_camera
  "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
)

### Generating Module File
_generate_module_py(astra_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(astra_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(astra_camera_generate_messages astra_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetCameraInfo.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SwitchIRCamera.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetSerial.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetIRFlood.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLDP.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetLaser.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCExposure.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/ResetIRGain.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mailonghua/ros_ws/src/ros_astra_camera/srv/GetDeviceType.srv" NAME_WE)
add_dependencies(astra_camera_generate_messages_py _astra_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(astra_camera_genpy)
add_dependencies(astra_camera_genpy astra_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS astra_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/astra_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(astra_camera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(astra_camera_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/astra_camera
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(astra_camera_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(astra_camera_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/astra_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(astra_camera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(astra_camera_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/astra_camera
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(astra_camera_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(astra_camera_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/astra_camera
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(astra_camera_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(astra_camera_generate_messages_py sensor_msgs_generate_messages_py)
endif()
