/**
  ******************************************************************************
  * @file    protocol.c
  * @version V1.0
  * @date    2020-xx-xx
  * @brief   Ұ��PID��������ͨѶЭ�����
  ******************************************************************************
  * @attention
  *
  * ʵ��ƽ̨:Ұ�� F407 ������ 
  * ��̳    :http://www.firebbs.cn
  * �Ա�    :https://fire-stm32.taobao.com
  *
  ******************************************************************************
  */ 

#include "protocol.h"
#include <string.h>
#include "debug.h"
DEBUG_SET_LEVEL(DEBUG_LEVEL_DEBUG);
//#include "./tim/bsp_basic_tim.h"
extern UART_HandleTypeDef huart3;
#define UartHandle huart3
extern int16_t encoder_delta_target[4];//Ŀ��仯ֵ

struct prot_frame_parser_t
{
    uint8_t *recv_ptr;
    uint16_t r_oft;
    uint16_t w_oft;
    uint16_t frame_len;
    uint16_t found_frame_head;
};

static struct prot_frame_parser_t parser;

static uint8_t recv_buf[PROT_FRAME_LEN_RECV];

/**
  * @brief ����У���
  * @param ptr����Ҫ���������
  * @param len����Ҫ����ĳ���
  * @retval У���
  */
uint8_t check_sum(uint8_t init, uint8_t *ptr, uint8_t len )
{
  uint8_t sum = init;
  
  while(len--)
  {
    sum += *ptr;
    ptr++;
  }
  
  return sum;
}

/**
 * @brief   �õ�֡���ͣ�֡���
 * @param   *frame:  ����֡
 * @param   head_oft: ֡ͷ��ƫ��λ��
 * @return  ֡����.
 */
static uint8_t get_frame_type(uint8_t *frame, uint16_t head_oft)
{
    return (frame[(head_oft + CMD_INDEX_VAL) % PROT_FRAME_LEN_RECV] & 0xFF);
}

/**
 * @brief   �õ�֡����
 * @param   *buf:  ���ݻ�����.
 * @param   head_oft: ֡ͷ��ƫ��λ��
 * @return  ֡����.
 */
static uint16_t get_frame_len(uint8_t *frame, uint16_t head_oft)
{
    return ((frame[(head_oft + LEN_INDEX_VAL + 0) % PROT_FRAME_LEN_RECV] <<  0) |
            (frame[(head_oft + LEN_INDEX_VAL + 1) % PROT_FRAME_LEN_RECV] <<  8) |
            (frame[(head_oft + LEN_INDEX_VAL + 2) % PROT_FRAME_LEN_RECV] << 16) |
            (frame[(head_oft + LEN_INDEX_VAL + 3) % PROT_FRAME_LEN_RECV] << 24));    // �ϳ�֡����
}

/**
 * @brief   ��ȡ crc-16 У��ֵ
 * @param   *frame:  ���ݻ�����.
 * @param   head_oft: ֡ͷ��ƫ��λ��
 * @param   head_oft: ֡��
 * @return  ֡����.
 */
static uint8_t get_frame_checksum(uint8_t *frame, uint16_t head_oft, uint16_t frame_len)
{
    return (frame[(head_oft + frame_len - 1) % PROT_FRAME_LEN_RECV]);
}

/**
 * @brief   ����֡ͷ
 * @param   *buf:  ���ݻ�����.
 * @param   ring_buf_len: ��������С
 * @param   start: ��ʼλ��
 * @param   len: ��Ҫ���ҵĳ���
 * @return  -1��û���ҵ�֡ͷ������ֵ��֡ͷ��λ��.
 */
static int32_t recvbuf_find_header(uint8_t *buf, uint16_t ring_buf_len, uint16_t start, uint16_t len)
{
    uint16_t i = 0;

    for (i = 0; i < (len - 3); i++)
    {
        if (((buf[(start + i + 0) % ring_buf_len] <<  0) |
             (buf[(start + i + 1) % ring_buf_len] <<  8) |
             (buf[(start + i + 2) % ring_buf_len] << 16) |
             (buf[(start + i + 3) % ring_buf_len] << 24)) == FRAME_HEADER)
        {
            return ((start + i) % ring_buf_len);
        }
    }
    return -1;
}

/**
 * @brief   ����Ϊ���������ݳ���
 * @param   *buf:  ���ݻ�����.
 * @param   ring_buf_len: ��������С
 * @param   start: ��ʼλ��
 * @param   end: ����λ��
 * @return  Ϊ���������ݳ���
 */
