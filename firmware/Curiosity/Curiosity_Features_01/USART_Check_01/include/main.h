/*
 * main.h
 *
 * Created: 12/08/2019 20:14:36
 *  Author: Steven
 */ 


#ifndef MAIN_H_
#define MAIN_H_

#define XBEE_START_DELIMITER 0x7E
#define XBEE_AT_COMMAND 0x08
#define XBEE_AT_COMMAND_QUEUE_PARAM_VALUE 0x09
#define XBEE_TRANSMIT_REQUEST 0x10
#define XBEE_EXPLICIT_ADDRESSING_COMMAND_FRAME 0x11
#define XBEE_REMOTE_COMMAND_REQUEST 0x17
#define XBEE_AT_COMMAND_RESPONSE 0x88
#define XBEE_MODEMSTATUS 0x8A
#define XBEE_TRANSMIT_STATUS 0x8B
#define XBEE_ROUTE_INFORMATION_PACKET 0x8D
#define XBEE_AGGREGATE_ADDRESSING_UPDATE 0x8E
#define XBEE_RECEIVE_PACKET 0x90
#define XBEE_EXPLICIT_RX_INDICATOR 0x91
#define XBEE_IO_DATA_SAMLE_RX_INDICATOR 0x92
#define XBEE_NODE_IDENTIFICATION_INDICATOR 0x95
#define XBEE_REMOTE_COMMAND_RESPONSE 0x97


typedef struct {
	uint8_t api_frame_type;
	uint8_t *data;

} XBEE_Frame_Data_struct;

typedef struct {
	uint8_t start_delimiter = XBEE_START_DELIMITER;
	uint16_t length;
	XBEE_Frame_Data_struct frame_data;
	uint8_t checksum;
} XBEE_Data_Frame_struct;

volatile XBEE_Data_Frame_struct XBEE_Data_Frame;


#endif /* MAIN_H_ */