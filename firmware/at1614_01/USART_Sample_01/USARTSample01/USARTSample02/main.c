#include <atmel_start.h>
#include <util/delay.h>
#include "usart_basic_example.h"
#include <stdio.h>
#include <adc_basic.h>

volatile adc_result_t ADC_1_measurement;

int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	/* Replace with your application code */
	PORTA_DIRSET = 0b11111100;
	PORTA_OUT = 0b00000000;

	PORTB_DIRSET = 0b00000010;
	PORTB_OUTCLR = 0b00001110;

	char serialStr[21];

	// Buffer the Serial Number into a string for usage later,
	sprintf(
	serialStr, "%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
	SIGROW_SERNUM0, SIGROW_SERNUM1, SIGROW_SERNUM2, SIGROW_SERNUM3,
	SIGROW_SERNUM4, SIGROW_SERNUM5, SIGROW_SERNUM6, SIGROW_SERNUM7,
	SIGROW_SERNUM8, SIGROW_SERNUM9
	);

	int8_t sigrow_offset = SIGROW_TEMPSENSE1;
	uint8_t sigrow_gain = SIGROW_TEMPSENSE0;
	
	while (1) {
		// USART0_test_usart_basic();


		printf("Serial %s\n", serialStr);

		// Get conversion from specified ADC channel
		ADC_1_measurement = ADC_1_get_conversion(ADC_MUXPOS_TEMPSENSE_gc);
		uint32_t temp = ADC_1_measurement - sigrow_offset;
		temp *= sigrow_gain;
		temp += 0x80;
		temp >>= 8;
		uint16_t temp_k = temp;
		printf("TEMP: %d\n", temp_k);
		heartbeat_toggle_level();
		_delay_ms(10000);

	}
}
