#include "Communication_Serial.h"

extern int16_t mpu_data[10];
extern int16_t robot_odom[6];
extern int16_t encoder_delta[4];
extern int16_t encoder_delta_target[4];
extern UART_HandleTypeDef huart2;

static uint8_t uart2_rx_buf[60];  //接收缓冲，缓冲内容小于等于32BYTE
static uint8_t uart2_tx_buf[60];  //发送缓冲

static uint8_t uart2_rx_con=0;    //接收计数器
static uint8_t uart2_rx_checksum; //帧头部分校验和
static uint8_t uart2_rx_buf[60];  //接收缓冲，数据内容小于等于32Byte
static uint8_t uart2_tx_buf[60];  //发送缓冲

//外部变量
extern int16_t motor_kp;
extern int16_t motor_ki;
extern int16_t motor_kd;

extern int16_t robot_target_speed[3];  // X Y Yaw
extern int16_t robot_params[2];

DEBUG_SET_LEVEL(DEBUG_LEVEL_ERR);
/*
*用于与JETSON进行通信的串口
*/
/**
  * @简  述  机器人发送数据到树莓派
  * @参  数  无
  * @返回值  无
  */
void ROBOT_SendDataToJetson(void)
{
	    //串口发送数据
			static uint8_t comdata[60]; 			
	
			//陀螺仪角速度 = (ax_gyro/32768) * 2000 ?s
			comdata[0] = (uint8_t)( mpu_data[0] >> 8 );  
			comdata[1] = (uint8_t)( mpu_data[0] );
			comdata[2] = (uint8_t)( mpu_data[1] >> 8 );
			comdata[3] = (uint8_t)( mpu_data[1] );
			comdata[4] = (uint8_t)( mpu_data[2] >> 8 );
			comdata[5] = (uint8_t)( mpu_data[2] );
			
			//加速度 = (ax_acc/32768) * 2G  
			comdata[6] = (uint8_t)( mpu_data[3] >> 8 );
			comdata[7] = (uint8_t)( mpu_data[3] );
			comdata[8] = (uint8_t)( mpu_data[4] >> 8 );
			comdata[9] = (uint8_t)( mpu_data[4] );
			comdata[10] = (uint8_t)( mpu_data[5] >> 8 );
			comdata[11] = (uint8_t)( mpu_data[5] );
			
			//姿态角度 = (ax_angle/100)
			comdata[12] = (uint8_t)( mpu_data[6] >> 8 ); 
			comdata[13] = (uint8_t)( mpu_data[6] );
			comdata[14] = (uint8_t)( mpu_data[7] >> 8 );
			comdata[15] = (uint8_t)( mpu_data[7] );
			comdata[16] = (uint8_t)( mpu_data[8] >> 8 );
			comdata[17] = (uint8_t)( mpu_data[8] );
			
			//里程计坐标 x(m) y(m) yaw(rad)  odom_frame
			comdata[18] = (uint8_t)( robot_odom[0] >> 8 );
			comdata[19] = (uint8_t)( robot_odom[0] );
			comdata[20] = (uint8_t)( robot_odom[1] >> 8 );
			comdata[21] = (uint8_t)( robot_odom[1] );
			comdata[22] = (uint8_t)( robot_odom[2] >> 8 );
			comdata[23] = (uint8_t)( robot_odom[2] );
			
			//里程计坐标变化量  d_x(m) d_y(m) d_yaw(rad)  base_frame
			comdata[24] = (uint8_t)( robot_odom[3] >> 8 );
			comdata[25] = (uint8_t)( robot_odom[3] );
			comdata[26] = (uint8_t)( robot_odom[4] >> 8 );
			comdata[27] = (uint8_t)( robot_odom[4] );
			comdata[28] = (uint8_t)( robot_odom[5] >> 8 );
			comdata[29] = (uint8_t)( robot_odom[5] );
		
		  //编码器当前值和目标值
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
			
			//编码器
//			comdata[46] = (uint8_t)( ax_bat_vol >> 8 );
//			comdata[47] = (uint8_t)( ax_bat_vol );
				
			//发送串口数据
			UART_Jetson_SendPacket(comdata, 48, 0x06);
}

