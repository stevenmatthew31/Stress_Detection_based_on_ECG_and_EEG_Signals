#include "Queue_Buffer.h"
#define QUEUE_BUFFER_SIZE 800

float que_buffer[QUEUE_BUFFER_SIZE] = {0.0};

int index_que = 0;
int len_que = 0;

void store_queue_buffer(float ecg_value){
     if (len_que <  QUEUE_BUFFER_SIZE)
     {
       index_que++ ;
       len_que++;

       index_que = index_que % QUEUE_BUFFER_SIZE;

       que_buffer[index_que] = ecg_value;
     }
     //else error message
}

float read_queue_buffer(){
      float return_value;
      if (len_que > 0 ){
      return_value =  que_buffer[(index_que - len_que + QUEUE_BUFFER_SIZE) % QUEUE_BUFFER_SIZE]; }
      len_que--;
      return return_value;
}
