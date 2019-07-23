/*
 * GCBoardTest_01.c
 *
 * Created: 22/07/2019 11:43:47
 * Author : Steven
 */ 

#include <avr/io.h>

#define F_CPU 4000000UL
#include <util/delay.h>

int main(void)
{
    /* Replace with your application code */
	PORTA.DIRSET = 0b11111111;
    while (1) 
    {
		PORTA.OUTTGL = 0b11111111;
		_delay_ms( 10000 );

    }
}

