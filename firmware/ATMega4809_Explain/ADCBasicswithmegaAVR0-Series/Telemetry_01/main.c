#include <atmel_start.h>
#include <avr/sleep.h>
#include <string.h>
#include <stdio.h>


#include <util/delay.h>
#define MAX_VOL 3.3 // VREF=2.5V
#define RES_10BIT 0x3ff
#define ADC_CHANNEL 0x06

#define LED_ON 0
#define LED_OFF 1

uint16_t adc_result = 0;
float    calc_volt;
volatile bool         adc_isr_triggered   = false;

// XBEE Defines ==============================================================
volatile uint8_t msg[33] = { 
		0x7E, 0x00, 0x1C, 0x10, 0x01, 0x00, 0x7D, 0x33, 0xA2, 0x00, 0x40, 0x91, 
		0x3B, 0xF4, 0xFF, 0xFE, 0x00, 0x00, 0x43, 0x61,	0x6C, 0x6C, 0x69, 0x6E, 
		0x67, 0x20, 0x58, 0x42, 0x45, 0x45, 0x5F, 0x43, 0x9C 
	};

static uint8_t buf[65];

#define MESSAGE = "Message ";

// ===========================================================================

// ADC Functions =============================================================

void adc_callback(void)
{
	adc_isr_triggered = true;
	adc_result = ADC0.RES;
 	calc_volt  = (adc_result * MAX_VOL) / RES_10BIT;
	LED0_toggle_level();
}

void adc_init()
{
	// Hookup ADC window callback routine
	ADC_0_register_window_callback(adc_callback);

	// Enable window_mode
	ADC_0_set_window_mode(ADC_WINCM_BELOW_gc);
	ADC_0_set_window_low(0x3FF); // 0x1FF

	// Setup specified ADC channel, to be used for windowed conversions
	ADC_0_set_window_channel(ADC_CHANNEL);

	// Get conversion from specified ADC channel
	ADC_0_start_conversion(ADC_CHANNEL);
}
// ===========================================================================


// USART Functions ===========================================================
/**
 * \brief Write a string on USART
 */
void usart_put_string(const char str[], const uint8_t STR_LEN)
{
	for (int i = 0; i < STR_LEN; i++) {
			USART_1_write(str[i]);
	}
}

// USART print float number 
void usart_send_float(float number)
{
	char string[6];

	dtostrf(number, 2, 3, string);
	usart_put_string(string, 5);
	usart_put_string("V\n", 2);
}


// ===========================================================================


// main ======================================================================
int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();
	adc_init();

	uint8_t idx = 0;

	/* Replace with your application code */
	while (1) {

		sleep_mode();

		if (adc_isr_triggered) {
			/* Print calc_volt to terminal*/
			usart_send_float(calc_volt);
			// _delay_ms(1000);
			adc_isr_triggered = false;

			// Send a message to XBEE
// 			for(uint8_t i=0; i< sizeof(msg); i++){
// 				while( !USART_0_is_tx_ready() && USART0_CTS_get_level()) {;}
// 				USART_0_write( msg[i] );
// 			}
			_delay_ms(1000);

		}
		// Wait for the response
		idx = 0;
		if( USART_0_is_rx_ready()){
			memset(buf, 0, sizeof(buf));
			while( USART_0_is_rx_ready() ){ // Something in the buffer
				buf[idx] = USART_0_read();
				idx++;
				// _delay_ms(10);
				if (idx > sizeof(buf))
				break;
			}
			// Display the received buffer
			if ( idx > 0 ) {
				usart_put_string((char*)buf, idx);
			}
		}
	}
}
