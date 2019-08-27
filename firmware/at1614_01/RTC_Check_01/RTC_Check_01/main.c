#include <atmel_start.h>
#include <stdio.h>
#include <adc_window.h>
#include "main.h"
#include <slpctrl.h>

volatile uint8_t sendflag = 0;
volatile uint8_t adc_result = 0;

volatile adc_result_t ADC_0_measurement;
volatile uint8_t      ADC_0_measurement_normalized;



void adc_handler_cb(void)
{
 	ADC_0_measurement            = ADC_0_get_conversion_result();
 	// adc_result = ADC_0_measurement >> (ADC_0_get_resolution() - 8);
	adc_result = ADC0.RESL;
	sendflag = 1;

}

void adc_get_result(void){
}


void send_message(uint8_t value){
	// printf("POT Value: %02x, %d\r\n", value, value);
	// printf("%d\r\n", value);
	// Sending raw data (not ASCII) to be used by the Data Visualizer
	 USART_0_write(value);
}


int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	// From Basic ADC 
	// ADC_0_register_callback(adc_handler_cb);

	ADC_0_register_window_callback(adc_handler_cb);

	/* Replace with your application code */
	PORTA_DIRSET = 0b11111100;
	PORTA_OUT = 0b00000000;

	PORTB_DIRSET = 0b00000010;
	PORTB_OUTCLR = 0b00001110;

	while (1) {
		if ( sendflag )
		{
			send_message(adc_result);
			sendflag = 0;
			HEARTBEAT_toggle_level();
		} 
		SLPCTRL_init();
	}
}