static int32_t recvbuf_get_len_to_parse(uint16_t frame_len, uint16_t ring_buf_len,uint16_t start, uint16_t end)
{
    uint16_t unparsed_data_len = 0;

    if (start <= end)
        unparsed_data_len = end - start;
    else
        unparsed_data_len = ring_buf_len - start + end;

    if (frame_len > unparsed_data_len)
        return 0;
    else
        return unparsed_data_len;
}

/**
 * @brief   ��������д�뻺����
 * @param   *buf:  ���ݻ�����.
 * @param   ring_buf_len: ��������С
 * @param   w_oft: дƫ��
 * @param   *data: ��Ҫд�������
 * @param   *data_len: ��Ҫд�����ݵĳ���
 * @return  void.
 */
static void recvbuf_put_data(uint8_t *buf, uint16_t ring_buf_len, uint16_t w_oft,
        uint8_t *data, uint16_t data_len)
{
    if ((w_oft + data_len) > ring_buf_len)               // ����������β
    {
        uint16_t data_len_part = ring_buf_len - w_oft;     // ������ʣ�೤��

        /* ���ݷ�����д�뻺����*/
        memcpy(buf + w_oft, data, data_len_part);                         // д�뻺����β
        memcpy(buf, data + data_len_part, data_len - data_len_part);      // д�뻺����ͷ
    }
    else
        memcpy(buf + w_oft, data, data_len);    // ����д�뻺����
}

/**
 * @brief   ��ѯ֡���ͣ����
 * @param   *data:  ֡����
 * @param   data_len: ֡���ݵĴ�С
 * @return  ֡���ͣ����.
 */
static uint8_t protocol_frame_parse(uint8_t *data, uint16_t *data_len)
{
    uint8_t frame_type = CMD_NONE;
    uint16_t need_to_parse_len = 0;
    int16_t header_oft = -1;
    uint8_t checksum = 0;
    
    need_to_parse_len = recvbuf_get_len_to_parse(parser.frame_len, PROT_FRAME_LEN_RECV, parser.r_oft, parser.w_oft);    // �õ�Ϊ���������ݳ���
    if (need_to_parse_len < 9)     // �϶�������ͬʱ�ҵ�֡ͷ��֡����
        return frame_type;

    /* ��δ�ҵ�֡ͷ����Ҫ���в���*/
    if (0 == parser.found_frame_head)
    {
        /* ͬ��ͷΪ���ֽڣ����ܴ���δ���������������һ���ֽڸպ�Ϊͬ��ͷ��һ���ֽڵ������
           ��˲���ͬ��ͷʱ�����һ���ֽڽ���������Ҳ���ᱻ����*/
        header_oft = recvbuf_find_header(parser.recv_ptr, PROT_FRAME_LEN_RECV, parser.r_oft, need_to_parse_len);
        if (0 <= header_oft)
        {
            /* ���ҵ�֡ͷ*/
            parser.found_frame_head = 1;
            parser.r_oft = header_oft;
          
            /* ȷ���Ƿ���Լ���֡��*/
            if (recvbuf_get_len_to_parse(parser.frame_len, PROT_FRAME_LEN_RECV,
                    parser.r_oft, parser.w_oft) < 9)
                return frame_type;
        }
        else 
        {
            /* δ��������������Ȼδ�ҵ�֡ͷ�������˴ν���������������*/
            parser.r_oft = ((parser.r_oft + need_to_parse_len - 3) % PROT_FRAME_LEN_RECV);
            return frame_type;
        }
    }
    
    /* ����֡������ȷ���Ƿ���Խ������ݽ���*/
    if (0 == parser.frame_len) 
    {
        parser.frame_len = get_frame_len(parser.recv_ptr, parser.r_oft);
        if(need_to_parse_len < parser.frame_len)
            return frame_type;
    }

    /* ֡ͷλ��ȷ�ϣ���δ���������ݳ���֡�������Լ���У���*/
    if ((parser.frame_len + parser.r_oft - PROT_FRAME_LEN_CHECKSUM) > PROT_FRAME_LEN_RECV)
    {
        /* ����֡����Ϊ�����֣�һ�����ڻ�����β��һ�����ڻ�����ͷ */
        checksum = check_sum(checksum, parser.recv_ptr + parser.r_oft, 
                PROT_FRAME_LEN_RECV - parser.r_oft);
        checksum = check_sum(checksum, parser.recv_ptr, parser.frame_len -
                PROT_FRAME_LEN_CHECKSUM + parser.r_oft - PROT_FRAME_LEN_RECV);
    }
    else 
    {
        /* ����֡����һ����ȡ��*/
        checksum = check_sum(checksum, parser.recv_ptr + parser.r_oft, parser.frame_len - PROT_FRAME_LEN_CHECKSUM);
    }

    if (checksum == get_frame_checksum(parser.recv_ptr, parser.r_oft, parser.frame_len))
    {
        /* У��ɹ���������֡���� */
        if ((parser.r_oft + parser.frame_len) > PROT_FRAME_LEN_RECV) 
        {
            /* ����֡����Ϊ�����֣�һ�����ڻ�����β��һ�����ڻ�����ͷ*/
            uint16_t data_len_part = PROT_FRAME_LEN_RECV - parser.r_oft;
            memcpy(data, parser.recv_ptr + parser.r_oft, data_len_part);
            memcpy(data + data_len_part, parser.recv_ptr, parser.frame_len - data_len_part);
        }
        else 
        {
            /* ����֡����һ����ȡ��*/
            memcpy(data, parser.recv_ptr + parser.r_oft, parser.frame_len);
        }
        *data_len = parser.frame_len;
        frame_type = get_frame_type(parser.recv_ptr, parser.r_oft);

        /* �����������е�����֡*/
        parser.r_oft = (parser.r_oft + parser.frame_len) % PROT_FRAME_LEN_RECV;
    }
    else
    {
        /* У�����˵��֮ǰ�ҵ���֡ͷֻ��żȻ���ֵķ�����*/
        parser.r_oft = (parser.r_oft + 1) % PROT_FRAME_LEN_RECV;
    }
    parser.frame_len = 0;
    parser.found_frame_head = 0;

    return frame_type;
}

