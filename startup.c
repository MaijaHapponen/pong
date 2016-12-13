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

/*Global variables*/
POBJECT pball;

void init_ballz(void){
	
	
}

void restart_game(void){
	init_graphic_port();
	graphic_initialize();
}

void main(void)
{
	static GEOMETRY ball_geometry={
		12, //numpoints
		4,4, //sixex, sixey
		{
			//px[0,1,2...]
			{0,1},{0,2},{1,0},{1,1},
			{1,2},{1,3},{2,0},{2,1},
			{2,2},{2,3},{3,1},{3,2},
		}
	};
	static OBJECT ball= {
		&ball_geometry,
		0,0, //initiala riktningpositioner
		1,1, //initiala startpositioner
		draw_object,
		clear_object,
		move_object,
		set_object_speed
	};
	POBJECT pball= &ball;
	init_keypad();
	init_graphic_port();
	graphic_initialize();
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	pball->set_speed(pball,4,4);
	
	unsigned ascii_loop=0;
	while(1){
		pball->move(pball);
		//delay_milli(40);
		//if goal update_score
	}
	
	
}

