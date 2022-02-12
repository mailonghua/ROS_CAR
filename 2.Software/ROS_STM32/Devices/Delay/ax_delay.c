/**			                                                    
		   ____                    _____ _____  _____        XTARK@���˴���
		  / __ \                  / ____|  __ \|  __ \  
		 | |  | |_ __   ___ _ __ | |    | |__) | |__) |
		 | |  | | '_ \ / _ \ '_ \| |    |  _  /|  ___/ 
		 | |__| | |_) |  __/ | | | |____| | \ \| |     
		  \____/| .__/ \___|_| |_|\_____|_|  \_\_|     
		    		| |                                    
		    		|_|  OpenCRP ��ݮ�� ר��ROS�����˿�����                                   
									 
  ****************************************************************************** 
  *           
  * ��Ȩ���У� XTARK@���˴���  ��Ȩ���У�����ؾ�
  * ������վ�� www.xtark.cn
  * �Ա����̣� https://shop246676508.taobao.com  
  * ����ý�壺 www.cnblogs.com/xtark�����ͣ�
	* ����΢�ţ� ΢�Ź��ںţ����˴��£���ȡ������Ѷ��
  *      
  ******************************************************************************
  * @��  ��  Musk Han@XTARK
  * @��  ��  V1.0
  * @��  ��  2019-7-26
  * @��  ��  �����ʱ����
  ******************************************************************************
  * @˵  ��
  *
  * 1.��ʱ����ʹ�õδ�ʱ��ʵ��
  * 
  ******************************************************************************
  */

#include "ax_delay.h"

/**
  * @��  ��  ��ʱ������ʼ��
  * @��  ��  ��
  * @����ֵ  ��
  */
#define SysTick_CLKSource_HCLK_Div8    ((uint32_t)0xFFFFFFFB)
void AX_DELAY_Init(void) 
{	
	//��ʱ����SysTick����
	HAL_SYSTICK_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8); 	//ʱ�ӹ̶�ΪAHBʱ�ӵ�1/8
}

/**
  * @��  ��  ���΢����ʱ
  * @��  ��  us����ʱ���ȣ���λus	  
  * @����ֵ  ��
  */
void AX_Delayus(uint16_t us)
{
	uint32_t temp;
	
	SysTick->LOAD=9*us; 				 		 
	SysTick->VAL=0x00;        				
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk ;  	 
	
	do
	{
		temp=SysTick->CTRL;
	}
	while((temp&0x01)&&!(temp&(1<<16)));	 
	
	SysTick->CTRL&=~SysTick_CTRL_ENABLE_Msk; 
	SysTick->VAL =0X00;       				
}
/**
  * @��  ��  ��������ʱ������
  * @��  ��  ms����ʱ���ȣ���λms	  	  
  * @����ֵ  ��
  * @˵  ��  ע��ms�ķ�Χ��SysTick->LOADΪ24λ�Ĵ���,����,�����ʱΪ:nTime<=0xffffff*8*1000/SYSCLK
  *          ��72M������,ms<=1864ms 
  */
static void Delay_ms(uint16_t ms)
{	 		  	  
	uint32_t temp;	
	
	SysTick->LOAD=(uint32_t)9000*ms;
	SysTick->VAL =0x00;
	SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk;
	
	do
	{
		temp=SysTick->CTRL;
	}while((temp&0x01)&&!(temp&(1<<16)));	
	
	SysTick->CTRL&=~SysTick_CTRL_ENABLE_Msk;      
	SysTick->VAL =0X00;     		  		 	    
}

/**
  * @��  ��  ���������ʱ
  * @��  ��  ms����ʱ���ȣ���λms	  	 	  
  * @����ֵ  ��
  */
void AX_Delayms(uint16_t ms)
{
	uint8_t repeat=ms/500;																
	uint16_t remain=ms%500;
	
	while(repeat)
	{
		Delay_ms(500);
		repeat--;
	}
	
	if(remain)
	{
		Delay_ms(remain);
	}
}

/******************* (C) ��Ȩ 2019 XTARK **************************************/
