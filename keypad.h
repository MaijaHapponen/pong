#ifndef KEYPAD_H
#define KEYPAD_H

void init_keypad(void);

unsigned int readColumn(void);

void activateRow(unsigned int row);

unsigned char keyb(void);

void out7seg(unsigned char c);

#endif //keypad_h