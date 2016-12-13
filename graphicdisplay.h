#ifndef GRAPHICDISPLAY_H
#define GRAPHICDISPLAY_H

#include "types.h"
#include "ports.h"
#include "delay.h"

typedef unsigned char uint8_t;

void startup(void);

void graphic_ctrl_bit_set(uint8_t x);
void graphic_ctrl_bit_clear(uint8_t x);

void select_controller(uint8_t controller);

void graphic_wait_ready(void);

uint8_t graphic_read(uint8_t controller);
void graphic_write(uint8_t value, uint8_t controller);

void graphic_write_command(uint8_t command, uint8_t controller);

void graphic_write_data(uint8_t data, uint8_t controller);
uint8_t graphic_read_data(uint8_t controller);

void init_graphic_port(void);
void graphic_initialize(void);
void graphic_clear_screen(void);

void pixel(unsigned x, unsigned y, unsigned set);

#endif //graphic_display.h