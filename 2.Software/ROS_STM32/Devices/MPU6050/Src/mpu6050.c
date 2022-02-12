/******************************************************************************
	* @Attention			: WangJing
	* @DateCreated		: 2020.11.28
	* @board					: RM������C��
	* @consult				: �ο� MPU6000 & MPU6050����оƬ�ֲ�, ����, ԭ��, csdn���͵ȿ�Դ����
*****************************************************************************/
#include "mpu6050.h"
#include <math.h>
#include <stdio.h>

#include "debug.h"
mpu_msg_t mpu_raw_msg;				//ԭʼ����
pose_msg_t mpu_pose_msg;			//��̬����


DEBUG_SET_LEVEL(DEBUG_LEVEL_INFO);

/* ------------------------------------------------ ��ʼ��mpu6050 ------------------------------------------------------------ */
/**
  * @brief  MPU_Read_Device_Addr()  		��ʼ��mpu6050.
  * @note   														��ʼ��mpu6050
  * @retval HAL status									mpu_ok/mpu_err
  */
mpu_state_t w_mpu_init(void)
{
	static uint8_t device_id = 0x00u;
	int8_t ret =0;
	//MPUԭʼ��������
	for(int i=0; i<sizeof(mpu_raw_msg); i++)
		((uint8_t *)&mpu_raw_msg)[i] = 0;
	
	//������Բ��ó�ʼ����gpio�˿�, CUBEMX���ɿ�ͷ���г�ʼ��I2C��gpio�˿�
//	MPU_I2C_GPIO_INIT;
	
	//���ID
	device_id = w_mpu_read_device_address();
	INFO("device_id:    0x%x\r\n", device_id);
	INFO("�豸ID:       0x%x\r\n", device_id);
	INFO("\r\n");
	if(device_id == mpu_id_err)
		return mpu_id_err;				//ID����
	
/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */
/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */
/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */
	//��λMPU6050,	0x08
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_reset);
	HAL_Delay(50);
	
	//����MPU6050,	0x00
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_rouse);
//	HAL_Delay(50);
	
	//�������̷�Χ����2000dps.		0x03
	ret +=w_mpu_set_gyro_fsr(mpu_gyro_fsr_2000s);
	
	//���ٶȼƳ̷�Χ����8g.			0x00
	ret +=w_mpu_set_acce_fsr(mpu_acce_fsr_2g);
	
	//���ò���Ƶ�ʷ�Ƶ�Ĵ���, 1k/4, ȡ����Ϊ25Hz��
	ret +=w_mpu_set_sample_rate(0x07);
	
	//���õ�ͨ�˲�����ֹƵ��100Hz���ҡ�
	ret +=w_mpu_set_dlpf(2);
	
	//�ж��ź�Ϊ�ߵ�ƽ, ֱ���ж�ȡ��������ʧ, ֱͨ����I2C��
	ret +=w_mpu_write_byte(_MPU_INT_BP_CFG_REG, 0x80);
	
	//ʹ�� "���ݾ���" �ж� (Data Ready interrupt) ,���еĴ������Ĵ���д�������ʱ�������
	ret +=w_mpu_write_byte(_MPU_INT_ENABLE_REG, 0x00);
	
	//��ʹ�ø���I2C.
	ret +=w_mpu_write_byte(_MPU_USER_CTRL, 0x00);
	
	//�豸��ϵͳʱ�� �� X�������ǲο�.
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_1, mpu_pwr_mgmt_1_clksel_x);
	
	//���ٶ��������Ƕ�����
	ret +=w_mpu_write_byte(_MPU_PWR_MGMT_2, 0x00);
	if(ret == 0)
		return mpu_ok;
	else
		return mpu_err;
	
}

/* ------------------------------------------------ ��ȡMPU���豸ID ------------------------------------------------------------ */
/**
  * @brief  MPU_Read_Device_Addr()  		��ȡMPU���豸ID.
  * @note   														��ȡMPU���豸ID
  * @retval HAL status									id/mpu_err
  */
