
#include "delay.h"

void delay_250ns(void){
	*STK_CTRL = 0;
	*STK_LOAD = (168/4)-1;
	*STK_VAL = 0;
	*STK_CTRL=5;
	while((*STK_CTRL&0x10000)==0){}
	*STK_CTRL=0;
}

void delay_500ns(void){
	delay_250ns();
	delay_250ns();
}

void delay_mikro(unsigned int us){
	
	for(int i=0; i<us; i++){
		delay_250ns();
		delay_250ns();
		delay_250ns();
		delay_250ns();
	}
	
}
void delay_milli(unsigned int ms){
	#ifdef SIMULATOR
		ms= ms/1000;
		ms++;
	#endif
	delay_mikro(ms*1000);
}