#include <atmel_start.h>
#include <adc_basic.h>


volatile bool         adc_ready = false;
volatile adc_result_t ADC_0_measurement;
volatile uint8_t      ADC_0_measurement_normalized;


void ADC_callback(void)
{
	ADC_0_measurement            = ADC_0_get_conversion_result();
	ADC_0_measurement_normalized = ADC_0_measurement >> (ADC_0_get_resolution() - 8);
	adc_ready           = true;
}


int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	ADC_0_register_callback(ADC_callback);

	/* Replace with your application code */
	while (1) {
		if ( adc_ready  ) {
			// printf("ADC: %d", ADC_0_measurement_normalized);
			USART_0_write(ADC_0_measurement_normalized);
		}
	}
}