uint8_t w_mpu_read_device_address(void)
{
	static uint8_t id = 0x00u;			//��Ŷ�ȡ�������ݣ��豸ID��
	
	//0x75
	id = w_mpu_read_byte(_MPU_DEVICE_ID);
	if(id == mpu_err)
	{
//		printf("mpu6050_device_id:  0x%x\r\n(ID_ERROR)", id);
		return mpu_id_err;		//�豸id����
	}
	return id;							//�����豸ID
}

/* ------------------------------------------------ ��ȡMPU�¶� ------------------------------------------------------------ */
/**
  * @brief  w_mpu_read_raw_temperature()  		��ȡMPU�¶�.
  * @param  *mpu_raw_msg_buff       Note
  * @retval HAL status							mpu_ok/mpu_err
  */
float w_mpu_read_temperature(void)
{
	static uint8_t msg_temp[2];					//������
	static short mpu_temperature_biff;	//�¶Ȼ�����
	
	//��ȡ�����¶ȴ���������
	if( w_mpu_read_byte_len(_MPU_TEMP_OUT_H_REG, msg_temp, sizeof(msg_temp)) ==  mpu_err)
		return mpu_err;

	mpu_temperature_biff = ((uint16_t)msg_temp[0]<<8)	| msg_temp[1];		//MPU�¶�ֵ
	
	return (36.53f+((double)mpu_temperature_biff)/340.0f);	//��������ʵ�¶�ֵ
	
}

/* ------------------------------------------------ ��ȡMPU����ԭʼ���� ------------------------------------------------------------ */
/**
  * @brief  mpu_read_raw_data()  		��ȡMPU����ԭʼ����.
  * @param  *mpu_raw_msg_buff       �������ԭʼ���ݵĵ�ַ
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_read_all_raw_data(mpu_msg_t *mpu_raw_msg_buff)
{
	
	//0x3B, �����ٶȼ� --> �¶� --> �����ǣ����ݵ�ַ�Ⱥ�˳��
	
	uint8_t msg_buff[14];								//���뻺����
	static short mpu_temperature_biff;	//�¶Ȼ�����
	
	if( w_mpu_read_byte_len(_MPU_RAW_DATA_REG, msg_buff, sizeof(msg_buff)) ==  mpu_err)
//		return mpu_busy;								//iicæµ��0x02/0x2��
		return mpu_err;
	
	//����MPUԭʼ����
	mpu_raw_msg_buff->mpu_acce[0] 			= ((uint16_t)msg_buff[0]<<8)	| msg_buff[1];		//X����ٶ�ֵ
	mpu_raw_msg_buff->mpu_acce[1]				= ((uint16_t)msg_buff[2]<<8)	| msg_buff[3];		//Y����ٶ�ֵ
	mpu_raw_msg_buff->mpu_acce[2]				= ((uint16_t)msg_buff[4]<<8)	| msg_buff[5];		//Z����ٶ�ֵ
	
	mpu_raw_msg_buff->mpu_gyro[0]				= ((uint16_t)msg_buff[8]<<8)	| msg_buff[9];		//X��������ֵ
	mpu_raw_msg_buff->mpu_gyro[1]				= ((uint16_t)msg_buff[10]<<8) | msg_buff[11];		//Y��������ֵ
	mpu_raw_msg_buff->mpu_gyro[2]				= ((uint16_t)msg_buff[12]<<8) | msg_buff[13];		//Z��������ֵ
	
	mpu_temperature_biff								= ((uint16_t)msg_buff[6]<<8)	| msg_buff[7];		//MPU�¶�ֵ
	
	mpu_raw_msg_buff->mpu_temperature		= 36.53f+((double)mpu_temperature_biff)/340.0f;	//��������ʵ�¶�ֵ
	
	return mpu_ok;
}

/* ------------------------------------------------ ���ò���Ƶ�ʷ�Ƶ�Ĵ��� ------------------------------------------------------------ */
/**
  * @brief  mpu_set_sample_rate()  					���ò���Ƶ�ʷ�Ƶ�Ĵ���.
  * @retval HAL status							mpu_ok/mpu_err
  */
//����MPU6050�Ĳ�����
mpu_state_t w_mpu_set_sample_rate(uint16_t rate)
{
	// 0x19, �������ֵ�ͨ�˲���
	if( w_mpu_write_byte(_MPU_SAMPLE_RATE_DIVIDER_REG,rate) == mpu_ok)
		return mpu_ok;					//���óɹ�
	else
		return mpu_err;					//����ʧ��
		
}


/* ------------------------------------------------ �������ֵ�ͨ�˲��� ------------------------------------------------------------ */
/**
  * @brief  mpu_set_dlpf()  					�������ֵ�ͨ�˲���.
  * @retval HAL status							mpu_ok/mpu_err
  */

mpu_state_t w_mpu_set_dlpf(uint16_t dlpf)
{
	// 0x1A,  ��ֹƵ��100Hz���ҡ�
	if( w_mpu_write_byte(_MPU_CONFIG_REG,dlpf) == mpu_ok)
		return mpu_ok;					//���óɹ�
	else
		return mpu_err;					//����ʧ��

}

/* ------------------------------------------------ ���������������̷�Χ ------------------------------------------------------------ */
/**
  * @brief  w_mpu_set_gyro_fsr()  		���������������̷�Χ.
  * @param  fsr       							�������̷�Χ��mpu_fsr_e��
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_set_gyro_fsr(mpu_fsr_t gyro_fsr)
{
	//0x1B
	if( w_mpu_write_byte(_MPU_GYRO_CONFIG_REG, gyro_fsr<<3) == mpu_ok)
		return mpu_ok;					//���óɹ�
	else
		return mpu_err;					//����ʧ��

}

/* ------------------------------------------------ ���ü��ٶȼ������̷�Χ ------------------------------------------------------------ */
/**
  * @brief  mpu_read_raw_data()  		���ü��ٶȼ������̷�Χ.
  * @param  fsr       							�������̷�Χ��mpu_fsr_e��
  * @retval HAL status							mpu_ok/mpu_err
  */
mpu_state_t w_mpu_set_acce_fsr(mpu_fsr_t acce_fsr)
{
	//0x1C
	if( w_mpu_write_byte(_MPU_ACCE_CONFIG_REG, acce_fsr<<3) == mpu_ok)
		return mpu_ok;					//���óɹ�
	else
		return mpu_err;					//����ʧ��

}

/* ------------------------------------------------ mpuд��һ��Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_write_byte()  		IICдһ���ֽ�.
  * @param  reg_addr       				�Ĵ�����ַ.
  * @param  w_data    						��Ҫд�������.
  * @note   											������Ҫд�ļĴ�����ַ, ������������Ĵ���д���һ���ֽڵ�����.
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_write_byte(uint8_t reg_addr, uint8_t w_data)
{
	uint8_t w_data_byte = w_data;			//����Ҫд�������
	
	if( HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, _MPU_WRITE, reg_addr, I2C_MEMADD_SIZE_8BIT, &w_data_byte, 1, 0xfff) == HAL_OK)
		return mpu_ok;					//д��ɹ�
	else
		return mpu_err;					//д��ʧ��
	
}


/* ------------------------------------------------ mpu��ȡһ��Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_read_byte()  			IIC��ȡһ���ֽ�.
  * @param  reg_addr       				��ȡ�ļĴ�����ַ.
  * @note   											������Ҫ��ȡ�ļĴ�����ַ
  * @retval HAL status						r_data_byte/mpu_busy
  */
uint8_t w_mpu_read_byte(uint8_t reg_addr)
{
	static uint8_t r_data_byte = 0x00u;	//��Ŷ�ȡһ��Byte������
	if( HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, _MPU_READ, reg_addr, I2C_MEMADD_SIZE_8BIT, &r_data_byte, 1, 0xfff) == HAL_OK)
//	HAL_Delay(50);
		return r_data_byte;			//���ض�ȡ������
	else
////		return mpu_busy;				//iicæµ��0x02/0x2��
		return mpu_err;
	
}



/* ------------------------------------------------ mpu����д����Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_write_byte()  		IIC����д����Byte.
  * @param  reg_addr       				�Ĵ�����ַ.
  * @param  *w_data_buf    				��Ҫд������ݻ�����.
  * @param  len    								���ݻ������ĳ���.
  * @note   											������Ҫд�ļĴ�����ַ, ������������Ĵ���д��ĵ�һ������, ȷ�����ݳ���
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_write_byte_len(uint8_t reg_addr, uint8_t *w_data_buf, uint8_t len)
{
	
	if( HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, _MPU_WRITE, reg_addr, I2C_MEMADD_SIZE_8BIT, w_data_buf, len, 0xfff) == HAL_OK)
		return mpu_ok;					//д��ɹ�
	else
		return mpu_err;					//д��ʧ��
	
}


/* ------------------------------------------------ mpu������ȡ���Byte ------------------------------------------------------------ */
/**
  * @brief  mpu_read_byte()  			IIC������ȡ���Byte.
  * @param  reg_addr       				��ȡ�ļĴ�����ַ.
  * @param  *r_data_buf    				��Ҫ��ȡ�����ݻ�����.
  * @param  len    								���ݻ������ĳ���.
  * @note   											������Ҫ��ȡ�ļĴ�����ַ, �����Ƕ�ȡ�������ݷ����������buff��, ȷ���������ݵĳ���
  * @retval HAL status						mpu_ok/hal_error
  */
mpu_state_t w_mpu_read_byte_len(uint8_t reg_addr, uint8_t *r_data_buf, uint8_t len)
{
	
	if( HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, _MPU_READ, reg_addr, I2C_MEMADD_SIZE_8BIT, r_data_buf, len, 0xfff) == HAL_OK)
//		HAL_Delay(50);
		return mpu_ok;					//��ȡ���
	else
//		return mpu_busy;				//iicæµ
		return mpu_err;
	
}


/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE BEGIN ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE BEGIN ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE BEGIN ************************************************************************ */
	
//#define		HW_S_HW_MPU_ADDR			_MPU_READ			
/**
  * @brief  my_hal_delay()  			ms������ʱ, ΪDMP��delay_ms
  */
void my_hal_delay(unsigned long ms)
{
	HAL_Delay(ms);
}

/**
  * @brief  get_tick_ms_cnt()  			ms����ʱ���, ΪDMP��get_ms
  */
void f4_get_tick_ms_cnt(unsigned long *cnt)
{
	*cnt = HAL_GetTick();
}

/**
  * @brief  get_tick_ms_cnt1()  			ms����ʱ���,����Ϊ��, ʹ���в�������, ΪDMP��get_ms������
  */
void f4_get_tick_ms_cnt1(unsigned long *cnt)
{
	;
}

/**
  * @brief  dmp_i2c_write()  			IIC����д, ΪDMP��i2c��д
  */
uint8_t dmp_i2c_write(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *w_data)
{
	//��ʱʱ�俴ʵ�ʸ���, ���ⲻ��
	return HAL_I2C_Mem_Write(&MPU_I2C_HANDLE, slave_addr, reg_addr, I2C_MEMADD_SIZE_8BIT, w_data, len, 500);
}

/**
  * @brief  dmp_i2c_write()  			IIC������, ΪDMP��i2c�Ķ�
  */
uint8_t dmp_i2c_read(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *r_data)
{
	//��ʱʱ�俴ʵ�ʸ���, ���ⲻ��
	return HAL_I2C_Mem_Read(&MPU_I2C_HANDLE, slave_addr, reg_addr, I2C_MEMADD_SIZE_8BIT, r_data, len, 1000);
}


/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE END ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE END ************************************************************************ */
/* ***************************************** DMP (inv_mpu.c inv_mpu_dmp_motion_driver.c) ��Ҫ�õ� CODE END ************************************************************************ */
	


/* *********************************************************** ����DMP��Ӧ�� CODE BEGIN  ************************************************************************ */
/* *********************************************************** ����DMP��Ӧ�� CODE BEGIN  ************************************************************************ */



