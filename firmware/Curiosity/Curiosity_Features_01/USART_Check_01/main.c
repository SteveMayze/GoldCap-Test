#include <atmel_start.h>
#include <stdio.h>
#include <util/delay.h>
#include <usart_basic.h>
#include <string.h>
//#include <usart_basic_example.h>
// #include <main.h>


// volatile uint8_t msg[31] = {0x7E, 0x00, 0x1A, 0x10, 0x01, 0x00, 0x7D, 0x33, 0xA2, 0x00,
// 	0x41, 0x62, 0x9B, 0xCE, 0xFF, 0xFE, 0x00, 0x00, 0x48, 0x65,
// 	0x6C, 0x6C, 0x6F, 0x20, 0x74, 0x68, 0x65, 0x72, 0x65, 0x21,
// 0xE3};

volatile uint8_t msg[33] = { 0x7E, 0x00, 0x1C, 0x10, 0x01, 0x00, 0x7D, 0x33, 0xA2, 0x00, 
                             0x40, 0x91, 0x3B, 0xF4, 0xFF, 0xFE, 0x00, 0x00, 0x43, 0x61, 
							 0x6C, 0x6C, 0x69, 0x6E, 0x67, 0x20, 0x58, 0x42, 0x45, 0x45, 
							 0x5F, 0x43, 0x9C };


static uint8_t buf[65];

#define MESSAGE = "Message ";



void write_to_alt(char* msg){
	_delay_ms(100);
	USART_1_pins_enable();
	_delay_ms(100);
	printf("%s", msg);
	_delay_ms(100);
	USART_0_pins_enable();
	_delay_ms(100);
}

int main(void)
{
	/* Initializes MCU, drivers and middle ware */
	atmel_start_init();

	/* Replace with your application code */
	// uint16_t count = 1;
	uint8_t idx = 0;
	bool cmd_ready = false;
	LED0_set_level(true);

	//USART_1_initialization();
	//USART_0_pins_enable();

// 	XBEE_Data_Frame.start_delimiter = XBEE_START_DELIMITER;
// 
// 	uint16_t count = 1;

	while (1) {
// 		sprintf(XBEE_Data_Frame.frame_data.data, "Message: %d", count);
// 		XBEE_Data_Frame.frame_data.api_frame_type = XBEE_TRANSMIT_REQUEST;
// 		XBEE_Data_Frame.length = sizeof(XBEE_Data_Frame_struct.frame_data.data);


		if( !SW0_get_level()) {
			for(uint8_t i=0; i< sizeof(msg); i++){
				while( !USART_0_is_tx_ready()) {;}
				USART_0_write( msg[i] );
			}
			// LED0_toggle_level();
			_delay_ms(1000);
			//USART_0_test_usart_basic();
		}
		
		if( USART_0_is_rx_ready()){
			memset(buf, 0, sizeof(buf));
			idx = 0;
			cmd_ready = false;
			while( USART_0_is_rx_ready() ){ // Something in the buffer
				buf[idx] = USART_0_read();
// 				if (buf[idx] == 0x0d) {
// 					buf[idx] = 0x00;
// 					cmd_ready = true;
// 				}
				idx++;
				_delay_ms(10);
				if (idx > sizeof(buf))
					break;
				// LED0_toggle_level();
			}
			cmd_ready = true;
			LED0_set_level(true);
		}
		if( cmd_ready ) { // We have something to look at.
			if( strncmp("on", (char *)buf, strlen("on")) == 0 ){
				LED0_set_level(false);
				printf("Switching on\n");
			} else if( strncmp("off", (char *)buf, strlen("off")) == 0) {
				LED0_set_level(true);
				printf("Switching off\n");
			} else if( strncmp("tgl", (char *)buf, strlen("tgl")) == 0) {
				printf("Toggle\n");
				LED0_toggle_level(true);
			} else {
				LED0_set_level(false); // ON
				_delay_ms(500);
				LED0_set_level(true); // OFF
				_delay_ms(500);
				LED0_set_level(false); // ON
				_delay_ms(500);
				LED0_set_level(true); // OFF
				_delay_ms(500);
// 				for(uint8_t i=0; i< sizeof(buf); i++){
// 					while( !USART_0_is_tx_ready()) {;}
// 					USART_0_write( buf[i] );
// 				}
				//write_to_alt((char *)buf);
			}
			cmd_ready = false;
			_delay_ms(1000);
		} 
	}
}
