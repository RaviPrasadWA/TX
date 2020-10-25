#include "EEPROMex.h"

bool              bndMode = true;

void write_eeprom_byte(uint8_t addr, uint8_t value){
  EEPROM.writeLong(addr, value);
}


uint8_t read_eeprom_byte(uint8_t addr){
  return EEPROM.readByte(addr);
}

void write_bind_button_pressed_to_eeprom(){
  write_eeprom_byte(3, BIND_PRESSED);
}

void clear_bind_button_status_from_eeprom(){
  write_eeprom_byte(3, 0);
}

int fhss_hops_data(){
  radio.stopListening();
  radio.write( &fhss_schema, sizeof(fhss_schema) );
  if(radio.isAckPayloadAvailable()){
    radio.read(&rx_config, sizeof(rx_config));
      if( rx_config.tx_id == tx_config.tx_id){
        if( rx_config.ack == 1){
          if( rx_config.mode == 3 ){
            return 1;
          }
        }
      }
   }
   radio.startListening();
   return 0;
}

void transmit_fhss_hops_data(){
  Serial.print("Sending the HOPS [ >");
  for( uint8_t i=0; i<250 ; i++ ){
    uint8_t flag = fhss_hops_data();
    if ( flag == 1 )
    {
      Serial.println("> ]COMPLETE");
      break;
    }
    delay(500);
    Serial.print(">");
  }
}

uint8_t send_bind_data(){
  radio.stopListening();
  radio.write( &tx_config, sizeof(tx_config) );
  if(radio.isAckPayloadAvailable()){
    radio.read(&rx_config, sizeof(rx_config));
    if( rx_config.tx_id == tx_config.tx_id){
      if( rx_config.ack == 1){
        if( rx_config.mode == 2 ){
          return 1;
        }
      }
    }
  }
  radio.startListening();
  return 0;
}



void perform_bind_data(){
  Serial.print("Binding [ >");
  for( uint8_t i=0; i<250 ; i++ ){
    uint8_t flag = send_bind_data();
    if ( flag == 1 )
    {
      Serial.println("> ]COMPLETE");
      break;
    }
    delay(500);
    Serial.print(">");
  }
}


uint8_t verify_hops(){
  radio.stopListening();
  radio.write( &fhss_schema, sizeof(fhss_schema) );
  if(radio.isAckPayloadAvailable()){
    radio.read(&verify_config, sizeof(verify_config));
      if( verify_config.is_verified == 23){
        return 1;
      }
   }
   radio.startListening();
   return 0;
}

void perform_verification(){
  Serial.print("Verifying the HOPS [ >");
  for( uint8_t i=0; i<250 ; i++ ){
    uint8_t flag = verify_hops();
    if ( flag == 1 )
    {
      Serial.println("> ]COMPLETE");
      break;
    }
    delay(500);
    Serial.print(">");
  }
}

bool is_bind_button_released_from_previous_bind(){
  // This function helps determine wether the BIND 
  // button during previous bind was pressed and is still pressed
  // FALSE -> bind button still not released
  uint32_t prev_pressed = read_eeprom_byte(3);

  if( prev_pressed == BIND_PRESSED )
    return false;
  return true;
}

void delay_restart_tx(){
  Serial.print("Restarting the TX = [*");
  for(uint8_t x=0 ; x<20 ; x++){
    Serial.print("*");
    delay(275);
  }
  Serial.print("*] RE-STARTING RX");
  Serial.println(" ");
  delay(1500);
  reset_func();
} 

void bind_routine(){
  if( get_button_state() == HIGH ){
    if( is_bind_button_released_from_previous_bind() )
    {
      Serial.println("Binding routine START");
      perform_bind_data();
      
      Serial.println("[bind](sub-routine) => Sending the hopping spectrum");
      transmit_fhss_hops_data();
      Serial.println("[bind](sub-routine) => Sending the hopping spectrum DONE");
      
      Serial.println("[bind](sub-routine) => Verifying the hopping spectrum");
      perform_verification();
      Serial.println("[bind](sub-routine) => Verifying the hopping spectrum DONE");

      write_bind_button_pressed_to_eeprom();
      Serial.println("Binding routine DONE");
      delay_restart_tx();
    }
  }else{
    clear_bind_button_status_from_eeprom();
  }
}
