#include <atmel_start.h>
#include "examples/include/usart_basic_example.h"
#include <util/delay.h>
#include <utils/atomic.h>
#include <stdio.h>


void write_to_alt(char* msg){
	_delay_ms(100);
	USART_1_pins_enable();
	_delay_ms(100);
	printf("%s", msg);
	_delay_ms(100);
	USART_0_pins_enable();
	_delay_ms(100);
}

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

	/* Replace with your application code */
// 	DISABLE_INTERRUPTS();
// 	USART_0_disable();
	USART_1_initialization();
// 	USART_0_enable();
// 	ENABLE_INTERRUPTS();

	_delay_ms(1000);
	USART_0_pins_enable();
	while (1) {
	
		// USART_0_pins_enable();
		USART_0_test_usart_basic();
		_delay_ms(1000);

		// USART_1_pins_enable();
		write_to_alt("another message \n");
		_delay_ms(1000);
	}
}
