#include "TinyPinChange.h"
#include "TinyPpmReader.h"
#include "Rcul.h"

#define   CHANNEL_COUNT   8

// Initialize a PPMReader on digital pin 3 with 8 expected channels.
uint8_t       PPM_INPUT       = 2;
bool          hardware_serial = false;
int           CHANNELS[CHANNEL_COUNT];
uint8_t       INDEX           = 0;

void initialize_channel_data(){
  for(INDEX = 0; INDEX < CHANNEL_COUNT; INDEX++) /* From Channel 1 to Max detected */
    CHANNELS[INDEX] = 0;
}

void setup_channel_reader()
{
  TinyPpmReader.attach(PPM_INPUT); /* Attach TinyPpmReader to PPM_INPUT_PIN pin */
  initialize_channel_data();
}

void get_channel_data(){
  for(INDEX = 0; INDEX < TinyPpmReader.detectedChannelNb(); INDEX++) /* From Channel 1 to Max detected */
    CHANNELS[INDEX] = TinyPpmReader.width_us(INDEX+1);  
}


void display_channel_data(){
  for(INDEX = 0; INDEX < CHANNEL_COUNT; INDEX++) /* From Channel 1 to Max detected */
  {
    Serial.print(CHANNELS[INDEX]);
    Serial.print(" | ");
  }
  Serial.println(" ");
}
