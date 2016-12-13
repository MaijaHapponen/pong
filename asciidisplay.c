
#include "asciidisplay.h"
#include "types.h"
#include "ports.h"
#include "delay.h"

// adressera ASCII-display och ettställ de bitar som är 1 i x
void ascii_ctrl_bit_set(unsigned char x)
{
	unsigned char c;
	c = *GPIO_E_ODR_LOW;
	c |= (B_SELECT | x);
	*GPIO_E_ODR_LOW = c;
	
}

// adressera ASCII--display och nollstäl de bitar som är 1 i x
void ascii_ctrl_bit_clear(unsigned char x)
{
	unsigned char c;
	c = *GPIO_E_ODR_LOW;
	c = B_SELECT | (c&~x);
	*GPIO_E_ODR_LOW = c;
}

void ascii_write_controller(unsigned char c)
{
	ascii_ctrl_bit_set( B_E ); 
	*GPIO_E_ODR_HIGH = c;
	ascii_ctrl_bit_clear( B_E );
	delay_250ns();
}

unsigned char ascii_read_controller(void)
{
	unsigned char c; 
	ascii_ctrl_bit_set( B_E ); 
	delay_250ns(); // max 360 ns
	delay_250ns();
	c = *GPIO_E_IDR_HIGH; 
	ascii_ctrl_bit_clear( B_E );
	return c;
}

void ascii_write_cmd(unsigned char command)
{
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}

void ascii_write_data(unsigned char data)
{
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}

unsigned char ascii_read_status(void)
{
	unsigned char c; 
	*GPIO_E_MODER &= 0x0000FFFF;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	c = ascii_read_controller();
	*GPIO_E_MODER |= 0x55550000;
	return c;
}

unsigned char ascii_read_data(void)
{
	unsigned char c; 
	*GPIO_E_MODER &= 0x0000FFFF;
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	c = ascii_read_controller();
	*GPIO_E_MODER |= 0x55550000;
	return c;
}

void ascii_command(unsigned char command, unsigned int delay_us)
{
	while((ascii_read_status() & 0x80) == 0x80)
	{}	
	delay_mikro(8);
	ascii_write_cmd(command);
	delay_mikro(delay_us);

}

void ascii_init(void){
	ascii_command(0x38,39);
	ascii_command(0xE,39);
	ascii_command(1,2000);
	ascii_command(4,39);
}

void ascii_gotoxy(unsigned char x, unsigned char y)
{
	unsigned char adress;
	adress = x-1;
	if(y == 2)
	{
		adress += 0x40;
	}
	ascii_write_cmd(0x80|adress);
}

void ascii_write_char(unsigned char c)
{
	while((ascii_read_status()&0x80) == 0x80)
	{}
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43);
}
