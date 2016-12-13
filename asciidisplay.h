#ifdef ASCIIDISPLAY_H
#define ASCIIDISPLAY_H

#include "types.h"
#include "ports.h"

void ascii_ctrl_bit_set(unsigned char x);
void ascii_ctrl_bit_clear(unsigned char x);

void ascii_write_controller(unsigned char c);
unsigned char ascii_read_controller(void);

void ascii_write_cmd(unsigned char command);
void ascii_write_data(unsigned char data);
unsigned char ascii_read_status(void);

unsigned char ascii_read_data(void);
void ascii_command(unsigned char command, unsigned int delay_us);

void ascii_init(void);
void ascii_gotoxy(unsigned char x, unsigned char y);

void ascii_write_char(unsigned char c);


#endif //asciidisplay_h