#define DEFAULT_MPU_HZ  (100)			//������ٶ�, 100Hz, 10ms
//#define DEFAULT_MPU_HZ  (200)			//������ٶ�, 200Hz, 20ms

	
//q30��ʽ,longתfloatʱ�ĳ���.
#define q30  1073741824.0f


uint8_t buffer[14];
int16_t  MPU6050_FIFO[6][11];

int16_t Gx_offset=0,Gy_offset=0,Gz_offset=0;


//�����Ƿ�������, ����λ��
static signed char gyro_orientation[9] = {1, 0, 0,
                                          0, 1, 0,
                                          0, 0, 1};

//����ת��
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


//�����Ƿ������
static  unsigned short inv_orientation_matrix_to_scalar(
    const signed char *mtx)
{
    unsigned short scalar;
    /*
			//��Ⱦ���
			{1, 0, 0,
			 0, 1, 0,
			 0, 0, 1};
			
     */
    scalar = inv_row_2_scale(mtx);
    scalar |= inv_row_2_scale(mtx + 3) << 3;
    scalar |= inv_row_2_scale(mtx + 6) << 6;


    return scalar;
}

//MPU6050�������Բ�
static void run_self_test(void)
{
    int result;
    long gyro[3], accel[3];

    result = mpu_run_self_test(gyro, accel);
    if (result == 0x03) {
			
				//����ͨ�������ǿ������������ǵ����ݣ�������������DMP
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


//DMP��ʼ��
int dmp_init(void)
{
	uint8_t temp[1]={0};
	dmp_i2c_read(HW_S_HW_MPU_ADDR,_MPU_DEVICE_ID,I2C_MEMADD_SIZE_8BIT,temp);
	//	 temp[0] = w_mpu_read_device_address();
	INFO("mpu_set_sensor complete ......\r\n");
	INFO("mpu���ô�������� ......\r\n");
	INFO("\r\n");
	INFO("Device_ID:    0x%x\r\n", temp[0]);
	INFO("�豸ID:       0x%x\r\n", temp[0]);
	INFO("\r\n");
	 
	//���ID, ����ϵͳ��λ
	if(temp[0]!=0x68)
		NVIC_SystemReset();
	int ret = mpu_init();
	if(!ret)
  {
		//�����ڲ��Ĵ�����Ĭ��, 
	  if(!mpu_set_sensors(INV_XYZ_GYRO | INV_XYZ_ACCEL))
	  	 INFO("mpu_set_sensor complete ......\r\n");
		else
				ERR("mpu_set_sensors error !!!!\r\n");
	  INFO("\r\n");
		
		//����FIFO
	  if(!mpu_configure_fifo(INV_XYZ_GYRO | INV_XYZ_ACCEL))
	  	 INFO("mpu_configure_fifo complete ......\r\n");
		else
				ERR("mpu_configure_fifo ERROR \r\n");
	  INFO("\r\n");
		
		//���ò���Ƶ�ʷ�Ƶ�Ĵ���
	  if(!mpu_set_sample_rate(DEFAULT_MPU_HZ))
	  	 INFO("mpu_set_sample_rate complete ......\r\n");
		else
				ERR("mpu_set_sample_rate error !!!!\r\n");
	  INFO("\r\n");
		
		//DMP���ض�����������̼����
	  if(!dmp_load_motion_driver_firmware())
	  	INFO("dmp_load_motion_driver_firmware complete ......\r\n");
		else
			ERR("dmp_load_motion_driver_firmware ERROR !!!!");
	  INFO("\r\n");
		
		//DMP���������Ƿ������
	  if(!dmp_set_orientation(inv_orientation_matrix_to_scalar(gyro_orientation)))
	  	 INFO("dmp_set_orientation complete ......\r\n");
		else 
				ERR("dmp_set_orientation ERROR!!!!\r\n");
	  INFO("\r\n");
		
		//DMPʹ��������
	  if(!dmp_enable_feature(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_TAP |
					DMP_FEATURE_ANDROID_ORIENT | DMP_FEATURE_SEND_RAW_ACCEL | DMP_FEATURE_SEND_CAL_GYRO |
					DMP_FEATURE_GYRO_CAL)){
	  	 INFO("dmp_enable_feature complete ......\r\n");
		}else
				ERR("dmp_enable_feature error !!!!\r\n");
		INFO("\r\n");
		//DMP�趨FIFO�������
	  if(!dmp_set_fifo_rate(DEFAULT_MPU_HZ))
		{
	  	 INFO("dmp_set_fifo_rate complete ......\r\n");
				INFO("\r\n");
		}else
			 ERR("dmp_set_fifo_rate error \r\n");
		
		//�Բ���������,����ͨ��. ���ǿ������������ǵ����ݣ�������������DMP
	  run_self_test();
		
		//mpu����DMP״̬���
	  if(!mpu_set_dmp_state(1))
	  	 INFO("mpu_set_dmp_state complete ......\r\n");
	  	 INFO("mpu����DMP״̬��� ......\r\n");
	  	 INFO("\r\n\r\n\r\n");
		
		my_hal_delay(200);		//�ȴ�
	  INFO(" ################### ...... ����MPU��̬�Ƕ� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... ����MPU��̬�Ƕ� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... ����MPU��̬�Ƕ� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO("\r\n\r\n\r\n");
		
		//�ȶ�ȡ��̬��һ��ʱ��, ���ȶ�
		for(uint16_t rd=0; rd<300; rd++)				//6s
		{
			//��ȡMPU����DMP����̬
			read_dmp(&mpu_pose_msg);
			DEBUG("Pitch: %f\t ", mpu_pose_msg.pitch);
			DEBUG("Roll:  %f\t ", mpu_pose_msg.roll);
			DEBUG("Yaw:   %f\t ", mpu_pose_msg.yaw);
			DEBUG("\r\n");
			my_hal_delay(20);
		}
		
		my_hal_delay(200);		//�ȴ�
	  INFO(" ################### ...... MPU�������, DMP������� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... MPU�������, DMP������� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO(" ################### ...... MPU�������, DMP������� ...... ################### \r\n");
		my_hal_delay(200);
	  INFO("\r\n\r\n\r\n");
		return 0;
  }else
		return ret;
}
/* ------------------------------------------------ ��ȡMPU����DMP����̬ ------------------------------------------------------------ */
/**
  * @brief  read_dmp()  			��ȡMPU����DMP����̬.
  * @param  *pose_msg       	������̬�ĵ�ַ
	* @note   									�ο�Ұ��ԭ�ӡ�ƽ��֮�ҵȿ�Դ����
  * @retval HAL status				0/1/2
  */
uint8_t read_dmp(pose_msg_t *pose_msg)
{
	
	uint8_t more;
	long quat[4];				//��Ԫ��
	int16_t gyro[3], accel[3], sensors;
	unsigned long sensor_timestamp;//������ʱ���
	
	float q0=1.0f,q1=0.0f,q2=0.0f,q3=0.0f;
	
	//��ȡFIFO�е�����
	if(dmp_read_fifo(gyro, accel, quat, &sensor_timestamp, &sensors, &more))
		return 1;
	
	if(sensors & INV_WXYZ_QUAT)
	{
		 q0=quat[0] / q30;
		 q1=quat[1] / q30;
		 q2=quat[2] / q30;
		 q3=quat[3] / q30;
		
		 pose_msg->pitch = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3f;																	//��Ԫ������, ������(Pitch)-->����X����ת
		 pose_msg->roll	 = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3f;	//��Ԫ������, ������(Roll)-->����Y����ת
		 pose_msg->yaw	 = atan2(2*(q1*q2 + q0*q3),q0*q0+q1*q1-q2*q2-q3*q3) * 57.3f;								//��Ԫ������, ƫ����(Yaw)-->����Z����ת
		
		 return 0;
	}
	else 
		return 2;

}


/* *********************************************************** ����DMP��Ӧ�� CODE END  ************************************************************************ */
/* *********************************************************** ����DMP��Ӧ�� CODE END  ************************************************************************ */


