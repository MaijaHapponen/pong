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
  15              		.file	"keypad.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	init_keypad
  21              		.code	16
  22              		.thumb_func
  24              	init_keypad:
  25              	.LFB0:
  26              		.file 1 "C:/Users/Maija/Documents/mop/pong/keypad.c"
   1:C:/Users/Maija/Documents/mop/pong\keypad.c **** #include "keypad.h"
   2:C:/Users/Maija/Documents/mop/pong\keypad.c **** #include "ports.h"
   3:C:/Users/Maija/Documents/mop/pong\keypad.c **** 
   4:C:/Users/Maija/Documents/mop/pong\keypad.c **** void init_keypad(void){
  27              		.loc 1 4 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 00AF     		add	r7, sp, #0
  34              		.cfi_def_cfa_register 7
   5:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	*GPIO_D_MODER = 0x55005555;
  35              		.loc 1 5 0
  36 0004 0D4B     		ldr	r3, .L2
  37 0006 0E4A     		ldr	r2, .L2+4
  38 0008 1A60     		str	r2, [r3]
   6:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	*GPIO_D_OTYPER &= 0x00FF;
  39              		.loc 1 6 0
  40 000a 0E4A     		ldr	r2, .L2+8
  41 000c 0D4B     		ldr	r3, .L2+8
  42 000e 1B88     		ldrh	r3, [r3]
  43 0010 9BB2     		uxth	r3, r3
  44 0012 FF21     		movs	r1, #255
  45 0014 0B40     		ands	r3, r1
  46 0016 9BB2     		uxth	r3, r3
  47 0018 1380     		strh	r3, [r2]
   7:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	*GPIO_D_PUPDR &= 0x0000FFFF;
  48              		.loc 1 7 0
  49 001a 0B4B     		ldr	r3, .L2+12
  50 001c 0A4A     		ldr	r2, .L2+12
  51 001e 1268     		ldr	r2, [r2]
  52 0020 1204     		lsls	r2, r2, #16
  53 0022 120C     		lsrs	r2, r2, #16
  54 0024 1A60     		str	r2, [r3]
   8:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	*GPIO_D_PUPDR |= 0x00AA0000;
  55              		.loc 1 8 0
  56 0026 084B     		ldr	r3, .L2+12
  57 0028 074A     		ldr	r2, .L2+12
  58 002a 1268     		ldr	r2, [r2]
  59 002c AA21     		movs	r1, #170
  60 002e 0904     		lsls	r1, r1, #16
  61 0030 0A43     		orrs	r2, r1
  62 0032 1A60     		str	r2, [r3]
   9:C:/Users/Maija/Documents/mop/pong\keypad.c **** }
  63              		.loc 1 9 0
  64 0034 C046     		nop
  65 0036 BD46     		mov	sp, r7
  66              		@ sp needed
  67 0038 80BD     		pop	{r7, pc}
  68              	.L3:
  69 003a C046     		.align	2
  70              	.L2:
  71 003c 000C0240 		.word	1073875968
  72 0040 55550055 		.word	1426085205
  73 0044 040C0240 		.word	1073875972
  74 0048 300C0240 		.word	1073876016
  75              		.cfi_endproc
  76              	.LFE0:
  78              		.align	2
  79              		.global	readColumn
  80              		.code	16
  81              		.thumb_func
  83              	readColumn:
  84              	.LFB1:
  10:C:/Users/Maija/Documents/mop/pong\keypad.c **** int readColumn(void){
  85              		.loc 1 10 0
  86              		.cfi_startproc
  87 004c 80B5     		push	{r7, lr}
  88              		.cfi_def_cfa_offset 8
  89              		.cfi_offset 7, -8
  90              		.cfi_offset 14, -4
  91 004e 82B0     		sub	sp, sp, #8
  92              		.cfi_def_cfa_offset 16
  93 0050 00AF     		add	r7, sp, #0
  94              		.cfi_def_cfa_register 7
  11:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	
  12:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	unsigned char c;
  13:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	c=*GPIO_D_IDR_HIGH;
  95              		.loc 1 13 0
  96 0052 124A     		ldr	r2, .L10
  97 0054 FB1D     		adds	r3, r7, #7
  98 0056 1278     		ldrb	r2, [r2]
  99 0058 1A70     		strb	r2, [r3]
  14:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	
  15:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	if(c&0x8) return 4;
 100              		.loc 1 15 0
 101 005a FB1D     		adds	r3, r7, #7
 102 005c 1B78     		ldrb	r3, [r3]
 103 005e 0822     		movs	r2, #8
 104 0060 1340     		ands	r3, r2
 105 0062 01D0     		beq	.L5
 106              		.loc 1 15 0 is_stmt 0 discriminator 1
 107 0064 0423     		movs	r3, #4
 108 0066 15E0     		b	.L6
 109              	.L5:
  16:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	if(c&0x4) return 3;
 110              		.loc 1 16 0 is_stmt 1
 111 0068 FB1D     		adds	r3, r7, #7
 112 006a 1B78     		ldrb	r3, [r3]
 113 006c 0422     		movs	r2, #4
 114 006e 1340     		ands	r3, r2
 115 0070 01D0     		beq	.L7
 116              		.loc 1 16 0 is_stmt 0 discriminator 1
 117 0072 0323     		movs	r3, #3
 118 0074 0EE0     		b	.L6
 119              	.L7:
  17:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	if(c&0x2) return 2;
 120              		.loc 1 17 0 is_stmt 1
 121 0076 FB1D     		adds	r3, r7, #7
 122 0078 1B78     		ldrb	r3, [r3]
 123 007a 0222     		movs	r2, #2
 124 007c 1340     		ands	r3, r2
 125 007e 01D0     		beq	.L8
 126              		.loc 1 17 0 is_stmt 0 discriminator 1
 127 0080 0223     		movs	r3, #2
 128 0082 07E0     		b	.L6
 129              	.L8:
  18:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	if(c&0x1) return 1;
 130              		.loc 1 18 0 is_stmt 1
 131 0084 FB1D     		adds	r3, r7, #7
 132 0086 1B78     		ldrb	r3, [r3]
 133 0088 0122     		movs	r2, #1
 134 008a 1340     		ands	r3, r2
 135 008c 01D0     		beq	.L9
 136              		.loc 1 18 0 is_stmt 0 discriminator 1
 137 008e 0123     		movs	r3, #1
 138 0090 00E0     		b	.L6
 139              	.L9:
  19:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	return 0;
 140              		.loc 1 19 0 is_stmt 1
 141 0092 0023     		movs	r3, #0
 142              	.L6:
  20:C:/Users/Maija/Documents/mop/pong\keypad.c **** }
 143              		.loc 1 20 0
 144 0094 1800     		movs	r0, r3
 145 0096 BD46     		mov	sp, r7
 146 0098 02B0     		add	sp, sp, #8
 147              		@ sp needed
 148 009a 80BD     		pop	{r7, pc}
 149              	.L11:
 150              		.align	2
 151              	.L10:
 152 009c 110C0240 		.word	1073875985
 153              		.cfi_endproc
 154              	.LFE1:
 156              		.align	2
 157              		.global	activateRow
 158              		.code	16
 159              		.thumb_func
 161              	activateRow:
 162              	.LFB2:
  21:C:/Users/Maija/Documents/mop/pong\keypad.c **** void activateRow(unsigned int row){
 163              		.loc 1 21 0
 164              		.cfi_startproc
 165 00a0 80B5     		push	{r7, lr}
 166              		.cfi_def_cfa_offset 8
 167              		.cfi_offset 7, -8
 168              		.cfi_offset 14, -4
 169 00a2 82B0     		sub	sp, sp, #8
 170              		.cfi_def_cfa_offset 16
 171 00a4 00AF     		add	r7, sp, #0
 172              		.cfi_def_cfa_register 7
 173 00a6 7860     		str	r0, [r7, #4]
  22:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	switch(row){
 174              		.loc 1 22 0
 175 00a8 7B68     		ldr	r3, [r7, #4]
 176 00aa 042B     		cmp	r3, #4
 177 00ac 19D8     		bhi	.L20
 178 00ae 7B68     		ldr	r3, [r7, #4]
 179 00b0 9A00     		lsls	r2, r3, #2
 180 00b2 0E4B     		ldr	r3, .L21
 181 00b4 D318     		adds	r3, r2, r3
 182 00b6 1B68     		ldr	r3, [r3]
 183 00b8 9F46     		mov	pc, r3
 184              		.section	.rodata
 185              		.align	2
 186              	.L15:
 187 0000 DA000000 		.word	.L14
 188 0004 BA000000 		.word	.L16
 189 0008 C2000000 		.word	.L17
 190 000c CA000000 		.word	.L18
 191 0010 D2000000 		.word	.L19
 192              		.text
 193              	.L16:
  23:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		case 1: *GPIO_D_ODR_HIGH = 0x10; break;
 194              		.loc 1 23 0
 195 00ba 0D4B     		ldr	r3, .L21+4
 196 00bc 1022     		movs	r2, #16
 197 00be 1A70     		strb	r2, [r3]
 198 00c0 0FE0     		b	.L13
 199              	.L17:
  24:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		case 2: *GPIO_D_ODR_HIGH = 0x20; break;
 200              		.loc 1 24 0
 201 00c2 0B4B     		ldr	r3, .L21+4
 202 00c4 2022     		movs	r2, #32
 203 00c6 1A70     		strb	r2, [r3]
 204 00c8 0BE0     		b	.L13
 205              	.L18:
  25:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		case 3: *GPIO_D_ODR_HIGH = 0x40; break;
 206              		.loc 1 25 0
 207 00ca 094B     		ldr	r3, .L21+4
 208 00cc 4022     		movs	r2, #64
 209 00ce 1A70     		strb	r2, [r3]
 210 00d0 07E0     		b	.L13
 211              	.L19:
  26:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		case 4: *GPIO_D_ODR_HIGH = 0x80; break;
 212              		.loc 1 26 0
 213 00d2 074B     		ldr	r3, .L21+4
 214 00d4 8022     		movs	r2, #128
 215 00d6 1A70     		strb	r2, [r3]
 216 00d8 03E0     		b	.L13
 217              	.L14:
  27:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		case 0: *GPIO_D_ODR_HIGH = 0x00; break;
 218              		.loc 1 27 0
 219 00da 054B     		ldr	r3, .L21+4
 220 00dc 0022     		movs	r2, #0
 221 00de 1A70     		strb	r2, [r3]
 222 00e0 C046     		nop
 223              	.L13:
 224              	.L20:
  28:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	}
  29:C:/Users/Maija/Documents/mop/pong\keypad.c **** }
 225              		.loc 1 29 0
 226 00e2 C046     		nop
 227 00e4 BD46     		mov	sp, r7
 228 00e6 02B0     		add	sp, sp, #8
 229              		@ sp needed
 230 00e8 80BD     		pop	{r7, pc}
 231              	.L22:
 232 00ea C046     		.align	2
 233              	.L21:
 234 00ec 00000000 		.word	.L15
 235 00f0 150C0240 		.word	1073875989
 236              		.cfi_endproc
 237              	.LFE2:
 239              		.section	.rodata
 240              		.align	2
 241              	.LC0:
 242 0014 01       		.byte	1
 243 0015 02       		.byte	2
 244 0016 03       		.byte	3
 245 0017 0A       		.byte	10
 246 0018 04       		.byte	4
 247 0019 05       		.byte	5
 248 001a 06       		.byte	6
 249 001b 0B       		.byte	11
 250 001c 07       		.byte	7
 251 001d 08       		.byte	8
 252 001e 09       		.byte	9
 253 001f 0C       		.byte	12
 254 0020 0E       		.byte	14
 255 0021 00       		.byte	0
 256 0022 0F       		.byte	15
 257 0023 0D       		.byte	13
 258              		.text
 259              		.align	2
 260              		.global	keyb
 261              		.code	16
 262              		.thumb_func
 264              	keyb:
 265              	.LFB3:
  30:C:/Users/Maija/Documents/mop/pong\keypad.c **** unsigned char keyb(void){
 266              		.loc 1 30 0
 267              		.cfi_startproc
 268 00f4 80B5     		push	{r7, lr}
 269              		.cfi_def_cfa_offset 8
 270              		.cfi_offset 7, -8
 271              		.cfi_offset 14, -4
 272 00f6 86B0     		sub	sp, sp, #24
 273              		.cfi_def_cfa_offset 32
 274 00f8 00AF     		add	r7, sp, #0
 275              		.cfi_def_cfa_register 7
  31:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	unsigned char key[] ={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 276              		.loc 1 31 0
 277 00fa 3A00     		movs	r2, r7
 278 00fc 174B     		ldr	r3, .L29
 279 00fe 1000     		movs	r0, r2
 280 0100 1900     		movs	r1, r3
 281 0102 1023     		movs	r3, #16
 282 0104 1A00     		movs	r2, r3
 283 0106 FFF7FEFF 		bl	memcpy
  32:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	int row,col;
  33:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	for(row=1;row<=4;row++){
 284              		.loc 1 33 0
 285 010a 0123     		movs	r3, #1
 286 010c 7B61     		str	r3, [r7, #20]
 287 010e 19E0     		b	.L24
 288              	.L27:
  34:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		
  35:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		activateRow(row);
 289              		.loc 1 35 0
 290 0110 7B69     		ldr	r3, [r7, #20]
 291 0112 1800     		movs	r0, r3
 292 0114 FFF7FEFF 		bl	activateRow
  36:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		
  37:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		if((col=readColumn())){
 293              		.loc 1 37 0
 294 0118 FFF7FEFF 		bl	readColumn
 295 011c 0300     		movs	r3, r0
 296 011e 3B61     		str	r3, [r7, #16]
 297 0120 3B69     		ldr	r3, [r7, #16]
 298 0122 002B     		cmp	r3, #0
 299 0124 0BD0     		beq	.L25
  38:C:/Users/Maija/Documents/mop/pong\keypad.c **** 			activateRow(0);
 300              		.loc 1 38 0
 301 0126 0020     		movs	r0, #0
 302 0128 FFF7FEFF 		bl	activateRow
  39:C:/Users/Maija/Documents/mop/pong\keypad.c **** 			return key[4*(row-1)+(col-1)];
 303              		.loc 1 39 0
 304 012c 7B69     		ldr	r3, [r7, #20]
 305 012e 013B     		subs	r3, r3, #1
 306 0130 9A00     		lsls	r2, r3, #2
 307 0132 3B69     		ldr	r3, [r7, #16]
 308 0134 013B     		subs	r3, r3, #1
 309 0136 D318     		adds	r3, r2, r3
 310 0138 3A00     		movs	r2, r7
 311 013a D35C     		ldrb	r3, [r2, r3]
 312 013c 09E0     		b	.L28
 313              	.L25:
  33:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		
 314              		.loc 1 33 0 discriminator 2
 315 013e 7B69     		ldr	r3, [r7, #20]
 316 0140 0133     		adds	r3, r3, #1
 317 0142 7B61     		str	r3, [r7, #20]
 318              	.L24:
  33:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		
 319              		.loc 1 33 0 is_stmt 0 discriminator 1
 320 0144 7B69     		ldr	r3, [r7, #20]
 321 0146 042B     		cmp	r3, #4
 322 0148 E2DD     		ble	.L27
  40:C:/Users/Maija/Documents/mop/pong\keypad.c **** 		}
  41:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	}
  42:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	activateRow(0);
 323              		.loc 1 42 0 is_stmt 1
 324 014a 0020     		movs	r0, #0
 325 014c FFF7FEFF 		bl	activateRow
  43:C:/Users/Maija/Documents/mop/pong\keypad.c **** 	return 0xFF;
 326              		.loc 1 43 0
 327 0150 FF23     		movs	r3, #255
 328              	.L28:
  44:C:/Users/Maija/Documents/mop/pong\keypad.c **** }
 329              		.loc 1 44 0 discriminator 1
 330 0152 1800     		movs	r0, r3
 331 0154 BD46     		mov	sp, r7
 332 0156 06B0     		add	sp, sp, #24
 333              		@ sp needed
 334 0158 80BD     		pop	{r7, pc}
 335              	.L30:
 336 015a C046     		.align	2
 337              	.L29:
 338 015c 14000000 		.word	.LC0
 339              		.cfi_endproc
 340              	.LFE3:
 342              	.Letext0:
