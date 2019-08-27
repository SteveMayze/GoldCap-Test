#include <atmel_start.h>
#include <stdio.h>
#include <string.h>

const char const help_str[]   = "Type on/off to control LED \r\n";
const char const ledon_str[]  = "LED is on\r\n";
const char const ledoff_str[] = "LED is off\r\n";

int help(void)
{
	printf(help_str);
	return 0;
}

int Turn_on_LED(void)
{
	USER_LED_set_level(false);
	printf(ledon_str);
	return 0;
}

int Turn_off_LED(void)
{
	USER_LED_set_level(true);
	printf(ledoff_str);
	return 0;
}

int parseCmd(char *commands)
{
	char *cmds = NULL;

	if ((cmds = strstr(commands, "help"))) {
		help();
	} else if ((cmds = strstr(commands, "on"))) {
		Turn_on_LED();
	} else if ((cmds = strstr(commands, "off"))) {
		Turn_off_LED();
	}

	if (cmds != NULL) {
		return 1;
	} else {
		return 0;
	}
}

int main(void)
{
	char    buf[5]  = {0};
	uint8_t buf_pos = 0;

	/* Initializes MCU, drivers and middleware */
	atmel_start_init();
	// Enable pin change IRQ
	PORTB.PIN2CTRL |= PORT_ISC_BOTHEDGES_gc;

	parseCmd("help\0"); // Print out instructions

	while (1) {

		buf[buf_pos] = USART_0_read();
		buf_pos++;
		buf[buf_pos] = 0; // adds a null termination to the string

		// checks if a cmd has been found, the || is a check for a buffer overflow
		if (parseCmd(buf) || (buf_pos > 4)) {
			buf[0]  = 0;
			buf_pos = 0;
		}
	}
}
