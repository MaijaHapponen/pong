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
  15              		.file	"delay.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	delay_250ns
  21              		.code	16
  22              		.thumb_func
  24              	delay_250ns:
  25              	.LFB0:
  26              		.file 1 "C:/Users/Maija/Documents/mop/pong/delay.c"
   1:C:/Users/Maija/Documents/mop/pong\delay.c **** 
   2:C:/Users/Maija/Documents/mop/pong\delay.c **** #include "delay.h"
   3:C:/Users/Maija/Documents/mop/pong\delay.c **** 
   4:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_250ns(void){
  27              		.loc 1 4 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   5:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL = 0;
  35              		.loc 1 5 0
  36 0004 0C4B     		ldr	r3, .L3
  37 0006 0022     		movs	r2, #0
  38 0008 1A60     		str	r2, [r3]
   6:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_LOAD = (168/4)-1;
  39              		.loc 1 6 0
  40 000a 0C4B     		ldr	r3, .L3+4
  41 000c 2922     		movs	r2, #41
  42 000e 1A60     		str	r2, [r3]
   7:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_VAL = 0;
  43              		.loc 1 7 0
  44 0010 0B4B     		ldr	r3, .L3+8
  45 0012 0022     		movs	r2, #0
  46 0014 1A60     		str	r2, [r3]
   8:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL=5;
  47              		.loc 1 8 0
  48 0016 084B     		ldr	r3, .L3
  49 0018 0522     		movs	r2, #5
  50 001a 1A60     		str	r2, [r3]
   9:C:/Users/Maija/Documents/mop/pong\delay.c **** 	while((*STK_CTRL&0x10000)==0){}
  51              		.loc 1 9 0
  52 001c C046     		nop
  53              	.L2:
  54              		.loc 1 9 0 is_stmt 0 discriminator 1
  55 001e 064B     		ldr	r3, .L3
  56 0020 1A68     		ldr	r2, [r3]
  57 0022 8023     		movs	r3, #128
  58 0024 5B02     		lsls	r3, r3, #9
  59 0026 1340     		ands	r3, r2
  60 0028 F9D0     		beq	.L2
  10:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL=0;
  61              		.loc 1 10 0 is_stmt 1
  62 002a 034B     		ldr	r3, .L3
  63 002c 0022     		movs	r2, #0
  64 002e 1A60     		str	r2, [r3]
  11:C:/Users/Maija/Documents/mop/pong\delay.c **** }
  65              		.loc 1 11 0
  66 0030 C046     		nop
  67 0032 BD46     		mov	sp, r7
  68              		@ sp needed
  69 0034 80BD     		pop	{r7, pc}
  70              	.L4:
  71 0036 C046     		.align	2
  72              	.L3:
  73 0038 10E000E0 		.word	-536813552
  74 003c 14E000E0 		.word	-536813548
  75 0040 18E000E0 		.word	-536813544
  76              		.cfi_endproc
  77              	.LFE0:
  79              		.align	2
  80              		.global	delay_mikro
  81              		.code	16
  82              		.thumb_func
  84              	delay_mikro:
  85              	.LFB1:
  12:C:/Users/Maija/Documents/mop/pong\delay.c **** 
  13:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_mikro(unsigned int us){
  86              		.loc 1 13 0
  87              		.cfi_startproc
  88 0044 80B5     		push	{r7, lr}
  89              		.cfi_def_cfa_offset 8
  90              		.cfi_offset 7, -8
  91              		.cfi_offset 14, -4
  92 0046 84B0     		sub	sp, sp, #16
  93              		.cfi_def_cfa_offset 24
  94 0048 00AF     		add	r7, sp, #0
  95              		.cfi_def_cfa_register 7
  96 004a 7860     		str	r0, [r7, #4]
  97              	.LBB2:
  14:C:/Users/Maija/Documents/mop/pong\delay.c **** 	
  15:C:/Users/Maija/Documents/mop/pong\delay.c **** 	for(int i=0; i<us; i++){
  98              		.loc 1 15 0
  99 004c 0023     		movs	r3, #0
 100 004e FB60     		str	r3, [r7, #12]
 101 0050 0AE0     		b	.L6
 102              	.L7:
  16:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 103              		.loc 1 16 0 discriminator 3
 104 0052 FFF7FEFF 		bl	delay_250ns
  17:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 105              		.loc 1 17 0 discriminator 3
 106 0056 FFF7FEFF 		bl	delay_250ns
  18:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 107              		.loc 1 18 0 discriminator 3
 108 005a FFF7FEFF 		bl	delay_250ns
  19:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 109              		.loc 1 19 0 discriminator 3
 110 005e FFF7FEFF 		bl	delay_250ns
  15:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 111              		.loc 1 15 0 discriminator 3
 112 0062 FB68     		ldr	r3, [r7, #12]
 113 0064 0133     		adds	r3, r3, #1
 114 0066 FB60     		str	r3, [r7, #12]
 115              	.L6:
  15:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 116              		.loc 1 15 0 is_stmt 0 discriminator 1
 117 0068 FA68     		ldr	r2, [r7, #12]
 118 006a 7B68     		ldr	r3, [r7, #4]
 119 006c 9A42     		cmp	r2, r3
 120 006e F0D3     		bcc	.L7
 121              	.LBE2:
  20:C:/Users/Maija/Documents/mop/pong\delay.c **** 	}
  21:C:/Users/Maija/Documents/mop/pong\delay.c **** 	
  22:C:/Users/Maija/Documents/mop/pong\delay.c **** }
 122              		.loc 1 22 0 is_stmt 1
 123 0070 C046     		nop
 124 0072 BD46     		mov	sp, r7
 125 0074 04B0     		add	sp, sp, #16
 126              		@ sp needed
 127 0076 80BD     		pop	{r7, pc}
 128              		.cfi_endproc
 129              	.LFE1:
 131              		.align	2
 132              		.global	delay_milli
 133              		.code	16
 134              		.thumb_func
 136              	delay_milli:
 137              	.LFB2:
  23:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_milli(unsigned int ms){
 138              		.loc 1 23 0
 139              		.cfi_startproc
 140 0078 80B5     		push	{r7, lr}
 141              		.cfi_def_cfa_offset 8
 142              		.cfi_offset 7, -8
 143              		.cfi_offset 14, -4
 144 007a 82B0     		sub	sp, sp, #8
 145              		.cfi_def_cfa_offset 16
 146 007c 00AF     		add	r7, sp, #0
 147              		.cfi_def_cfa_register 7
 148 007e 7860     		str	r0, [r7, #4]
  24:C:/Users/Maija/Documents/mop/pong\delay.c **** 	#ifdef SIMULATOR
  25:C:/Users/Maija/Documents/mop/pong\delay.c **** 		ms= ms/1000;
  26:C:/Users/Maija/Documents/mop/pong\delay.c **** 		ms++;
  27:C:/Users/Maija/Documents/mop/pong\delay.c **** 	#endif
  28:C:/Users/Maija/Documents/mop/pong\delay.c **** 	delay_mikro(ms*1000);
 149              		.loc 1 28 0
 150 0080 7B68     		ldr	r3, [r7, #4]
 151 0082 FA22     		movs	r2, #250
 152 0084 9200     		lsls	r2, r2, #2
 153 0086 5343     		muls	r3, r2
 154 0088 1800     		movs	r0, r3
 155 008a FFF7FEFF 		bl	delay_mikro
  29:C:/Users/Maija/Documents/mop/pong\delay.c **** }...
 156              		.loc 1 29 0
 157 008e C046     		nop
 158 0090 BD46     		mov	sp, r7
 159 0092 02B0     		add	sp, sp, #8
 160              		@ sp needed
 161 0094 80BD     		pop	{r7, pc}
 162              		.cfi_endproc
 163              	.LFE2:
 165              	.Letext0:
