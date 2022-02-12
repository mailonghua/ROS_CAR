#include "main_loop.h"
extern TIM_HandleTypeDef htim6;
void Start_Main_Loop()
{
	HAL_TIM_Base_Start_IT(&htim6);
}

static uint8_t main_loop_flag = 0;
//��stm32f1xx_hal_tim.c:��ʱ���жϵ�������,���������д
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
	if(htim->Instance == htim6.Instance)//10ms����һ��
	{
		main_loop_flag = 1;
	}
}

uint8_t check_tim6_status(void)
{
	if(main_loop_flag == 1)
	{
		main_loop_flag=0;
		return 1;
	}else
	{
		return 0;
	}

}
