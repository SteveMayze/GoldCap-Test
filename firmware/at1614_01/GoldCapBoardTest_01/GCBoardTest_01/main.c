/*
 * GCBoardTest_01.c
 *
 * Created: 22/07/2019 11:43:47
 * Author : Steven
 */ 


#define F_CPU 20000000UL

#include <avr/io.h>
#include <util/delay.h>

#define _MAIN_CLOCK 0x00

int main(void)
{
	CPU_CCP = CCP_IOREG_gc;
	CLKCTRL.MCLKCTRLB = _MAIN_CLOCK;

    /* Replace with your application code */
	PORTA.DIRSET = 0b11111110;
	PORTA.OUTSET = 0b10101010;
    while (1) 
    {
		PORTA.OUTTGL = 0b11111110;
		_delay_ms( 2000 );

    }
}

