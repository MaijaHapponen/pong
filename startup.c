#include "delay.h"
#include "asciidisplay.h"
#include "ports.h"
#include "objects.h"
#include "keypad.h"
 
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

void update_score(unsigned char player1, unsigned char player2){
	char *s;
	char test1[12] = "Player 1:  ";
	char test2[12] = "Player 2:  ";
	test1[10] = '0'+player1; 
	test2[10] = '0'+player2; 
	
	init_ascii_ports();
	ascii_init();
	
	ascii_gotoxy(1,1);
	s = test1;
	while(*s)
	{
		ascii_write_char( *s++);
	}
	ascii_gotoxy(1,2);
	s = test2;
	while(*s)
	{
		ascii_write_char(*s++);
	}
	
	//meddelandet utskrivet, gör grafisk display primär igen
	restart_game();
}

void restart_game(void){
	init_graphic_port();
	graphic_initialize();
}

POBJECT pball= &ball;
POBJECT pplayer1=&player1;
POBJECT pplayer2=&player2;

//Checks if key is pressed and moves correct player.
void check_key_pressed(unsigned char c)
{
	if(c == 7) //Player 1
	{
		//move player 1 up
		//movePlayer func shit stuff yaoo
	}else if(c == 4){ //Player 1
		//move player 1 down
	}else if(c == 0xB){ //Player 2
		//move player 2 up
	}else if(c == 0xC){ //Player 2
		//move player 2 down
	}
}

void main(void)
{	
	init_keypad();
	init_graphic_port();
	graphic_initialize();
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	pball->set_speed(pball,4,4);
	
	while(1){
		check_key_pressed(keyb());
		pplayer1->draw(pplayer1);
		pplayer2->draw(pplayer2);
		pball->move(pball);
		//delay_milli(40);
		//if goal update_score
	}
	
	
}

