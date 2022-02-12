/**			                                                    
		   ____                    _____ _____  _____        XTARK@塔克创新
		  / __ \                  / ____|  __ \|  __ \  
		 | |  | |_ __   ___ _ __ | |    | |__) | |__) |
		 | |  | | '_ \ / _ \ '_ \| |    |  _  /|  ___/ 
		 | |__| | |_) |  __/ | | | |____| | \ \| |     
		  \____/| .__/ \___|_| |_|\_____|_|  \_\_|     
		    		| |                                    
		    		|_|  OpenCRP 树莓派 专用ROS机器人控制器                                   
									 
  ****************************************************************************** 
  *           
  * 版权所有： XTARK@塔克创新  版权所有，盗版必究
  * 官网网站： www.xtark.cn
  * 淘宝店铺： https://shop246676508.taobao.com  
  * 塔克媒体： www.cnblogs.com/xtark（博客）
	* 塔克微信： 微信公众号：塔克创新（获取最新资讯）
  *      
  ******************************************************************************
  * @作  者  Musk Han@XTARK
  * @版  本  V1.0
  * @日  期  2019-7-26
  * @内  容  软件延时函数
  ******************************************************************************
  * @说  明
  *
  * 1.延时函数使用滴答时钟实现
  * 
  ******************************************************************************
  */

#include "ax_delay.h"

/**
  * @简  述  延时函数初始化
  * @参  数  无
  * @返回值  无
  */
#define SysTick_CLKSource_HCLK_Div8    ((uint32_t)0xFFFFFFFB)
void AX_DELAY_Init(void) 
{	
	//延时函数SysTick配置
	HAL_SYSTICK_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8); 	//时钟固定为AHB时钟的1/8
}

/**
  * @简  述  软件微妙延时
  * @参  数  us：延时长度，单位us	  
  * @返回值  无
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
  * @简  述  软件毫妙级延时函数。
  * @参  数  ms：延时长度，单位ms	  	  
  * @返回值  无
  * @说  明  注意ms的范围，SysTick->LOAD为24位寄存器,所以,最大延时为:nTime<=0xffffff*8*1000/SYSCLK
  *          对72M条件下,ms<=1864ms 
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
  * @简  述  软件毫秒延时
  * @参  数  ms：延时长度，单位ms	  	 	  
  * @返回值  无
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

/******************* (C) 版权 2019 XTARK **************************************/
