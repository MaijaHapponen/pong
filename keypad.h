#ifndef KEYPAD_H
#define KEYPAD_H

void init_keypad(void);

int readColumn(void);

void activateRow(unsigned int row);

unsigned char keyb(void);


#endif //keypad_h