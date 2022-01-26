# 功能
## 1.校准
线速度校准:
a.启动校准功能包：roslaunch robot_driver robot_calibrate_linear.launch
b.打开动态配置界面: rosrun rqt_reconfigure rqt_reconfigure
c.校准前先将robot_driver中robot_params.yaml的linear_correction_factor参数置为1
d.点击界面上的start_test选择框，此时小车会向前移动1m,移动完后，用卷尺测量实际走的距离，如1.3m，那么久将该值填写到odom_linear_scale_correction中
e.然后再重复测试，若还存在偏差，若是超过了1m，那么就将偏差加到odom_linear_scale_correction值上，若是少于1m，那么就将差值见到dom_linear_scale_correction上

角速度校准：
a.启动校准功能包：roslaunch robot_driver robot_calibrate_angular.launch
b.打开动态配置界面: rosrun rqt_reconfigure rqt_reconfigure
c.操作步骤与上面类似，但是填写的odom_angular_scale_correction是实际角度/360的值
d.重复测试，若是超过了360度，则增大odom_angular_scale_correction否则减少
## 2.操作命令
### 2.1 使用键盘进行小车的控制
启动底盘控制节点：roslaunch robot_driver robot_driver.launch
启动键盘控制节点：roslaunch robot_ctrl robot_keyboard.launch 

#### 2.2手动控制小车进行建图
启动建图相关节点
roslaunch robot_navigation robot_slam.launch slam_type:=manual
启动rviz
rosrun rviz rviz
启动键盘控制节点
roslaunch robot_ctrl robot_keyboard.launch 

### 2.3自动建图
启动建图相关节点
roslaunch robot_navigation robot_slam.launch slam_type:=auto

### 2.4RVIZ显示TF
rosrun rviz rviz -d `rospack find turtle_tf`/rviz/turtle_rviz.rviz
然后将fix_frame选择为父节点，如odom

# 相关安装记录
## 1.键盘控制的package
sudo apt-get install ros-melodic-teleop-twist-keyboard
http://wiki.ros.org/teleop_twist_keyboard


## 2.奥比中光摄像头<乐视套壳>
运行指令：roslaunch astra_camera stereo_s.launch
### 2.1安装驱动
https://blog.csdn.net/zhangrelay/article/details/53515859
按照上面的连接安装完驱动
sudo apt install ros-$ROS_DISTRO-rgbd-launch ros-$ROS_DISTRO-libuvc ros-$ROS_DISTRO-libuvc-camera ros-$ROS_DISTRO-libuvc-ros

相关的参考记录
https://blog.csdn.net/qq_36219010/article/details/96559248
按照上面的步骤

### 2.2部署ROS
将该文件克隆到本地
git clone https://github.com/orbbec/ros_astra_camera

### 2.3驱动的配置
在stereo_s.launch文件当中修改
            <param name="product" value="0x0502"/>
将value的值换成lsusb中的内容
    Bus 001 Device 014: ID 2bc5:0502  
    Bus 001 Device 012: ID 2bc5:0403  
### 2.3错误解决
    若是在运行roslaunch astra_camera stereo_s.launch的时间出现了USB权限问题，请按照如下方式进行解决：
    sudo vim /etc/udev/rules.d/70-persistent-usb.rules添加如下内容：
    SYSFS{idProduct}"2003",SYSFS{idVendor}"413c",MODE="777",OWNER="user",GROUP="user"
    其中只需要替换2003和413c，该值通过lsusb中查看
    如：lssub: Bus 001 Device 022: ID 2bc5:0502
    那么这里:
            SYSFS{idProduct}"0502",SYSFS{idVendor}"2bc5",MODE="777",OWNER="user",GROUP="user"
    参考：
    https://blog.csdn.net/weixin_39644713/article/details/116712181
    https://blog.csdn.net/numberors/article/details/105805249
## 3.二进制安装SLAM
sudo apt-get install ros-melodic-slam-gmapping

## 4.二进制安装EKF融合算法
sudo apt-get install ros-melodic-robot-pose-ekf

## 5.安装激光雷达滤波器
sudo apt install ros-melodic-laser-filters

## 6. 移植了Xtark world_canvas
    执行
    rosdep install --from-paths src -i -y -r

## 7.安装map-server用于保存地图
sudo apt install ros-melodic-map-server
如在想保存地图的路径下执行：rosrun map_server map_saver -f 自定义地图文件名称

## 8.安装move-base
sudo apt-get install ros-melodic-move-base

## 9.导航
sudo apt install ros-melodic-teb-local-planner
#   二.需要检查的参数
在robot_nav_prepare.launch中  
<node pkg="tf" type="static_transform_publisher" name="base_foot_print_to_laser" args="0 0 0.175 0 0 0 base_footprint laser 20"/>  
yaw pitch roll设置为0

# 三.相关编译问题
## 1.frontier_exploration包
在引入frontier_exploration包后，进行catkin_make，会包找不到该包中的一些头文件
解决方法，执行如下命令后再重新运行catkin_make
1. cd <ros_ws>
2. catkin_make --only-pkg-with-deps exploration_msgs
3. catkin_make -DCATKIN_WHITELIST_PACKAGES=""
参考连接：https://github.com/paulbovbel/frontier_exploration/issues/49
主要的思想应该是先编译了frontier_exploration所用的msg,然后再整个编译