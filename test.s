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
   4:C:/Users/Maija/Documents/mop/pong\delay.c **** #define SIMULATOR 1
   5:C:/Users/Maija/Documents/mop/pong\delay.c **** 
   6:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_250ns(void){
  27              		.loc 1 6 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   7:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL = 0;
  35              		.loc 1 7 0
  36 0004 0C4B     		ldr	r3, .L3
  37 0006 0022     		movs	r2, #0
  38 0008 1A60     		str	r2, [r3]
   8:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_LOAD = (168/4)-1;
  39              		.loc 1 8 0
  40 000a 0C4B     		ldr	r3, .L3+4
  41 000c 2922     		movs	r2, #41
  42 000e 1A60     		str	r2, [r3]
   9:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_VAL = 0;
  43              		.loc 1 9 0
  44 0010 0B4B     		ldr	r3, .L3+8
  45 0012 0022     		movs	r2, #0
  46 0014 1A60     		str	r2, [r3]
  10:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL=5;
  47              		.loc 1 10 0
  48 0016 084B     		ldr	r3, .L3
  49 0018 0522     		movs	r2, #5
  50 001a 1A60     		str	r2, [r3]
  11:C:/Users/Maija/Documents/mop/pong\delay.c **** 	while((*STK_CTRL&0x10000)==0){}
  51              		.loc 1 11 0
  52 001c C046     		nop
  53              	.L2:
  54              		.loc 1 11 0 is_stmt 0 discriminator 1
  55 001e 064B     		ldr	r3, .L3
  56 0020 1A68     		ldr	r2, [r3]
  57 0022 8023     		movs	r3, #128
  58 0024 5B02     		lsls	r3, r3, #9
  59 0026 1340     		ands	r3, r2
  60 0028 F9D0     		beq	.L2
  12:C:/Users/Maija/Documents/mop/pong\delay.c **** 	*STK_CTRL=0;
  61              		.loc 1 12 0 is_stmt 1
  62 002a 034B     		ldr	r3, .L3
  63 002c 0022     		movs	r2, #0
  64 002e 1A60     		str	r2, [r3]
  13:C:/Users/Maija/Documents/mop/pong\delay.c **** }
  65              		.loc 1 13 0
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
  80              		.global	delay_500ns
  81              		.code	16
  82              		.thumb_func
  84              	delay_500ns:
  85              	.LFB1:
  14:C:/Users/Maija/Documents/mop/pong\delay.c **** 
  15:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_500ns(void){
  86              		.loc 1 15 0
  87              		.cfi_startproc
  88 0044 80B5     		push	{r7, lr}
  89              		.cfi_def_cfa_offset 8
  90              		.cfi_offset 7, -8
  91              		.cfi_offset 14, -4
  92 0046 00AF     		add	r7, sp, #0
  93              		.cfi_def_cfa_register 7
  16:C:/Users/Maija/Documents/mop/pong\delay.c **** 	delay_250ns();
  94              		.loc 1 16 0
  95 0048 FFF7FEFF 		bl	delay_250ns
  17:C:/Users/Maija/Documents/mop/pong\delay.c **** 	delay_250ns();
  96              		.loc 1 17 0
  97 004c FFF7FEFF 		bl	delay_250ns
  18:C:/Users/Maija/Documents/mop/pong\delay.c **** }
  98              		.loc 1 18 0
  99 0050 C046     		nop
 100 0052 BD46     		mov	sp, r7
 101              		@ sp needed
 102 0054 80BD     		pop	{r7, pc}
 103              		.cfi_endproc
 104              	.LFE1:
 106 0056 C046     		.align	2
 107              		.global	delay_mikro
 108              		.code	16
 109              		.thumb_func
 111              	delay_mikro:
 112              	.LFB2:
  19:C:/Users/Maija/Documents/mop/pong\delay.c **** 
  20:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_mikro(unsigned int us){
 113              		.loc 1 20 0
 114              		.cfi_startproc
 115 0058 80B5     		push	{r7, lr}
 116              		.cfi_def_cfa_offset 8
 117              		.cfi_offset 7, -8
 118              		.cfi_offset 14, -4
 119 005a 84B0     		sub	sp, sp, #16
 120              		.cfi_def_cfa_offset 24
 121 005c 00AF     		add	r7, sp, #0
 122              		.cfi_def_cfa_register 7
 123 005e 7860     		str	r0, [r7, #4]
 124              	.LBB2:
  21:C:/Users/Maija/Documents/mop/pong\delay.c **** 	
  22:C:/Users/Maija/Documents/mop/pong\delay.c **** 	for(int i=0; i<us; i++){
 125              		.loc 1 22 0
 126 0060 0023     		movs	r3, #0
 127 0062 FB60     		str	r3, [r7, #12]
 128 0064 0AE0     		b	.L7
 129              	.L8:
  23:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 130              		.loc 1 23 0 discriminator 3
 131 0066 FFF7FEFF 		bl	delay_250ns
  24:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 132              		.loc 1 24 0 discriminator 3
 133 006a FFF7FEFF 		bl	delay_250ns
  25:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 134              		.loc 1 25 0 discriminator 3
 135 006e FFF7FEFF 		bl	delay_250ns
  26:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 136              		.loc 1 26 0 discriminator 3
 137 0072 FFF7FEFF 		bl	delay_250ns
  22:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 138              		.loc 1 22 0 discriminator 3
 139 0076 FB68     		ldr	r3, [r7, #12]
 140 0078 0133     		adds	r3, r3, #1
 141 007a FB60     		str	r3, [r7, #12]
 142              	.L7:
  22:C:/Users/Maija/Documents/mop/pong\delay.c **** 		delay_250ns();
 143              		.loc 1 22 0 is_stmt 0 discriminator 1
 144 007c FA68     		ldr	r2, [r7, #12]
 145 007e 7B68     		ldr	r3, [r7, #4]
 146 0080 9A42     		cmp	r2, r3
 147 0082 F0D3     		bcc	.L8
 148              	.LBE2:
  27:C:/Users/Maija/Documents/mop/pong\delay.c **** 	}
  28:C:/Users/Maija/Documents/mop/pong\delay.c **** 	
  29:C:/Users/Maija/Documents/mop/pong\delay.c **** }
 149              		.loc 1 29 0 is_stmt 1
 150 0084 C046     		nop
 151 0086 BD46     		mov	sp, r7
 152 0088 04B0     		add	sp, sp, #16
 153              		@ sp needed
 154 008a 80BD     		pop	{r7, pc}
 155              		.cfi_endproc
 156              	.LFE2:
 158              		.global	__aeabi_uidiv
 159              		.align	2
 160              		.global	delay_milli
 161              		.code	16
 162              		.thumb_func
 164              	delay_milli:
 165              	.LFB3:
  30:C:/Users/Maija/Documents/mop/pong\delay.c **** void delay_milli(unsigned int ms){
 166              		.loc 1 30 0
 167              		.cfi_startproc
 168 008c 80B5     		push	{r7, lr}
 169              		.cfi_def_cfa_offset 8
 170              		.cfi_offset 7, -8
 171              		.cfi_offset 14, -4
 172 008e 82B0     		sub	sp, sp, #8
 173              		.cfi_def_cfa_offset 16
 174 0090 00AF     		add	r7, sp, #0
 175              		.cfi_def_cfa_register 7
 176 0092 7860     		str	r0, [r7, #4]
  31:C:/Users/Maija/Documents/mop/pong\delay.c **** 	#ifdef SIMULATOR
  32:C:/Users/Maija/Documents/mop/pong\delay.c **** 		ms= ms/1000;
 177              		.loc 1 32 0
 178 0094 7A68     		ldr	r2, [r7, #4]
 179 0096 FA23     		movs	r3, #250
 180 0098 9900     		lsls	r1, r3, #2
 181 009a 1000     		movs	r0, r2
 182 009c FFF7FEFF 		bl	__aeabi_uidiv
 183 00a0 0300     		movs	r3, r0
 184 00a2 7B60     		str	r3, [r7, #4]
  33:C:/Users/Maija/Documents/mop/pong\delay.c **** 		ms++;
 185              		.loc 1 33 0
 186 00a4 7B68     		ldr	r3, [r7, #4]
 187 00a6 0133     		adds	r3, r3, #1
 188 00a8 7B60     		str	r3, [r7, #4]
  34:C:/Users/Maija/Documents/mop/pong\delay.c **** 	#endif
  35:C:/Users/Maija/Documents/mop/pong\delay.c **** 	delay_mikro(ms*1000);
 189              		.loc 1 35 0
 190 00aa 7B68     		ldr	r3, [r7, #4]
 191 00ac FA22     		movs	r2, #250
 192 00ae 9200     		lsls	r2, r2, #2
 193 00b0 5343     		muls	r3, r2
 194 00b2 1800     		movs	r0, r3
 195 00b4 FFF7FEFF 		bl	delay_mikro
  36:C:/Users/Maija/Documents/mop/pong\delay.c **** }...
 196              		.loc 1 36 0
 197 00b8 C046     		nop
 198 00ba BD46     		mov	sp, r7
 199 00bc 02B0     		add	sp, sp, #8
 200              		@ sp needed
 201 00be 80BD     		pop	{r7, pc}
 202              		.cfi_endproc
 203              	.LFE3:
 205              	.Letext0:
