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
  26              		.file 1 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c"
   1:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** #include "keypad.h"
   2:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** #include "ports.h"
   3:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 
   4:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** void init_keypad(void)
   5:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** {
  27              		.loc 1 5 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  31 0000 80B5     		push	{r7, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 7, -8
  34              		.cfi_offset 14, -4
  35 0002 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
   6:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	*GPIO_D_MODER = 0x55005555;
  37              		.loc 1 6 0
  38 0004 0D4B     		ldr	r3, .L2
  39 0006 0E4A     		ldr	r2, .L2+4
  40 0008 1A60     		str	r2, [r3]
   7:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	*GPIO_D_OTYPER &= 0x00FF;
  41              		.loc 1 7 0
  42 000a 0E4A     		ldr	r2, .L2+8
  43 000c 0D4B     		ldr	r3, .L2+8
  44 000e 1B88     		ldrh	r3, [r3]
  45 0010 9BB2     		uxth	r3, r3
  46 0012 FF21     		movs	r1, #255
  47 0014 0B40     		ands	r3, r1
  48 0016 9BB2     		uxth	r3, r3
  49 0018 1380     		strh	r3, [r2]
   8:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	*GPIO_D_PUPDR &= 0x0000FFFF;
  50              		.loc 1 8 0
  51 001a 0B4B     		ldr	r3, .L2+12
  52 001c 0A4A     		ldr	r2, .L2+12
  53 001e 1268     		ldr	r2, [r2]
  54 0020 1204     		lsls	r2, r2, #16
  55 0022 120C     		lsrs	r2, r2, #16
  56 0024 1A60     		str	r2, [r3]
   9:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	*GPIO_D_PUPDR |= 0x00AA0000;
  57              		.loc 1 9 0
  58 0026 084B     		ldr	r3, .L2+12
  59 0028 074A     		ldr	r2, .L2+12
  60 002a 1268     		ldr	r2, [r2]
  61 002c AA21     		movs	r1, #170
  62 002e 0904     		lsls	r1, r1, #16
  63 0030 0A43     		orrs	r2, r1
  64 0032 1A60     		str	r2, [r3]
  10:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** }
  65              		.loc 1 10 0
  66 0034 C046     		nop
  67 0036 BD46     		mov	sp, r7
  68              		@ sp needed
  69 0038 80BD     		pop	{r7, pc}
  70              	.L3:
  71 003a C046     		.align	2
  72              	.L2:
  73 003c 000C0240 		.word	1073875968
  74 0040 55550055 		.word	1426085205
  75 0044 040C0240 		.word	1073875972
  76 0048 300C0240 		.word	1073876016
  77              		.cfi_endproc
  78              	.LFE0:
  80              		.align	2
  81              		.global	readColumn
  82              		.code	16
  83              		.thumb_func
  85              	readColumn:
  86              	.LFB1:
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 
  12:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** unsigned int readColumn(void)
  13:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** {
  87              		.loc 1 13 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 8
  90              		@ frame_needed = 1, uses_anonymous_args = 0
  91 004c 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 004e 82B0     		sub	sp, sp, #8
  96              		.cfi_def_cfa_offset 16
  97 0050 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  14:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	unsigned char c;
  15:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	c = *GPIO_D_IDR_HIGH;
  99              		.loc 1 15 0
 100 0052 124A     		ldr	r2, .L10
 101 0054 FB1D     		adds	r3, r7, #7
 102 0056 1278     		ldrb	r2, [r2]
 103 0058 1A70     		strb	r2, [r3]
  16:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	if ( c & 0x8 ) return 4;
 104              		.loc 1 16 0
 105 005a FB1D     		adds	r3, r7, #7
 106 005c 1B78     		ldrb	r3, [r3]
 107 005e 0822     		movs	r2, #8
 108 0060 1340     		ands	r3, r2
 109 0062 01D0     		beq	.L5
 110              		.loc 1 16 0 is_stmt 0 discriminator 1
 111 0064 0423     		movs	r3, #4
 112 0066 15E0     		b	.L6
 113              	.L5:
  17:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	if ( c & 0x4 ) return 3;
 114              		.loc 1 17 0 is_stmt 1
 115 0068 FB1D     		adds	r3, r7, #7
 116 006a 1B78     		ldrb	r3, [r3]
 117 006c 0422     		movs	r2, #4
 118 006e 1340     		ands	r3, r2
 119 0070 01D0     		beq	.L7
 120              		.loc 1 17 0 is_stmt 0 discriminator 1
 121 0072 0323     		movs	r3, #3
 122 0074 0EE0     		b	.L6
 123              	.L7:
  18:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	if ( c & 0x2 ) return 2;
 124              		.loc 1 18 0 is_stmt 1
 125 0076 FB1D     		adds	r3, r7, #7
 126 0078 1B78     		ldrb	r3, [r3]
 127 007a 0222     		movs	r2, #2
 128 007c 1340     		ands	r3, r2
 129 007e 01D0     		beq	.L8
 130              		.loc 1 18 0 is_stmt 0 discriminator 1
 131 0080 0223     		movs	r3, #2
 132 0082 07E0     		b	.L6
 133              	.L8:
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	if ( c & 0x1 ) return 1;
 134              		.loc 1 19 0 is_stmt 1
 135 0084 FB1D     		adds	r3, r7, #7
 136 0086 1B78     		ldrb	r3, [r3]
 137 0088 0122     		movs	r2, #1
 138 008a 1340     		ands	r3, r2
 139 008c 01D0     		beq	.L9
 140              		.loc 1 19 0 is_stmt 0 discriminator 1
 141 008e 0123     		movs	r3, #1
 142 0090 00E0     		b	.L6
 143              	.L9:
  20:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	
  21:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	return 0;
 144              		.loc 1 21 0 is_stmt 1
 145 0092 0023     		movs	r3, #0
 146              	.L6:
  22:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** }
 147              		.loc 1 22 0
 148 0094 1800     		movs	r0, r3
 149 0096 BD46     		mov	sp, r7
 150 0098 02B0     		add	sp, sp, #8
 151              		@ sp needed
 152 009a 80BD     		pop	{r7, pc}
 153              	.L11:
 154              		.align	2
 155              	.L10:
 156 009c 110C0240 		.word	1073875985
 157              		.cfi_endproc
 158              	.LFE1:
 160              		.align	2
 161              		.global	activateRow
 162              		.code	16
 163              		.thumb_func
 165              	activateRow:
 166              	.LFB2:
  23:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 
  24:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** void activateRow(unsigned int row)
  25:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** {
 167              		.loc 1 25 0
 168              		.cfi_startproc
 169              		@ args = 0, pretend = 0, frame = 8
 170              		@ frame_needed = 1, uses_anonymous_args = 0
 171 00a0 80B5     		push	{r7, lr}
 172              		.cfi_def_cfa_offset 8
 173              		.cfi_offset 7, -8
 174              		.cfi_offset 14, -4
 175 00a2 82B0     		sub	sp, sp, #8
 176              		.cfi_def_cfa_offset 16
 177 00a4 00AF     		add	r7, sp, #0
 178              		.cfi_def_cfa_register 7
 179 00a6 7860     		str	r0, [r7, #4]
  26:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	switch(row)
 180              		.loc 1 26 0
 181 00a8 7B68     		ldr	r3, [r7, #4]
 182 00aa 042B     		cmp	r3, #4
 183 00ac 19D8     		bhi	.L20
 184 00ae 7B68     		ldr	r3, [r7, #4]
 185 00b0 9A00     		lsls	r2, r3, #2
 186 00b2 0E4B     		ldr	r3, .L21
 187 00b4 D318     		adds	r3, r2, r3
 188 00b6 1B68     		ldr	r3, [r3]
 189 00b8 9F46     		mov	pc, r3
 190              		.section	.rodata
 191              		.align	2
 192              	.L15:
 193 0000 DA000000 		.word	.L14
 194 0004 BA000000 		.word	.L16
 195 0008 C2000000 		.word	.L17
 196 000c CA000000 		.word	.L18
 197 0010 D2000000 		.word	.L19
 198              		.text
 199              	.L16:
  27:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	{
  28:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		case 1: *GPIO_D_ODR_HIGH = 0x10; break;
 200              		.loc 1 28 0
 201 00ba 0D4B     		ldr	r3, .L21+4
 202 00bc 1022     		movs	r2, #16
 203 00be 1A70     		strb	r2, [r3]
 204 00c0 0FE0     		b	.L13
 205              	.L17:
  29:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		case 2: *GPIO_D_ODR_HIGH = 0x20; break;
 206              		.loc 1 29 0
 207 00c2 0B4B     		ldr	r3, .L21+4
 208 00c4 2022     		movs	r2, #32
 209 00c6 1A70     		strb	r2, [r3]
 210 00c8 0BE0     		b	.L13
 211              	.L18:
  30:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		case 3: *GPIO_D_ODR_HIGH = 0x40; break;
 212              		.loc 1 30 0
 213 00ca 094B     		ldr	r3, .L21+4
 214 00cc 4022     		movs	r2, #64
 215 00ce 1A70     		strb	r2, [r3]
 216 00d0 07E0     		b	.L13
 217              	.L19:
  31:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		case 4: *GPIO_D_ODR_HIGH = 0x80; break;
 218              		.loc 1 31 0
 219 00d2 074B     		ldr	r3, .L21+4
 220 00d4 8022     		movs	r2, #128
 221 00d6 1A70     		strb	r2, [r3]
 222 00d8 03E0     		b	.L13
 223              	.L14:
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		case 0: *GPIO_D_ODR_HIGH = 0x00; break;
 224              		.loc 1 32 0
 225 00da 054B     		ldr	r3, .L21+4
 226 00dc 0022     		movs	r2, #0
 227 00de 1A70     		strb	r2, [r3]
 228 00e0 C046     		nop
 229              	.L13:
 230              	.L20:
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	}
  34:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	
  35:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** }
 231              		.loc 1 35 0
 232 00e2 C046     		nop
 233 00e4 BD46     		mov	sp, r7
 234 00e6 02B0     		add	sp, sp, #8
 235              		@ sp needed
 236 00e8 80BD     		pop	{r7, pc}
 237              	.L22:
 238 00ea C046     		.align	2
 239              	.L21:
 240 00ec 00000000 		.word	.L15
 241 00f0 150C0240 		.word	1073875989
 242              		.cfi_endproc
 243              	.LFE2:
 245              		.section	.rodata
 246              		.align	2
 247              	.LC0:
 248 0014 01       		.byte	1
 249 0015 02       		.byte	2
 250 0016 03       		.byte	3
 251 0017 0A       		.byte	10
 252 0018 04       		.byte	4
 253 0019 05       		.byte	5
 254 001a 06       		.byte	6
 255 001b 0B       		.byte	11
 256 001c 07       		.byte	7
 257 001d 08       		.byte	8
 258 001e 09       		.byte	9
 259 001f 0C       		.byte	12
 260 0020 0E       		.byte	14
 261 0021 00       		.byte	0
 262 0022 0F       		.byte	15
 263 0023 0D       		.byte	13
 264              		.text
 265              		.align	2
 266              		.global	keyb
 267              		.code	16
 268              		.thumb_func
 270              	keyb:
 271              	.LFB3:
  36:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 
  37:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** unsigned char keyb(void)
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** {
 272              		.loc 1 38 0
 273              		.cfi_startproc
 274              		@ args = 0, pretend = 0, frame = 24
 275              		@ frame_needed = 1, uses_anonymous_args = 0
 276 00f4 80B5     		push	{r7, lr}
 277              		.cfi_def_cfa_offset 8
 278              		.cfi_offset 7, -8
 279              		.cfi_offset 14, -4
 280 00f6 86B0     		sub	sp, sp, #24
 281              		.cfi_def_cfa_offset 32
 282 00f8 00AF     		add	r7, sp, #0
 283              		.cfi_def_cfa_register 7
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 284              		.loc 1 39 0
 285 00fa 3A00     		movs	r2, r7
 286 00fc 174B     		ldr	r3, .L29
 287 00fe 1000     		movs	r0, r2
 288 0100 1900     		movs	r1, r3
 289 0102 1023     		movs	r3, #16
 290 0104 1A00     		movs	r2, r3
 291 0106 FFF7FEFF 		bl	memcpy
  40:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	int row, col;
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	for (row=1; row <=4 ; row++ ) {
 292              		.loc 1 41 0
 293 010a 0123     		movs	r3, #1
 294 010c 7B61     		str	r3, [r7, #20]
 295 010e 19E0     		b	.L24
 296              	.L27:
  42:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		activateRow( row );
 297              		.loc 1 42 0
 298 0110 7B69     		ldr	r3, [r7, #20]
 299 0112 1800     		movs	r0, r3
 300 0114 FFF7FEFF 		bl	activateRow
  43:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		if( (col = readColumn()))
 301              		.loc 1 43 0
 302 0118 FFF7FEFF 		bl	readColumn
 303 011c 0300     		movs	r3, r0
 304 011e 3B61     		str	r3, [r7, #16]
 305 0120 3B69     		ldr	r3, [r7, #16]
 306 0122 002B     		cmp	r3, #0
 307 0124 0BD0     		beq	.L25
  44:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		{
  45:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 			activateRow( 0 );
 308              		.loc 1 45 0
 309 0126 0020     		movs	r0, #0
 310 0128 FFF7FEFF 		bl	activateRow
  46:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 			return key [4*(row-1)+(col-1) ];
 311              		.loc 1 46 0
 312 012c 7B69     		ldr	r3, [r7, #20]
 313 012e 013B     		subs	r3, r3, #1
 314 0130 9A00     		lsls	r2, r3, #2
 315 0132 3B69     		ldr	r3, [r7, #16]
 316 0134 013B     		subs	r3, r3, #1
 317 0136 D318     		adds	r3, r2, r3
 318 0138 3A00     		movs	r2, r7
 319 013a D35C     		ldrb	r3, [r2, r3]
 320 013c 09E0     		b	.L28
 321              	.L25:
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		activateRow( row );
 322              		.loc 1 41 0 discriminator 2
 323 013e 7B69     		ldr	r3, [r7, #20]
 324 0140 0133     		adds	r3, r3, #1
 325 0142 7B61     		str	r3, [r7, #20]
 326              	.L24:
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		activateRow( row );
 327              		.loc 1 41 0 is_stmt 0 discriminator 1
 328 0144 7B69     		ldr	r3, [r7, #20]
 329 0146 042B     		cmp	r3, #4
 330 0148 E2DD     		ble	.L27
  47:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		}
  48:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	}
  49:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	activateRow( 0 );
 331              		.loc 1 49 0 is_stmt 1
 332 014a 0020     		movs	r0, #0
 333 014c FFF7FEFF 		bl	activateRow
  50:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	return 0xFF;
 334              		.loc 1 50 0
 335 0150 FF23     		movs	r3, #255
 336              	.L28:
  51:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** }
 337              		.loc 1 51 0 discriminator 1
 338 0152 1800     		movs	r0, r3
 339 0154 BD46     		mov	sp, r7
 340 0156 06B0     		add	sp, sp, #24
 341              		@ sp needed
 342 0158 80BD     		pop	{r7, pc}
 343              	.L30:
 344 015a C046     		.align	2
 345              	.L29:
 346 015c 14000000 		.word	.LC0
 347              		.cfi_endproc
 348              	.LFE3:
 350              		.section	.rodata
 351              		.align	2
 352              	.LC1:
 353 0024 3F       		.byte	63
 354 0025 06       		.byte	6
 355 0026 5B       		.byte	91
 356 0027 4F       		.byte	79
 357 0028 66       		.byte	102
 358 0029 6D       		.byte	109
 359 002a 7D       		.byte	125
 360 002b 07       		.byte	7
 361 002c 7F       		.byte	127
 362 002d 6F       		.byte	111
 363 002e 77       		.byte	119
 364 002f 7C       		.byte	124
 365 0030 39       		.byte	57
 366 0031 5E       		.byte	94
 367 0032 79       		.byte	121
 368 0033 71       		.byte	113
 369              		.text
 370              		.align	2
 371              		.global	out7seg
 372              		.code	16
 373              		.thumb_func
 375              	out7seg:
 376              	.LFB4:
  52:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 
  53:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** void out7seg(unsigned char c)
  54:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** {
 377              		.loc 1 54 0
 378              		.cfi_startproc
 379              		@ args = 0, pretend = 0, frame = 24
 380              		@ frame_needed = 1, uses_anonymous_args = 0
 381 0160 80B5     		push	{r7, lr}
 382              		.cfi_def_cfa_offset 8
 383              		.cfi_offset 7, -8
 384              		.cfi_offset 14, -4
 385 0162 86B0     		sub	sp, sp, #24
 386              		.cfi_def_cfa_offset 32
 387 0164 00AF     		add	r7, sp, #0
 388              		.cfi_def_cfa_register 7
 389 0166 0200     		movs	r2, r0
 390 0168 FB1D     		adds	r3, r7, #7
 391 016a 1A70     		strb	r2, [r3]
  55:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	 unsigned char segCodes[] = {0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F,0x77,0x7C,0x39,0x5E
 392              		.loc 1 55 0
 393 016c 0823     		movs	r3, #8
 394 016e FA18     		adds	r2, r7, r3
 395 0170 0C4B     		ldr	r3, .L35
 396 0172 1000     		movs	r0, r2
 397 0174 1900     		movs	r1, r3
 398 0176 1023     		movs	r3, #16
 399 0178 1A00     		movs	r2, r3
 400 017a FFF7FEFF 		bl	memcpy
  56:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	if(c>=0 && c<=15)
 401              		.loc 1 56 0
 402 017e FB1D     		adds	r3, r7, #7
 403 0180 1B78     		ldrb	r3, [r3]
 404 0182 0F2B     		cmp	r3, #15
 405 0184 07D8     		bhi	.L32
  57:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	{
  58:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		*GPIO_D_ODR_LOW = segCodes[c];
 406              		.loc 1 58 0
 407 0186 0849     		ldr	r1, .L35+4
 408 0188 FB1D     		adds	r3, r7, #7
 409 018a 1B78     		ldrb	r3, [r3]
 410 018c 0822     		movs	r2, #8
 411 018e BA18     		adds	r2, r7, r2
 412 0190 D35C     		ldrb	r3, [r2, r3]
 413 0192 0B70     		strb	r3, [r1]
  59:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	}
  60:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	else
  61:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	{
  62:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		//Släcker displayen
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 		*GPIO_D_ODR_LOW  = 0;
  64:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	}
  65:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** }
 414              		.loc 1 65 0
 415 0194 02E0     		b	.L34
 416              	.L32:
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/keypad.c **** 	}
 417              		.loc 1 63 0
 418 0196 044B     		ldr	r3, .L35+4
 419 0198 0022     		movs	r2, #0
 420 019a 1A70     		strb	r2, [r3]
 421              	.L34:
 422              		.loc 1 65 0
 423 019c C046     		nop
 424 019e BD46     		mov	sp, r7
 425 01a0 06B0     		add	sp, sp, #24
 426              		@ sp needed
 427 01a2 80BD     		pop	{r7, pc}
 428              	.L36:
 429              		.align	2
 430              	.L35:
 431 01a4 24000000 		.word	.LC1
 432 01a8 140C0240 		.word	1073875988
 433              		.cfi_endproc
 434              	.LFE4:
 436              	.Letext0:
