# 基于ROS的轮式机器人项目

## 1.介绍

​		本项目主要的功能包括手柄或键盘控制基于麦轮的小车的运动，KCF跟踪、导航、SLAM建图等功能，后续会接入麦克风阵列实现语音控制、接入IOT系统，感兴趣的伙伴可以基于这个平台继续进行拓展。

​	 	PS:我做这个项目的初衷是能够实现远程控制的小车，主要用来照看宠物的功能

![ROSCar](https://github.com/mailonghua/ROS_CAR/blob/master/4.Img/ROSCar.jpg)

## 2.硬件构成

​		硬件分为两部分，基于STM32的控制层，也就是1.Hardware部分，该模块实现了电机的驱动和电池的测量等功能，同时板载了原子的MPU6050、以及0.96LCD。在ROS层使用的英伟达平台JetsonNANO，该平台可以任意替换能够运行ROS系统的设备。

​		两个平台通过串口进行通信，下载接口采用SWD方式

​		关于STM32控制板的一些改动建议，有时间的伙伴可以进行修改，也可以用原版，不影响任何功能

1.预留JetsonNANO的供电接口

2.对电源开关进行调整，现在开关不是特别方便

![Hardware](https://github.com/mailonghua/ROS_CAR/blob/master/4.Img/Hardware.png)

## 3.软件构成

​		软件部分也分为两块组成，分别为STM32电机的控制和软件的解算，和ROS导航层

​		STM32软件主要实现通过比较器模式实现电机的控制，控制算法采用PID方式，PID调试可以使用野火的PID调试软件，相关接口已经移植兼容。关于运动解算该部分主要在STM32中执行，解算主要是运动学的逆解和正解，从信息传输上描述就是ROS层向cmd_vel下发的角速度和线速度，通过麦克纳姆轮的解算公式解算成4个轮子的转速，以及将4个轮子的转速求出小车整体的线速度和角度。

​		关于解算，后续会找时间专门补充一个文档，希望能描述清晰。

![Software](https://github.com/mailonghua/ROS_CAR/blob/master/4.Img/Software.png)

​		ROS层，采用ROS1 Melodic，在ROS SRC中包含多个packge

​		1.robot_ctrl：主要包含ROS层的控制节点以及键盘控制等功能，具体起哪一些节点可以查看对应的Launch文件

​		2.robot_navigation：导航相关

​		3.robot_cv：CV相关

​		4.Delta_1A_ros雷达的节点

​		5.ros_astra_camera：奥比中光节点

​		6.third_packages：一些三方的节点

![Roscore](https://github.com/mailonghua/ROS_CAR/blob/master/4.Img/ROSCar.jpg)

## 4.关于购买的一些材料

这里我就不具体贴连接了，担心被说成打广告的

雷达：单线激光

电池：12V

摄像头：奥比中光<乐视>

显示屏：HDMi显示屏<可选>

开发板：Nvidia Jetson Nano和控制板

电源转换板：这里我直接将Jetson使用了12v转5V的转换板，电流>2A的就够了

电机驱动板：A4950

电机：1:43直流减速电机<会跟解算相关>

麦轮：60mm轮子<会跟解算相关>

## 其他
    若是这个项目的能带给你些许灵感或者想法，我会非常高兴，也请给一个星，若是你遇到问题请提Issure，我会在空闲时间尽力回复你
    愿与君共勉
