#ifndef _MOTOR__PID__H__
#define _MOTOR__PID__H__
#include "main.h"
#include "stm32f1xx_it.h"
#include "debug.h"

#define PID_INTEGRAL_UP 1000  //��������
#define PID_SCALE  0.01f  //PID����ϵ��



int16_t PID_MotorVelocityCtlA(int16_t spd_target, int16_t spd_current);
int16_t PID_MotorVelocityCtlB(int16_t spd_target, int16_t spd_current);
int16_t PID_MotorVelocityCtlC(int16_t spd_target, int16_t spd_current);
int16_t PID_MotorVelocityCtlD(int16_t spd_target, int16_t spd_current);
#endif
