#include "Communication_Serial.h"

extern int16_t mpu_data[10];
extern int16_t robot_odom[6];
extern int16_t encoder_delta[4];
extern int16_t encoder_delta_target[4];
extern UART_HandleTypeDef huart2;

static uint8_t uart2_rx_buf[60];  //���ջ��壬��������С�ڵ���32BYTE
static uint8_t uart2_tx_buf[60];  //���ͻ���

static uint8_t uart2_rx_con=0;    //���ռ�����
static uint8_t uart2_rx_checksum; //֡ͷ����У���
static uint8_t uart2_rx_buf[60];  //���ջ��壬��������С�ڵ���32Byte
static uint8_t uart2_tx_buf[60];  //���ͻ���

//�ⲿ����
extern int16_t motor_kp;
extern int16_t motor_ki;
extern int16_t motor_kd;

extern int16_t robot_target_speed[3];  // X Y Yaw
extern int16_t robot_params[2];

DEBUG_SET_LEVEL(DEBUG_LEVEL_ERR);
/*
*������JETSON����ͨ�ŵĴ���
*/
/**
  * @��  ��  �����˷������ݵ���ݮ��
  * @��  ��  ��
  * @����ֵ  ��
  */
void ROBOT_SendDataToJetson(void)
{
	    //���ڷ�������
			static uint8_t comdata[60]; 			
	
			//�����ǽ��ٶ� = (ax_gyro/32768) * 2000 ?s
			comdata[0] = (uint8_t)( mpu_data[0] >> 8 );  
			comdata[1] = (uint8_t)( mpu_data[0] );
			comdata[2] = (uint8_t)( mpu_data[1] >> 8 );
			comdata[3] = (uint8_t)( mpu_data[1] );
			comdata[4] = (uint8_t)( mpu_data[2] >> 8 );
			comdata[5] = (uint8_t)( mpu_data[2] );
			
			//���ٶ� = (ax_acc/32768) * 2G  
			comdata[6] = (uint8_t)( mpu_data[3] >> 8 );
			comdata[7] = (uint8_t)( mpu_data[3] );
			comdata[8] = (uint8_t)( mpu_data[4] >> 8 );
			comdata[9] = (uint8_t)( mpu_data[4] );
			comdata[10] = (uint8_t)( mpu_data[5] >> 8 );
			comdata[11] = (uint8_t)( mpu_data[5] );
			
			//��̬�Ƕ� = (ax_angle/100)
			comdata[12] = (uint8_t)( mpu_data[6] >> 8 ); 
			comdata[13] = (uint8_t)( mpu_data[6] );
			comdata[14] = (uint8_t)( mpu_data[7] >> 8 );
			comdata[15] = (uint8_t)( mpu_data[7] );
			comdata[16] = (uint8_t)( mpu_data[8] >> 8 );
			comdata[17] = (uint8_t)( mpu_data[8] );
			
			//��̼����� x(m) y(m) yaw(rad)  odom_frame
			comdata[18] = (uint8_t)( robot_odom[0] >> 8 );
			comdata[19] = (uint8_t)( robot_odom[0] );
			comdata[20] = (uint8_t)( robot_odom[1] >> 8 );
			comdata[21] = (uint8_t)( robot_odom[1] );
			comdata[22] = (uint8_t)( robot_odom[2] >> 8 );
			comdata[23] = (uint8_t)( robot_odom[2] );
			
			//��̼�����仯��  d_x(m) d_y(m) d_yaw(rad)  base_frame
			comdata[24] = (uint8_t)( robot_odom[3] >> 8 );
			comdata[25] = (uint8_t)( robot_odom[3] );
			comdata[26] = (uint8_t)( robot_odom[4] >> 8 );
			comdata[27] = (uint8_t)( robot_odom[4] );
			comdata[28] = (uint8_t)( robot_odom[5] >> 8 );
			comdata[29] = (uint8_t)( robot_odom[5] );
		
		  //��������ǰֵ��Ŀ��ֵ
			comdata[30] = (uint8_t)( encoder_delta[0] >> 8 );  
			comdata[31] = (uint8_t)( encoder_delta[0] );
			comdata[32] = (uint8_t)( encoder_delta[1] >> 8 );
			comdata[33] = (uint8_t)( encoder_delta[1] );
			comdata[34] = (uint8_t)( encoder_delta[2] >> 8 );
			comdata[35] = (uint8_t)( encoder_delta[2] );
			comdata[36] = (uint8_t)( encoder_delta[3] >> 8 );
			comdata[37] = (uint8_t)( encoder_delta[3] );
			
			comdata[38] = (uint8_t)( encoder_delta_target[0] >> 8 );  
			comdata[39] = (uint8_t)( encoder_delta_target[0] );
			comdata[40] = (uint8_t)( encoder_delta_target[1] >> 8 );
			comdata[41] = (uint8_t)( encoder_delta_target[1] );
			comdata[42] = (uint8_t)( encoder_delta_target[2] >> 8 );
			comdata[43] = (uint8_t)( encoder_delta_target[2] );
			comdata[44] = (uint8_t)( encoder_delta_target[3] >> 8 );
			comdata[45] = (uint8_t)( encoder_delta_target[3] );
			
			//������
//			comdata[46] = (uint8_t)( ax_bat_vol >> 8 );
//			comdata[47] = (uint8_t)( ax_bat_vol );
				
			//���ʹ�������
			UART_Jetson_SendPacket(comdata, 48, 0x06);
}

