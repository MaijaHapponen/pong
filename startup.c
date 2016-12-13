#include "delay.h"
#include "asciidisplay.h"
#include "ports.h"
 
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
/*
void init_app(void)
{
	*GPIO_E_MODER = 0x55555555;
}*/

void main(void)
{
	char *s;
	char test1[] = "Alfanumerisk ";
	char test2[] = "Display - test";
	
	init_app();
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
	return 0;
	
}

