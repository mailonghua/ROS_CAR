#include "Kinematics.h"
#include <math.h>
#include "debug.h"
DEBUG_SET_LEVEL(DEBUG_LEVEL_INFO);
//变量定义
int32_t  current_count[4] = {0};
double    ticks_per_meter = 0;
double   linear_correction_factor = 1.0;
double   angular_correction_factor = 1.0;
int32_t  wheel_mult[4] = {0};
float  wheel_track_cali = 0.3;

extern int16_t robot_odom[6];
/**
  * @简  述  机器人运动参数设置
  * @参  数  无
  * @返回值  无
  */
void Kinematics_Init(int16_t* robot_params)
{

	linear_correction_factor    = (float)robot_params[0]/1000;
  angular_correction_factor   = (float)robot_params[1]/1000;
	wheel_track_cali = WHEEL_TRACK/angular_correction_factor;


	robot_odom[0]  = 0;
	robot_odom[1]  = 0;
	robot_odom[2]  = 0;

	ticks_per_meter    = (float)ENCODER_RESOLUTION/(WHEEL_DIAMETER*3.1415926*linear_correction_factor);		
}
/**
  * @简  述  逆向运动学解析，底盘三轴速度->轮子速度
  * @参  数  input:  robot_target_speed[]  机器人三轴速度 m/s*1000
  *          output：ax_encoder_delta_target[] 电机期望速度 count
  * @返回值  无
  */
void Kinematics_Inverse(int16_t* input, int16_t* output)
{

	float x_speed   = ((float)input[0])/1000;
	float y_speed   = ((float)input[1])/1000;
	float yaw_speed = ((float)input[2])/1000;

	static float wheel_velocity[4] = {0};
	
	wheel_velocity[0] = -y_speed + x_speed - (wheel_track_cali)*yaw_speed;//速度:米/秒
	wheel_velocity[1] = y_speed + x_speed - (wheel_track_cali)*yaw_speed;
	wheel_velocity[2] = -y_speed + x_speed + (wheel_track_cali)*yaw_speed;
	wheel_velocity[3] = y_speed + x_speed + (wheel_track_cali)*yaw_speed;

	output[0] = (int16_t)(wheel_velocity[0] * ticks_per_meter/PID_RATE);
	output[1] = (int16_t)(wheel_velocity[1] * ticks_per_meter/PID_RATE);
	output[2] = (int16_t)(wheel_velocity[2] * ticks_per_meter/PID_RATE);
	output[3] = (int16_t)(wheel_velocity[3] * ticks_per_meter/PID_RATE);
	//DEBUG("Input(%f,%f,%f)Output(%d,%d,%d,%d),ticks_per_meter=%f\r\n",x_speed,y_speed,yaw_speed,output[0],output[1],output[2],output[3],ticks_per_meter);
}
/**
  * @简  述  正向运动学解析，轮子编码值->底盘三轴里程计坐标
  * @参  数  input: ax_encoder[]  编码器累加值
  *          output: robot_odom[] 三轴里程计 x y yaw
  * @返回值  无
  */
