#include <atmel_start.h>
#include <util/delay.h>
#include "examples/include/usart_basic_example.h"
#include <stdio.h>
#include "adc_window_example.h"


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



	while (1) {
		// USART0_test_usart_basic();

		printf("Serial %s\n", serialStr);
		_delay_ms(20);

// 		ADC_0_test_adc_window();		
// 		printf("ADC: %d\n", ADC_0_measurement_normalized);

		heartbeat_toggle_level();
		_delay_ms(10000);

	}
}
