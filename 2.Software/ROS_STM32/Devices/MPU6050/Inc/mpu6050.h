/******************************************************************************
	* @Attention			: WangJing
	* @DateCreated		: 2020.11.28
	* @board					: RM������C��
	* @consult				: �ο� MPU6000 & MPU6050����оƬ�ֲ�, ����, ԭ��, csdn���͵ȿ�Դ����
*****************************************************************************/
#ifndef		_MPU6050_H
#define		_MPU6050_H
#include "main.h"
#include "i2c.h"
//#include "usart.h"

//����DMP��ͷ�ļ���
#include "inv_mpu.h"
#include "inv_mpu_dmp_motion_driver.h"

#include "stm32f1xx.h"


#define		MPU_I2C_HANDLE					hi2c1							//mpu6050   I2C���
#define		MPU_I2C_GPIO_INIT				MX_I2C2_Init()		//mpu6050   I2C��gpio�˿�����


/* ------------------------------ ѡ��mpu6050��ADO���Žӷ�, �Ӷ�ȷ��IIC��ַ -------------------------------------------- */
#define		MPU6050_ADO_JOIN_GND
//#define		MPU6050_ADO_JOIN_VCC


/* ------------------------------ ����mpu6050��ADO���Žӷ�, �Ӷ�ȷ�����豸��ַ ----------------------------------------- */
/* ADO���Ž�GND */
#if	defined	MPU6050_ADO_JOIN_GND

	//AD0��GND,IIC��ַΪ0X68
	#define		_MPU_ADDRESS									0x68			//mpu6050_i2c��ַ,  W: 0x68<<1 -->> 0xD0, R: 0x68<<1 + 1 -->> 0xD1

	//AD0��GND
	#define		_MPU_WRITE										0xD0			//mpu6050��ַ, I2C�豸7λ��ֵַ,HAL����8λ���ֽ�д�룬���������ݱ��б����ڵ��ýӿ�ǰ����һλ (( 0xD0>>1 )=0x68)
	#define		_MPU_READ											0xD1
	
#endif

/* ADO���Ž�VCC */
#if	defined	MPU6050_ADO_JOIN_VCC

	//AD0��VCC,IIC��ַΪ0X69
	#define		_MPU_ADDRESS									0x69			//mpu6050_i2c��ַ,  W: 0x69<<1 -->> 0xD2, R: 0x69<<1 + 1 -->> 0xD3

	//AD0��VCC
	#define		_MPU_WRITE										0xD2			//mpu6050��ַ, I2C�豸7λ��ֵַ,HAL����8λ���ֽ�д�룬���������ݱ��б����ڵ��ýӿ�ǰ����һλ (( 0xD2>>1 )=0x69)
	#define		_MPU_READ											0xD3			
	
#endif

/* ------------------------------------------------------ MPU6050�����Ĵ������� --------------------------------------------------------------- */

/* mpu6050����������״̬ */
typedef enum 
{
		mpu_ok				= 0x00U,		//�ɹ�
		mpu_err				= 0x01U,		//����
		mpu_busy			= 0x02U,		//æµ
		mpu_id_err		= 0x03U,		//ID����
		mpu_timeout		= 0x04U,		//��ʱ
		mpu_init_err	= 0x05U			//��ʼ������
	
}mpu_state_t;

