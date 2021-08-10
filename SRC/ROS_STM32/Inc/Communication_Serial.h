#ifndef __COMMUNICATION_SERIAL_H__
#define __COMMUNICATION_SERIAL_H__
#include <stdio.h>
#include "main.h"
#include "debug.h"
#include "Kinematics.h"

void ROBOT_SendDataToJetson(void);
void UART_Jetson_SendPacket(uint8_t *pbuf, uint8_t len, uint8_t num);
void USART2_Resolve_Data(uint8_t data);
#endif