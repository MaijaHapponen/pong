#include "graphicdisplay.h"
 
/*Välj grafisk display och ettställ de bitar som är 1 i x */
void graphic_ctrl_bit_set(uint8_t x){
	*portOdrLow |= ( ~B_SELECT & x );
}

/*Välj grafisk display och nollställ de bitar som är 1 i x */
void graphic_ctrl_bit_clear(uint8_t x){
	*portOdrLow &= ( ~B_SELECT & ~x );
}

void select_controller(uint8_t controller){
	switch(controller){
		case 0:
			graphic_ctrl_bit_clear(B_CS1|B_CS2);
			break;
		case B_CS1 :
			graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);
			break;
		case B_CS2 :
			graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);
			break;
		case B_CS1|B_CS2 :
			graphic_ctrl_bit_set(B_CS1|B_CS2);
			break;
	}
}

void graphic_wait_ready(void){
	
	unsigned char c;
	graphic_ctrl_bit_clear(B_E);
	
	//bit15-8 ingångar, bit7-0 utgångar
	*portModer=0x00005555;
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_set(B_RW);
	delay_500ns();
	while(1){
		graphic_ctrl_bit_set(B_E);
		delay_500ns();
		graphic_ctrl_bit_clear(B_E);
		
		c=*portIdrHigh&LCD_BUSY;
		if(c==0){
			break;
		}
		delay_500ns();
	}
	graphic_ctrl_bit_set(B_E);
	*portModer = 0x55555555;
}

uint8_t graphic_read(uint8_t controller){
	
	unsigned char rv;
	graphic_ctrl_bit_clear(B_E);
	
	//bit15-8 ingångar, bit7-0 utgångar
	*portModer=0x00005555;
	graphic_ctrl_bit_set(B_RS|B_RW);
	
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	rv = *portIdrHigh;
	graphic_ctrl_bit_clear(B_E);
	*portModer = 0x55555555;
	
	if(controller=B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(controller=B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	return rv;
}

void graphic_write(uint8_t value, uint8_t controller){
	*portOdrHigh = value;
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear(B_E);
	
	if(controller&B_CS1){
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if(controller&B_CS2){
		select_controller(B_CS2);
		graphic_wait_ready();
	}
	*portOdrHigh =0;
	graphic_ctrl_bit_set(B_E);
	select_controller(0);
}
void graphic_write_command(uint8_t command, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS|B_RW);
	graphic_write(command, controller);
}
void graphic_write_data(uint8_t data, uint8_t controller){
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RW);
	graphic_ctrl_bit_set(B_RS);
	graphic_write(data, controller);
}

uint8_t graphic_read_data(uint8_t controller){
	(void) graphic_read(controller);
	return graphic_read(controller);
}


void init_app(void){
		/* PORT E */
	*portModer = 0x55555555; /* all bits outputs */
	*portOtyper = 0x00000000; /* outputs are push/pull */
	*portOspeedr = 0x55555555; /* medium speed */
	*portPupdr = 0x55550000; /* inputs are pull up */
}
void graphic_initialize(void){
	graphic_ctrl_bit_set(B_E);
	delay_mikro(10);
	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
	delay_milli(30);
	graphic_ctrl_bit_set(B_RST);
	graphic_write_command(LCD_OFF,B_CS1|B_CS2);		
	graphic_write_command(LCD_ON,B_CS1|B_CS2);			//toggla display
	graphic_write_command(LCD_DISP_START,B_CS1|B_CS2);	//start=0
	graphic_write_command(LCD_SET_ADD,B_CS1|B_CS2);		//add=0
	graphic_write_command(LCD_SET_PAGE,B_CS1|B_CS2);	//page=0
	select_controller(0);
}
void graphic_clear_screen(void){
	unsigned char i,j;
	
	for(j=0;j<8;j++){
		graphic_write_command(LCD_SET_PAGE|j, B_CS1|B_CS2);
		graphic_write_command(LCD_SET_ADD|0,B_CS1|B_CS2);
		for(i=0;i<64;i++){
			graphic_write_data(0,B_CS1|B_CS2);
		}
	}
}

void pixel(unsigned x, unsigned y, unsigned set){
	if((x>128)||(x<0)||(y>64)||(y<0)){
		return;
	}
	unsigned char mask,c, controller;
	int index;
	index = (y-1)/8;
	switch((y-1)%8){
		case 0: mask=1; break;
		case 1: mask=2; break;
		case 2: mask=4; break;
		case 3: mask=8; break;
		case 4: mask=0x10; break;
		case 5: mask=0x20; break;
		case 6: mask=0x40; break;
		case 7: mask=0x80; break;
	}
	if( set == 0)
		mask = ~mask;
	if(x>64){
		controller=B_CS2;
		x=x-65;
	}else{
		controller=B_CS1;
		x=x-1;
	}
	graphic_write_command(LCD_SET_ADD|x,controller);
	graphic_write_command(LCD_SET_PAGE|index,controller);
	c=graphic_read_data(controller);
	graphic_write_command(LCD_SET_ADD|x,controller);
	if(set){
		mask=mask|c;
	}else{
		mask=mask&c;
	}
	graphic_write_data(mask, controller);
	
}
