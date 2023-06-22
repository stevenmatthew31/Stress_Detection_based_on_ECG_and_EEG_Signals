#define QUEUE_BUFFER_SIZE 800

extern int index_que;
extern int len_que;
extern float que_buffer[QUEUE_BUFFER_SIZE];

void store_queue_buffer(float);
float read_queue_buffer();