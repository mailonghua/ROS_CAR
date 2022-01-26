#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_libs/world_canvas_utils"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/mailonghua/ros_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/mailonghua/ros_ws/install/lib/python2.7/dist-packages:/home/mailonghua/ros_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/mailonghua/ros_ws/build" \
    "/usr/bin/python2" \
    "/home/mailonghua/ros_ws/src/third_packages/world_canvas/world_canvas_libs/world_canvas_utils/setup.py" \
     \
    build --build-base "/home/mailonghua/ros_ws/build/third_packages/world_canvas/world_canvas_libs/world_canvas_utils" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/mailonghua/ros_ws/install" --install-scripts="/home/mailonghua/ros_ws/install/bin"
