#include "fhss.h"
#include "TX_Defs.h"
#include "CHReader.h"
#include "nrf24l01_iface.h"
#include "binding.h"

void setup(){
  txInitDefaults();
  Serial.begin(DEFAULT_BAUDRATE);
  Serial.println("Initializing RF24-TX 8ch");
  
  Serial.println("Initializing NRF24L01+ Radio");
  setup_radio();
  Serial.println("Initializing NRF24L01+ Radio DONE");
  
  bind_routine();
  
  Serial.println("Initializing Timer");
  setup_timer();
  Serial.println("Initializing Timer DONE");
  
  setup_channel_reader();
}

void loop(){
  get_channel_data();
  perform_hop();  
  send_data_radio();
}
