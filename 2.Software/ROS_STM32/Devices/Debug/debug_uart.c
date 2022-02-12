#include "debug_uart.h"

DEBUG_SET_LEVEL(DEBUG_LEVEL_DEBUG);
uint8_t uartRxBuffer[20] = {0};//串口接收缓冲区
uint8_t uart2RxBuffer[10]={0};//串口的接收缓冲区
//用于测试--通过串口设定target speed 

extern TIM_HandleTypeDef htim8;
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
//extern UART_HandleTypeDef huart3;

void Enable_UART_Receive(void)
{
	//使能串口1的中断，当串口接收到数据个数为UART1_RECEIVE_NUM时，数据存放在uartRxBuffer，会触发uartRxBuffer回调函数
	HAL_UART_Receive_IT(&huart1,(uint8_t*)uartRxBuffer,UART1_RECEIVE_NUM);//用于串口接收中中断
	//这里只是为了使能串口2的中断
	__HAL_UART_ENABLE_IT(&huart2, UART_IT_RXNE);//开中断，若是不添加该句，无法触发UART中断
	//使能串口3的中断，这里将中断放到了PID_Software_init()函数中进行了
	//  __HAL_UART_ENABLE_IT(&huart3, UART_IT_RXNE);//串口3
}
uint32_t switch_channel(int num)
{
	switch(num)
	{
		case 1:return MOTOR_A_PWM_CHANNEL;
		case 2:return MOTOR_B_PWM_CHANNEL;
		case 3:return MOTOR_C_PWM_CHANNEL;
		case 4:return MOTOR_D_PWM_CHANNEL;
	}
	DEBUG("Abnormal switch_channel\r\n");
	return MOTOR_A_PWM_CHANNEL;
}
void printf_rcv_buffer(uint8_t * buf,uint8_t num)
{
	DEBUG("rcv_buffer:");
	for(int i=0;i<num;i++)
	{
			DEBUG("[%d]:%c ",i,buf[i]);
	}
	DEBUG("\r\n");
}
/*
功能:重写串口接收函数，原函数定义在xxx_it.c中，使用了__weak 关键字定义为弱函数
方法：使用HAL_UART_Receive_IT(&huart1,(uint8_t*)uartRxBuffer,5);每调用一次就只能接收一次
uartRxBuffer[0]:运行模式
uartRxBuffer[1]:电机选择
uartRxBuffer[2]:电机方向
uartRxBuffer[3~6]:电机PWM(0~2000)
*/
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	uint32_t x_speed,y_speed, yaw;
	
	if(huart->Instance == USART1)
	{
		//printf_rcv_buffer(uartRxBuffer,UART1_RECEIVE_NUM);
		if(uartRxBuffer[0] == 'I')
		{
			x_speed = GET_NUM(uartRxBuffer[2],uartRxBuffer[3],uartRxBuffer[4],uartRxBuffer[5]);
			y_speed = GET_NUM(uartRxBuffer[7],uartRxBuffer[8],uartRxBuffer[9],uartRxBuffer[10]);
			yaw 		= GET_NUM(uartRxBuffer[12],uartRxBuffer[13],uartRxBuffer[14],uartRxBuffer[15]);

			if(uartRxBuffer[1] == '-') 			x_speed = -x_speed;
			else if(uartRxBuffer[6] == '-') y_speed = -y_speed;
			else if(uartRxBuffer[11] == '-') yaw = -yaw;

			test_inverse(x_speed,y_speed ,yaw);
		}else if(NULL != strstr(uartRxBuffer,"RESET"))
		{
			ERR("MCU Start Reset!!!!\r\n");
		  HAL_NVIC_SystemReset();  
		}
		else
		{
			DEBUG("Mode=%c,MotorNum=0x%x,Dic=0x%x,pwm=%d\r\n",uartRxBuffer[0],uartRxBuffer[1],uartRxBuffer[2],atoi(&uartRxBuffer[3]));
			test_motor(uartRxBuffer[0],(MOTOR_NUM)(uartRxBuffer[1]-0x30),(DIRECT_MOTOR)(uartRxBuffer[2]-0x30),atoi(&uartRxBuffer[3]));
		}

	}
			/*Warning!!! Do not call HAL_UART_Receive_IT() in this func：https://www.stm32cube.com/article/139,
			call HAL_UART_Receive_IT() func in stm32f1xx_it.c：USART1_IRQHandler*/
}
extern int16_t robot_target_speed[3];
//逆向运动学解析输入设置---小车的线速度+角速度
void test_inverse(uint32_t x_speed,uint32_t y_speed,uint32_t yaw)
{
	INFO("x_speed=%d,y_speed=%d,yaw=%d\r\n",x_speed,y_speed,yaw);
	robot_target_speed[0] = x_speed;
	robot_target_speed[1] = y_speed;
	robot_target_speed[2] = yaw;
}
/*mode:RUN/STOP   motor:1~4*/
void test_motor(uint8_t mode,MOTOR_NUM motor,DIRECT_MOTOR dic,uint32_t cycle)
{
	uint32_t channel_num = switch_channel(motor);
	INFO("Mode=%c,Motor=%d,Dic=%d,pwm_channel=0x%x\r\n",mode,motor,dic,channel_num);
	switch(mode)
	{
		case 'A'://start--启动所有电机
			  //A
				Start_Motor(MOTOR_A,(DIRECT_MOTOR)0);
				//Set_PWM_Compare(&htim8,MOTOR_A_PWM_CHANNEL,1000);
				Set_PWM_Compare(&htim8,MOTOR_A_PWM_CHANNEL,1000);
				//B
				Start_Motor(MOTOR_B,(DIRECT_MOTOR)0);
				Set_PWM_Compare(&htim8,MOTOR_B_PWM_CHANNEL,1000);
				//C
				Start_Motor(MOTOR_C,(DIRECT_MOTOR)0);
				Set_PWM_Compare(&htim8,MOTOR_C_PWM_CHANNEL,1000);
				//D
				Start_Motor(MOTOR_D,(DIRECT_MOTOR)0);
				Set_PWM_Compare(&htim8,MOTOR_D_PWM_CHANNEL,1000);
				DEBUG("Start motor\r\n");
				break;
		case 'S'://根据指令启动单个电机
				#if 0
				Start_Motor(motor,(DIRECT_MOTOR)dic);
				Set_PWM_Compare(&htim8,channel_num,1000);
				#else
				switch(motor)
				{
					case MOTOR_A:
						MOTOR_A_Control(RUN,dic,cycle);
						break;
					case MOTOR_B:
						MOTOR_B_Control(RUN,dic,cycle);
						break;
					case MOTOR_C:
						MOTOR_C_Control(RUN,dic,cycle);
						break;
					case MOTOR_D:
						MOTOR_D_Control(RUN,dic,cycle);
						break;
					default:
							ERR("Select motor num error!!!\r\n");
				}
				#endif
				break;
		case 'P'://stop  //停止所有电机
					Stop_Motor(ALL);
					DEBUG("Stop motor\r\n");
				break;
		default:
				ERR("Test mode error(%c)\r\n",mode);
	}
}
