/*
 * GoldCapBoardVerification.c
 *
 * Created: 26/05/2019 19:31:06
 * Author : Steven
 */ 

#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
	/*
		GPIO
			PA0 LED_PA0 (1)
			PA1 LED_PA1 (2)
			PA2 LED_PA2 (3)
			PA3 LED_PA3 (4)
			PA4 LED_PA4 (5)
			PA5 LED_PA5 (6)
			PA6 LED_PA6 (7)
			PA7 Power Monitor ( Analogue IN )

			PB0 TPI Clock
			PB1 TPI Data
			PB2 LED_PB2 (8)
			PB3 ~RESET

	*/
	DDRA |= ( 0x7F << PORTA0 );
	DDRA |= ( 0x00 << PORTA7 ); // Set port A7 as Input
	DDRB |= ( 1 << PORTB2);


	while (1) 
    {
		PORTA |= (0x7F << PORTA0 );
		PORTB |= ( 0x01 << PORTB2 );
		_delay_ms(1000);
		PORTA &= ~(0x7F << PORTA0 );
		PORTB &= ~( 0x01 << PORTB2 );
		_delay_ms(1000);
    }
}

