#ifndef __MOTOR__DRIVER__C__h
#define __MOTOR__DRIVER__C__h
#include <stdio.h>
#include "main.h"
#include "debug.h"
typedef enum 
{
	FORWART=0,
	REVERSE,
}DIRECT_MOTOR;
typedef enum
{
	STOP=0,
	RUN
}MOTOR_STATUS;
typedef enum
{
	MOTOR_A = 1,
	MOTOR_B,
	MOTOR_C,
	MOTOR_D,
	ALL
}MOTOR_NUM;
#define MOTOR_A_PWM_CHANNEL TIM_CHANNEL_1
#define MOTOR_B_PWM_CHANNEL TIM_CHANNEL_4
#define MOTOR_C_PWM_CHANNEL TIM_CHANNEL_3
#define MOTOR_D_PWM_CHANNEL TIM_CHANNEL_2

void Set_Motor_PWM(TIM_HandleTypeDef *htimx, uint32_t Channelx);
void Start_Motor(MOTOR_NUM motor_num,DIRECT_MOTOR dic);
void Stop_Motor(MOTOR_NUM motor_num);
void Set_PWM_Compare(TIM_HandleTypeDef *htimx,uint32_t channel_num,uint32_t duty);
void Motor_Init(void);
void MOTOR_A_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_B_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_C_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_D_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void Motor_A_SetSpeed(int16_t count);
void Motor_B_SetSpeed(int16_t count);
void Motor_C_SetSpeed(int16_t count);
void Motor_D_SetSpeed(int16_t count);
//MotorName:MOTOR_X
#define Motor_Control(MotorName) void MotorName##_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty) \
{	                                                                   \
	if(status == RUN)                                                  \
	{                                                                  \
		if(dic == FORWART)                                               \
				Start_Motor(MotorName,FORWART);                                \
		else if(dic == REVERSE)                                          \
				Start_Motor(MotorName,REVERSE);                                \
		Set_PWM_Compare(&htim8,MotorName##_PWM_CHANNEL,duty);                \
	}else                                                              \
		if(status == STOP)                                               \
				Stop_Motor(MotorName);                                         \
	else                                                               \
	{                                                                  \
		ERR("MotorName##_Control error status = %d\r\n",status);              \
	}                                                                  \
}                                                                    
#endif