/**
 * @brief   �������ݴ���
 * @param   *data:  Ҫ��������ݵ�����.
 * @param   data_len: ���ݵĴ�С
 * @return  void.
 */
void protocol_data_recv(uint8_t *data, uint16_t data_len)
{
    recvbuf_put_data(parser.recv_ptr, PROT_FRAME_LEN_RECV, parser.w_oft, data, data_len);    // ��������
    parser.w_oft = (parser.w_oft + data_len) % PROT_FRAME_LEN_RECV;                          // ����дƫ��
}

/**
 * @brief   ��ʼ������Э��
 * @param   void
 * @return  ��ʼ�����.
 */
int32_t protocol_init(void)
{
    memset(&parser, 0, sizeof(struct prot_frame_parser_t));
    
    /* ��ʼ���������ݽ��������������*/
    parser.recv_ptr = recv_buf;
  
    return 0;
}

/**
 * @brief   ���յ����ݴ���
 * @param   void
 * @return  -1��û���ҵ�һ����ȷ������.
 */
int8_t receiving_process(void)
{
  uint8_t frame_data[128];         // Ҫ�ܷ������֡
  uint16_t frame_len = 0;          // ֡����
  uint8_t cmd_type = CMD_NONE;     // ��������
  
  while(1)
  {
    cmd_type = protocol_frame_parse(frame_data, &frame_len);
    switch (cmd_type)
    {
      case CMD_NONE:
      {
        return -1;
      }

      case SET_P_I_D_CMD:
      {
        uint32_t temp0 = COMPOUND_32BIT(&frame_data[13]);
        uint32_t temp1 = COMPOUND_32BIT(&frame_data[17]);
        uint32_t temp2 = COMPOUND_32BIT(&frame_data[21]);
        
        float p_temp, i_temp, d_temp;
        
        p_temp = *(float *)&temp0;
        i_temp = *(float *)&temp1;
        d_temp = *(float *)&temp2;
				
        extern int16_t motor_kp;  //PID-P
				extern int16_t motor_ki;  //PID-I
				extern int16_t motor_kd;
				
				motor_kp = (int16_t)p_temp;
				motor_ki = (int16_t)i_temp;
				motor_kd = (int16_t)d_temp;
				INFO("p_temp = %d , i_temp =%d ,d_temp =%d\r\n",motor_kp,motor_ki,motor_kd);
				//INFO("p_temp = %f , i_temp =%f ,d_temp =%f\r\n",p_temp,i_temp,d_temp);
        /* ��������д�Լ��Ĵ����� */
      }
      break;

      case SET_TARGET_CMD:
      {
        int actual_temp = COMPOUND_32BIT(&frame_data[13]);    // �õ�����
        INFO("SET_TARGET_CMD=%d\r\n",actual_temp);
				encoder_delta_target[0] = actual_temp;
				encoder_delta_target[1] = actual_temp;
				encoder_delta_target[2] = actual_temp;
				encoder_delta_target[3] = actual_temp;
        /* ��������д�Լ��Ĵ����� */
      }
      break;
      
      case START_CMD:
      {
        /* ��������д�Լ��Ĵ����� */
        //extern uint8_t run_flag;
        //run_flag = 1;
      }
      break;
      
      case STOP_CMD:
      {
        /* ��������д�Լ��Ĵ����� */
        //extern uint8_t run_flag;
        //run_flag = 0;
      }
      break;
      
      case RESET_CMD:
      {
        /* ��������д�Լ��Ĵ����� */
        HAL_NVIC_SystemReset();          // ��λϵͳ
      }
      break;
      
      case SET_PERIOD_CMD:
      {
        uint32_t temp = COMPOUND_32BIT(&frame_data[13]);     // ������
        
        /* ��������д�Լ��Ĵ����� */
      }
      break;

      default: 
        return -1;
    }
  }
}

/**
  * @brief ������λ����ֵ
  * @param cmd������
  * @param ch: ����ͨ��
  * @param data������ָ��
  * @param num����������
  * @retval ��
  */
void set_computer_value(uint8_t cmd, uint8_t ch, void *data, uint8_t num)
{
  uint8_t sum = 0;    // У���
  num *= 4;           // һ������ 4 ���ֽ�
  
  static packet_head_t set_packet;
  
  set_packet.head = FRAME_HEADER;     // ��ͷ 0x59485A53
  set_packet.len  = 0x0B + num;      // ����
  set_packet.ch   = ch;              // ����ͨ��
  set_packet.cmd  = cmd;             // ��������
  
  sum = check_sum(0, (uint8_t *)&set_packet, sizeof(set_packet));       // �����ͷУ���
  sum = check_sum(sum, (uint8_t *)data, num);                           // �������У���
  
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&set_packet, sizeof(set_packet), 0xFFFFF);    // ��������ͷ
  HAL_UART_Transmit(&UartHandle, (uint8_t *)data, num, 0xFFFFF);                          // ���Ͳ���
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&sum, sizeof(sum), 0xFFFFF);                  // ����У���
}
/* ��������---------------------------------------------------------*/
const uint16_t Sine12bit[32] = {
	2048	, 2460	, 2856	, 3218	, 3532	, 3786	, 3969	, 4072	,
	4093	, 4031	, 3887	, 3668	, 3382	, 3042	,	2661	, 2255	, 
	1841	, 1435	, 1054	, 714		, 428		, 209		, 65		, 3			,
	24		, 127		, 310		, 564		, 878		, 1240	, 1636	, 2048

};
//��Ҫ������������λ����������
void running_examples(void)
{
  static uint16_t index = 0;
  static uint8_t flag = 0;
  int32_t temp = 0;
  uint8_t run_flag =1;
  if (run_flag == 1)
  {
    if (flag == 0 && index == 24)
    {
      flag = 1;
    }
    else if (flag == 1 && index == 24)
    {
      flag = 0;
    }
    
    temp = flag == 0 ? -Sine12bit[index++] : Sine12bit[index++];
    
    if (index >= 32)
    {
      index = 0;
    }
    
    set_computer_value(SEND_FACT_CMD, CURVES_CH1, &temp, 1);    //����λ����������
  }
}
extern int16_t encoder_delta[4];
/*����λ��ͬ����ǰ������ٶ�*/
void sync_computer_current_speed(void)
{	
#if 0
	int32_t current_speed[4];
	int32_t target_speed[4];
	for(int i=0;i<4;i++){
		current_speed[i] = encoder_delta[i];
		target_speed[i]  = encoder_delta_target[i];
	}
	//CH0
	set_computer_value(SEND_FACT_CMD, CURVES_CH1, &current_speed[0], 1);//�����ʵ��ֵ
	set_computer_value(SEND_TARGET_CMD, CURVES_CH1, &target_speed[0], 1);//�ٶȵ�Ŀ��ֵ
	//CH1
	set_computer_value(SEND_FACT_CMD, CURVES_CH2, &encoder_delta[1], 1);
	set_computer_value(SEND_TARGET_CMD, CURVES_CH2, &target_speed[1], 1);
	//CH2
	set_computer_value(SEND_FACT_CMD, CURVES_CH3, &encoder_delta[2], 1);
	set_computer_value(SEND_TARGET_CMD, CURVES_CH3, &target_speed[2], 1);
	//CH3
	set_computer_value(SEND_FACT_CMD, CURVES_CH4, &encoder_delta[3], 1);
	set_computer_value(SEND_TARGET_CMD, CURVES_CH4, &target_speed[3], 1);
#else
	int32_t current_speed = encoder_delta[0];
	int32_t target_speed = encoder_delta_target[0];
	set_computer_value(SEND_FACT_CMD, CURVES_CH1, &current_speed, 1);//�����ʵ��ֵ
	set_computer_value(SEND_TARGET_CMD, CURVES_CH1, &target_speed, 1);//�ٶȵ�Ŀ��ֵ
#endif
}
/**********************************************************************************************/
