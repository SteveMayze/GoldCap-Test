#include <atmel_start.h>
#include <util/delay.h>
#include "examples/include/usart_basic_example.h"

int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	/* Replace with your application code */
	PORTA_DIRSET = 0b11111100;
	PORTA_OUT = 0b00000000;

	PORTB_DIRSET = 0b00000010;
	PORTB_OUTCLR = 0b00001110;


	while (1) {
		USART0_test_usart_basic();

		_delay_ms(1000);

		heartbeat_toggle_level();


	}
}
