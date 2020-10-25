// Setup for nRF24L01
#include <SPI.h>
#include "nRF24L01.h"
#include "RF24.h"
#include "printf.h"

RF24 radio(6,7); // CE, CSN

const uint64_t pipes[2] = { 0xABCDABCD71LL, 
                            0x544d52687CLL };  // Address of PTX and PRX

void setup_radio(){
  printf_begin();
  radio.begin();
  radio.setPALevel(RF24_PA_LOW); // RF24_PA_MIN (-18dBm), RF24_PA_LOW (-12dBm), RF24_PA_HIGH (-6dBM), RF24_PA_MAX (0dBm)
  radio.setRetries(4,9);
//  radio.setAutoAck(1);
  radio.enableAckPayload();
  radio.enableDynamicPayloads();
  radio.setDataRate(RF24_250KBPS);
  radio.setChannel(11);
  radio.openWritingPipe(pipes[1]);
  radio.openReadingPipe(1,pipes[0]);
  radio.startListening();
  radio.printDetails();
}

void perform_hop(){
  if(fired) {  // When the interrupt occurred, we need to perform the following task  
    fired=false;  // Reset fired flag
    Int_cnt++;  // Increment Interrupts counter
    if(Int_cnt==(Int_TX_cnt-1)) { // If it's time to perform channel change (10ms before trasmission time)
      ptr_fhss_schema++;  // Increment pointer of fhss schema array to perform next channel change
      if(ptr_fhss_schema >= sizeof(fhss_schema)) 
        ptr_fhss_schema=0; // To avoid array indexing overflow
      // Serial.println(fhss_schema[ptr_fhss_schema]);
      radio.setChannel(fhss_schema[ptr_fhss_schema]); // Change channel
    }
  }
}


void send_data_radio(){
  if(Int_cnt == Int_TX_cnt) {  // If it's time to transmit.
    radio.stopListening();
    radio.write( &data_TX, sizeof(data_TX) );
    if(radio.isAckPayloadAvailable())  // If we received data in ACK Payload, read and print values.
    {
      radio.read(&data_RX, sizeof(data_RX));
    }
    radio.startListening();
    Int_cnt = 0;
  } else {
    // Put here your code to retrive data to send to RX
    data_TX.ch1 = CHANNELS[0];
    data_TX.ch2 = CHANNELS[1];
    data_TX.ch3 = CHANNELS[2];
    data_TX.ch4 = CHANNELS[3];
    data_TX.ch5 = CHANNELS[4];
    data_TX.ch6 = CHANNELS[5];
    data_TX.ch7 = CHANNELS[6];
    data_TX.ch8 = CHANNELS[7];
  }
}