/**
  * @��  ��  �������ݣ�X-ProtocolЭ�飩
  * @��  ��  *pbuf����������ָ��
  *          len���������ݳ��ȸ�������27 (32-5)
  *          num��֡�ţ�֡����
  * @����ֵ	 ��
  */
void UART_Jetson_SendPacket(uint8_t *pbuf, uint8_t len, uint8_t num)
{
	uint8_t i,cnt;	
  uint8_t tx_checksum = 0;//����У���
	
	if(len <= 50)
	{
		/******��ȡ����******/
		uart2_tx_buf[0] = 0xAA;    //֡ͷ
		uart2_tx_buf[1] = 0x55;    //
		uart2_tx_buf[2] = len+5;  //����������ȼ���֡����
		uart2_tx_buf[3] = num;    //֡����
		
		for(i=0; i<len; i++)
		{
			uart2_tx_buf[4+i] = *(pbuf+i);
		}
		
		/******����У���******/	
		cnt = 4+len;
		for(i=0; i<cnt; i++)
		{
			tx_checksum = tx_checksum + uart2_tx_buf[i];
		}
		uart2_tx_buf[i] = tx_checksum;
		
		
		/******��������******/	
		cnt = 5+len;
		
		//��ѯ���䷽ʽ
//		for(i=0; i<cnt; i++)
//		{
////			USART_SendData(USART2, uart2_tx_buf[i]);
////			while(USART_GetFlagStatus(USART2,USART_FLAG_TC) != SET);
//		}
		HAL_UART_Transmit(&huart2, uart2_tx_buf, cnt, 0xFFFFF); 
	}
}

/****���ڽ��յĴ���****/

void USART2_Resolve_Data(uint8_t data)                	
{
	uint8_t Res;
	
	//printf("Get_Data =%c\r\n",data);
	if(1)  //�����ж�
	{
		  //printf("Get Data!\r\n");
			Res =data;	
		
			if(uart2_rx_con < 3)    //==����֡ͷ + ����
			{
				if(uart2_rx_con == 0)  //����֡ͷ1 0xAA
				{
					if(Res == 0xAA)
					{
						uart2_rx_buf[0] = Res;
						uart2_rx_con = 1;					
					}
					else
					{
						
					}
				}else if(uart2_rx_con == 1) //����֡ͷ2 0x55
				{
					if(Res == 0x55)
					{
						uart2_rx_buf[1] = Res;
						uart2_rx_con = 2;
					}
					else
					{
						uart2_rx_con = 0;						
					}				
				}
				else  //�������ݳ���
				{
					uart2_rx_buf[2] = Res;
					uart2_rx_con = 3;
					uart2_rx_checksum = (0xAA+0x55) + Res;	//����У���
				}
			}
			else    //==��������
			{
				if(uart2_rx_con < (uart2_rx_buf[2]-1) )
				{
					uart2_rx_buf[uart2_rx_con] = Res;
					uart2_rx_con++;
					uart2_rx_checksum = uart2_rx_checksum + Res;					
				}
				else    //�ж����1λ
				{
					//����У��
					if( Res == uart2_rx_checksum )  //У����ȷ
					{	
						//=====�˴��������ݽ���=========
						//�˶�����֡
						if(uart2_rx_buf[3] == 0x11)
						{
							robot_target_speed[0] = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
							robot_target_speed[1] = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
							robot_target_speed[2] = (int16_t)((uart2_rx_buf[8]<<8) | uart2_rx_buf[9]);
						  
							//�ٶ�����
							if(robot_target_speed[0] > ROBOT_LINEAR_SPEED_LIMIT)    robot_target_speed[0] = ROBOT_LINEAR_SPEED_LIMIT;
							if(robot_target_speed[0] < (-ROBOT_LINEAR_SPEED_LIMIT)) robot_target_speed[0] = (-ROBOT_LINEAR_SPEED_LIMIT);
							if(robot_target_speed[1] > ROBOT_LINEAR_SPEED_LIMIT)    robot_target_speed[1] = ROBOT_LINEAR_SPEED_LIMIT;
							if(robot_target_speed[1] < (-ROBOT_LINEAR_SPEED_LIMIT)) robot_target_speed[1] = (-ROBOT_LINEAR_SPEED_LIMIT);
							if(robot_target_speed[2] > ROBOT_ANGULAR_SPEED_LIMIT)    robot_target_speed[2] = ROBOT_ANGULAR_SPEED_LIMIT;
							if(robot_target_speed[2] < (-ROBOT_ANGULAR_SPEED_LIMIT)) robot_target_speed[2] = (-ROBOT_ANGULAR_SPEED_LIMIT);
							DEBUG("Receive ROS Speed(x,y,yaw)=%d,%d,%d\r\n",robot_target_speed[0],robot_target_speed[1],robot_target_speed[2]);
						}
						else
						{
							//PID����֡
							if(uart2_rx_buf[3] == 0x12)
							{
								motor_kp = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
								motor_ki = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
								motor_kd = (int16_t)((uart2_rx_buf[8]<<8) | uart2_rx_buf[9]);
								ERR("Receive ROS PID(P,I,D)=%d,%d,%d\r\n",motor_kp,motor_ki,motor_kd);
							}
							
							//�����˲���
							if(uart2_rx_buf[3] == 0x13)
							{
								robot_params[0] = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
								robot_params[1] = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
								
								Kinematics_Init(robot_params);
								
								ERR("robot_params(%d,%d)\r\n",robot_params[0],robot_params[1]);
							}
							
						}
						
						//������ɣ��ָ���ʼ״̬
						uart2_rx_con = 0;					
					}	
					
				}
			}
			
	} 
}
