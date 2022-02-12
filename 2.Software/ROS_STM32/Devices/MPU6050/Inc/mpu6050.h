/******************************************************************************
	* @Attention			: WangJing
	* @DateCreated		: 2020.11.28
	* @board					: RM开发板C型
	* @consult				: 参考 MPU6000 & MPU6050各类芯片手册, 普中, 原子, csdn博客等开源资料
*****************************************************************************/
#ifndef		_MPU6050_H
#define		_MPU6050_H
#include "main.h"
#include "i2c.h"
//#include "usart.h"

//内置DMP的头文件哎
#include "inv_mpu.h"
#include "inv_mpu_dmp_motion_driver.h"

#include "stm32f1xx.h"


#define		MPU_I2C_HANDLE					hi2c1							//mpu6050   I2C句柄
#define		MPU_I2C_GPIO_INIT				MX_I2C2_Init()		//mpu6050   I2C的gpio端口配置


/* ------------------------------ 选择mpu6050的ADO引脚接法, 从而确定IIC地址 -------------------------------------------- */
#define		MPU6050_ADO_JOIN_GND
//#define		MPU6050_ADO_JOIN_VCC


/* ------------------------------ 根据mpu6050的ADO引脚接法, 从而确定的设备地址 ----------------------------------------- */
/* ADO引脚接GND */
#if	defined	MPU6050_ADO_JOIN_GND

	//AD0接GND,IIC地址为0X68
	#define		_MPU_ADDRESS									0x68			//mpu6050_i2c地址,  W: 0x68<<1 -->> 0xD0, R: 0x68<<1 + 1 -->> 0xD1

	//AD0接GND
	#define		_MPU_WRITE										0xD0			//mpu6050地址, I2C设备7位地址值,HAL库用8位整字节写入，所以在数据表中必须在调用接口前左移一位 (( 0xD0>>1 )=0x68)
	#define		_MPU_READ											0xD1
	
#endif

/* ADO引脚接VCC */
#if	defined	MPU6050_ADO_JOIN_VCC

	//AD0接VCC,IIC地址为0X69
	#define		_MPU_ADDRESS									0x69			//mpu6050_i2c地址,  W: 0x69<<1 -->> 0xD2, R: 0x69<<1 + 1 -->> 0xD3

	//AD0接VCC
	#define		_MPU_WRITE										0xD2			//mpu6050地址, I2C设备7位地址值,HAL库用8位整字节写入，所以在数据表中必须在调用接口前左移一位 (( 0xD2>>1 )=0x69)
	#define		_MPU_READ											0xD3			
	
#endif

/* ------------------------------------------------------ MPU6050各个寄存器定义 --------------------------------------------------------------- */

/* mpu6050传感器各个状态 */
typedef enum 
{
		mpu_ok				= 0x00U,		//成功
		mpu_err				= 0x01U,		//错误
		mpu_busy			= 0x02U,		//忙碌
		mpu_id_err		= 0x03U,		//ID错误
		mpu_timeout		= 0x04U,		//超时
		mpu_init_err	= 0x05U			//初始化错误
	
}mpu_state_t;

/* mpu6050传感器电源管理1 */
typedef enum 
{
		//电源管理1寄存器配置
		mpu_pwr_mgmt_1_rouse				= 0x00,				//唤醒
		mpu_pwr_mgmt_1_reset				= 0x80,				//Bit7该位置 1, 重启内部寄存器到默认
		mpu_pwr_mgmt_1_sleep				= 0x40,				//Bit6该位置 1, MPU-60X0 进入睡眠模式
		mpu_pwr_mgmt_1_cycle				= 0x20,				//Bit5该位置 1, 且当失能 SLEEP, MPU-60X0 进入循环模式。 在循环模式， 设备在睡眠模式和唤醒模式间循环， 根据 LP_WAKE_CTRL（寄存器 108->电源管理2）设定的速率从加速度计采集样品数据
		mpu_pwr_mgmt_1_temp_disble	= 0x10,				//Bit3该位置 1, 失能温度传感器
		
	  //Bit[2:0]
//		mpu_pwr_mgmt_1_clksel_osc		= 0x000,			//设备的系统时钟 与 内部8 MHZ振荡器(唤醒)
		mpu_pwr_mgmt_1_clksel_x			= 0x01,			//设备的系统时钟 与 X轴陀螺仪参考。
		mpu_pwr_mgmt_1_clksel_y			= 0x02,			//设备的系统时钟 与 Y轴陀螺仪参考。
		mpu_pwr_mgmt_1_clksel_z			= 0x03,			//设备的系统时钟 与 Z轴陀螺仪参考。
		mpu_pwr_mgmt_1_clksel_32		= 0x04,			//PLL 与 外部32.768kHz参考
		mpu_pwr_mgmt_1_clksel_19		= 0x05,			//PLL 与 外部19.2MHz参考
		mpu_pwr_mgmt_1_clksel_reserved = 0x06,		//保留
		mpu_pwr_mgmt_1_clksel_stop	= 0x07	
/*
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
*/
//		//电源管理1寄存器配置
//		mpu_pwr_mgmt_1_rouse				= 0x00,				//唤醒
//		mpu_pwr_mgmt_1_reset				= 0x80,				//Bit7该位置 1, 重启内部寄存器到默认
//		mpu_pwr_mgmt_1_sleep				= 0x40,				//Bit6该位置 1, MPU-60X0 进入睡眠模式
//		mpu_pwr_mgmt_1_cycle				= 0x20,				//Bit5该位置 1, 且当失能 SLEEP, MPU-60X0 进入循环模式。 在循环模式， 设备在睡眠模式和唤醒模式间循环， 根据 LP_WAKE_CTRL（寄存器 108->电源管理2）设定的速率从加速度计采集样品数据
//		mpu_pwr_mgmt_1_temp_disble	= 0x20,				//Bit3该位置 1, 失能温度传感器
//		
//	  //Bit[2:0]
////		mpu_pwr_mgmt_1_clksel_osc = 0x000,		//设备的系统时钟 与 内部8 MHZ振荡器
//		mpu_pwr_mgmt_1e_clksel_x  = 0x001,		//设备的系统时钟 与 X轴陀螺仪参考。
//		mpu_pwr_mgmt_1_clksel_y,							//设备的系统时钟 与 Y轴陀螺仪参考。
//		mpu_pwr_mgmt_1_clksel_z,							//设备的系统时钟 与 Z轴陀螺仪参考。
//		mpu_pwr_mgmt_1_clksel_32,							//PLL 与 外部32.768kHz参考
//		mpu_pwr_mgmt_1_clksel_19,							//PLL 与 外部19.2MHz参考
//		mpu_pwr_mgmt_1_clksel_reserved,				//保留
//		mpu_pwr_mgmt_1_clksel_stop						//停止时钟和保持定时发生器在重置
	
}mpu_pwr_mgmt_1_t;


/* mpu6050传感器满量程范围 */
typedef enum 
{
	
		// 0x1B, 加速度计、陀螺仪满量程范围配置
		mpu_gyro_fsr_250s			= 0x00u,		//FSR: ±250°/s,  LSB: 131  LSB/°/s
		mpu_gyro_fsr_500s			= 0x01u,		//FSR: ±500°/s,  LSB: 65.5 LSB/°/s
		mpu_gyro_fsr_1000s		= 0x02u,		//FSR: ±1000°/s, LSB: 32.8 LSB/°/s
		mpu_gyro_fsr_2000s		= 0x03u,		//FSR: ±2000°/s, LSB: 16.4 LSB/°/s
	
		// 0x1C, 加速度计满量程范围
		mpu_acce_fsr_2g				= 0x00u,		//FSR: ±2g,  LSB: 16384 LSB/g
		mpu_acce_fsr_4g				= 0x01u,		//FSR: ±4g,  LSB: 8192  LSB/g
		mpu_acce_fsr_8g				= 0x02u,		//FSR: ±8g,  LSB: 4086  LSB/g
		mpu_acce_fsr_16g			= 0x03u		//FSR: ±16g, LSB: 2048  LSB/g


/*
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
		//按寄存器地址先后顺序, 不得修改, 不得修改, 不得修改
*/
//		//加速度计、陀螺仪满量程范围配置
//		mpu_gyro_fsr_250s			= 0x00u,		//FSR: ±250°/s,  LSB: 131  LSB/°/s
//		mpu_gyro_fsr_500s,		//FSR: ±500°/s,  LSB: 65.5 LSB/°/s
//		mpu_gyro_fsr_1000s,		//FSR: ±1000°/s, LSB: 32.8 LSB/°/s
//		mpu_gyro_fsr_2000s,		//FSR: ±2000°/s, LSB: 16.4 LSB/°/s
//	
//		//加速度计满量程范围
//		mpu_acce_fsr_2g,			//FSR: ±2g,  LSB: 16384 LSB/g
//		mpu_acce_fsr_4g,			//FSR: ±4g,  LSB: 8192  LSB/g
//		mpu_acce_fsr_8g,			//FSR: ±8g,  LSB: 4086  LSB/g
//		mpu_acce_fsr_16g			//FSR: ±16g, LSB: 2048  LSB/g
	
}mpu_fsr_t;

