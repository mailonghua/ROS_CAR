/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
/* USER CODE BEGIN Private defines */
#define DEBUG_SOFTWARE_PID  //串口打印和上位机切换
/*蜂鸣器*/
#define SOUND_ON()     HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10,1)
#define SOUND_OFF() 	 HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10,0)
#define SOUND_CHANGE() HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_10)

#if 0
#define SOUND_PROMPT(delay,cnt)   \
											{	\
											unsigned int count = cnt; \
											do{ \
													HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_10); \
													HAL_Delay(delay *1000);	\
													HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_10);\
													count --; \
												}while(count != 0); \
											}
#else
#define SOUND_PROMPT(delay,cnt)   \
											{	\
											unsigned int count = cnt; \
											do{ \
													HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10,1); \
													HAL_Delay(delay *1000);	\
													HAL_GPIO_WritePin(GPIOB, GPIO_PIN_10,0);\
													HAL_Delay(delay *1000);	\
													count --; \
												}while(count != 0); \
											}											
#endif
//LED 
#define LED_ON() 		 HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2,0)
#define LED_OFF()    HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2,1)
#define LED_CHANGE() HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_2)
/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
