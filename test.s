   1              		.syntax unified
   2              		.arch armv6-m
   3              		.fpu softvfp
   4              		.eabi_attribute 20, 1
   5              		.eabi_attribute 21, 1
   6              		.eabi_attribute 23, 3
   7              		.eabi_attribute 24, 1
   8              		.eabi_attribute 25, 1
   9              		.eabi_attribute 26, 1
  10              		.eabi_attribute 30, 6
  11              		.eabi_attribute 34, 0
  12              		.eabi_attribute 18, 4
  13              		.thumb
  14              		.syntax unified
  15              		.file	"startup.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.section	.start_section,"ax",%progbits
  20              		.align	2
  21              		.global	startup
  22              		.code	16
  23              		.thumb_func
  25              	startup:
  26              	.LFB0:
  27              		.file 1 "C:/Users/Maija/Documents/mop/pong/startup.c"
   1:C:/Users/Maija/Documents/mop/pong\startup.c **** #include "delay.h"
   2:C:/Users/Maija/Documents/mop/pong\startup.c ****  
   3:C:/Users/Maija/Documents/mop/pong\startup.c ****  
   4:C:/Users/Maija/Documents/mop/pong\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   5:C:/Users/Maija/Documents/mop/pong\startup.c **** 
   6:C:/Users/Maija/Documents/mop/pong\startup.c **** void startup ( void )
   7:C:/Users/Maija/Documents/mop/pong\startup.c **** {
  28              		.loc 1 7 0
  29              		.cfi_startproc
   8:C:/Users/Maija/Documents/mop/pong\startup.c **** asm volatile(
  30              		.loc 1 8 0
  31              		.syntax divided
  32              	@ 8 "C:/Users/Maija/Documents/mop/pong/startup.c" 1
  33 0000 0248     		 LDR R0,=0x2001C000
  34 0002 8546     	 MOV SP,R0
  35 0004 FFF7FEFF 	 BL main
  36 0008 FEE7     	.L1: B .L1
  37              	
  38              	@ 0 "" 2
   9:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" MOV SP,R0\n"
  11:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" BL main\n"				/* call main */
  12:C:/Users/Maija/Documents/mop/pong\startup.c **** 	".L1: B .L1\n"				/* never return */
  13:C:/Users/Maija/Documents/mop/pong\startup.c **** 	) ;
  14:C:/Users/Maija/Documents/mop/pong\startup.c **** }
  39              		.loc 1 14 0
  40              		.thumb
  41              		.syntax unified
  42 000a C046     		nop
  43              		.cfi_endproc
  44              	.LFE0:
  46              		.text
  47              		.align	2
  48              		.global	main
  49              		.code	16
  50              		.thumb_func
  52              	main:
  53              	.LFB1:
  15:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  16:C:/Users/Maija/Documents/mop/pong\startup.c **** void main(void)
  17:C:/Users/Maija/Documents/mop/pong\startup.c **** {
  54              		.loc 1 17 0
  55              		.cfi_startproc
  56 0000 80B5     		push	{r7, lr}
  57              		.cfi_def_cfa_offset 8
  58              		.cfi_offset 7, -8
  59              		.cfi_offset 14, -4
  60 0002 00AF     		add	r7, sp, #0
  61              		.cfi_def_cfa_register 7
  18:C:/Users/Maija/Documents/mop/pong\startup.c **** }
  62              		.loc 1 18 0
  63 0004 C046     		nop
  64 0006 BD46     		mov	sp, r7
  65              		@ sp needed
  66 0008 80BD     		pop	{r7, pc}
  67              		.cfi_endproc
  68              	.LFE1:
  70              	.Letext0:
