/******************************************************************************
	* @Attention			: WangJing
	* @DateCreated		: 2020.11.28
	* @board					: RM开发板C型
	* @consult				: 参考 MPU6000 & MPU6050各类芯片手册, 普中, 原子, csdn博客等开源资料
*****************************************************************************/
#include "mpu6050.h"
#include <math.h>
#include <stdio.h>

#include "debug.h"
mpu_msg_t mpu_raw_msg;				//原始数据
pose_msg_t mpu_pose_msg;			//姿态数据


DEBUG_SET_LEVEL(DEBUG_LEVEL_INFO);

/* ------------------------------------------------ 初始化mpu6050 ------------------------------------------------------------ */
/**
  * @brief  MPU_Read_Device_Addr()  		初始化mpu6050.
  * @note   														初始化mpu6050
  * @retval HAL status									mpu_ok/mpu_err
  */
mpu_state_t w_mpu_init(void)
{
	static uint8_t device_id = 0x00u;
	int8_t ret =0;
	//MPU原始数据清零
	for(int i=0; i<sizeof(mpu_raw_msg); i++)
		((uint8_t *)&mpu_raw_msg)[i] = 0;
	
	//这里可以不用初始配置gpio端口, CUBEMX生成开头会有初始化I2C的gpio端口
//	MPU_I2C_GPIO_INIT;
	
	//检查ID
	device_id = w_mpu_read_device_address();
	INFO("device_id:    0x%x\r\n", device_id);
	INFO("设备ID:       0x%x\r\n", device_id);
	INFO("\r\n");
	if(device_id == mpu_id_err)
		return mpu_id_err;				//ID错误
	
/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */
/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */
/* 注意：MPU6000 & MPU6050设备在'上电时'会进入'睡眠模式' */
	//复位MPU6050,	0x08
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_reset);
	HAL_Delay(50);
	
	//唤醒MPU6050,	0x00
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_rouse);
//	HAL_Delay(50);
	
	//陀螺量程范围，±2000dps.		0x03
	ret +=w_mpu_set_gyro_fsr(mpu_gyro_fsr_2000s);
	
	//加速度计程范围，±8g.			0x00
	ret +=w_mpu_set_acce_fsr(mpu_acce_fsr_2g);
	
	//配置采样频率分频寄存器, 1k/4, 取样率为25Hz。
	ret +=w_mpu_set_sample_rate(0x07);
	
	//配置低通滤波，截止频率100Hz左右。
	ret +=w_mpu_set_dlpf(2);
	
	//中断信号为高电平, 直到有读取操作才消失, 直通辅助I2C。
	ret +=w_mpu_write_byte(_MPU_INT_BP_CFG_REG, 0x80);
	
	//使能 "数据就绪" 中断 (Data Ready interrupt) ,所有的传感器寄存器写操作完成时都会产生
	ret +=w_mpu_write_byte(_MPU_INT_ENABLE_REG, 0x00);
	
	//不使用辅助I2C.
	ret +=w_mpu_write_byte(_MPU_USER_CTRL, 0x00);
	
	//设备的系统时钟 与 X轴陀螺仪参考.
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_clksel_x);
	
	//加速度与陀螺仪都工作
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_2, 0x00);
	if(ret == 0)
		return mpu_ok;
	else
		return mpu_err;
	
}

/* ------------------------------------------------ 读取MPU的设备ID ------------------------------------------------------------ */
/**
  * @brief  MPU_Read_Device_Addr()  		读取MPU的设备ID.
  * @note   														读取MPU的设备ID
  * @retval HAL status									id/mpu_err
  */
uint8_t w_mpu_read_device_address(void)
{
	static uint8_t id = 0x00u;			//存放读取到的数据（设备ID）
	
	//0x75
	id = w_mpu_read_byte(_MPU_DEVICE_ID);
	if(id == mpu_err)
	{
//		printf("mpu6050_device_id:  0x%x\r\n(ID_ERROR)", id);
		return mpu_id_err;		//设备id错误
	}
	return id;							//返回设备ID
}

/* ------------------------------------------------ 读取MPU温度 ------------------------------------------------------------ */
/**
  * @brief  w_mpu_read_raw_temperature()  		读取MPU温度.
  * @param  *mpu_raw_msg_buff       Note
  * @retval HAL status							mpu_ok/mpu_err
  */
float w_mpu_read_temperature(void)
{
	static uint8_t msg_temp[2];					//缓冲区
	static short mpu_temperature_biff;	//温度缓冲区
	
	//读取内置温度传感器数据
	if( w_mpu_read_byte_len(_MPU_TEMP_OUT_H_REG, msg_temp, sizeof(msg_temp)) ==  mpu_err)
		return mpu_err;

	mpu_temperature_biff = ((uint16_t)msg_temp[0]<<8)	| msg_temp[1];		//MPU温度值
	
	return (36.53f+((double)mpu_temperature_biff)/340.0f);	//计算后的真实温度值
	
}

/* ------------------------------------------------ 读取MPU所有原始数据 ------------------------------------------------------------ */
/**
  * @brief  mpu_read_raw_data()  		读取MPU所有原始数据.
  * @param  *mpu_raw_msg_buff       传入接收原始数据的地址
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_read_all_raw_data(mpu_msg_t *mpu_raw_msg_buff)
{
	
	//0x3B, （加速度计 --> 温度 --> 陀螺仪）数据地址先后顺序
	
	uint8_t msg_buff[14];								//存入缓冲区
	static short mpu_temperature_biff;	//温度缓冲区
	
	if( w_mpu_read_byte_len(_MPU_RAW_DATA_REG, msg_buff, sizeof(msg_buff)) ==  mpu_err)
//		return mpu_busy;								//iic忙碌（0x02/0x2）
		return mpu_err;
	
	//整合MPU原始数据
	mpu_raw_msg_buff->mpu_acce[0] 			= ((uint16_t)msg_buff[0]<<8)	| msg_buff[1];		//X轴加速度值
	mpu_raw_msg_buff->mpu_acce[1]				= ((uint16_t)msg_buff[2]<<8)	| msg_buff[3];		//Y轴加速度值
	mpu_raw_msg_buff->mpu_acce[2]				= ((uint16_t)msg_buff[4]<<8)	| msg_buff[5];		//Z轴加速度值
	
	mpu_raw_msg_buff->mpu_gyro[0]				= ((uint16_t)msg_buff[8]<<8)	| msg_buff[9];		//X轴陀螺仪值
	mpu_raw_msg_buff->mpu_gyro[1]				= ((uint16_t)msg_buff[10]<<8) | msg_buff[11];		//Y轴陀螺仪值
	mpu_raw_msg_buff->mpu_gyro[2]				= ((uint16_t)msg_buff[12]<<8) | msg_buff[13];		//Z轴陀螺仪值
	
	mpu_temperature_biff								= ((uint16_t)msg_buff[6]<<8)	| msg_buff[7];		//MPU温度值
	
	mpu_raw_msg_buff->mpu_temperature		= 36.53f+((double)mpu_temperature_biff)/340.0f;	//计算后的真实温度值
	
	return mpu_ok;
}

/* ------------------------------------------------ 配置采样频率分频寄存器 ------------------------------------------------------------ */
/**
  * @brief  mpu_set_sample_rate()  					配置采样频率分频寄存器.
  * @retval HAL status							mpu_ok/mpu_err
  */
//设置MPU6050的采样率
mpu_state_t w_mpu_set_sample_rate(uint16_t rate)
{
	// 0x19, 设置数字低通滤波器
	if( w_mpu_write_byte(_MPU_SAMPLE_RATE_DIVIDER_REG,rate) == mpu_ok)
		return mpu_ok;					//配置成功
	else
		return mpu_err;					//配置失败
		
}


/* ------------------------------------------------ 配置数字低通滤波器 ------------------------------------------------------------ */
/**
  * @brief  mpu_set_dlpf()  					配置数字低通滤波器.
  * @retval HAL status							mpu_ok/mpu_err
  */

mpu_state_t w_mpu_set_dlpf(uint16_t dlpf)
{
	// 0x1A,  截止频率100Hz左右。
	if( w_mpu_write_byte(_MPU_CONFIG_REG,dlpf) == mpu_ok)
		return mpu_ok;					//配置成功
	else
		return mpu_err;					//配置失败

}

/* ------------------------------------------------ 配置陀螺仪满量程范围 ------------------------------------------------------------ */
/**
  * @brief  w_mpu_set_gyro_fsr()  		配置陀螺仪满量程范围.
  * @param  fsr       							配置量程范围在mpu_fsr_e中
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_set_gyro_fsr(mpu_fsr_t gyro_fsr)
{
	//0x1B
	if( w_mpu_write_byte(_MPU_GYRO_CONFIG_REG, gyro_fsr<<3) == mpu_ok)
		return mpu_ok;					//配置成功
	else
		return mpu_err;					//配置失败

}

/* ------------------------------------------------ 配置加速度计满量程范围 ------------------------------------------------------------ */
/**
  * @brief  mpu_read_raw_data()  		配置加速度计满量程范围.
  * @param  fsr       							配置量程范围在mpu_fsr_e中
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_set_acce_fsr(mpu_fsr_t acce_fsr)
{
	//0x1C
	if( w_mpu_write_byte(_MPU_ACCE_CONFIG_REG, acce_fsr<<3) == mpu_ok)
		return mpu_ok;					//配置成功
	else
		return mpu_err;					//配置失败

}

/* ------------------------------------------------ mpu写入一个Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_write_byte()  		IIC写一个字节.
  * @param  reg_addr       				寄存器地址.
  * @param  w_data    						需要写入的数据.
  * @note   											传入需要写的寄存器地址, 后面是往这个寄存器写入的一个字节的数据.
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_write_byte(uint8_t reg_addr, uint8_t w_data)
{
	uint8_t w_data_byte = w_data;			//放入要写入的数据
	
	if( HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, _MPU_WRITE, reg_addr, I2C_MEMADD_SIZE_8BIT, &w_data_byte, 1, 0xfff) == HAL_OK)
		return mpu_ok;					//写入成功
	else
		return mpu_err;					//写入失败
	
}


/* ------------------------------------------------ mpu读取一个Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_read_byte()  			IIC读取一个字节.
  * @param  reg_addr       				读取的寄存器地址.
  * @note   											传入需要读取的寄存器地址
  * @retval HAL status						r_data_byte/mpu_busy
  */
uint8_t w_mpu_read_byte(uint8_t reg_addr)
{
	static uint8_t r_data_byte = 0x00u;	//存放读取一个Byte的数据
	if( HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, _MPU_READ, reg_addr, I2C_MEMADD_SIZE_8BIT, &r_data_byte, 1, 0xfff) == HAL_OK)
//	HAL_Delay(50);
		return r_data_byte;			//返回读取的数据
	else
////		return mpu_busy;				//iic忙碌（0x02/0x2）
		return mpu_err;
	
}



/* ------------------------------------------------ mpu连续写入多个Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_write_byte()  		IIC连续写入多个Byte.
  * @param  reg_addr       				寄存器地址.
  * @param  *w_data_buf    				需要写入的数据缓冲区.
  * @param  len    								数据缓冲区的长度.
  * @note   											传入需要写的寄存器地址, 后面是往这个寄存器写入的的一组数据, 确定数据长度
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_write_byte_len(uint8_t reg_addr, uint8_t *w_data_buf, uint8_t len)
{
	
	if( HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, _MPU_WRITE, reg_addr, I2C_MEMADD_SIZE_8BIT, w_data_buf, len, 0xfff) == HAL_OK)
		return mpu_ok;					//写入成功
	else
		return mpu_err;					//写入失败
	
}


/* ------------------------------------------------ mpu连续读取多个Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_read_byte()  			IIC连续读取多个Byte.
  * @param  reg_addr       				读取的寄存器地址.
  * @param  *r_data_buf    				需要读取的数据缓冲区.
  * @param  len    								数据缓冲区的长度.
  * @note   											传入需要读取的寄存器地址, 后面是读取到的数据放入这个数组buff中, 确定这组数据的长度
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_read_byte_len(uint8_t reg_addr, uint8_t *r_data_buf, uint8_t len)
{
	
	if( HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, _MPU_READ, reg_addr, I2C_MEMADD_SIZE_8BIT, r_data_buf, len, 0xfff) == HAL_OK)
//		HAL_Delay(50);
		return mpu_ok;					//读取完成
	else
//		return mpu_busy;				//iic忙碌
		return mpu_err;
	
}


/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE BEGIN ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE BEGIN ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE BEGIN ************************************************************************ */
	
//#define		HW_S_HW_MPU_ADDR			_MPU_READ			
/**
  * @brief  my_hal_delay()  			ms级别延时, 为DMP库delay_ms
  */
void my_hal_delay(unsigned long ms)
{
	HAL_Delay(ms);
}

/**
  * @brief  get_tick_ms_cnt()  			ms级别时间戳, 为DMP库get_ms
  */
void f4_get_tick_ms_cnt(unsigned long *cnt)
{
	*cnt = HAL_GetTick();
}

/**
  * @brief  get_tick_ms_cnt1()  			ms级别时间戳,可以为空, 使用中不起作用, 为DMP库get_ms不报错
  */
void f4_get_tick_ms_cnt1(unsigned long *cnt)
{
	;
}

/**
  * @brief  dmp_i2c_write()  			IIC连续写, 为DMP库i2c的写
  */
uint8_t dmp_i2c_write(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *w_data)
{
	//超时时间看实际更改, 问题不大
	return HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, slave_addr, reg_addr, I2C_MEMADD_SIZE_8BIT, w_data, len, 500);
}

/**
  * @brief  dmp_i2c_write()  			IIC连续读, 为DMP库i2c的读
  */
uint8_t dmp_i2c_read(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *r_data)
{
	//超时时间看实际更改, 问题不大
	return HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, slave_addr, reg_addr, I2C_MEMADD_SIZE_8BIT, r_data, len, 1000);
}


/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE END ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE END ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) 需要用到 CODE END ************************************************************************ */
	


/* *********************************************************** 内置DMP的应用 CODE BEGIN  ************************************************************************ */
/* *********************************************************** 内置DMP的应用 CODE BEGIN  ************************************************************************ */



#define DEFAULT_MPU_HZ  (100)			//输出的速度, 100Hz, 10ms
//#define DEFAULT_MPU_HZ  (200)			//输出的速度, 200Hz, 20ms

	
//q30格式,long转float时的除数.
#define q30  1073741824.0f


uint8_t buffer[14];
int16_t  MPU6050_FIFO[6][11];

int16_t Gx_offset=0,Gy_offset=0,Gz_offset=0;


//陀螺仪方向设置, 绝对位置
static signed char gyro_orientation[9] = {1, 0, 0,
                                          0, 1, 0,
                                          0, 0, 1};

//方向转换
static  unsigned short inv_row_2_scale(const signed char *row)
{
    unsigned short b;

    if (row[0] > 0)
        b = 0;
    else if (row[0] < 0)
        b = 4;
    else if (row[1] > 0)
        b = 1;
    else if (row[1] < 0)
        b = 5;
    else if (row[2] > 0)
        b = 2;
    else if (row[2] < 0)
        b = 6;
    else
        b = 7;      // error
    return b;
}


//陀螺仪方向控制
static  unsigned short inv_orientation_matrix_to_scalar(
    const signed char *mtx)
{
    unsigned short scalar;
    /*
			//恒等矩阵
			{1, 0, 0,
			 0, 1, 0,
			 0, 0, 1};
			
     */
    scalar = inv_row_2_scale(mtx);
    scalar |= inv_row_2_scale(mtx + 3) << 3;
    scalar |= inv_row_2_scale(mtx + 6) << 6;


    return scalar;
}

//MPU6050传感器自测
static void run_self_test(void)
{
    int result;
    long gyro[3], accel[3];

    result = mpu_run_self_test(gyro, accel);
    if (result == 0x03) {
			
				//测试通过。我们可以相信陀螺仪的数据，把它放下来到DMP
        /* Test passed. We can trust the gyro data here, so let's push it down
         * to the DMP.
         */
        float sens;
        unsigned short accel_sens;
        mpu_get_gyro_sens(&sens);
        gyro[0] = (long)(gyro[0] * sens);
        gyro[1] = (long)(gyro[1] * sens);
        gyro[2] = (long)(gyro[2] * sens);
        dmp_set_gyro_bias(gyro);
        mpu_get_accel_sens(&accel_sens);
        accel[0] *= accel_sens;
        accel[1] *= accel_sens;
        accel[2] *= accel_sens;
        dmp_set_accel_bias(accel);
				printf("setting bias succesfully ......\r\n");
    }
}


//DMP初始化
int dmp_init(void)
{
	uint8_t temp[1]={0};
	dmp_i2c_read(HW_S_HW_MPU_ADDR,_MPU_DEVICE_ID,I2C_MEMADD_SIZE_8BIT,temp);
	//	 temp[0] = w_mpu_read_device_address();
	INFO("mpu_set_sensor complete ......\r\n");
	INFO("mpu设置传感器完成 ......\r\n");
	INFO("\r\n");
	INFO("Device_ID:    0x%x\r\n", temp[0]);
	INFO("设备ID:       0x%x\r\n", temp[0]);
	INFO("\r\n");
	 
	//检查ID, 不对系统复位
	if(temp[0]!=0x68)
		NVIC_SystemReset();
	int ret = mpu_init();
	if(!ret)
  {
		//重启内部寄存器到默认, 
	  if(!mpu_set_sensors(INV_XYZ_GYRO | INV_XYZ_ACCEL))
	  	 INFO("mpu_set_sensor complete ......\r\n");
		else
				ERR("mpu_set_sensors error !!!!\r\n");
	  INFO("\r\n");
		
		//配置FIFO
	  if(!mpu_configure_fifo(INV_XYZ_GYRO | INV_XYZ_ACCEL))
	  	 INFO("mpu_configure_fifo complete ......\r\n");
		else
				ERR("mpu_configure_fifo ERROR \r\n");
	  INFO("\r\n");
		
		//配置采样频率分频寄存器
	  if(!mpu_set_sample_rate(DEFAULT_MPU_HZ))
	  	 INFO("mpu_set_sample_rate complete ......\r\n");
		else
				ERR("mpu_set_sample_rate error !!!!\r\n");
	  INFO("\r\n");
		
		//DMP加载动作驱动程序固件完成
	  if(!dmp_load_motion_driver_firmware())
	  	INFO("dmp_load_motion_driver_firmware complete ......\r\n");
		else
			ERR("dmp_load_motion_driver_firmware ERROR !!!!");
	  INFO("\r\n");
		
		//DMP设置陀螺仪方向完成
	  if(!dmp_set_orientation(inv_orientation_matrix_to_scalar(gyro_orientation)))
	  	 INFO("dmp_set_orientation complete ......\r\n");
		else 
				ERR("dmp_set_orientation ERROR!!!!\r\n");
	  INFO("\r\n");
		
		//DMP使功能完整
	  if(!dmp_enable_feature(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_TAP |
					DMP_FEATURE_ANDROID_ORIENT | DMP_FEATURE_SEND_RAW_ACCEL | DMP_FEATURE_SEND_CAL_GYRO |
					DMP_FEATURE_GYRO_CAL)){
	  	 INFO("dmp_enable_feature complete ......\r\n");
		}else
				ERR("dmp_enable_feature error !!!!\r\n");
		INFO("\r\n");
		//DMP设定FIFO速率完成
	  if(!dmp_set_fifo_rate(DEFAULT_MPU_HZ))
		{
	  	 INFO("dmp_set_fifo_rate complete ......\r\n");
				INFO("\r\n");
		}else
			 ERR("dmp_set_fifo_rate error \r\n");
		
		//自测自身数据,测试通过. 我们可以相信陀螺仪的数据，把它放下来到DMP
	  run_self_test();
		
		//mpu设置DMP状态完成
	  if(!mpu_set_dmp_state(1))
	  	 INFO("mpu_set_dmp_state complete ......\r\n");
	  	 INFO("mpu设置DMP状态完成 ......\r\n");
	  	 INFO("\r\n\r\n\r\n");
		
		my_hal_delay(200);		//等待
	  INFO(" ################### ...... 测试MPU姿态角度 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... 测试MPU姿态角度 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... 测试MPU姿态角度 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO("\r\n\r\n\r\n");
		
		//先读取姿态角一段时间, 先稳定
		for(uint16_t rd=0; rd<300; rd++)				//6s
		{
			//读取MPU内置DMP的姿态
			read_dmp(&mpu_pose_msg);
			DEBUG("Pitch: %f\t ", mpu_pose_msg.pitch);
			DEBUG("Roll:  %f\t ", mpu_pose_msg.roll);
			DEBUG("Yaw:   %f\t ", mpu_pose_msg.yaw);
			DEBUG("\r\n");
			my_hal_delay(20);
		}
		
		my_hal_delay(200);		//等待
	  INFO(" ################### ...... MPU配置完成, DMP功能完成 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... MPU配置完成, DMP功能完成 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... MPU配置完成, DMP功能完成 ...... ################### \r\n");
		my_hal_delay(200);
	  INFO("\r\n\r\n\r\n");
		return 0;
  }else
		return ret;
}
/* ------------------------------------------------ 读取MPU内置DMP的姿态 ------------------------------------------------------------ */
/**
  * @brief  read_dmp()  			读取MPU内置DMP的姿态.
  * @param  *pose_msg       	传入姿态的地址
	* @note   									参考野火、原子、平衡之家等开源资料
  * @retval HAL status				0/1/2
  */
uint8_t read_dmp(pose_msg_t *pose_msg)
{
	
	uint8_t more;
	long quat[4];				//四元数
	int16_t gyro[3], accel[3], sensors;
	unsigned long sensor_timestamp;//传感器时间戳
	
	float q0=1.0f,q1=0.0f,q2=0.0f,q3=0.0f;
	
	//读取FIFO中的数据
	if(dmp_read_fifo(gyro, accel, quat, &sensor_timestamp, &sensors, &more))
		return 1;
	
	if(sensors & INV_WXYZ_QUAT)
	{
		 q0=quat[0] / q30;
		 q1=quat[1] / q30;
		 q2=quat[2] / q30;
		 q3=quat[3] / q30;
		
		 pose_msg->pitch = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3f;																	//四元数解算, 俯仰角(Pitch)-->绕着X轴旋转
		 pose_msg->roll	 = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3f;	//四元数解算, 翻滚角(Roll)-->绕着Y轴旋转
		 pose_msg->yaw	 = atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3) * 57.3f;								//四元数解算, 偏航角(Yaw)-->绕着Z轴旋转
		
		 return 0;
	}
	else 
		return 2;

}


/* *********************************************************** 内置DMP的应用 CODE END  ************************************************************************ */
/* *********************************************************** 内置DMP的应用 CODE END  ************************************************************************ */


