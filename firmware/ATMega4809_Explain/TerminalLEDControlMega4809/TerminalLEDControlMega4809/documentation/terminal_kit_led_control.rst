Introduction
============

This is the documentation for a application that controls the ON/OFF Operation via the serial terminal


Related documents / Application notes
-------------------------------------

The demo uses:
- The device's USART to print output in a terminal window
- PortB Interrupt


Supported evaluation kit
------------------------

 - `Mega4809-XplainedPRO <http://www.atmel.com/tools/atmega4809-xpro.aspx>`

 
Interface settings
------------------

- USART for printf() over EDBG USART
	- No parity
	- 8-bit character size
	- 1 stop bit
	- 9600 baud-rate
	
- Pinmux Settings
	- PB2
		- User Label : USER_BUTTON
		- Pin Mode : Digital Input
		- Pull Configuration : Pull Up
	
	- PB5
		- User Label : USER_LED
		- Pin Mode : Digital Output
		- Initial Level : High

Running the demo
----------------

1. Press Download Pack and save the .atzip file.
2. Import .atzip file into Atmel Studio 7, File->Import->Atmel Start Project.
3. Connect ATMega4809 XplainedPRO Board and add the simulator.
4. Build and flash onto the XplainedPRO Board.
5. Open Tools -> Data Visualizer.
6. On the visualizer, type on/off to control the Kit LED.
