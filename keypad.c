#include "keypad.h"
#include "ports.h"

void init_keypad(void){
	*GPIO_D_MODER = 0x55005555;
	*GPIO_D_OTYPER &= 0x00FF;
	*GPIO_D_PUPDR &= 0x0000FFFF;
	*GPIO_D_PUPDR |= 0x00AA0000;
}
int readColumn(void){
	
	unsigned char c;
	c=*GPIO_D_IDR_HIGH;
	
	if(c&0x8) return 4;
	if(c&0x4) return 3;
	if(c&0x2) return 2;
	if(c&0x1) return 1;
	return 0;
}
void activateRow(unsigned int row){
	switch(row){
		case 1: *GPIO_D_ODR_HIGH = 0x10; break;
		case 2: *GPIO_D_ODR_HIGH = 0x20; break;
		case 3: *GPIO_D_ODR_HIGH = 0x40; break;
		case 4: *GPIO_D_ODR_HIGH = 0x80; break;
		case 0: *GPIO_D_ODR_HIGH = 0x00; break;
	}
}
unsigned char keyb(void){
	unsigned char key[] ={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
	int row,col;
	for(row=1;row<=4;row++){
		
		activateRow(row);
		
		if((col=readColumn())){
			activateRow(0);
			return key[4*(row-1)+(col-1)];
		}
	}
	activateRow(0);
	return 0xFF;
}