/* mpu6050��������Դ����1 */
typedef enum 
{
		//��Դ����1�Ĵ�������
		mpu_pwr_mgmt_1_rouse				= 0x00,				//����
		mpu_pwr_mgmt_1_reset				= 0x80,				//Bit7��λ�� 1, �����ڲ��Ĵ�����Ĭ��
		mpu_pwr_mgmt_1_sleep				= 0x40,				//Bit6��λ�� 1, MPU-60X0 ����˯��ģʽ
		mpu_pwr_mgmt_1_cycle				= 0x20,				//Bit5��λ�� 1, �ҵ�ʧ�� SLEEP, MPU-60X0 ����ѭ��ģʽ�� ��ѭ��ģʽ�� �豸��˯��ģʽ�ͻ���ģʽ��ѭ���� ���� LP_WAKE_CTRL���Ĵ��� 108->��Դ����2���趨�����ʴӼ��ٶȼƲɼ���Ʒ����
		mpu_pwr_mgmt_1_temp_disble	= 0x10,				//Bit3��λ�� 1, ʧ���¶ȴ�����
		
	  //Bit[2:0]
//		mpu_pwr_mgmt_1_clksel_osc		= 0x000,			//�豸��ϵͳʱ�� �� �ڲ�8 MHZ����(����)
		mpu_pwr_mgmt_1_clksel_x			= 0x01,			//�豸��ϵͳʱ�� �� X�������ǲο���
		mpu_pwr_mgmt_1_clksel_y			= 0x02,			//�豸��ϵͳʱ�� �� Y�������ǲο���
		mpu_pwr_mgmt_1_clksel_z			= 0x03,			//�豸��ϵͳʱ�� �� Z�������ǲο���
		mpu_pwr_mgmt_1_clksel_32		= 0x04,			//PLL �� �ⲿ32.768kHz�ο�
		mpu_pwr_mgmt_1_clksel_19		= 0x05,			//PLL �� �ⲿ19.2MHz�ο�
		mpu_pwr_mgmt_1_clksel_reserved = 0x06,		//����
		mpu_pwr_mgmt_1_clksel_stop	= 0x07	
/*
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
*/
//		//��Դ����1�Ĵ�������
//		mpu_pwr_mgmt_1_rouse				= 0x00,				//����
//		mpu_pwr_mgmt_1_reset				= 0x80,				//Bit7��λ�� 1, �����ڲ��Ĵ�����Ĭ��
//		mpu_pwr_mgmt_1_sleep				= 0x40,				//Bit6��λ�� 1, MPU-60X0 ����˯��ģʽ
//		mpu_pwr_mgmt_1_cycle				= 0x20,				//Bit5��λ�� 1, �ҵ�ʧ�� SLEEP, MPU-60X0 ����ѭ��ģʽ�� ��ѭ��ģʽ�� �豸��˯��ģʽ�ͻ���ģʽ��ѭ���� ���� LP_WAKE_CTRL���Ĵ��� 108->��Դ����2���趨�����ʴӼ��ٶȼƲɼ���Ʒ����
//		mpu_pwr_mgmt_1_temp_disble	= 0x20,				//Bit3��λ�� 1, ʧ���¶ȴ�����
//		
//	  //Bit[2:0]
////		mpu_pwr_mgmt_1_clksel_osc = 0x000,		//�豸��ϵͳʱ�� �� �ڲ�8 MHZ����
//		mpu_pwr_mgmt_1e_clksel_x  = 0x001,		//�豸��ϵͳʱ�� �� X�������ǲο���
//		mpu_pwr_mgmt_1_clksel_y,							//�豸��ϵͳʱ�� �� Y�������ǲο���
//		mpu_pwr_mgmt_1_clksel_z,							//�豸��ϵͳʱ�� �� Z�������ǲο���
//		mpu_pwr_mgmt_1_clksel_32,							//PLL �� �ⲿ32.768kHz�ο�
//		mpu_pwr_mgmt_1_clksel_19,							//PLL �� �ⲿ19.2MHz�ο�
//		mpu_pwr_mgmt_1_clksel_reserved,				//����
//		mpu_pwr_mgmt_1_clksel_stop						//ֹͣʱ�Ӻͱ��ֶ�ʱ������������
	
}mpu_pwr_mgmt_1_t;


/* mpu6050�����������̷�Χ */
typedef enum 
{
	
		// 0x1B, ���ٶȼơ������������̷�Χ����
		mpu_gyro_fsr_250s			= 0x00u,		//FSR: ��250��/s,  LSB: 131  LSB/��/s
		mpu_gyro_fsr_500s			= 0x01u,		//FSR: ��500��/s,  LSB: 65.5 LSB/��/s
		mpu_gyro_fsr_1000s		= 0x02u,		//FSR: ��1000��/s, LSB: 32.8 LSB/��/s
		mpu_gyro_fsr_2000s		= 0x03u,		//FSR: ��2000��/s, LSB: 16.4 LSB/��/s
	
		// 0x1C, ���ٶȼ������̷�Χ
		mpu_acce_fsr_2g				= 0x00u,		//FSR: ��2g,  LSB: 16384 LSB/g
		mpu_acce_fsr_4g				= 0x01u,		//FSR: ��4g,  LSB: 8192  LSB/g
		mpu_acce_fsr_8g				= 0x02u,		//FSR: ��8g,  LSB: 4086  LSB/g
		mpu_acce_fsr_16g			= 0x03u		//FSR: ��16g, LSB: 2048  LSB/g


/*
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
		//���Ĵ�����ַ�Ⱥ�˳��, �����޸�, �����޸�, �����޸�
*/
//		//���ٶȼơ������������̷�Χ����
//		mpu_gyro_fsr_250s			= 0x00u,		//FSR: ��250��/s,  LSB: 131  LSB/��/s
//		mpu_gyro_fsr_500s,		//FSR: ��500��/s,  LSB: 65.5 LSB/��/s
//		mpu_gyro_fsr_1000s,		//FSR: ��1000��/s, LSB: 32.8 LSB/��/s
//		mpu_gyro_fsr_2000s,		//FSR: ��2000��/s, LSB: 16.4 LSB/��/s
//	
//		//���ٶȼ������̷�Χ
//		mpu_acce_fsr_2g,			//FSR: ��2g,  LSB: 16384 LSB/g
//		mpu_acce_fsr_4g,			//FSR: ��4g,  LSB: 8192  LSB/g
//		mpu_acce_fsr_8g,			//FSR: ��8g,  LSB: 4086  LSB/g
//		mpu_acce_fsr_16g			//FSR: ��16g, LSB: 2048  LSB/g
	
}mpu_fsr_t;