/* mpu6050传感器六轴数据 */
typedef struct
{
		//原始六轴数据
		int16_t mpu_acce[3];				//加速度		0x3B
		int16_t mpu_gyro[3];				//陀螺仪		0x43
		float	mpu_temperature;			//温度			0x41
	
}mpu_msg_t;


/* mpu自身姿态数据 */
typedef struct
{
		//mpu欧拉角
		float pitch;				//俯仰角 --> (绕 'X轴' 旋转)
		float roll;					//翻滚角 --> (绕 'Y轴' 旋转)
		float	yaw;					//偏航角 --> (绕 'Z轴' 旋转)
	
}pose_msg_t;


/* ------------------------------------------------ 查MPU60x0数据手册 ------------------------------------------------ */

/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */
/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */
/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */

/* 自检寄存器 */
#define		_MPU_SELF_TEST_X_REG						0x0D			//自检寄存器X
#define		_MPU_SELF_TEST_Y_REG						0x0E			//自检寄存器Y
#define		_MPU_SELF_TEST_Z_REG						0x0F			//自检寄存器Z
#define		_MPU_SELF_TEST_A_REG						0x10			//自检寄存器A

/* 采样频率分频寄存器 */
#define		_MPU_SAMPLE_RATE_DIVIDER_REG		0x19			//采样频率分频寄存器
/* 配置寄存器 */
#define		_MPU_CONFIG_REG									0x1A			//配置寄存器
#define		_MPU_GYRO_CONFIG_REG						0x1B			//陀螺仪配置寄存器（自检和满量程范围）
#define		_MPU_ACCE_CONFIG_REG						0x1C			//加速度计配置寄存器（自检和满量程范围）

/* mpu6050中断寄存器 */
#define 	_MPU_INT_BP_CFG_REG						0X37			//INT引脚/旁路有效使能配置寄存器
#define 	_MPU_INT_ENABLE_REG							0X38			//中断使能寄存器
#define 	_MPU_INT_STATE_REG							0X3A			//中断状态寄存器

/* 传感器原始数据 */
#define 	_MPU_RAW_DATA_REG 							0x3B			//传感器数据输出第一位寄存器
/* mpu6050加速度值 */
#define 	_MPU_ACCE_XOUT_H_REG						0x3B			//加速度值, X轴高8位寄存器
#define 	_MPU_ACCE_XOUT_L_REG						0x3C			//加速度值, X轴低8位寄存器
#define 	_MPU_ACCE_YOUT_H_REG						0x3D			//加速度值, Y轴高8位寄存器
#define 	_MPU_ACCE_YOUT_L_REG						0x3E			//加速度值, Y轴低8位寄存器
#define 	_MPU_ACCE_ZOUT_H_REG						0x3F			//加速度值, Z轴高8位寄存器
#define 	_MPU_ACCE_ZOUT_L_REG						0x40			//加速度值, Z轴低8位寄存器

/* mpu6050温度值 */
#define		_MPU_TEMP_OUT_H_REG							0x41			//温度值, 高8位寄存器
#define		_MPU_TEMP_OUT_L_REG							0x42			//温度值, 低8位寄存器

