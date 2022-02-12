#include "motor_pid.h"
DEBUG_SET_LEVEL(DEBUG_LEVEL_DEBUG);
int16_t motor_kp=54;  //PID-P
int16_t motor_ki=0;    //PID-I
int16_t motor_kd=3;  //PID-D -3


//int16_t motor_kd=0;
int16_t PID_MotorVelocityCtlA(int16_t spd_target, int16_t spd_current)
{
	static int16_t motor_pwm_out =0;
	static int32_t bias,bias_last,bias_integral = 0;

	//获得偏差值
	bias = spd_target - spd_current;
	
	//计算偏差累加值
	bias_integral += bias; //用于积分的计算
	
	//抗积分饱和
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	//PID计算电机输出PWM值
	motor_pwm_out += motor_kp*bias*PID_SCALE + motor_kd*(bias-bias_last)*PID_SCALE + motor_ki*bias_integral*PID_SCALE;
	
	//记录上次偏差
	bias_last = bias; //用于微分
	
	//限制最大输出
	if(motor_pwm_out > 2000)
		motor_pwm_out = 2000;
	if(motor_pwm_out < -2000)
		motor_pwm_out = -2000;
  
	//DEBUG("motor_pwm_out=%d\r\n",motor_pwm_out);
	//返回PWM控制值
	return motor_pwm_out;
}	

int16_t PID_MotorVelocityCtlB(int16_t spd_target, int16_t spd_current)
{
	static int16_t motor_pwm_out =0;
	static int32_t bias,bias_last,bias_integral = 0;

	//获得偏差值
	bias = spd_target - spd_current;
	
	//计算偏差累加值
	bias_integral += bias; //用于积分的计算
	
	//抗积分饱和
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	//PID计算电机输出PWM值
	motor_pwm_out += motor_kp*bias*PID_SCALE + motor_kd*(bias-bias_last)*PID_SCALE + motor_ki*bias_integral*PID_SCALE;
	
	//记录上次偏差
	bias_last = bias; //用于微分
	
	//限制最大输出
	if(motor_pwm_out > 2000)
		motor_pwm_out = 2000;
	if(motor_pwm_out < -2000)
		motor_pwm_out = -2000;
  
	//DEBUG("spd_target = %d,spd_current=%d,motor_pwm_out=%d\r\n",spd_target,spd_current,motor_pwm_out);
	//返回PWM控制值
	return motor_pwm_out;
}	
int16_t PID_MotorVelocityCtlC(int16_t spd_target, int16_t spd_current)
{
	static int16_t motor_pwm_out =0;
	static int32_t bias,bias_last,bias_integral = 0;

	//获得偏差值
	bias = spd_target - spd_current;
	
	//计算偏差累加值
	bias_integral += bias; //用于积分的计算
	
	//抗积分饱和
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	//PID计算电机输出PWM值
	motor_pwm_out += motor_kp*bias*PID_SCALE + motor_kd*(bias-bias_last)*PID_SCALE + motor_ki*bias_integral*PID_SCALE;
	
	//记录上次偏差
	bias_last = bias; //用于微分
	
	//限制最大输出
	if(motor_pwm_out > 2000)
		motor_pwm_out = 2000;
	if(motor_pwm_out < -2000)
		motor_pwm_out = -2000;
  
	//DEBUG("spd_target = %d,spd_current=%d,motor_pwm_out=%d\r\n",spd_target,spd_current,motor_pwm_out);
	//返回PWM控制值
	return motor_pwm_out;
}	
int16_t PID_MotorVelocityCtlD(int16_t spd_target, int16_t spd_current)
{
	static int16_t motor_pwm_out =0;
	static int32_t bias,bias_last,bias_integral = 0;

	//获得偏差值
	bias = spd_target - spd_current;
	
	//计算偏差累加值
	bias_integral += bias; //用于积分的计算
	
	//抗积分饱和
	if(bias_integral>PID_INTEGRAL_UP)bias_integral = PID_INTEGRAL_UP;
	if(bias_integral<-PID_INTEGRAL_UP)bias_integral = -PID_INTEGRAL_UP;
	
	//PID计算电机输出PWM值
	motor_pwm_out += motor_kp*bias*PID_SCALE + motor_kd*(bias-bias_last)*PID_SCALE + motor_ki*bias_integral*PID_SCALE;
	
	//记录上次偏差
	bias_last = bias; //用于微分
	
	//限制最大输出
	if(motor_pwm_out > 2000)
		motor_pwm_out = 2000;
	if(motor_pwm_out < -2000)
		motor_pwm_out = -2000;
  
	//DEBUG("spd_target = %d,spd_current=%d,motor_pwm_out=%d\r\n",spd_target,spd_current,motor_pwm_out);
	//返回PWM控制值
	return motor_pwm_out;
}	