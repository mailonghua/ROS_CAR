#include "motor_drive.h"

DEBUG_SET_LEVEL(DEBUG_LEVEL_ERR);
extern TIM_HandleTypeDef htim8;
//TIM_CHANNEL_1 ~TIM_CHANNEL_4
//设置PWM的占空比
void Motor_Init()
{
	Stop_Motor(ALL);
	Set_Motor_PWM(&htim8,TIM_CHANNEL_1);
	Set_Motor_PWM(&htim8,TIM_CHANNEL_2);
	Set_Motor_PWM(&htim8,TIM_CHANNEL_3);
	Set_Motor_PWM(&htim8,TIM_CHANNEL_4);
	
}
void Set_PWM_Compare(TIM_HandleTypeDef *htimx,uint32_t channel_num,uint32_t duty)
{
	__HAL_TIM_SET_COMPARE(htimx, channel_num, duty);
}
//开启PWM
void Set_Motor_PWM(TIM_HandleTypeDef *htimx, uint32_t Channelx)
{
	if(HAL_OK != HAL_TIM_PWM_Start(htimx,Channelx))
	{
		printf("Set_Motor_PWM error\r\n");
	}
}
//电机正反信号控制
void Start_Motor(MOTOR_NUM motor_num,DIRECT_MOTOR dic)
{
	switch(motor_num)
		{
		case MOTOR_A:/*PC4 PC5*/
				DEBUG("MOTOR_A DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,(GPIO_PinState)1);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5,(GPIO_PinState)0);
				}else if(dic == REVERSE)
				{
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,(GPIO_PinState)0);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5,(GPIO_PinState)1);
				}
				break;
		case MOTOR_B:
				DEBUG("MOTOR_B DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11,(GPIO_PinState)0);
					HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12,(GPIO_PinState)1);
				}else if(dic == REVERSE)
				{
					HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11,(GPIO_PinState)1);
					HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12,(GPIO_PinState)0);
				}
			break;
		case MOTOR_C:
				DEBUG("MOTOR_C DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,(GPIO_PinState)0);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,(GPIO_PinState)1);
				}else if(dic == REVERSE)
				{
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,(GPIO_PinState)1);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,(GPIO_PinState)0);
				}
			break;
		case MOTOR_D:
				DEBUG("MOTOR_D DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,(GPIO_PinState)0);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,(GPIO_PinState)1);
				}else if(dic == REVERSE)
				{
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,(GPIO_PinState)1);
					HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,(GPIO_PinState)0);
				}
			break;
		default:
			ERR("Start_Motor:Not match Motor\r\n");
				
	}
}
//电机停止
void Stop_Motor(MOTOR_NUM motor_num)
{
		switch(motor_num)
		{
		case MOTOR_A:
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5,(GPIO_PinState)0);
			break;
		case MOTOR_B:
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12,(GPIO_PinState)0);
			break;
		case MOTOR_C:
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,(GPIO_PinState)0);
			break;
		case MOTOR_D:
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,(GPIO_PinState)0);
			break;
		case ALL:
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_4,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_5,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOA, GPIO_PIN_12,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_2,(GPIO_PinState)0);
			HAL_GPIO_WritePin(GPIOC, GPIO_PIN_3,(GPIO_PinState)0);
			break;
		default:
			ERR("Stop_Motor:Not match Motor");
		}
}

/*
void MOTOR_A_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_B_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_C_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_D_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
*/
Motor_Control(MOTOR_A);
Motor_Control(MOTOR_B);
Motor_Control(MOTOR_C);
Motor_Control(MOTOR_D);

void Motor_A_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_A_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_A_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_A_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_A_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_B_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_B_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_B_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_B_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_B_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_C_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_C_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_C_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_C_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_C_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_D_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_D_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_D_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_D_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_D_Control(STOP,REVERSE,pwm_count);
	}
}