/* mpu6050陀螺仪值 */
#define		_MPU_GYRO_XOUT_H_REG						0x43			//陀螺仪值, X轴高8位寄存器
#define		_MPU_GYRO_XOUT_L_REG						0x44			//陀螺仪值, X轴低8位寄存器
#define		_MPU_GYRO_YOUT_H_REG						0x45			//陀螺仪值, Y轴高8位寄存器
#define		_MPU_GYRO_YOUT_L_REG						0x46			//陀螺仪值, Y轴低8位寄存器
#define		_MPU_GYRO_ZOUT_H_REG						0x47			//陀螺仪值, Z轴高8位寄存器
#define		_MPU_GYRO_ZOUT_L_REG						0x48			//陀螺仪值, Z轴低8位寄存器

#define		_MPU_USER_CTRL									0x6A			//用户配置
#define		_MPU_PWR_MGMT_1									0x6B			//电源管理1
#define		_MPU_PWR_MGMT_2									0x6C			//电源管理2


/* "WHO AM I" */
#define		_MPU_DEVICE_ID									0x75			//设备ID, "WHO AM I"寄存器


/* ----------------------- Extern Variables ------------------------------------------------------ */

//mpu原始数据
extern mpu_msg_t	mpu_raw_msg;

//mpu姿态数据
extern pose_msg_t mpu_pose_msg;


/* ----------------------- Extern Function ------------------------------------------------------ */


//初始化mpu6050
extern mpu_state_t w_mpu_init(void);

//读取MPU的设备ID
extern uint8_t w_mpu_read_device_address(void);

//配置采样频率分频寄存器
extern mpu_state_t w_mpu_set_sample_rate(uint16_t rate);

//配置数字低通滤波器
extern mpu_state_t w_mpu_set_dlpf(uint16_t lpf);

//读取MPU温度
extern float w_mpu_read_temperature(void);

//读取MPU所有原始数据
extern mpu_state_t w_mpu_read_all_raw_data(mpu_msg_t * mpu_raw_msg_buff);

//配置陀螺仪满量程范围
extern mpu_state_t w_mpu_set_gyro_fsr(mpu_fsr_t gyro_fsr);

//配置加速度计满量程范围
extern mpu_state_t w_mpu_set_acce_fsr(mpu_fsr_t acce_fsr);

//IIC写一个字节
extern mpu_state_t w_mpu_write_byte(uint8_t reg_addr, uint8_t w_data);

//IIC读取一个字节
extern uint8_t w_mpu_read_byte(uint8_t reg_addr);

//IIC连续写入多个Byte
extern mpu_state_t w_mpu_write_byte_len(uint8_t reg_addr, uint8_t *w_data_buf, uint8_t len);

//IIC连续读取多个Byte
extern mpu_state_t w_mpu_read_byte_len(uint8_t reg_addr, uint8_t *r_data_buf, uint8_t len);




/* *********************************************************** 下面是在DMP中要用到的 ************************************************************************ */
/* *********************************************************** 下面是在DMP中要用到的 ************************************************************************ */
/* *********************************************************** 下面是在DMP中要用到的 ************************************************************************ */



/* 注意：DMP库的 inv_mpu.c源文件中'500行'左右的 'addr成员值改为_MPU_READ', 找' 对应定义的文件编译的芯片型号' */
/* 注意：DMP库的 inv_mpu.c源文件中'500行'左右的 'addr成员值改为_MPU_READ', 找' 对应定义的文件编译的芯片型号' */
/* 注意：DMP库的 inv_mpu.c源文件中'500行'左右的 'addr成员值改为_MPU_READ', 找' 对应定义的文件编译的芯片型号' */

#define		HW_S_HW_MPU_ADDR			_MPU_READ						

//DMP初始化
extern int dmp_init(void);

//读取自身姿态
extern uint8_t read_dmp(pose_msg_t *mpu_pose_msg);

//ms级别延时
extern void my_hal_delay(unsigned long ms);

//ms级别时间戳
extern void f4_get_tick_ms_cnt(unsigned long *cnt);
//ms级别时间戳(空)
extern void f4_get_tick_ms_cnt1(unsigned long *cnt);

//IIC连续写
extern uint8_t dmp_i2c_write(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *w_data);
//IIC连续读
extern uint8_t dmp_i2c_read(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *r_data);







#endif		/* _MPU6050_H */




