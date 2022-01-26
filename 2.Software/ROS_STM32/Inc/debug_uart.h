#ifndef __DEBUG__UART__H__
#define __DEBUG__UART__H__
#include "main.h"
#include "stm32f1xx_it.h"
#include "debug.h"
#include "motor_drive.h"
#include "Communication_Serial.h"
//#define UART_DEBUG_MOTOR_STATUS

#ifdef UART_DEBUG_MOTOR_STATUS  //���Ǹú궨���ˣ����ʾȥ����⹫ʽ��ֱ��ʹ�ô��ڽ��е���PID������
#define UART1_RECEIVE_NUM 7  //���ڽ������ݵĸ���
#else
#define UART1_RECEIVE_NUM 16   //status SPEED_X SPEED_Y SPEED_yaw  (�Ŵ���1000��)
#endif
#define TRS_NUM(x) (x-0x30)
#define GET_NUM(x1,x2,x3,x4) (TRS_NUM(x1)*1000+TRS_NUM(x2)*100+TRS_NUM(x3)*10+TRS_NUM(x4)*1)

void Enable_UART_Receive(void);
void test_motor(uint8_t mode,MOTOR_NUM motor,DIRECT_MOTOR dic,uint32_t cycle);
void test_inverse(uint32_t x_speed,uint32_t y_speed,uint32_t yaw);

#endif
