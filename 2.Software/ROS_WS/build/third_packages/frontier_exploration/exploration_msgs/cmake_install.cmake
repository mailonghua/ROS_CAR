# Install script for directory: /home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mailonghua/ros_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/action" TYPE FILE FILES "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/action/Explore.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/msg" TYPE FILE FILES
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
    "/home/mailonghua/ros_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/srv" TYPE FILE FILES "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/srv/SetPolygon.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/cmake" TYPE FILE FILES "/home/mailonghua/ros_ws/build/third_packages/frontier_exploration/exploration_msgs/catkin_generated/installspace/exploration_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/devel/include/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/devel/share/roseus/ros/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/devel/share/common-lisp/ros/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/devel/share/gennodejs/ros/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/mailonghua/ros_ws/devel/lib/python2.7/dist-packages/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/devel/lib/python2.7/dist-packages/exploration_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mailonghua/ros_ws/build/third_packages/frontier_exploration/exploration_msgs/catkin_generated/installspace/exploration_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/cmake" TYPE FILE FILES "/home/mailonghua/ros_ws/build/third_packages/frontier_exploration/exploration_msgs/catkin_generated/installspace/exploration_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs/cmake" TYPE FILE FILES
    "/home/mailonghua/ros_ws/build/third_packages/frontier_exploration/exploration_msgs/catkin_generated/installspace/exploration_msgsConfig.cmake"
    "/home/mailonghua/ros_ws/build/third_packages/frontier_exploration/exploration_msgs/catkin_generated/installspace/exploration_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/exploration_msgs" TYPE FILE FILES "/home/mailonghua/ros_ws/src/third_packages/frontier_exploration/exploration_msgs/package.xml")
endif()

