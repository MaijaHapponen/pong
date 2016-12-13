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
  27              		.file 1 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c"
   1:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** #include "delay.h"
   2:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** #include "asciidisplay.h"
   3:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** #include "ports.h"
   4:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c ****  
   5:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
   7:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup ( void )
   8:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  28              		.loc 1 8 0
  29              		.cfi_startproc
  30              		@ Naked Function: prologue and epilogue provided by programmer.
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 1, uses_anonymous_args = 0
   9:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** asm volatile(
  33              		.loc 1 9 0
  34              		.syntax divided
  35              	@ 9 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c" 1
  36 0000 0248     		 LDR R0,=0x2001C000
  37 0002 8546     	 MOV SP,R0
  38 0004 FFF7FEFF 	 BL main
  39 0008 FEE7     	.L1: B .L1
  40              	
  41              	@ 0 "" 2
  10:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" MOV SP,R0\n"
  12:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" BL main\n"				/* call main */
  13:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	".L1: B .L1\n"				/* never return */
  14:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	) ;
  15:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
  42              		.loc 1 15 0
  43              		.thumb
  44              		.syntax unified
  45 000a C046     		nop
  46              		.cfi_endproc
  47              	.LFE0:
  49              		.section	.rodata
  50              		.align	2
  51              	.LC0:
  52 0000 416C6661 		.ascii	"Alfanumerisk \000"
  52      6E756D65 
  52      7269736B 
  52      2000
  53 000e 0000     		.align	2
  54              	.LC2:
  55 0010 44697370 		.ascii	"Display - test\000"
  55      6C617920 
  55      2D207465 
  55      737400
  56              		.text
  57              		.align	2
  58              		.global	main
  59              		.code	16
  60              		.thumb_func
  62              	main:
  63              	.LFB1:
  16:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** /*
  17:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void init_app(void)
  18:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	*GPIO_E_MODER = 0x55555555;
  20:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }*/
  21:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  22:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void main(void)
  23:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  64              		.loc 1 23 0
  65              		.cfi_startproc
  66              		@ args = 0, pretend = 0, frame = 40
  67              		@ frame_needed = 1, uses_anonymous_args = 0
  68 0000 90B5     		push	{r4, r7, lr}
  69              		.cfi_def_cfa_offset 12
  70              		.cfi_offset 4, -12
  71              		.cfi_offset 7, -8
  72              		.cfi_offset 14, -4
  73 0002 8BB0     		sub	sp, sp, #44
  74              		.cfi_def_cfa_offset 56
  75 0004 00AF     		add	r7, sp, #0
  76              		.cfi_def_cfa_register 7
  24:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char *s;
  25:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test1[] = "Alfanumerisk ";
  77              		.loc 1 25 0
  78 0006 1423     		movs	r3, #20
  79 0008 FB18     		adds	r3, r7, r3
  80 000a 1D4A     		ldr	r2, .L8
  81 000c 13CA     		ldmia	r2!, {r0, r1, r4}
  82 000e 13C3     		stmia	r3!, {r0, r1, r4}
  83 0010 1288     		ldrh	r2, [r2]
  84 0012 1A80     		strh	r2, [r3]
  26:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test2[] = "Display - test";
  85              		.loc 1 26 0
  86 0014 3B1D     		adds	r3, r7, #4
  87 0016 1B4A     		ldr	r2, .L8+4
  88 0018 13CA     		ldmia	r2!, {r0, r1, r4}
  89 001a 13C3     		stmia	r3!, {r0, r1, r4}
  90 001c 1188     		ldrh	r1, [r2]
  91 001e 1980     		strh	r1, [r3]
  92 0020 9278     		ldrb	r2, [r2, #2]
  93 0022 9A70     		strb	r2, [r3, #2]
  27:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  28:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_app();
  94              		.loc 1 28 0
  95 0024 FFF7FEFF 		bl	init_app
  29:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_init();
  96              		.loc 1 29 0
  97 0028 FFF7FEFF 		bl	ascii_init
  30:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,1);
  98              		.loc 1 30 0
  99 002c 0121     		movs	r1, #1
 100 002e 0120     		movs	r0, #1
 101 0030 FFF7FEFF 		bl	ascii_gotoxy
  31:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test1;
 102              		.loc 1 31 0
 103 0034 1423     		movs	r3, #20
 104 0036 FB18     		adds	r3, r7, r3
 105 0038 7B62     		str	r3, [r7, #36]
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 106              		.loc 1 32 0
 107 003a 06E0     		b	.L3
 108              	.L4:
 109              	.LBB2:
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  34:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char( *s++);
 110              		.loc 1 34 0
 111 003c 7B6A     		ldr	r3, [r7, #36]
 112 003e 5A1C     		adds	r2, r3, #1
 113 0040 7A62     		str	r2, [r7, #36]
 114 0042 1B78     		ldrb	r3, [r3]
 115 0044 1800     		movs	r0, r3
 116 0046 FFF7FEFF 		bl	ascii_write_char
 117              	.L3:
 118              	.LBE2:
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 119              		.loc 1 32 0
 120 004a 7B6A     		ldr	r3, [r7, #36]
 121 004c 1B78     		ldrb	r3, [r3]
 122 004e 002B     		cmp	r3, #0
 123 0050 F4D1     		bne	.L4
  35:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  36:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,2);
 124              		.loc 1 36 0
 125 0052 0221     		movs	r1, #2
 126 0054 0120     		movs	r0, #1
 127 0056 FFF7FEFF 		bl	ascii_gotoxy
  37:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test2;
 128              		.loc 1 37 0
 129 005a 3B1D     		adds	r3, r7, #4
 130 005c 7B62     		str	r3, [r7, #36]
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 131              		.loc 1 38 0
 132 005e 06E0     		b	.L5
 133              	.L6:
 134              	.LBB3:
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  40:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char(*s++);
 135              		.loc 1 40 0
 136 0060 7B6A     		ldr	r3, [r7, #36]
 137 0062 5A1C     		adds	r2, r3, #1
 138 0064 7A62     		str	r2, [r7, #36]
 139 0066 1B78     		ldrb	r3, [r3]
 140 0068 1800     		movs	r0, r3
 141 006a FFF7FEFF 		bl	ascii_write_char
 142              	.L5:
 143              	.LBE3:
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 144              		.loc 1 38 0
 145 006e 7B6A     		ldr	r3, [r7, #36]
 146 0070 1B78     		ldrb	r3, [r3]
 147 0072 002B     		cmp	r3, #0
 148 0074 F4D1     		bne	.L6
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  42:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	return 0;
 149              		.loc 1 42 0
 150 0076 C046     		nop
  43:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  44:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 151              		.loc 1 44 0
 152 0078 BD46     		mov	sp, r7
 153 007a 0BB0     		add	sp, sp, #44
 154              		@ sp needed
 155 007c 90BD     		pop	{r4, r7, pc}
 156              	.L9:
 157 007e C046     		.align	2
 158              	.L8:
 159 0080 00000000 		.word	.LC0
 160 0084 10000000 		.word	.LC2
 161              		.cfi_endproc
 162              	.LFE1:
 164              	.Letext0:
