#ifndef _MOTOR__ENCODE_H__
#define _MOTOR__ENCODE_H__
#include <stdio.h>
#include "main.h"
#include "debug.h"
void Start_Encode(void);
int Get_Encode_Motor_A(void);
void Set_Encode_Count_A(int encode);
int Get_Encode_Motor_B(void);
void Set_Encode_Count_B(int encode);
int Get_Encode_Motor_C(void);
void Set_Encode_Count_C(int encode);
int Get_Encode_Motor_D(void);
void Set_Encode_Count_D(int encode);
#endif
