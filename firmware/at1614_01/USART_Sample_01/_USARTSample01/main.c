#include <atmel_start.h>
#include <util/delay.h>
#include "examples/include/usart_basic_example.h"

int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	/* Replace with your application code */
	while (1) {
		USART0_test_usart_basic();

		_delay_ms(10000);

		heartbeat_toggle_level();

		pwr

	}
}