/* mpu6050�������������� */
typedef struct
{
		//ԭʼ��������
		int16_t mpu_acce[3];				//���ٶ�		0x3B
		int16_t mpu_gyro[3];				//������		0x43
		float	mpu_temperature;			//�¶�			0x41
	
}mpu_msg_t;


/* mpu������̬���� */
typedef struct
{
		//mpuŷ����
		float pitch;				//������ --> (�� 'X��' ��ת)
		float roll;					//������ --> (�� 'Y��' ��ת)
		float	yaw;					//ƫ���� --> (�� 'Z��' ��ת)
	
}pose_msg_t;


/* ------------------------------------------------ ��MPU60x0�����ֲ� ------------------------------------------------ */

/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */
/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */
/* ע�⣺MPU6000 & MPU6050�豸��'�ϵ�ʱ'�����'˯��ģʽ' */

/* �Լ�Ĵ��� */
#define		_MPU_SELF_TEST_X_REG						0x0D			//�Լ�Ĵ���X
#define		_MPU_SELF_TEST_Y_REG						0x0E			//�Լ�Ĵ���Y
#define		_MPU_SELF_TEST_Z_REG						0x0F			//�Լ�Ĵ���Z
#define		_MPU_SELF_TEST_A_REG						0x10			//�Լ�Ĵ���A

/* ����Ƶ�ʷ�Ƶ�Ĵ��� */
#define		_MPU_SAMPLE_RATE_DIVIDER_REG		0x19			//����Ƶ�ʷ�Ƶ�Ĵ���
/* ���üĴ��� */
#define		_MPU_CONFIG_REG									0x1A			//���üĴ���
#define		_MPU_GYRO_CONFIG_REG						0x1B			//���������üĴ������Լ�������̷�Χ��
#define		_MPU_ACCE_CONFIG_REG						0x1C			//���ٶȼ����üĴ������Լ�������̷�Χ��

/* mpu6050�жϼĴ��� */
#define 	_MPU_INT_BP_CFG_REG						0X37			//INT����/��·��Чʹ�����üĴ���
#define 	_MPU_INT_ENABLE_REG							0X38			//�ж�ʹ�ܼĴ���
#define 	_MPU_INT_STATE_REG							0X3A			//�ж�״̬�Ĵ���

/* ������ԭʼ���� */
#define 	_MPU_RAW_DATA_REG 							0x3B			//���������������һλ�Ĵ���
/* mpu6050���ٶ�ֵ */
#define 	_MPU_ACCE_XOUT_H_REG						0x3B			//���ٶ�ֵ, X���8λ�Ĵ���
#define 	_MPU_ACCE_XOUT_L_REG						0x3C			//���ٶ�ֵ, X���8λ�Ĵ���
#define 	_MPU_ACCE_YOUT_H_REG						0x3D			//���ٶ�ֵ, Y���8λ�Ĵ���
#define 	_MPU_ACCE_YOUT_L_REG						0x3E			//���ٶ�ֵ, Y���8λ�Ĵ���
#define 	_MPU_ACCE_ZOUT_H_REG						0x3F			//���ٶ�ֵ, Z���8λ�Ĵ���
#define 	_MPU_ACCE_ZOUT_L_REG						0x40			//���ٶ�ֵ, Z���8λ�Ĵ���

/* mpu6050�¶�ֵ */
#define		_MPU_TEMP_OUT_H_REG							0x41			//�¶�ֵ, ��8λ�Ĵ���
#define		_MPU_TEMP_OUT_L_REG							0x42			//�¶�ֵ, ��8λ�Ĵ���

/* mpu6050������ֵ */
#define		_MPU_GYRO_XOUT_H_REG						0x43			//������ֵ, X���8λ�Ĵ���
#define		_MPU_GYRO_XOUT_L_REG						0x44			//������ֵ, X���8λ�Ĵ���
#define		_MPU_GYRO_YOUT_H_REG						0x45			//������ֵ, Y���8λ�Ĵ���
#define		_MPU_GYRO_YOUT_L_REG						0x46			//������ֵ, Y���8λ�Ĵ���
#define		_MPU_GYRO_ZOUT_H_REG						0x47			//������ֵ, Z���8λ�Ĵ���
#define		_MPU_GYRO_ZOUT_L_REG						0x48			//������ֵ, Z���8λ�Ĵ���

#define		_MPU_USER_CTRL									0x6A			//�û�����
#define		_MPU_PWR_MGMT_1									0x6B			//��Դ����1
#define		_MPU_PWR_MGMT_2									0x6C			//��Դ����2


/* "WHO AM I" */
#define		_MPU_DEVICE_ID									0x75			//�豸ID, "WHO AM I"�Ĵ���


/* ----------------------- Extern Variables ------------------------------------------------------ */

//mpuԭʼ����
extern mpu_msg_t	mpu_raw_msg;

//mpu��̬����
extern pose_msg_t mpu_pose_msg;


/* ----------------------- Extern Function ------------------------------------------------------ */


//��ʼ��mpu6050
extern mpu_state_t w_mpu_init(void);

//��ȡMPU���豸ID
extern uint8_t w_mpu_read_device_address(void);

//���ò���Ƶ�ʷ�Ƶ�Ĵ���
extern mpu_state_t w_mpu_set_sample_rate(uint16_t rate);

//�������ֵ�ͨ�˲���
extern mpu_state_t w_mpu_set_dlpf(uint16_t lpf);

//��ȡMPU�¶�
extern float w_mpu_read_temperature(void);

//��ȡMPU����ԭʼ����
extern mpu_state_t w_mpu_read_all_raw_data(mpu_msg_t * mpu_raw_msg_buff);

//���������������̷�Χ
extern mpu_state_t w_mpu_set_gyro_fsr(mpu_fsr_t gyro_fsr);

//���ü��ٶȼ������̷�Χ
extern mpu_state_t w_mpu_set_acce_fsr(mpu_fsr_t acce_fsr);

//IICдһ���ֽ�
extern mpu_state_t w_mpu_write_byte(uint8_t reg_addr, uint8_t w_data);

//IIC��ȡһ���ֽ�
extern uint8_t w_mpu_read_byte(uint8_t reg_addr);

//IIC����д����Byte
extern mpu_state_t w_mpu_write_byte_len(uint8_t reg_addr, uint8_t *w_data_buf, uint8_t len);

//IIC������ȡ���Byte
extern mpu_state_t w_mpu_read_byte_len(uint8_t reg_addr, uint8_t *r_data_buf, uint8_t len);




/* *********************************************************** ��������DMP��Ҫ�õ��� ************************************************************************ */
/* *********************************************************** ��������DMP��Ҫ�õ��� ************************************************************************ */
/* *********************************************************** ��������DMP��Ҫ�õ��� ************************************************************************ */



/* ע�⣺DMP��� inv_mpu.cԴ�ļ���'500��'���ҵ� 'addr��Աֵ��Ϊ_MPU_READ', ��' ��Ӧ������ļ������оƬ�ͺ�' */
/* ע�⣺DMP��� inv_mpu.cԴ�ļ���'500��'���ҵ� 'addr��Աֵ��Ϊ_MPU_READ', ��' ��Ӧ������ļ������оƬ�ͺ�' */
/* ע�⣺DMP��� inv_mpu.cԴ�ļ���'500��'���ҵ� 'addr��Աֵ��Ϊ_MPU_READ', ��' ��Ӧ������ļ������оƬ�ͺ�' */

#define		HW_S_HW_MPU_ADDR			_MPU_READ						

//DMP��ʼ��
extern int dmp_init(void);

//��ȡ������̬
extern uint8_t read_dmp(pose_msg_t *mpu_pose_msg);

//ms������ʱ
extern void my_hal_delay(unsigned long ms);

//ms����ʱ���
extern void f4_get_tick_ms_cnt(unsigned long *cnt);
//ms����ʱ���(��)
extern void f4_get_tick_ms_cnt1(unsigned long *cnt);

//IIC����д
extern uint8_t dmp_i2c_write(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *w_data);
//IIC������
extern uint8_t dmp_i2c_read(unsigned char slave_addr, unsigned char reg_addr, unsigned char len, unsigned char *r_data);







#endif		/* _MPU6050_H */




