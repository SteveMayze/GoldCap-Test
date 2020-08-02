#include <atmel_start.h>
#include <dac_basic.h>
#include <util/delay.h>

int main(void)
{
	/* Initializes MCU, drivers and middleware */
	atmel_start_init();

		// DAC_0_set_output(DAC_0_get_resolution() / 2);

	/* Replace with your application code */
	while (1) {
		for( int i = 0; i < 256; i++) {
			_delay_ms(10);
			DAC_0_set_output(i);
		}
		_delay_ms(2000);
		for( int i = 255; i > 0; i--) {
			_delay_ms(10);
			DAC_0_set_output(i);
		}
		_delay_ms(500);

	}
}
