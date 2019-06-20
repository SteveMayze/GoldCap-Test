/*
* GoldCapADCVerification.c
*
* Created: 27/05/2019 19:12:07
* Author : Steven
*/

#include <avr/io.h>
#include <stdbool.h>

#define F_CPU 1000000UL

#include <util/delay.h>


/*!
 * \brief a wrapper over the _delay_ms function
 *
 *	This wrapper enables the ms count to be passed in as variable
 *	and not as a integer constant as dictated by the _delay_ms 
 *	function.
 */
void delay_ms(uint16_t ms){
	for(int i =0; i < ms; i++){
		_delay_ms(1);
	}
}


void adc_init() {
	// ADMUX &= ~( 1 << REFS ); // Set the reference voltage to be Vcc
	// ADCSRB &= ~(1 << ADLAR );
	ADCSRA |= ( 1<<ADEN | 1<<ADPS2 | 1<<ADPS1 | 1<<ADPS0 ); // ADC Enable Bit = Ensure it is enabled
}

uint16_t adc_read(uint8_t ch)
{
	// select the corresponding channel 0~7
	// ANDing with '7' will always keep the value
	// of 'ch' between 0 and 7
	ch &= 0b00000111; // AND operation with 7
	ADMUX |= ch;
	// start single conversion
	// write '1' to ADSC
	ADCSRA |= ( 1<<ADSC );
	// wait for conversion to complete
	// ADSC becomes '0' again
	// till then, run loop continuously
	while( ADCSRA & (1<<ADSC));
	return (ADC);
}


uint8_t make_bar( uint16_t value ) {
		uint8_t bar  = 0x00;
		if( value > 0 ) {
			bar |= ( 1 << 0 );
		}
		if (value > 150 ) {
			bar |= ( 1 << 1 );
		}
		if (value > 300 ) {
			bar |= ( 1 << 2 );
		}
		if (value > 450 ) {
			bar |= ( 1 << 3 );
		}
		if (value > 600 ) {
			bar |= ( 1 << 4 );
		}
		if (value > 750 ) {
			bar |= ( 1 << 5 );
		}
		if (value > 900 ) {
			bar |= ( 1 << 6 );
		}
		return bar;
}

int main(void)
{
	/*
	GPIO
	PA0 LED_PA0 (1) Bodge #1 Power Monitor (Analogue IN)
	PA1 LED_PA1 (2)
	PA2 LED_PA2 (3)
	PA3 LED_PA3 (4)
	PA4 LED_PA4 (5)
	PA5 LED_PA5 (6)
	PA6 LED_PA6 (7) ~SS
	PA7         (6) Power Monitor ( Analogue IN ) Bodge #2 SLC

	PB0 TPI Clock
	PB1 TPI Data (3)  Bodge #3 MOSI
	PB2 LED_PB2  (8) MISO
	PB3 ~RESET

	*/
	// leave the default for the moment. DDRA = 0x00;
	// Leave the default for the moment. DDRA |= ( 0x7F << PORTA1 );
	DDRA |= ( 0x00 << PORTA0 ); // Set port A0 as Input
	DDRB |= ( 1 << PORTB2);

	adc_init();

	/************************************************************************/
	/* Set up the SPI bus. There is probably some resistors to also add as  */
	/* a bodge.                                                             */
	/************************************************************************/


	volatile uint8_t leds = 0x7F;
	bool blinker = false;

	while (1)
	{
		uint16_t adc_in = adc_read(0x07) ;
		leds = make_bar( adc_in );

		PORTA &= ~( 0x7F << PORTA0 );
		PORTA |= leds;

		if (blinker){
			PORTB |= ( 1 << PORTB2 );
		} else {
			PORTB &= ~( 1 << PORTB2 );
		}
		blinker ^= true;
		delay_ms(adc_in);

	}
	
}

