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
  15              		.file	"graphicdisplay.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	graphic_ctrl_bit_set
  21              		.code	16
  22              		.thumb_func
  24              	graphic_ctrl_bit_set:
  25              	.LFB0:
  26              		.file 1 "C:/Users/Maija/Documents/mop/pong/graphicdisplay.c"
   1:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** #include "graphicdisplay.h"
   2:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
   3:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_ctrl_bit_set(uint8_t x){
  27              		.loc 1 3 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 82B0     		sub	sp, sp, #8
  34              		.cfi_def_cfa_offset 16
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 0200     		movs	r2, r0
  38 0008 FB1D     		adds	r3, r7, #7
  39 000a 1A70     		strb	r2, [r3]
   4:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_ODR_LOW |= ( ~B_SELECT & x );
  40              		.loc 1 4 0
  41 000c 094A     		ldr	r2, .L2
  42 000e 094B     		ldr	r3, .L2
  43 0010 1B78     		ldrb	r3, [r3]
  44 0012 DBB2     		uxtb	r3, r3
  45 0014 D9B2     		uxtb	r1, r3
  46 0016 FB1D     		adds	r3, r7, #7
  47 0018 1B78     		ldrb	r3, [r3]
  48 001a 181C     		adds	r0, r3, #0
  49 001c 0423     		movs	r3, #4
  50 001e 9843     		bics	r0, r3
  51 0020 0300     		movs	r3, r0
  52 0022 DBB2     		uxtb	r3, r3
  53 0024 0B43     		orrs	r3, r1
  54 0026 DBB2     		uxtb	r3, r3
  55 0028 DBB2     		uxtb	r3, r3
  56 002a 1370     		strb	r3, [r2]
   5:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
  57              		.loc 1 5 0
  58 002c C046     		nop
  59 002e BD46     		mov	sp, r7
  60 0030 02B0     		add	sp, sp, #8
  61              		@ sp needed
  62 0032 80BD     		pop	{r7, pc}
  63              	.L3:
  64              		.align	2
  65              	.L2:
  66 0034 14100240 		.word	1073877012
  67              		.cfi_endproc
  68              	.LFE0:
  70              		.align	2
  71              		.global	graphic_ctrl_bit_clear
  72              		.code	16
  73              		.thumb_func
  75              	graphic_ctrl_bit_clear:
  76              	.LFB1:
   6:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
   7:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** /*Välj grafisk display och nollställ de bitar som är 1 i x */
   8:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_ctrl_bit_clear(uint8_t x){
  77              		.loc 1 8 0
  78              		.cfi_startproc
  79 0038 80B5     		push	{r7, lr}
  80              		.cfi_def_cfa_offset 8
  81              		.cfi_offset 7, -8
  82              		.cfi_offset 14, -4
  83 003a 82B0     		sub	sp, sp, #8
  84              		.cfi_def_cfa_offset 16
  85 003c 00AF     		add	r7, sp, #0
  86              		.cfi_def_cfa_register 7
  87 003e 0200     		movs	r2, r0
  88 0040 FB1D     		adds	r3, r7, #7
  89 0042 1A70     		strb	r2, [r3]
   9:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_ODR_LOW &= ( ~B_SELECT & ~x );
  90              		.loc 1 9 0
  91 0044 0849     		ldr	r1, .L5
  92 0046 084B     		ldr	r3, .L5
  93 0048 1B78     		ldrb	r3, [r3]
  94 004a DBB2     		uxtb	r3, r3
  95 004c FA1D     		adds	r2, r7, #7
  96 004e 1278     		ldrb	r2, [r2]
  97 0050 D243     		mvns	r2, r2
  98 0052 D2B2     		uxtb	r2, r2
  99 0054 1340     		ands	r3, r2
 100 0056 DBB2     		uxtb	r3, r3
 101 0058 0422     		movs	r2, #4
 102 005a 9343     		bics	r3, r2
 103 005c DBB2     		uxtb	r3, r3
 104 005e 0B70     		strb	r3, [r1]
  10:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 105              		.loc 1 10 0
 106 0060 C046     		nop
 107 0062 BD46     		mov	sp, r7
 108 0064 02B0     		add	sp, sp, #8
 109              		@ sp needed
 110 0066 80BD     		pop	{r7, pc}
 111              	.L6:
 112              		.align	2
 113              	.L5:
 114 0068 14100240 		.word	1073877012
 115              		.cfi_endproc
 116              	.LFE1:
 118              		.align	2
 119              		.global	select_controller
 120              		.code	16
 121              		.thumb_func
 123              	select_controller:
 124              	.LFB2:
  11:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
  12:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void select_controller(uint8_t controller){
 125              		.loc 1 12 0
 126              		.cfi_startproc
 127 006c 80B5     		push	{r7, lr}
 128              		.cfi_def_cfa_offset 8
 129              		.cfi_offset 7, -8
 130              		.cfi_offset 14, -4
 131 006e 82B0     		sub	sp, sp, #8
 132              		.cfi_def_cfa_offset 16
 133 0070 00AF     		add	r7, sp, #0
 134              		.cfi_def_cfa_register 7
 135 0072 0200     		movs	r2, r0
 136 0074 FB1D     		adds	r3, r7, #7
 137 0076 1A70     		strb	r2, [r3]
  13:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	switch(controller){
 138              		.loc 1 13 0
 139 0078 FB1D     		adds	r3, r7, #7
 140 007a 1B78     		ldrb	r3, [r3]
 141 007c 082B     		cmp	r3, #8
 142 007e 0CD0     		beq	.L9
 143 0080 02DC     		bgt	.L10
 144 0082 002B     		cmp	r3, #0
 145 0084 05D0     		beq	.L11
  14:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 0:
  15:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
  16:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
  17:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS1 :
  18:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1); graphic_ctrl_bit_clear(B_CS2);
  19:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
  20:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS2 :
  21:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS2); graphic_ctrl_bit_clear(B_CS1);
  22:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
  23:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS1|B_CS2 :
  24:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
  25:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
  26:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
  27:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 146              		.loc 1 27 0
 147 0086 1AE0     		b	.L14
 148              	.L10:
  13:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	switch(controller){
 149              		.loc 1 13 0
 150 0088 102B     		cmp	r3, #16
 151 008a 0DD0     		beq	.L12
 152 008c 182B     		cmp	r3, #24
 153 008e 12D0     		beq	.L13
 154              		.loc 1 27 0
 155 0090 15E0     		b	.L14
 156              	.L11:
  15:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
 157              		.loc 1 15 0
 158 0092 1820     		movs	r0, #24
 159 0094 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  16:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS1 :
 160              		.loc 1 16 0
 161 0098 11E0     		b	.L8
 162              	.L9:
  18:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
 163              		.loc 1 18 0
 164 009a 0820     		movs	r0, #8
 165 009c FFF7FEFF 		bl	graphic_ctrl_bit_set
 166 00a0 1020     		movs	r0, #16
 167 00a2 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  19:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS2 :
 168              		.loc 1 19 0
 169 00a6 0AE0     		b	.L8
 170              	.L12:
  21:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
 171              		.loc 1 21 0
 172 00a8 1020     		movs	r0, #16
 173 00aa FFF7FEFF 		bl	graphic_ctrl_bit_set
 174 00ae 0820     		movs	r0, #8
 175 00b0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  22:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case B_CS1|B_CS2 :
 176              		.loc 1 22 0
 177 00b4 03E0     		b	.L8
 178              	.L13:
  24:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
 179              		.loc 1 24 0
 180 00b6 1820     		movs	r0, #24
 181 00b8 FFF7FEFF 		bl	graphic_ctrl_bit_set
  25:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 182              		.loc 1 25 0
 183 00bc C046     		nop
 184              	.L8:
 185              	.L14:
 186              		.loc 1 27 0
 187 00be C046     		nop
 188 00c0 BD46     		mov	sp, r7
 189 00c2 02B0     		add	sp, sp, #8
 190              		@ sp needed
 191 00c4 80BD     		pop	{r7, pc}
 192              		.cfi_endproc
 193              	.LFE2:
 195 00c6 C046     		.align	2
 196              		.global	graphic_wait_ready
 197              		.code	16
 198              		.thumb_func
 200              	graphic_wait_ready:
 201              	.LFB3:
  28:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
  29:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_wait_ready(void){
 202              		.loc 1 29 0
 203              		.cfi_startproc
 204 00c8 80B5     		push	{r7, lr}
 205              		.cfi_def_cfa_offset 8
 206              		.cfi_offset 7, -8
 207              		.cfi_offset 14, -4
 208 00ca 82B0     		sub	sp, sp, #8
 209              		.cfi_def_cfa_offset 16
 210 00cc 00AF     		add	r7, sp, #0
 211              		.cfi_def_cfa_register 7
  30:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  31:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	unsigned char c;
  32:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 212              		.loc 1 32 0
 213 00ce 4020     		movs	r0, #64
 214 00d0 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  33:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  34:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	//bit15-8 ingångar, bit7-0 utgångar
  35:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_MODER=0x00005555;
 215              		.loc 1 35 0
 216 00d4 154B     		ldr	r3, .L21
 217 00d6 164A     		ldr	r2, .L21+4
 218 00d8 1A60     		str	r2, [r3]
  36:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS);
 219              		.loc 1 36 0
 220 00da 0120     		movs	r0, #1
 221 00dc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  37:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW);
 222              		.loc 1 37 0
 223 00e0 0220     		movs	r0, #2
 224 00e2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  38:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_500ns();
 225              		.loc 1 38 0
 226 00e6 FFF7FEFF 		bl	delay_500ns
 227              	.L18:
  39:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	while(1){
  40:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_ctrl_bit_set(B_E);
 228              		.loc 1 40 0
 229 00ea 4020     		movs	r0, #64
 230 00ec FFF7FEFF 		bl	graphic_ctrl_bit_set
  41:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		delay_500ns();
 231              		.loc 1 41 0
 232 00f0 FFF7FEFF 		bl	delay_500ns
  42:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_ctrl_bit_clear(B_E);
 233              		.loc 1 42 0
 234 00f4 4020     		movs	r0, #64
 235 00f6 FFF7FEFF 		bl	graphic_ctrl_bit_clear
  43:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		
  44:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		c=*GPIO_E_IDR_HIGH&LCD_BUSY;
 236              		.loc 1 44 0
 237 00fa 0E4B     		ldr	r3, .L21+8
 238 00fc 1B78     		ldrb	r3, [r3]
 239 00fe DAB2     		uxtb	r2, r3
 240 0100 FB1D     		adds	r3, r7, #7
 241 0102 7F21     		movs	r1, #127
 242 0104 8A43     		bics	r2, r1
 243 0106 1A70     		strb	r2, [r3]
  45:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		if(c==0){
 244              		.loc 1 45 0
 245 0108 FB1D     		adds	r3, r7, #7
 246 010a 1B78     		ldrb	r3, [r3]
 247 010c 002B     		cmp	r3, #0
 248 010e 02D0     		beq	.L20
  46:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
  47:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		}
  48:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		delay_500ns();
 249              		.loc 1 48 0
 250 0110 FFF7FEFF 		bl	delay_500ns
  49:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 251              		.loc 1 49 0
 252 0114 E9E7     		b	.L18
 253              	.L20:
  46:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			break;
 254              		.loc 1 46 0
 255 0116 C046     		nop
  50:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 256              		.loc 1 50 0
 257 0118 4020     		movs	r0, #64
 258 011a FFF7FEFF 		bl	graphic_ctrl_bit_set
  51:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_MODER = 0x55555555;
 259              		.loc 1 51 0
 260 011e 034B     		ldr	r3, .L21
 261 0120 054A     		ldr	r2, .L21+12
 262 0122 1A60     		str	r2, [r3]
  52:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 263              		.loc 1 52 0
 264 0124 C046     		nop
 265 0126 BD46     		mov	sp, r7
 266 0128 02B0     		add	sp, sp, #8
 267              		@ sp needed
 268 012a 80BD     		pop	{r7, pc}
 269              	.L22:
 270              		.align	2
 271              	.L21:
 272 012c 00100240 		.word	1073876992
 273 0130 55550000 		.word	21845
 274 0134 11100240 		.word	1073877009
 275 0138 55555555 		.word	1431655765
 276              		.cfi_endproc
 277              	.LFE3:
 279              		.align	2
 280              		.global	graphic_read
 281              		.code	16
 282              		.thumb_func
 284              	graphic_read:
 285              	.LFB4:
  53:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
  54:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** uint8_t graphic_read(uint8_t controller){
 286              		.loc 1 54 0
 287              		.cfi_startproc
 288 013c 80B5     		push	{r7, lr}
 289              		.cfi_def_cfa_offset 8
 290              		.cfi_offset 7, -8
 291              		.cfi_offset 14, -4
 292 013e 84B0     		sub	sp, sp, #16
 293              		.cfi_def_cfa_offset 24
 294 0140 00AF     		add	r7, sp, #0
 295              		.cfi_def_cfa_register 7
 296 0142 0200     		movs	r2, r0
 297 0144 FB1D     		adds	r3, r7, #7
 298 0146 1A70     		strb	r2, [r3]
  55:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  56:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	unsigned char rv;
  57:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 299              		.loc 1 57 0
 300 0148 4020     		movs	r0, #64
 301 014a FFF7FEFF 		bl	graphic_ctrl_bit_clear
  58:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  59:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	//bit15-8 ingångar, bit7-0 utgångar
  60:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_MODER=0x00005555;
 302              		.loc 1 60 0
 303 014e 1A4B     		ldr	r3, .L25
 304 0150 1A4A     		ldr	r2, .L25+4
 305 0152 1A60     		str	r2, [r3]
  61:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 306              		.loc 1 61 0
 307 0154 0320     		movs	r0, #3
 308 0156 FFF7FEFF 		bl	graphic_ctrl_bit_set
  62:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  63:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(controller);
 309              		.loc 1 63 0
 310 015a FB1D     		adds	r3, r7, #7
 311 015c 1B78     		ldrb	r3, [r3]
 312 015e 1800     		movs	r0, r3
 313 0160 FFF7FEFF 		bl	select_controller
  64:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_500ns();
 314              		.loc 1 64 0
 315 0164 FFF7FEFF 		bl	delay_500ns
  65:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 316              		.loc 1 65 0
 317 0168 4020     		movs	r0, #64
 318 016a FFF7FEFF 		bl	graphic_ctrl_bit_set
  66:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_500ns();
 319              		.loc 1 66 0
 320 016e FFF7FEFF 		bl	delay_500ns
  67:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	rv = *GPIO_E_IDR_HIGH;
 321              		.loc 1 67 0
 322 0172 134A     		ldr	r2, .L25+8
 323 0174 0F23     		movs	r3, #15
 324 0176 FB18     		adds	r3, r7, r3
 325 0178 1278     		ldrb	r2, [r2]
 326 017a 1A70     		strb	r2, [r3]
  68:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 327              		.loc 1 68 0
 328 017c 4020     		movs	r0, #64
 329 017e FFF7FEFF 		bl	graphic_ctrl_bit_clear
  69:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_MODER = 0x55555555;
 330              		.loc 1 69 0
 331 0182 0D4B     		ldr	r3, .L25
 332 0184 0F4A     		ldr	r2, .L25+12
 333 0186 1A60     		str	r2, [r3]
  70:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  71:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(controller=B_CS1){
 334              		.loc 1 71 0
 335 0188 FB1D     		adds	r3, r7, #7
 336 018a 0822     		movs	r2, #8
 337 018c 1A70     		strb	r2, [r3]
  72:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		select_controller(B_CS1);
 338              		.loc 1 72 0
 339 018e 0820     		movs	r0, #8
 340 0190 FFF7FEFF 		bl	select_controller
  73:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_wait_ready();
 341              		.loc 1 73 0
 342 0194 FFF7FEFF 		bl	graphic_wait_ready
  74:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
  75:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(controller=B_CS2){
 343              		.loc 1 75 0
 344 0198 FB1D     		adds	r3, r7, #7
 345 019a 1022     		movs	r2, #16
 346 019c 1A70     		strb	r2, [r3]
  76:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		select_controller(B_CS2);
 347              		.loc 1 76 0
 348 019e 1020     		movs	r0, #16
 349 01a0 FFF7FEFF 		bl	select_controller
  77:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_wait_ready();
 350              		.loc 1 77 0
 351 01a4 FFF7FEFF 		bl	graphic_wait_ready
  78:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
  79:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	return rv;
 352              		.loc 1 79 0
 353 01a8 0F23     		movs	r3, #15
 354 01aa FB18     		adds	r3, r7, r3
 355 01ac 1B78     		ldrb	r3, [r3]
  80:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 356              		.loc 1 80 0
 357 01ae 1800     		movs	r0, r3
 358 01b0 BD46     		mov	sp, r7
 359 01b2 04B0     		add	sp, sp, #16
 360              		@ sp needed
 361 01b4 80BD     		pop	{r7, pc}
 362              	.L26:
 363 01b6 C046     		.align	2
 364              	.L25:
 365 01b8 00100240 		.word	1073876992
 366 01bc 55550000 		.word	21845
 367 01c0 11100240 		.word	1073877009
 368 01c4 55555555 		.word	1431655765
 369              		.cfi_endproc
 370              	.LFE4:
 372              		.align	2
 373              		.global	graphic_write
 374              		.code	16
 375              		.thumb_func
 377              	graphic_write:
 378              	.LFB5:
  81:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
  82:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_write(uint8_t value, uint8_t controller){
 379              		.loc 1 82 0
 380              		.cfi_startproc
 381 01c8 80B5     		push	{r7, lr}
 382              		.cfi_def_cfa_offset 8
 383              		.cfi_offset 7, -8
 384              		.cfi_offset 14, -4
 385 01ca 82B0     		sub	sp, sp, #8
 386              		.cfi_def_cfa_offset 16
 387 01cc 00AF     		add	r7, sp, #0
 388              		.cfi_def_cfa_register 7
 389 01ce 0200     		movs	r2, r0
 390 01d0 FB1D     		adds	r3, r7, #7
 391 01d2 1A70     		strb	r2, [r3]
 392 01d4 BB1D     		adds	r3, r7, #6
 393 01d6 0A1C     		adds	r2, r1, #0
 394 01d8 1A70     		strb	r2, [r3]
  83:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_ODR_HIGH = value;
 395              		.loc 1 83 0
 396 01da 1A4A     		ldr	r2, .L30
 397 01dc FB1D     		adds	r3, r7, #7
 398 01de 1B78     		ldrb	r3, [r3]
 399 01e0 1370     		strb	r3, [r2]
  84:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(controller);
 400              		.loc 1 84 0
 401 01e2 BB1D     		adds	r3, r7, #6
 402 01e4 1B78     		ldrb	r3, [r3]
 403 01e6 1800     		movs	r0, r3
 404 01e8 FFF7FEFF 		bl	select_controller
  85:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_500ns();
 405              		.loc 1 85 0
 406 01ec FFF7FEFF 		bl	delay_500ns
  86:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 407              		.loc 1 86 0
 408 01f0 4020     		movs	r0, #64
 409 01f2 FFF7FEFF 		bl	graphic_ctrl_bit_set
  87:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_500ns();
 410              		.loc 1 87 0
 411 01f6 FFF7FEFF 		bl	delay_500ns
  88:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 412              		.loc 1 88 0
 413 01fa 4020     		movs	r0, #64
 414 01fc FFF7FEFF 		bl	graphic_ctrl_bit_clear
  89:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
  90:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(controller&B_CS1){
 415              		.loc 1 90 0
 416 0200 BB1D     		adds	r3, r7, #6
 417 0202 1B78     		ldrb	r3, [r3]
 418 0204 0822     		movs	r2, #8
 419 0206 1340     		ands	r3, r2
 420 0208 04D0     		beq	.L28
  91:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		select_controller(B_CS1);
 421              		.loc 1 91 0
 422 020a 0820     		movs	r0, #8
 423 020c FFF7FEFF 		bl	select_controller
  92:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_wait_ready();
 424              		.loc 1 92 0
 425 0210 FFF7FEFF 		bl	graphic_wait_ready
 426              	.L28:
  93:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
  94:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(controller&B_CS2){
 427              		.loc 1 94 0
 428 0214 BB1D     		adds	r3, r7, #6
 429 0216 1B78     		ldrb	r3, [r3]
 430 0218 1022     		movs	r2, #16
 431 021a 1340     		ands	r3, r2
 432 021c 04D0     		beq	.L29
  95:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		select_controller(B_CS2);
 433              		.loc 1 95 0
 434 021e 1020     		movs	r0, #16
 435 0220 FFF7FEFF 		bl	select_controller
  96:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_wait_ready();
 436              		.loc 1 96 0
 437 0224 FFF7FEFF 		bl	graphic_wait_ready
 438              	.L29:
  97:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
  98:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_ODR_HIGH =0;
 439              		.loc 1 98 0
 440 0228 064B     		ldr	r3, .L30
 441 022a 0022     		movs	r2, #0
 442 022c 1A70     		strb	r2, [r3]
  99:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 443              		.loc 1 99 0
 444 022e 4020     		movs	r0, #64
 445 0230 FFF7FEFF 		bl	graphic_ctrl_bit_set
 100:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(0);
 446              		.loc 1 100 0
 447 0234 0020     		movs	r0, #0
 448 0236 FFF7FEFF 		bl	select_controller
 101:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 449              		.loc 1 101 0
 450 023a C046     		nop
 451 023c BD46     		mov	sp, r7
 452 023e 02B0     		add	sp, sp, #8
 453              		@ sp needed
 454 0240 80BD     		pop	{r7, pc}
 455              	.L31:
 456 0242 C046     		.align	2
 457              	.L30:
 458 0244 15100240 		.word	1073877013
 459              		.cfi_endproc
 460              	.LFE5:
 462              		.align	2
 463              		.global	graphic_write_command
 464              		.code	16
 465              		.thumb_func
 467              	graphic_write_command:
 468              	.LFB6:
 102:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_write_command(uint8_t command, uint8_t controller){
 469              		.loc 1 102 0
 470              		.cfi_startproc
 471 0248 80B5     		push	{r7, lr}
 472              		.cfi_def_cfa_offset 8
 473              		.cfi_offset 7, -8
 474              		.cfi_offset 14, -4
 475 024a 82B0     		sub	sp, sp, #8
 476              		.cfi_def_cfa_offset 16
 477 024c 00AF     		add	r7, sp, #0
 478              		.cfi_def_cfa_register 7
 479 024e 0200     		movs	r2, r0
 480 0250 FB1D     		adds	r3, r7, #7
 481 0252 1A70     		strb	r2, [r3]
 482 0254 BB1D     		adds	r3, r7, #6
 483 0256 0A1C     		adds	r2, r1, #0
 484 0258 1A70     		strb	r2, [r3]
 103:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 485              		.loc 1 103 0
 486 025a 4020     		movs	r0, #64
 487 025c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 104:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(controller);
 488              		.loc 1 104 0
 489 0260 BB1D     		adds	r3, r7, #6
 490 0262 1B78     		ldrb	r3, [r3]
 491 0264 1800     		movs	r0, r3
 492 0266 FFF7FEFF 		bl	select_controller
 105:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 493              		.loc 1 105 0
 494 026a 0320     		movs	r0, #3
 495 026c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 106:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write(command, controller);
 496              		.loc 1 106 0
 497 0270 BB1D     		adds	r3, r7, #6
 498 0272 1A78     		ldrb	r2, [r3]
 499 0274 FB1D     		adds	r3, r7, #7
 500 0276 1B78     		ldrb	r3, [r3]
 501 0278 1100     		movs	r1, r2
 502 027a 1800     		movs	r0, r3
 503 027c FFF7FEFF 		bl	graphic_write
 107:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 504              		.loc 1 107 0
 505 0280 C046     		nop
 506 0282 BD46     		mov	sp, r7
 507 0284 02B0     		add	sp, sp, #8
 508              		@ sp needed
 509 0286 80BD     		pop	{r7, pc}
 510              		.cfi_endproc
 511              	.LFE6:
 513              		.align	2
 514              		.global	graphic_write_data
 515              		.code	16
 516              		.thumb_func
 518              	graphic_write_data:
 519              	.LFB7:
 108:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_write_data(uint8_t data, uint8_t controller){
 520              		.loc 1 108 0
 521              		.cfi_startproc
 522 0288 80B5     		push	{r7, lr}
 523              		.cfi_def_cfa_offset 8
 524              		.cfi_offset 7, -8
 525              		.cfi_offset 14, -4
 526 028a 82B0     		sub	sp, sp, #8
 527              		.cfi_def_cfa_offset 16
 528 028c 00AF     		add	r7, sp, #0
 529              		.cfi_def_cfa_register 7
 530 028e 0200     		movs	r2, r0
 531 0290 FB1D     		adds	r3, r7, #7
 532 0292 1A70     		strb	r2, [r3]
 533 0294 BB1D     		adds	r3, r7, #6
 534 0296 0A1C     		adds	r2, r1, #0
 535 0298 1A70     		strb	r2, [r3]
 109:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 536              		.loc 1 109 0
 537 029a 4020     		movs	r0, #64
 538 029c FFF7FEFF 		bl	graphic_ctrl_bit_clear
 110:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(controller);
 539              		.loc 1 110 0
 540 02a0 BB1D     		adds	r3, r7, #6
 541 02a2 1B78     		ldrb	r3, [r3]
 542 02a4 1800     		movs	r0, r3
 543 02a6 FFF7FEFF 		bl	select_controller
 111:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 544              		.loc 1 111 0
 545 02aa 0220     		movs	r0, #2
 546 02ac FFF7FEFF 		bl	graphic_ctrl_bit_clear
 112:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 547              		.loc 1 112 0
 548 02b0 0120     		movs	r0, #1
 549 02b2 FFF7FEFF 		bl	graphic_ctrl_bit_set
 113:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write(data, controller);
 550              		.loc 1 113 0
 551 02b6 BB1D     		adds	r3, r7, #6
 552 02b8 1A78     		ldrb	r2, [r3]
 553 02ba FB1D     		adds	r3, r7, #7
 554 02bc 1B78     		ldrb	r3, [r3]
 555 02be 1100     		movs	r1, r2
 556 02c0 1800     		movs	r0, r3
 557 02c2 FFF7FEFF 		bl	graphic_write
 114:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 558              		.loc 1 114 0
 559 02c6 C046     		nop
 560 02c8 BD46     		mov	sp, r7
 561 02ca 02B0     		add	sp, sp, #8
 562              		@ sp needed
 563 02cc 80BD     		pop	{r7, pc}
 564              		.cfi_endproc
 565              	.LFE7:
 567 02ce C046     		.align	2
 568              		.global	graphic_read_data
 569              		.code	16
 570              		.thumb_func
 572              	graphic_read_data:
 573              	.LFB8:
 115:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
 116:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** uint8_t graphic_read_data(uint8_t controller){
 574              		.loc 1 116 0
 575              		.cfi_startproc
 576 02d0 80B5     		push	{r7, lr}
 577              		.cfi_def_cfa_offset 8
 578              		.cfi_offset 7, -8
 579              		.cfi_offset 14, -4
 580 02d2 82B0     		sub	sp, sp, #8
 581              		.cfi_def_cfa_offset 16
 582 02d4 00AF     		add	r7, sp, #0
 583              		.cfi_def_cfa_register 7
 584 02d6 0200     		movs	r2, r0
 585 02d8 FB1D     		adds	r3, r7, #7
 586 02da 1A70     		strb	r2, [r3]
 117:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	(void) graphic_read(controller);
 587              		.loc 1 117 0
 588 02dc FB1D     		adds	r3, r7, #7
 589 02de 1B78     		ldrb	r3, [r3]
 590 02e0 1800     		movs	r0, r3
 591 02e2 FFF7FEFF 		bl	graphic_read
 118:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	return graphic_read(controller);
 592              		.loc 1 118 0
 593 02e6 FB1D     		adds	r3, r7, #7
 594 02e8 1B78     		ldrb	r3, [r3]
 595 02ea 1800     		movs	r0, r3
 596 02ec FFF7FEFF 		bl	graphic_read
 597 02f0 0300     		movs	r3, r0
 119:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 598              		.loc 1 119 0
 599 02f2 1800     		movs	r0, r3
 600 02f4 BD46     		mov	sp, r7
 601 02f6 02B0     		add	sp, sp, #8
 602              		@ sp needed
 603 02f8 80BD     		pop	{r7, pc}
 604              		.cfi_endproc
 605              	.LFE8:
 607 02fa C046     		.align	2
 608              		.global	init_app
 609              		.code	16
 610              		.thumb_func
 612              	init_app:
 613              	.LFB9:
 120:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
 121:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
 122:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void init_app(void){
 614              		.loc 1 122 0
 615              		.cfi_startproc
 616 02fc 80B5     		push	{r7, lr}
 617              		.cfi_def_cfa_offset 8
 618              		.cfi_offset 7, -8
 619              		.cfi_offset 14, -4
 620 02fe 00AF     		add	r7, sp, #0
 621              		.cfi_def_cfa_register 7
 123:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		/* PORT E */
 124:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_MODER = 0x55555555; /* all bits outputs */
 622              		.loc 1 124 0
 623 0300 074B     		ldr	r3, .L37
 624 0302 084A     		ldr	r2, .L37+4
 625 0304 1A60     		str	r2, [r3]
 125:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_OTYPER = 0x00000000; /* outputs are push/pull */
 626              		.loc 1 125 0
 627 0306 084B     		ldr	r3, .L37+8
 628 0308 0022     		movs	r2, #0
 629 030a 1A80     		strh	r2, [r3]
 126:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_SPEED = 0x55555555; /* medium speed */
 630              		.loc 1 126 0
 631 030c 074B     		ldr	r3, .L37+12
 632 030e 054A     		ldr	r2, .L37+4
 633 0310 1A60     		str	r2, [r3]
 127:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	*GPIO_E_PUPDR = 0x55550000; /* inputs are pull up */
 634              		.loc 1 127 0
 635 0312 074B     		ldr	r3, .L37+16
 636 0314 074A     		ldr	r2, .L37+20
 637 0316 1A60     		str	r2, [r3]
 128:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 638              		.loc 1 128 0
 639 0318 C046     		nop
 640 031a BD46     		mov	sp, r7
 641              		@ sp needed
 642 031c 80BD     		pop	{r7, pc}
 643              	.L38:
 644 031e C046     		.align	2
 645              	.L37:
 646 0320 00100240 		.word	1073876992
 647 0324 55555555 		.word	1431655765
 648 0328 04100240 		.word	1073876996
 649 032c 08100240 		.word	1073877000
 650 0330 30100240 		.word	1073877040
 651 0334 00005555 		.word	1431633920
 652              		.cfi_endproc
 653              	.LFE9:
 655              		.align	2
 656              		.global	graphic_initialize
 657              		.code	16
 658              		.thumb_func
 660              	graphic_initialize:
 661              	.LFB10:
 129:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_initialize(void){
 662              		.loc 1 129 0
 663              		.cfi_startproc
 664 0338 80B5     		push	{r7, lr}
 665              		.cfi_def_cfa_offset 8
 666              		.cfi_offset 7, -8
 667              		.cfi_offset 14, -4
 668 033a 00AF     		add	r7, sp, #0
 669              		.cfi_def_cfa_register 7
 130:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 670              		.loc 1 130 0
 671 033c 4020     		movs	r0, #64
 672 033e FFF7FEFF 		bl	graphic_ctrl_bit_set
 131:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_mikro(10);
 673              		.loc 1 131 0
 674 0342 0A20     		movs	r0, #10
 675 0344 FFF7FEFF 		bl	delay_mikro
 132:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 676              		.loc 1 132 0
 677 0348 7820     		movs	r0, #120
 678 034a FFF7FEFF 		bl	graphic_ctrl_bit_clear
 133:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	delay_milli(30);
 679              		.loc 1 133 0
 680 034e 1E20     		movs	r0, #30
 681 0350 FFF7FEFF 		bl	delay_milli
 134:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 682              		.loc 1 134 0
 683 0354 2020     		movs	r0, #32
 684 0356 FFF7FEFF 		bl	graphic_ctrl_bit_set
 135:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_OFF,B_CS1|B_CS2);		
 685              		.loc 1 135 0
 686 035a 1821     		movs	r1, #24
 687 035c 3E20     		movs	r0, #62
 688 035e FFF7FEFF 		bl	graphic_write_command
 136:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_ON,B_CS1|B_CS2);			//toggla display
 689              		.loc 1 136 0
 690 0362 1821     		movs	r1, #24
 691 0364 3F20     		movs	r0, #63
 692 0366 FFF7FEFF 		bl	graphic_write_command
 137:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START,B_CS1|B_CS2);	//start=0
 693              		.loc 1 137 0
 694 036a 1821     		movs	r1, #24
 695 036c C020     		movs	r0, #192
 696 036e FFF7FEFF 		bl	graphic_write_command
 138:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD,B_CS1|B_CS2);		//add=0
 697              		.loc 1 138 0
 698 0372 1821     		movs	r1, #24
 699 0374 4020     		movs	r0, #64
 700 0376 FFF7FEFF 		bl	graphic_write_command
 139:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE,B_CS1|B_CS2);	//page=0
 701              		.loc 1 139 0
 702 037a 1821     		movs	r1, #24
 703 037c B820     		movs	r0, #184
 704 037e FFF7FEFF 		bl	graphic_write_command
 140:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	select_controller(0);
 705              		.loc 1 140 0
 706 0382 0020     		movs	r0, #0
 707 0384 FFF7FEFF 		bl	select_controller
 141:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 708              		.loc 1 141 0
 709 0388 C046     		nop
 710 038a BD46     		mov	sp, r7
 711              		@ sp needed
 712 038c 80BD     		pop	{r7, pc}
 713              		.cfi_endproc
 714              	.LFE10:
 716 038e C046     		.align	2
 717              		.global	graphic_clear_screen
 718              		.code	16
 719              		.thumb_func
 721              	graphic_clear_screen:
 722              	.LFB11:
 142:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void graphic_clear_screen(void){
 723              		.loc 1 142 0
 724              		.cfi_startproc
 725 0390 80B5     		push	{r7, lr}
 726              		.cfi_def_cfa_offset 8
 727              		.cfi_offset 7, -8
 728              		.cfi_offset 14, -4
 729 0392 82B0     		sub	sp, sp, #8
 730              		.cfi_def_cfa_offset 16
 731 0394 00AF     		add	r7, sp, #0
 732              		.cfi_def_cfa_register 7
 143:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	unsigned char i,j;
 144:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
 145:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	for(j=0;j<8;j++){
 733              		.loc 1 145 0
 734 0396 BB1D     		adds	r3, r7, #6
 735 0398 0022     		movs	r2, #0
 736 039a 1A70     		strb	r2, [r3]
 737 039c 23E0     		b	.L41
 738              	.L44:
 146:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE|j, B_CS1|B_CS2);
 739              		.loc 1 146 0
 740 039e BB1D     		adds	r3, r7, #6
 741 03a0 1B78     		ldrb	r3, [r3]
 742 03a2 4822     		movs	r2, #72
 743 03a4 5242     		rsbs	r2, r2, #0
 744 03a6 1343     		orrs	r3, r2
 745 03a8 DBB2     		uxtb	r3, r3
 746 03aa 1821     		movs	r1, #24
 747 03ac 1800     		movs	r0, r3
 748 03ae FFF7FEFF 		bl	graphic_write_command
 147:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD|0,B_CS1|B_CS2);
 749              		.loc 1 147 0
 750 03b2 1821     		movs	r1, #24
 751 03b4 4020     		movs	r0, #64
 752 03b6 FFF7FEFF 		bl	graphic_write_command
 148:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		for(i=0;i<64;i++){
 753              		.loc 1 148 0
 754 03ba FB1D     		adds	r3, r7, #7
 755 03bc 0022     		movs	r2, #0
 756 03be 1A70     		strb	r2, [r3]
 757 03c0 08E0     		b	.L42
 758              	.L43:
 149:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 			graphic_write_data(0,B_CS1|B_CS2);
 759              		.loc 1 149 0 discriminator 3
 760 03c2 1821     		movs	r1, #24
 761 03c4 0020     		movs	r0, #0
 762 03c6 FFF7FEFF 		bl	graphic_write_data
 148:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		for(i=0;i<64;i++){
 763              		.loc 1 148 0 discriminator 3
 764 03ca FB1D     		adds	r3, r7, #7
 765 03cc 1A78     		ldrb	r2, [r3]
 766 03ce FB1D     		adds	r3, r7, #7
 767 03d0 0132     		adds	r2, r2, #1
 768 03d2 1A70     		strb	r2, [r3]
 769              	.L42:
 148:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		for(i=0;i<64;i++){
 770              		.loc 1 148 0 is_stmt 0 discriminator 1
 771 03d4 FB1D     		adds	r3, r7, #7
 772 03d6 1B78     		ldrb	r3, [r3]
 773 03d8 3F2B     		cmp	r3, #63
 774 03da F2D9     		bls	.L43
 145:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE|j, B_CS1|B_CS2);
 775              		.loc 1 145 0 is_stmt 1 discriminator 2
 776 03dc BB1D     		adds	r3, r7, #6
 777 03de 1A78     		ldrb	r2, [r3]
 778 03e0 BB1D     		adds	r3, r7, #6
 779 03e2 0132     		adds	r2, r2, #1
 780 03e4 1A70     		strb	r2, [r3]
 781              	.L41:
 145:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE|j, B_CS1|B_CS2);
 782              		.loc 1 145 0 is_stmt 0 discriminator 1
 783 03e6 BB1D     		adds	r3, r7, #6
 784 03e8 1B78     		ldrb	r3, [r3]
 785 03ea 072B     		cmp	r3, #7
 786 03ec D7D9     		bls	.L44
 150:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		}
 151:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 152:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 787              		.loc 1 152 0 is_stmt 1
 788 03ee C046     		nop
 789 03f0 BD46     		mov	sp, r7
 790 03f2 02B0     		add	sp, sp, #8
 791              		@ sp needed
 792 03f4 80BD     		pop	{r7, pc}
 793              		.cfi_endproc
 794              	.LFE11:
 796 03f6 C046     		.align	2
 797              		.global	pixel
 798              		.code	16
 799              		.thumb_func
 801              	pixel:
 802              	.LFB12:
 153:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 
 154:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** void pixel(unsigned x, unsigned y, unsigned set){
 803              		.loc 1 154 0
 804              		.cfi_startproc
 805 03f8 90B5     		push	{r4, r7, lr}
 806              		.cfi_def_cfa_offset 12
 807              		.cfi_offset 4, -12
 808              		.cfi_offset 7, -8
 809              		.cfi_offset 14, -4
 810 03fa 89B0     		sub	sp, sp, #36
 811              		.cfi_def_cfa_offset 48
 812 03fc 00AF     		add	r7, sp, #0
 813              		.cfi_def_cfa_register 7
 814 03fe F860     		str	r0, [r7, #12]
 815 0400 B960     		str	r1, [r7, #8]
 816 0402 7A60     		str	r2, [r7, #4]
 155:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if((x>128)||(x<0)||(y>64)||(y<0)){
 817              		.loc 1 155 0
 818 0404 FB68     		ldr	r3, [r7, #12]
 819 0406 802B     		cmp	r3, #128
 820 0408 00D9     		bls	.LCB691
 821 040a AAE0     		b	.L64	@long jump
 822              	.LCB691:
 823              		.loc 1 155 0 is_stmt 0 discriminator 1
 824 040c BB68     		ldr	r3, [r7, #8]
 825 040e 402B     		cmp	r3, #64
 826 0410 00D9     		bls	.LCB694
 827 0412 A6E0     		b	.L64	@long jump
 828              	.LCB694:
 156:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		return;
 157:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 158:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	unsigned char mask,c, controller;
 159:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	int index;
 160:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	index = (y-1)/8;
 829              		.loc 1 160 0 is_stmt 1
 830 0414 BB68     		ldr	r3, [r7, #8]
 831 0416 013B     		subs	r3, r3, #1
 832 0418 DB08     		lsrs	r3, r3, #3
 833 041a BB61     		str	r3, [r7, #24]
 161:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	switch((y-1)%8){
 834              		.loc 1 161 0
 835 041c BB68     		ldr	r3, [r7, #8]
 836 041e 013B     		subs	r3, r3, #1
 837 0420 0722     		movs	r2, #7
 838 0422 1340     		ands	r3, r2
 839 0424 072B     		cmp	r3, #7
 840 0426 2CD8     		bhi	.L49
 841 0428 9A00     		lsls	r2, r3, #2
 842 042a 504B     		ldr	r3, .L65
 843 042c D318     		adds	r3, r2, r3
 844 042e 1B68     		ldr	r3, [r3]
 845 0430 9F46     		mov	pc, r3
 846              		.section	.rodata
 847              		.align	2
 848              	.L51:
 849 0000 32040000 		.word	.L50
 850 0004 3C040000 		.word	.L52
 851 0008 46040000 		.word	.L53
 852 000c 50040000 		.word	.L54
 853 0010 5A040000 		.word	.L55
 854 0014 64040000 		.word	.L56
 855 0018 6E040000 		.word	.L57
 856 001c 78040000 		.word	.L58
 857              		.text
 858              	.L50:
 162:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 0: mask=1; break;
 859              		.loc 1 162 0
 860 0432 1F23     		movs	r3, #31
 861 0434 FB18     		adds	r3, r7, r3
 862 0436 0122     		movs	r2, #1
 863 0438 1A70     		strb	r2, [r3]
 864 043a 22E0     		b	.L49
 865              	.L52:
 163:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 1: mask=2; break;
 866              		.loc 1 163 0
 867 043c 1F23     		movs	r3, #31
 868 043e FB18     		adds	r3, r7, r3
 869 0440 0222     		movs	r2, #2
 870 0442 1A70     		strb	r2, [r3]
 871 0444 1DE0     		b	.L49
 872              	.L53:
 164:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 2: mask=4; break;
 873              		.loc 1 164 0
 874 0446 1F23     		movs	r3, #31
 875 0448 FB18     		adds	r3, r7, r3
 876 044a 0422     		movs	r2, #4
 877 044c 1A70     		strb	r2, [r3]
 878 044e 18E0     		b	.L49
 879              	.L54:
 165:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 3: mask=8; break;
 880              		.loc 1 165 0
 881 0450 1F23     		movs	r3, #31
 882 0452 FB18     		adds	r3, r7, r3
 883 0454 0822     		movs	r2, #8
 884 0456 1A70     		strb	r2, [r3]
 885 0458 13E0     		b	.L49
 886              	.L55:
 166:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 4: mask=0x10; break;
 887              		.loc 1 166 0
 888 045a 1F23     		movs	r3, #31
 889 045c FB18     		adds	r3, r7, r3
 890 045e 1022     		movs	r2, #16
 891 0460 1A70     		strb	r2, [r3]
 892 0462 0EE0     		b	.L49
 893              	.L56:
 167:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 5: mask=0x20; break;
 894              		.loc 1 167 0
 895 0464 1F23     		movs	r3, #31
 896 0466 FB18     		adds	r3, r7, r3
 897 0468 2022     		movs	r2, #32
 898 046a 1A70     		strb	r2, [r3]
 899 046c 09E0     		b	.L49
 900              	.L57:
 168:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 6: mask=0x40; break;
 901              		.loc 1 168 0
 902 046e 1F23     		movs	r3, #31
 903 0470 FB18     		adds	r3, r7, r3
 904 0472 4022     		movs	r2, #64
 905 0474 1A70     		strb	r2, [r3]
 906 0476 04E0     		b	.L49
 907              	.L58:
 169:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		case 7: mask=0x80; break;
 908              		.loc 1 169 0
 909 0478 1F23     		movs	r3, #31
 910 047a FB18     		adds	r3, r7, r3
 911 047c 8022     		movs	r2, #128
 912 047e 1A70     		strb	r2, [r3]
 913 0480 C046     		nop
 914              	.L49:
 170:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 171:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if( set == 0)
 915              		.loc 1 171 0
 916 0482 7B68     		ldr	r3, [r7, #4]
 917 0484 002B     		cmp	r3, #0
 918 0486 06D1     		bne	.L59
 172:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		mask = ~mask;
 919              		.loc 1 172 0
 920 0488 1F23     		movs	r3, #31
 921 048a FB18     		adds	r3, r7, r3
 922 048c 1F22     		movs	r2, #31
 923 048e BA18     		adds	r2, r7, r2
 924 0490 1278     		ldrb	r2, [r2]
 925 0492 D243     		mvns	r2, r2
 926 0494 1A70     		strb	r2, [r3]
 927              	.L59:
 173:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(x>64){
 928              		.loc 1 173 0
 929 0496 FB68     		ldr	r3, [r7, #12]
 930 0498 402B     		cmp	r3, #64
 931 049a 07D9     		bls	.L60
 174:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		controller=B_CS2;
 932              		.loc 1 174 0
 933 049c 1E23     		movs	r3, #30
 934 049e FB18     		adds	r3, r7, r3
 935 04a0 1022     		movs	r2, #16
 936 04a2 1A70     		strb	r2, [r3]
 175:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		x=x-65;
 937              		.loc 1 175 0
 938 04a4 FB68     		ldr	r3, [r7, #12]
 939 04a6 413B     		subs	r3, r3, #65
 940 04a8 FB60     		str	r3, [r7, #12]
 941 04aa 06E0     		b	.L61
 942              	.L60:
 176:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}else{
 177:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		controller=B_CS1;
 943              		.loc 1 177 0
 944 04ac 1E23     		movs	r3, #30
 945 04ae FB18     		adds	r3, r7, r3
 946 04b0 0822     		movs	r2, #8
 947 04b2 1A70     		strb	r2, [r3]
 178:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		x=x-1;
 948              		.loc 1 178 0
 949 04b4 FB68     		ldr	r3, [r7, #12]
 950 04b6 013B     		subs	r3, r3, #1
 951 04b8 FB60     		str	r3, [r7, #12]
 952              	.L61:
 179:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 180:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD|x,controller);
 953              		.loc 1 180 0
 954 04ba FB68     		ldr	r3, [r7, #12]
 955 04bc DBB2     		uxtb	r3, r3
 956 04be 4022     		movs	r2, #64
 957 04c0 1343     		orrs	r3, r2
 958 04c2 DAB2     		uxtb	r2, r3
 959 04c4 1E23     		movs	r3, #30
 960 04c6 FB18     		adds	r3, r7, r3
 961 04c8 1B78     		ldrb	r3, [r3]
 962 04ca 1900     		movs	r1, r3
 963 04cc 1000     		movs	r0, r2
 964 04ce FFF7FEFF 		bl	graphic_write_command
 181:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE|index,controller);
 965              		.loc 1 181 0
 966 04d2 BB69     		ldr	r3, [r7, #24]
 967 04d4 DBB2     		uxtb	r3, r3
 968 04d6 1A1C     		adds	r2, r3, #0
 969 04d8 4823     		movs	r3, #72
 970 04da 5B42     		rsbs	r3, r3, #0
 971 04dc 1343     		orrs	r3, r2
 972 04de DBB2     		uxtb	r3, r3
 973 04e0 DAB2     		uxtb	r2, r3
 974 04e2 1E23     		movs	r3, #30
 975 04e4 FB18     		adds	r3, r7, r3
 976 04e6 1B78     		ldrb	r3, [r3]
 977 04e8 1900     		movs	r1, r3
 978 04ea 1000     		movs	r0, r2
 979 04ec FFF7FEFF 		bl	graphic_write_command
 182:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	c=graphic_read_data(controller);
 980              		.loc 1 182 0
 981 04f0 1723     		movs	r3, #23
 982 04f2 FC18     		adds	r4, r7, r3
 983 04f4 1E23     		movs	r3, #30
 984 04f6 FB18     		adds	r3, r7, r3
 985 04f8 1B78     		ldrb	r3, [r3]
 986 04fa 1800     		movs	r0, r3
 987 04fc FFF7FEFF 		bl	graphic_read_data
 988 0500 0300     		movs	r3, r0
 989 0502 2370     		strb	r3, [r4]
 183:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD|x,controller);
 990              		.loc 1 183 0
 991 0504 FB68     		ldr	r3, [r7, #12]
 992 0506 DBB2     		uxtb	r3, r3
 993 0508 4022     		movs	r2, #64
 994 050a 1343     		orrs	r3, r2
 995 050c DAB2     		uxtb	r2, r3
 996 050e 1E23     		movs	r3, #30
 997 0510 FB18     		adds	r3, r7, r3
 998 0512 1B78     		ldrb	r3, [r3]
 999 0514 1900     		movs	r1, r3
 1000 0516 1000     		movs	r0, r2
 1001 0518 FFF7FEFF 		bl	graphic_write_command
 184:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	if(set){
 1002              		.loc 1 184 0
 1003 051c 7B68     		ldr	r3, [r7, #4]
 1004 051e 002B     		cmp	r3, #0
 1005 0520 0AD0     		beq	.L62
 185:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		mask=mask|c;
 1006              		.loc 1 185 0
 1007 0522 1F23     		movs	r3, #31
 1008 0524 FB18     		adds	r3, r7, r3
 1009 0526 1F22     		movs	r2, #31
 1010 0528 B918     		adds	r1, r7, r2
 1011 052a 1722     		movs	r2, #23
 1012 052c BA18     		adds	r2, r7, r2
 1013 052e 0978     		ldrb	r1, [r1]
 1014 0530 1278     		ldrb	r2, [r2]
 1015 0532 0A43     		orrs	r2, r1
 1016 0534 1A70     		strb	r2, [r3]
 1017 0536 09E0     		b	.L63
 1018              	.L62:
 186:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}else{
 187:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 		mask=mask&c;
 1019              		.loc 1 187 0
 1020 0538 1F23     		movs	r3, #31
 1021 053a FB18     		adds	r3, r7, r3
 1022 053c 1F22     		movs	r2, #31
 1023 053e BA18     		adds	r2, r7, r2
 1024 0540 1721     		movs	r1, #23
 1025 0542 7918     		adds	r1, r7, r1
 1026 0544 1278     		ldrb	r2, [r2]
 1027 0546 0978     		ldrb	r1, [r1]
 1028 0548 0A40     		ands	r2, r1
 1029 054a 1A70     		strb	r2, [r3]
 1030              	.L63:
 188:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 189:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	graphic_write_data(mask, controller);
 1031              		.loc 1 189 0
 1032 054c 1E23     		movs	r3, #30
 1033 054e FB18     		adds	r3, r7, r3
 1034 0550 1A78     		ldrb	r2, [r3]
 1035 0552 1F23     		movs	r3, #31
 1036 0554 FB18     		adds	r3, r7, r3
 1037 0556 1B78     		ldrb	r3, [r3]
 1038 0558 1100     		movs	r1, r2
 1039 055a 1800     		movs	r0, r3
 1040 055c FFF7FEFF 		bl	graphic_write_data
 1041 0560 00E0     		b	.L45
 1042              	.L64:
 156:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	}
 1043              		.loc 1 156 0
 1044 0562 C046     		nop
 1045              	.L45:
 190:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** 	
 191:C:/Users/Maija/Documents/mop/pong\graphicdisplay.c **** }
 1046              		.loc 1 191 0
 1047 0564 BD46     		mov	sp, r7
 1048 0566 09B0     		add	sp, sp, #36
 1049              		@ sp needed
 1050 0568 90BD     		pop	{r4, r7, pc}
 1051              	.L66:
 1052 056a C046     		.align	2
 1053              	.L65:
 1054 056c 00000000 		.word	.L51
 1055              		.cfi_endproc
 1056              	.LFE12:
 1058              	.Letext0:
 1059              		.file 2 "C:/Users/Maija/Documents/mop/pong/graphicdisplay.h"
