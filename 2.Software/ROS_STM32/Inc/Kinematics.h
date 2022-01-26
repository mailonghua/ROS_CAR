#ifndef __KINEMATICS_H__
#define __KINEMATICS_H__
#include "main.h"
#include "stm32f1xx_it.h"
#include "debug.h"

#define PID_RATE                50      //PID��Ƶ��

#define WHEEL_DIAMETER          0.06   //�־�(��λ:��)
#define ENCODER_RESOLUTION      2752.0     //�������ֱ���:16(CPR)*43(���ٱ�)*4(�����ź�,�������ض�����)



#define CAR_H_HARF_LENGTH       		0.095				//���峤�ȵ�һ��(95mm)
#define CAR_W_HARF_LENGTH						0.115				//�����ȵ�һ��(115mm)

#define WHEEL_TRACK             (CAR_H_HARF_LENGTH+CAR_W_HARF_LENGTH)

#define ENCODER_MAX 32767        
#define ENCODER_MIN -32768 
#define ENCODER_LOW_WRAP  ((ENCODER_MAX - ENCODER_MIN)*0.3+ENCODER_MIN)
#define ENCODER_HIGH_WRAP ((ENCODER_MAX - ENCODER_MIN)*0.7+ENCODER_MIN)
#define PI 3.1415926

#define ROBOT_LINEAR_SPEED_LIMIT 5000   //�����˵����ٶ����� m/s*1000
#define ROBOT_ANGULAR_SPEED_LIMIT 5000  //�����˵Ľ��ٶ�����rad/s*1000

void Kinematics_Forward(int16_t* input, int16_t* output);
void Kinematics_Inverse(int16_t* input, int16_t* output);
void Kinematics_Init(int16_t* robot_params);
#endif