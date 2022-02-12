#include <ros/ros.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2_ros/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Int32.h>
#include <std_msgs/Int16.h>
#include <std_msgs/UInt16.h>
#include <std_msgs/Float32.h>
#include <sensor_msgs/Imu.h>
#include <sensor_msgs/Range.h>
#include <geometry_msgs/Twist.h>
#include <geometry_msgs/TransformStamped.h>
#include <tf/tf.h>
#include <dynamic_reconfigure/server.h>
#include <robot_driver/PID_reconfigConfig.h>

#include <string>
#include <vector>
#include <math.h>

#include <boost/asio.hpp>
#include <boost/asio/serial_port.hpp>
#include <boost/system/error_code.hpp>
#include <boost/system/system_error.hpp>
#include <boost/bind.hpp>
#include <boost/thread.hpp>

#define G     9.8
#define head1 0xAA
#define head2 0x55
#define sendType_velocity    0x11
#define sendType_pid         0x12
#define sendType_params      0x13
#define sendType_wheelspeed  0x14

#define foundType_Packages    0x06

//#define MAX_STEERING_ANGLE    0.87
//#define M_PI 3.1415926535

enum packetFinderState
{
    waitingForHead1,
    waitingForHead2,
    waitingForPayloadSize,
    waitingForPayloadType,
    waitingForPayload,
    waitingForCheckSum,
    handlePayload
};



struct pid_param
{
    int kp;
    int ki;
    int kd;
};

struct imu_data
{
    float angle_x;
    float angle_y;
    float angle_z;
    float gyro_x;
    float gyro_y;
    float gyro_z;
    float accel_x;
    float accel_y;
    float accel_z;
    float q0;
    float q1;
    float q2;
    float q3;
};
//用于串口通信的类型
typedef boost::shared_ptr<boost::asio::serial_port> serialp_ptr;

class RobotDriver
{
    public:
    RobotDriver();
    ~RobotDriver();
    void main_loop();//主要的处理流程

    private:
    bool initRobot();
    void recv_msg();
    void cmd_vel_callback(const geometry_msgs::Twist::ConstPtr& msg);//订阅cmd_vel话题的触发回调函数
    void send_speed_callback(const ros::TimerEvent&);//向机器人底层发送速度的回调函数
    void dynamic_reconfig_callback(robot_driver::PID_reconfigConfig &config, uint32_t level);//动态配置PID参数的回调

    void handle_base_data(const uint8_t* buffer_data);//串口接收函数解析
    void SetPID(int p,int i, int d);
    void SetParams(double linear_correction,double angular_correction);
    void SetVelocity(double x, double y, double yaw);

    void check_sum(uint8_t* data, size_t len, uint8_t& dest);//与底层通信的串口校验函数
    void distribute_data(uint8_t msg_type, uint8_t* buffer_data);//接收数据后的分发，然后进行数据的提取
 
    /*变量的定义*/
    packetFinderState state_; //串口协议解析的表示状态位置

    std_msgs::Float32  battery_pub_data_;

    boost::mutex cmd_vel_mutex_;
    boost::system::error_code ec_;
    boost::asio::io_service io_service_;  //IO操作的连接，就是应用程序与系统进行连接的对象
    boost::mutex mutex_;
    serialp_ptr sp_; //串口通信的对象


    bool recv_flag_;
    bool publish_odom_transform_;
    bool start_flag_;
    bool first_init_;
    uint8_t msg_seq_;

    geometry_msgs::Twist current_twist_;
    nav_msgs::Odometry odom_;
    geometry_msgs::TransformStamped transformStamped_;
    tf2_ros::TransformBroadcaster br_;

    //ROS话题发布的对象
    ros::Time now_;
    ros::Time last_time_;
    ros::Time last_twist_time_;
    ros::Publisher odom_pub_;
    ros::Publisher battery_pub_;
    ros::Publisher imu_pub_;
    ros::Publisher avel_pub_;
    ros::Publisher bvel_pub_;
    ros::Publisher cvel_pub_;
    ros::Publisher dvel_pub_;
    ros::Publisher aset_pub_;
    ros::Publisher bset_pub_;
    ros::Publisher cset_pub_;
    ros::Publisher dset_pub_;

    //用于存储接收从底层驱动层传递的四轮速度
    std_msgs::Int32 avel_pub_data_;
    std_msgs::Int32 bvel_pub_data_;
    std_msgs::Int32 cvel_pub_data_;
    std_msgs::Int32 dvel_pub_data_;
    //用于存储从底层驱动层传递的目标四轮速度
    std_msgs::Int32 aset_pub_data_;
    std_msgs::Int32 bset_pub_data_;
    std_msgs::Int32 cset_pub_data_;
    std_msgs::Int32 dset_pub_data_;
    //用于存储从底层驱动层传递的IMU数据
    sensor_msgs::Imu imu_pub_data_;

    ros::Subscriber cmd_sub_;
    std::string port_name_;
    
    //从配置文件加载的变量
    int baud_rate_;  //串口波特率
    //需要发布的话题名称
    std::string odom_frame_; 
    std::string imu_frame_;
    std::string base_frame_;
    std::string code_version_;
    int control_rate_; //向下发送速度控制指令的频率

    //用来存储从底层发送的数据
    std::vector<double> imu_list_;
    std::vector<double> odom_list_;
    std::vector<int>    wheelspeedSet_list_;
    std::vector<int>    wheelspeedGet_list_;

    //线速度和角速度校准参数
	double linear_correction_factor_;
	double angular_correction_factor_;

    //底层电机控制的PID参数，该参数会在上电初始化阶段进行向底层驱动层下发
    int kp_;
    int ki_;
    int kd_;
};