void Kinematics_Forward(int16_t* input, int16_t* output)
{
	static double delta_count[4];  
  static double delta_v_ave[3];
	static double delta_v_integral[2];
	static int16_t recv_count[4];
	
	recv_count[0] = input[0];  //还原符号
	recv_count[1] = input[1];
	recv_count[2] = input[2];
	recv_count[3] = input[3];
	
//	static int  count_print =0;
//	if(count_print == 50)
//	{
//		ERR("Recv_count(%d,%d,%d,%d)\r\n",recv_count[0],recv_count[1],recv_count[2],recv_count[3],ENCODER_LOW_WRAP,ENCODER_HIGH_WRAP);
//		count_print=0;
//	}else
//		count_print++;
	
	
	/*编码器计数溢出处理,用来处理单次计数超过了编码器技术最大计数
	current_count[]:上一次的累加值
	recv_count[]	 :当前收到的累加值
	
	说明：累加值是int16:范围为-32767~32768，不断增加的顺序为：32767,32768,-32767,-32766......0,1,....
	下面在计算距离：wheel_mult*65536，为什么是65536？
			例：当recv_count满足下面判断的第一种情况时如recv_count=-32766，current_count=32760 wheel_mult[i]++ 
			recv_count[i] + wheel_mult[i]*(ENCODER_MAX-ENCODER_MIN)-current_count[i]：
			-32766 + 1*65536 - 32760 =(32768+32768-32766)- 32760,其实括号中的表示的就是当前的累加值
			用这样的方式处理溢出
			
	*/
	for(int i=0;i<4;i++)
	{
			if(recv_count[i] < ENCODER_LOW_WRAP && current_count[i] > ENCODER_HIGH_WRAP){
				wheel_mult[i]++;
				DEBUG("recv_count=%d,current_count=%d\r\n",recv_count[i],current_count[i]);
			}
			else if(recv_count[i] > ENCODER_HIGH_WRAP && current_count[i] < ENCODER_LOW_WRAP)
				wheel_mult[i]--;
			else
				wheel_mult[i]=0;
	}
	//	printf("%d %d %d %d\r\n",wheel_mult[0],wheel_mult[1],wheel_mult[2],wheel_mult[3]);
	//将编码器数值转化为前进的距离，单位m
	for(int i=0;i<4;i++)
	{	
			delta_count[i] = 1.0*(recv_count[i] + wheel_mult[i]*(ENCODER_MAX-ENCODER_MIN)-current_count[i])/ticks_per_meter;
			current_count[i] = recv_count[i];
	}

		/*计算底盘x轴变化距离m与Yaw轴朝向变化rad---正向运动学公式解析
			下面的公式是按照当前的小车的轮子编号排序(逆时针旋转由左上角0号轮子开始)
			Vx = (Vw2 + Vw1)/2
			Vy = (Vw1 - Vw0)/2
			Vw = (Vw3 - Vw1)/2(a+b)
		*/
	delta_v_ave[0] = (delta_count[2] + delta_count[1])/2.0;//(v1+v2)/2 ,由于delta_count[2]是负值，所以相减<double是无符号的>
	delta_v_ave[1] = (delta_count[1] - delta_count[0])/2.0;
	delta_v_ave[2] = (delta_count[3] - delta_count[1])/(2*wheel_track_cali);
	
		//计算底盘坐标系下的x轴与Yaw轴的速度--里程计的计算
	delta_v_integral[0] = cos(delta_v_ave[2])*delta_v_ave[0] - sin(delta_v_ave[2])*delta_v_ave[1];
	delta_v_integral[1] = -sin(delta_v_ave[2])*delta_v_ave[0] - cos(delta_v_ave[2])*delta_v_ave[1];


	
		//积分计算里程计坐标系(odom_frame)下的机器人X,Y,Yaw轴坐标
	output[0] += (int16_t)((cos((double)output[2]/1000)*delta_v_integral[0] - sin((double)output[2]/1000)*delta_v_integral[1])*1000);
	output[1] += (int16_t)((sin((double)output[2]/1000)*delta_v_integral[0] + cos((double)output[2]/1000)*delta_v_integral[1])*1000);
	output[2] += (int16_t)(delta_v_ave[2]*1000);
		
    //Yaw轴坐标变化范围控制-2Π -> 2Π
		if(output[2] > PI*1000)
			output[2] -= 2*PI*1000;
		else if(output[2] < -PI*1000)
			output[2] += 2*PI*1000;
		//发送机器人X轴Yaw轴速度反馈
	output[3] = (int16_t)(delta_v_ave[0]*1000);
	output[4] = (int16_t)(-delta_v_ave[1]*1000);
	output[5] = (int16_t)(delta_v_ave[2]*1000);
}