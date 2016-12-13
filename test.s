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
   5:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c ****  
   6:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   7:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
   8:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup ( void )
   9:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  28              		.loc 1 9 0
  29              		.cfi_startproc
  30              		@ Naked Function: prologue and epilogue provided by programmer.
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 1, uses_anonymous_args = 0
  10:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** asm volatile(
  33              		.loc 1 10 0
  34              		.syntax divided
  35              	@ 10 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c" 1
  36 0000 0248     		 LDR R0,=0x2001C000
  37 0002 8546     	 MOV SP,R0
  38 0004 FFF7FEFF 	 BL main
  39 0008 FEE7     	.L1: B .L1
  40              	
  41              	@ 0 "" 2
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  12:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" MOV SP,R0\n"
  13:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" BL main\n"				/* call main */
  14:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	".L1: B .L1\n"				/* never return */
  15:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	) ;
  16:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
  42              		.loc 1 16 0
  43              		.thumb
  44              		.syntax unified
  45 000a C046     		nop
  46              		.cfi_endproc
  47              	.LFE0:
  49              		.text
  50              		.align	2
  51              		.global	init_app
  52              		.code	16
  53              		.thumb_func
  55              	init_app:
  56              	.LFB1:
  17:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  18:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void init_app(void)
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  57              		.loc 1 19 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  20:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	*GPIO_E_MODER = 0x55555555;
  67              		.loc 1 20 0
  68 0004 024B     		ldr	r3, .L3
  69 0006 034A     		ldr	r2, .L3+4
  70 0008 1A60     		str	r2, [r3]
  21:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
  71              		.loc 1 21 0
  72 000a C046     		nop
  73 000c BD46     		mov	sp, r7
  74              		@ sp needed
  75 000e 80BD     		pop	{r7, pc}
  76              	.L4:
  77              		.align	2
  78              	.L3:
  79 0010 00100240 		.word	1073876992
  80 0014 55555555 		.word	1431655765
  81              		.cfi_endproc
  82              	.LFE1:
  84              		.section	.rodata
  85              		.align	2
  86              	.LC0:
  87 0000 416C6661 		.ascii	"Alfanumerisk \000"
  87      6E756D65 
  87      7269736B 
  87      2000
  88 000e 0000     		.align	2
  89              	.LC2:
  90 0010 44697370 		.ascii	"Display - test\000"
  90      6C617920 
  90      2D207465 
  90      737400
  91              		.text
  92              		.align	2
  93              		.global	main
  94              		.code	16
  95              		.thumb_func
  97              	main:
  98              	.LFB2:
  22:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  23:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void main(void)
  24:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  99              		.loc 1 24 0
 100              		.cfi_startproc
 101              		@ args = 0, pretend = 0, frame = 40
 102              		@ frame_needed = 1, uses_anonymous_args = 0
 103 0018 90B5     		push	{r4, r7, lr}
 104              		.cfi_def_cfa_offset 12
 105              		.cfi_offset 4, -12
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 001a 8BB0     		sub	sp, sp, #44
 109              		.cfi_def_cfa_offset 56
 110 001c 00AF     		add	r7, sp, #0
 111              		.cfi_def_cfa_register 7
  25:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char *s;
  26:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test1[] = "Alfanumerisk ";
 112              		.loc 1 26 0
 113 001e 1423     		movs	r3, #20
 114 0020 FB18     		adds	r3, r7, r3
 115 0022 1D4A     		ldr	r2, .L11
 116 0024 13CA     		ldmia	r2!, {r0, r1, r4}
 117 0026 13C3     		stmia	r3!, {r0, r1, r4}
 118 0028 1288     		ldrh	r2, [r2]
 119 002a 1A80     		strh	r2, [r3]
  27:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test2[] = "Display - test";
 120              		.loc 1 27 0
 121 002c 3B1D     		adds	r3, r7, #4
 122 002e 1B4A     		ldr	r2, .L11+4
 123 0030 13CA     		ldmia	r2!, {r0, r1, r4}
 124 0032 13C3     		stmia	r3!, {r0, r1, r4}
 125 0034 1188     		ldrh	r1, [r2]
 126 0036 1980     		strh	r1, [r3]
 127 0038 9278     		ldrb	r2, [r2, #2]
 128 003a 9A70     		strb	r2, [r3, #2]
  28:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  29:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_app();
 129              		.loc 1 29 0
 130 003c FFF7FEFF 		bl	init_app
  30:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_init();
 131              		.loc 1 30 0
 132 0040 FFF7FEFF 		bl	ascii_init
  31:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,1);
 133              		.loc 1 31 0
 134 0044 0121     		movs	r1, #1
 135 0046 0120     		movs	r0, #1
 136 0048 FFF7FEFF 		bl	ascii_gotoxy
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test1;
 137              		.loc 1 32 0
 138 004c 1423     		movs	r3, #20
 139 004e FB18     		adds	r3, r7, r3
 140 0050 7B62     		str	r3, [r7, #36]
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 141              		.loc 1 33 0
 142 0052 06E0     		b	.L6
 143              	.L7:
 144              	.LBB2:
  34:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  35:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char( *s++);
 145              		.loc 1 35 0
 146 0054 7B6A     		ldr	r3, [r7, #36]
 147 0056 5A1C     		adds	r2, r3, #1
 148 0058 7A62     		str	r2, [r7, #36]
 149 005a 1B78     		ldrb	r3, [r3]
 150 005c 1800     		movs	r0, r3
 151 005e FFF7FEFF 		bl	ascii_write_char
 152              	.L6:
 153              	.LBE2:
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 154              		.loc 1 33 0
 155 0062 7B6A     		ldr	r3, [r7, #36]
 156 0064 1B78     		ldrb	r3, [r3]
 157 0066 002B     		cmp	r3, #0
 158 0068 F4D1     		bne	.L7
  36:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  37:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,2);
 159              		.loc 1 37 0
 160 006a 0221     		movs	r1, #2
 161 006c 0120     		movs	r0, #1
 162 006e FFF7FEFF 		bl	ascii_gotoxy
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test2;
 163              		.loc 1 38 0
 164 0072 3B1D     		adds	r3, r7, #4
 165 0074 7B62     		str	r3, [r7, #36]
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 166              		.loc 1 39 0
 167 0076 06E0     		b	.L8
 168              	.L9:
 169              	.LBB3:
  40:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char(*s++);
 170              		.loc 1 41 0
 171 0078 7B6A     		ldr	r3, [r7, #36]
 172 007a 5A1C     		adds	r2, r3, #1
 173 007c 7A62     		str	r2, [r7, #36]
 174 007e 1B78     		ldrb	r3, [r3]
 175 0080 1800     		movs	r0, r3
 176 0082 FFF7FEFF 		bl	ascii_write_char
 177              	.L8:
 178              	.LBE3:
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 179              		.loc 1 39 0
 180 0086 7B6A     		ldr	r3, [r7, #36]
 181 0088 1B78     		ldrb	r3, [r3]
 182 008a 002B     		cmp	r3, #0
 183 008c F4D1     		bne	.L9
  42:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  43:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	return 0;
 184              		.loc 1 43 0
 185 008e C046     		nop
  44:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  45:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 186              		.loc 1 45 0
 187 0090 BD46     		mov	sp, r7
 188 0092 0BB0     		add	sp, sp, #44
 189              		@ sp needed
 190 0094 90BD     		pop	{r4, r7, pc}
 191              	.L12:
 192 0096 C046     		.align	2
 193              	.L11:
 194 0098 00000000 		.word	.LC0
 195 009c 10000000 		.word	.LC2
 196              		.cfi_endproc
 197              	.LFE2:
 199              	.Letext0:
