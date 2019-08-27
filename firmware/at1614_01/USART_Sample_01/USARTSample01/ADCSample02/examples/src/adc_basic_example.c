/**
 * \file
 *
 * \brief ADC Basic driver example.
 *
 (c) 2018 Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms,you may use this software and
    any derivatives exclusively with Microchip products.It is your responsibility
    to comply with third party license terms applicable to your use of third party
    software (including open source software) that may accompany Microchip software.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *
 */

#include <atmel_start.h>
#include <adc_basic_example.h>
#include <adc_basic.h>
#include <atomic.h>
#include <stdio.h>


volatile bool         PWR_MON_isr_executed = false;
volatile adc_result_t PWR_MON_measurement;
volatile uint8_t      PWR_MON_measurement_normalized;

void PWR_MON_adc_handler_cb(void)
{
	PWR_MON_measurement            = PWR_MON_get_conversion_result();
	PWR_MON_measurement_normalized = PWR_MON_measurement >> (PWR_MON_get_resolution() - 8);
	PWR_MON_isr_executed           = true;
}

volatile adc_result_t INTERNAL_TEMP_measurement;
volatile uint8_t      INTERNAL_TEMP_measurement_normalized;

uint8_t PWR_MON_test_adc_basic(void)
{

	// Test driver functions, assume that an AIN channel is enabled and that
	// the Result Ready IRQ is enabled.

	// Test polled mode

	// Get conversion from specified ADC channel
	PWR_MON_measurement = PWR_MON_get_conversion(ADC_MUXPOS_AIN11_gc);

	// Get 8 MSB of conversion result
	PWR_MON_measurement_normalized = PWR_MON_measurement >> (PWR_MON_get_resolution() - 8);
	printf("POLLED PWR_MON %d, Normalized: %d\n\r", PWR_MON_measurement, PWR_MON_measurement_normalized);

	// Test IRQ mode

	ENABLE_INTERRUPTS();

	PWR_MON_register_callback(PWR_MON_adc_handler_cb);

	// make sure flag is false
	PWR_MON_isr_executed = false;

	// Start conversion from ADC CH0
	PWR_MON_start_conversion(ADC_MUXPOS_AIN11_gc);

	// Wait for ISR to be executed
	while (!PWR_MON_isr_executed)
		;

	DISABLE_INTERRUPTS();
	printf("IRQ PWR_MON %d, Normalized: %d\n\r", PWR_MON_measurement, PWR_MON_measurement_normalized);

	return 1;
}

uint8_t INTERNAL_TEMP_test_adc_basic(void)
{

	// Test driver functions, assume that an AIN channel is enabled and that
	// the Result Ready IRQ is enabled.

	// Test polled mode

	// Get conversion from specified ADC channel
	INTERNAL_TEMP_measurement = INTERNAL_TEMP_get_conversion(ADC_MUXPOS_TEMPSENSE_gc);

	// Get 8 MSB of conversion result
	INTERNAL_TEMP_measurement_normalized = INTERNAL_TEMP_measurement >> (INTERNAL_TEMP_get_resolution() - 8);

	printf("POLLED INTERNAL_TEMP %d, Normalized: %d\n\r", INTERNAL_TEMP_measurement, INTERNAL_TEMP_measurement_normalized);

	return 1;
}
