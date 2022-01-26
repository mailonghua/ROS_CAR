# Install script for directory: /home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_server.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server/cmake" TYPE FILE FILES
    "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_serverConfig.cmake"
    "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_serverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server" TYPE FILE FILES "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/world_canvas_server" TYPE PROGRAM FILES "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_server/catkin_generated/installspace/world_canvas_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/world_canvas_server" TYPE PROGRAM FILES
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/add_map.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/export.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/get_any.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/get_columns.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/get_markers.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/get_tables.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/get_walls.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/import.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_columns.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_map.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_markers.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_tables.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_tables_jh.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/save_walls.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/set_keyword.py"
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/scripts/set_relationship.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_server" TYPE DIRECTORY FILES "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_server/launch")
endif()