/**
  * @简  述  发送数据（X-Protocol协议）
  * @参  数  *pbuf：发送数据指针
  *          len：发送数据长度个数，≤27 (32-5)
  *          num：帧号，帧编码
  * @返回值	 无
  */
void UART_Jetson_SendPacket(uint8_t *pbuf, uint8_t len, uint8_t num)
{
	uint8_t i,cnt;	
  uint8_t tx_checksum = 0;//发送校验和
	
	if(len <= 50)
	{
		/******获取数据******/
		uart2_tx_buf[0] = 0xAA;    //帧头
		uart2_tx_buf[1] = 0x55;    //
		uart2_tx_buf[2] = len+5;  //根据输出长度计算帧长度
		uart2_tx_buf[3] = num;    //帧编码
		
		for(i=0; i<len; i++)
		{
			uart2_tx_buf[4+i] = *(pbuf+i);
		}
		
		/******计算校验和******/	
		cnt = 4+len;
		for(i=0; i<cnt; i++)
		{
			tx_checksum = tx_checksum + uart2_tx_buf[i];
		}
		uart2_tx_buf[i] = tx_checksum;
		
		
		/******发送数据******/	
		cnt = 5+len;
		
		//查询传输方式
//		for(i=0; i<cnt; i++)
//		{
////			USART_SendData(USART2, uart2_tx_buf[i]);
////			while(USART_GetFlagStatus(USART2,USART_FLAG_TC) != SET);
//		}
		HAL_UART_Transmit(&huart2, uart2_tx_buf, cnt, 0xFFFFF); 
	}
}

/****串口接收的处理****/

void USART2_Resolve_Data(uint8_t data)                	
{
	uint8_t Res;
	
	//printf("Get_Data =%c\r\n",data);
	if(1)  //接收中断
	{
		  //printf("Get Data!\r\n");
			Res =data;	
		
			if(uart2_rx_con < 3)    //==接收帧头 + 长度
			{
				if(uart2_rx_con == 0)  //接收帧头1 0xAA
				{
					if(Res == 0xAA)
					{
						uart2_rx_buf[0] = Res;
						uart2_rx_con = 1;					
					}
					else
					{
						
					}
				}else if(uart2_rx_con == 1) //接收帧头2 0x55
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
				else  //接收数据长度
				{
					uart2_rx_buf[2] = Res;
					uart2_rx_con = 3;
					uart2_rx_checksum = (0xAA+0x55) + Res;	//计算校验和
				}
			}
			else    //==接收数据
			{
				if(uart2_rx_con < (uart2_rx_buf[2]-1) )
				{
					uart2_rx_buf[uart2_rx_con] = Res;
					uart2_rx_con++;
					uart2_rx_checksum = uart2_rx_checksum + Res;					
				}
				else    //判断最后1位
				{
					//数据校验
					if( Res == uart2_rx_checksum )  //校验正确
					{	
						//=====此处进行数据解析=========
						//运动控制帧
						if(uart2_rx_buf[3] == 0x11)
						{
							robot_target_speed[0] = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
							robot_target_speed[1] = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
							robot_target_speed[2] = (int16_t)((uart2_rx_buf[8]<<8) | uart2_rx_buf[9]);
						  
							//速度限制
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
							//PID参数帧
							if(uart2_rx_buf[3] == 0x12)
							{
								motor_kp = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
								motor_ki = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
								motor_kd = (int16_t)((uart2_rx_buf[8]<<8) | uart2_rx_buf[9]);
								ERR("Receive ROS PID(P,I,D)=%d,%d,%d\r\n",motor_kp,motor_ki,motor_kd);
							}
							
							//机器人参数
							if(uart2_rx_buf[3] == 0x13)
							{
								robot_params[0] = (int16_t)((uart2_rx_buf[4]<<8) | uart2_rx_buf[5]);
								robot_params[1] = (int16_t)((uart2_rx_buf[6]<<8) | uart2_rx_buf[7]);
								
								Kinematics_Init(robot_params);
								
								ERR("robot_params(%d,%d)\r\n",robot_params[0],robot_params[1]);
							}
							
						}
						
						//接收完成，恢复初始状态
						uart2_rx_con = 0;					
					}	
					
				}
			}
			
	} 
}
