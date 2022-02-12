#include "motor_encode.h"
DEBUG_SET_LEVEL(DEBUG_LEVEL_DEBUG);
/*MotorA~D:车头左轮开始，逆时针编码*/
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim5;
void Start_Encode(void)
{
	int ret = 0;
	ret += HAL_TIM_Encoder_Start(&htim2, TIM_CHANNEL_ALL);//Motor A
	ret += HAL_TIM_Encoder_Start(&htim5, TIM_CHANNEL_ALL);//Motor B
	ret += HAL_TIM_Encoder_Start(&htim4, TIM_CHANNEL_ALL);//Motor C
	ret += HAL_TIM_Encoder_Start(&htim3, TIM_CHANNEL_ALL);//Motor D
	if(HAL_OK != ret)
	{
		ERR("HAL_TIM_Encoder_Start error!\r\n");
	}
	
}

int Get_Encode_Motor_A(void)
{
	int GetData;
	GetData = __HAL_TIM_GET_COUNTER(&htim2);
	return GetData;
}
void Set_Encode_Count_A(int encode)
{
	__HAL_TIM_SET_COUNTER(&htim2,encode);
}

int Get_Encode_Motor_B(void)
{
	int GetData;
	GetData = __HAL_TIM_GET_COUNTER(&htim5);
	return GetData;
}
void Set_Encode_Count_B(int encode)
{
	__HAL_TIM_SET_COUNTER(&htim5,encode);
}	

int Get_Encode_Motor_C(void)
{
	int GetData;
	GetData = __HAL_TIM_GET_COUNTER(&htim4);
	return GetData;
}
void Set_Encode_Count_C(int encode)
{
	__HAL_TIM_SET_COUNTER(&htim4,encode);
}	

int Get_Encode_Motor_D(void)
{
	int GetData;
	GetData = __HAL_TIM_GET_COUNTER(&htim3);
	return GetData;
}
void Set_Encode_Count_D(int encode)
{
	__HAL_TIM_SET_COUNTER(&htim3,encode);
}	
