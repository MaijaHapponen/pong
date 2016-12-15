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

POBJECT pball= &ball;
POBJECT pplayer1=&player1;
POBJECT pplayer2=&player2;

void restart_game(void){
	init_graphic_port();
	graphic_initialize();
	
	pball->clear(pball);
	//sätter allt på rätt positition
	pball->posx = ((128/2)-2);
	pball->posy = ((64/2)-2);
	
	pplayer1->clear(pplayer1);
	pplayer1->posx = 1;
	pplayer1->posy = 1;
	
	pplayer1->clear(pplayer1);
	pplayer2->posx = 128-2;
	pplayer2->posy = 1;
	
}

void update_score(){
	char *s;
	char test1[12] = "Player 1:  ";
	char test2[12] = "Player 2:  ";
	test1[10] = '0'+player1_score; 
	test2[10] = '0'+player2_score; 
	
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



//Checks if key is pressed and moves correct player.
void check_key_pressed() //Check key released någonstans. Vart? Ny metod?
{
	unsigned char c = keyb();
	switch(c)
	{
		case 4: pplayer1->set_speed(pplayer1, 0, -1); break; //Player 1 up
		case 7: pplayer1->set_speed(pplayer1, 0, 1); break; //Player 1 down
		case 0xB: pplayer2->set_speed(pplayer2, 0, -1); break; //Player 2 up
		case 0xC: pplayer2->set_speed(pplayer2, 0, 1); break; //Player 2 down
	}
}

void check_if_goal(void){
	if((pball->posx)<0) //Betyder att boll är påväg över kanten (vänster), nytt poäng till player 1
	{
		player1_score++;
		update_score();
	}
	if((pball->posx) >(128-(pball->geo->sizex)))//Betyder att boll är påväg över kanten (höger), nytt poäng till player 2
	{
		player2_score++;
		update_score();
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
	pball->set_speed(pball,1,1);
	
	while(1){
		check_if_goal();
		check_key_pressed();
		
		pplayer1->move(pplayer1);
		pplayer2->move(pplayer2);
		
		pball->move(pball);
		//delay_milli(40);
	}
}

