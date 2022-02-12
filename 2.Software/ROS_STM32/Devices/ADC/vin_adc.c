#include "vin_adc.h"
DEBUG_SET_LEVEL(DEBUG_LEVEL_DEBUG);

__IO uint16_t uhADCxConvertedValue = 0;
extern ADC_HandleTypeDef hadc2;
void start_adc(void)
{
	//HAL_ADC_Start_DMA(&hadc2, (uint32_t*)&uhADCxConvertedValue, 1);
}
uint16_t VIN_GetVol(void)
{
	uint16_t Vin_Vol,temp;

	HAL_ADC_Start(&hadc2);
	HAL_ADC_PollForConversion(&hadc2, 200); 
	
  if(HAL_IS_BIT_SET(HAL_ADC_GetState(&hadc2), HAL_ADC_STATE_REG_EOC))
  {
      temp=HAL_ADC_GetValue(&hadc2);
			Vin_Vol = (uint16_t)((3630 * temp)/4095); 	
			DEBUG("HAL_ADC_GetValue = 0x%x ,Vin_Vol=%d\r\n",temp,Vin_Vol);
  }  
	return Vin_Vol;
}
