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
   2:C:/Users/Maija/Documents/mop/pong\startup.c **** #include "asciidisplay.h"
   3:C:/Users/Maija/Documents/mop/pong\startup.c **** #include "ports.h"
   4:C:/Users/Maija/Documents/mop/pong\startup.c **** #include "objects.h"
   5:C:/Users/Maija/Documents/mop/pong\startup.c ****  
   6:C:/Users/Maija/Documents/mop/pong\startup.c ****  
   7:C:/Users/Maija/Documents/mop/pong\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   8:C:/Users/Maija/Documents/mop/pong\startup.c **** 
   9:C:/Users/Maija/Documents/mop/pong\startup.c **** void startup ( void )
  10:C:/Users/Maija/Documents/mop/pong\startup.c **** {
  28              		.loc 1 10 0
  29              		.cfi_startproc
  11:C:/Users/Maija/Documents/mop/pong\startup.c **** asm volatile(
  30              		.loc 1 11 0
  31              		.syntax divided
  32              	@ 11 "C:/Users/Maija/Documents/mop/pong/startup.c" 1
  33 0000 0248     		 LDR R0,=0x2001C000
  34 0002 8546     	 MOV SP,R0
  35 0004 FFF7FEFF 	 BL main
  36 0008 FEE7     	.L1: B .L1
  37              	
  38              	@ 0 "" 2
  12:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  13:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" MOV SP,R0\n"
  14:C:/Users/Maija/Documents/mop/pong\startup.c **** 	" BL main\n"				/* call main */
  15:C:/Users/Maija/Documents/mop/pong\startup.c **** 	".L1: B .L1\n"				/* never return */
  16:C:/Users/Maija/Documents/mop/pong\startup.c **** 	) ;
  17:C:/Users/Maija/Documents/mop/pong\startup.c **** }
  39              		.loc 1 17 0
  40              		.thumb
  41              		.syntax unified
  42 000a C046     		nop
  43              		.cfi_endproc
  44              	.LFE0:
  46              		.section	.rodata
  47              		.align	2
  48              	.LC0:
  49 0000 506C6179 		.ascii	"Player 1:  \000"
  49      65722031 
  49      3A202000 
  50              		.align	2
  51              	.LC2:
  52 000c 506C6179 		.ascii	"Player 2:  \000"
  52      65722032 
  52      3A202000 
  53              		.text
  54              		.align	2
  55              		.global	write_to_ascii
  56              		.code	16
  57              		.thumb_func
  59              	write_to_ascii:
  60              	.LFB1:
  18:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  19:C:/Users/Maija/Documents/mop/pong\startup.c **** void write_to_ascii(unsigned char i){
  61              		.loc 1 19 0
  62              		.cfi_startproc
  63 0000 90B5     		push	{r4, r7, lr}
  64              		.cfi_def_cfa_offset 12
  65              		.cfi_offset 4, -12
  66              		.cfi_offset 7, -8
  67              		.cfi_offset 14, -4
  68 0002 8BB0     		sub	sp, sp, #44
  69              		.cfi_def_cfa_offset 56
  70 0004 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  72 0006 0200     		movs	r2, r0
  73 0008 FB1D     		adds	r3, r7, #7
  74 000a 1A70     		strb	r2, [r3]
  20:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char *s;
  21:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char test1[12] = "Player 1:  ";
  75              		.loc 1 21 0
  76 000c 1823     		movs	r3, #24
  77 000e FB18     		adds	r3, r7, r3
  78 0010 234A     		ldr	r2, .L7
  79 0012 13CA     		ldmia	r2!, {r0, r1, r4}
  80 0014 13C3     		stmia	r3!, {r0, r1, r4}
  22:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char test2[12] = "Player 2:  ";
  81              		.loc 1 22 0
  82 0016 0C23     		movs	r3, #12
  83 0018 FB18     		adds	r3, r7, r3
  84 001a 224A     		ldr	r2, .L7+4
  85 001c 13CA     		ldmia	r2!, {r0, r1, r4}
  86 001e 13C3     		stmia	r3!, {r0, r1, r4}
  23:C:/Users/Maija/Documents/mop/pong\startup.c **** 	test1[10] = '0'+i; 
  87              		.loc 1 23 0
  88 0020 FB1D     		adds	r3, r7, #7
  89 0022 1B78     		ldrb	r3, [r3]
  90 0024 3033     		adds	r3, r3, #48
  91 0026 DAB2     		uxtb	r2, r3
  92 0028 1823     		movs	r3, #24
  93 002a FB18     		adds	r3, r7, r3
  94 002c 9A72     		strb	r2, [r3, #10]
  24:C:/Users/Maija/Documents/mop/pong\startup.c **** 	test2[10] = '0'+i; 
  95              		.loc 1 24 0
  96 002e FB1D     		adds	r3, r7, #7
  97 0030 1B78     		ldrb	r3, [r3]
  98 0032 3033     		adds	r3, r3, #48
  99 0034 DAB2     		uxtb	r2, r3
 100 0036 0C23     		movs	r3, #12
 101 0038 FB18     		adds	r3, r7, r3
 102 003a 9A72     		strb	r2, [r3, #10]
  25:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  26:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_ascii_ports();
 103              		.loc 1 26 0
 104 003c FFF7FEFF 		bl	init_ascii_ports
  27:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_init();
 105              		.loc 1 27 0
 106 0040 FFF7FEFF 		bl	ascii_init
  28:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  29:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_gotoxy(1,1);
 107              		.loc 1 29 0
 108 0044 0121     		movs	r1, #1
 109 0046 0120     		movs	r0, #1
 110 0048 FFF7FEFF 		bl	ascii_gotoxy
  30:C:/Users/Maija/Documents/mop/pong\startup.c **** 	s = test1;
 111              		.loc 1 30 0
 112 004c 1823     		movs	r3, #24
 113 004e FB18     		adds	r3, r7, r3
 114 0050 7B62     		str	r3, [r7, #36]
  31:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 115              		.loc 1 31 0
 116 0052 06E0     		b	.L3
 117              	.L4:
 118              	.LBB2:
  32:C:/Users/Maija/Documents/mop/pong\startup.c **** 	{
  33:C:/Users/Maija/Documents/mop/pong\startup.c **** 		ascii_write_char( *s++);
 119              		.loc 1 33 0
 120 0054 7B6A     		ldr	r3, [r7, #36]
 121 0056 5A1C     		adds	r2, r3, #1
 122 0058 7A62     		str	r2, [r7, #36]
 123 005a 1B78     		ldrb	r3, [r3]
 124 005c 1800     		movs	r0, r3
 125 005e FFF7FEFF 		bl	ascii_write_char
 126              	.L3:
 127              	.LBE2:
  31:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 128              		.loc 1 31 0
 129 0062 7B6A     		ldr	r3, [r7, #36]
 130 0064 1B78     		ldrb	r3, [r3]
 131 0066 002B     		cmp	r3, #0
 132 0068 F4D1     		bne	.L4
  34:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
  35:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_gotoxy(1,2);
 133              		.loc 1 35 0
 134 006a 0221     		movs	r1, #2
 135 006c 0120     		movs	r0, #1
 136 006e FFF7FEFF 		bl	ascii_gotoxy
  36:C:/Users/Maija/Documents/mop/pong\startup.c **** 	s = test2;
 137              		.loc 1 36 0
 138 0072 0C23     		movs	r3, #12
 139 0074 FB18     		adds	r3, r7, r3
 140 0076 7B62     		str	r3, [r7, #36]
  37:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 141              		.loc 1 37 0
 142 0078 06E0     		b	.L5
 143              	.L6:
 144              	.LBB3:
  38:C:/Users/Maija/Documents/mop/pong\startup.c **** 	{
  39:C:/Users/Maija/Documents/mop/pong\startup.c **** 		ascii_write_char(*s++);
 145              		.loc 1 39 0
 146 007a 7B6A     		ldr	r3, [r7, #36]
 147 007c 5A1C     		adds	r2, r3, #1
 148 007e 7A62     		str	r2, [r7, #36]
 149 0080 1B78     		ldrb	r3, [r3]
 150 0082 1800     		movs	r0, r3
 151 0084 FFF7FEFF 		bl	ascii_write_char
 152              	.L5:
 153              	.LBE3:
  37:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 154              		.loc 1 37 0
 155 0088 7B6A     		ldr	r3, [r7, #36]
 156 008a 1B78     		ldrb	r3, [r3]
 157 008c 002B     		cmp	r3, #0
 158 008e F4D1     		bne	.L6
  40:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
  41:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  42:C:/Users/Maija/Documents/mop/pong\startup.c **** 	//meddelandet utskrivet, gör grafisk display primär igen
  43:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_graphic_port();
 159              		.loc 1 43 0
 160 0090 FFF7FEFF 		bl	init_graphic_port
  44:C:/Users/Maija/Documents/mop/pong\startup.c **** 	graphic_initialize();
 161              		.loc 1 44 0
 162 0094 FFF7FEFF 		bl	graphic_initialize
  45:C:/Users/Maija/Documents/mop/pong\startup.c **** }
 163              		.loc 1 45 0
 164 0098 C046     		nop
 165 009a BD46     		mov	sp, r7
 166 009c 0BB0     		add	sp, sp, #44
 167              		@ sp needed
 168 009e 90BD     		pop	{r4, r7, pc}
 169              	.L8:
 170              		.align	2
 171              	.L7:
 172 00a0 00000000 		.word	.LC0
 173 00a4 0C000000 		.word	.LC2
 174              		.cfi_endproc
 175              	.LFE1:
 177              		.global	__aeabi_uidivmod
 178              		.align	2
 179              		.global	main
 180              		.code	16
 181              		.thumb_func
 183              	main:
 184              	.LFB2:
  46:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  47:C:/Users/Maija/Documents/mop/pong\startup.c **** void main(void)
  48:C:/Users/Maija/Documents/mop/pong\startup.c **** {
 185              		.loc 1 48 0
 186              		.cfi_startproc
 187 00a8 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 00aa 82B0     		sub	sp, sp, #8
 192              		.cfi_def_cfa_offset 16
 193 00ac 00AF     		add	r7, sp, #0
 194              		.cfi_def_cfa_register 7
  49:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  50:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static GEOMETRY ball_geometry={
  51:C:/Users/Maija/Documents/mop/pong\startup.c **** 		12, //numpoints
  52:C:/Users/Maija/Documents/mop/pong\startup.c **** 		4,4, //sixex, sixey
  53:C:/Users/Maija/Documents/mop/pong\startup.c **** 		{
  54:C:/Users/Maija/Documents/mop/pong\startup.c **** 			//px[0,1,2...]
  55:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{0,1},{0,2},{1,0},{1,1},
  56:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{1,2},{1,3},{2,0},{2,1},
  57:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{2,2},{2,3},{3,1},{3,2},
  58:C:/Users/Maija/Documents/mop/pong\startup.c **** 		}
  59:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  60:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static OBJECT ball= {
  61:C:/Users/Maija/Documents/mop/pong\startup.c **** 		&ball_geometry,
  62:C:/Users/Maija/Documents/mop/pong\startup.c **** 		0,0, //initiala riktningpositioner
  63:C:/Users/Maija/Documents/mop/pong\startup.c **** 		1,1, //initiala startpositioner
  64:C:/Users/Maija/Documents/mop/pong\startup.c **** 		draw_object,
  65:C:/Users/Maija/Documents/mop/pong\startup.c **** 		clear_object,
  66:C:/Users/Maija/Documents/mop/pong\startup.c **** 		move_object,
  67:C:/Users/Maija/Documents/mop/pong\startup.c **** 		set_object_speed
  68:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  69:C:/Users/Maija/Documents/mop/pong\startup.c **** 	POBJECT pball= &ball;
 195              		.loc 1 69 0
 196 00ae 114B     		ldr	r3, .L12
 197 00b0 3B60     		str	r3, [r7]
  70:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_graphic_port();
 198              		.loc 1 70 0
 199 00b2 FFF7FEFF 		bl	init_graphic_port
  71:C:/Users/Maija/Documents/mop/pong\startup.c **** 	graphic_initialize();
 200              		.loc 1 71 0
 201 00b6 FFF7FEFF 		bl	graphic_initialize
  72:C:/Users/Maija/Documents/mop/pong\startup.c **** 	#ifndef SIMULATOR
  73:C:/Users/Maija/Documents/mop/pong\startup.c **** 		graphic_clear_screen();
  74:C:/Users/Maija/Documents/mop/pong\startup.c **** 	#endif
  75:C:/Users/Maija/Documents/mop/pong\startup.c **** 	pball->set_speed(pball,4,4);
 202              		.loc 1 75 0
 203 00ba 3B68     		ldr	r3, [r7]
 204 00bc 1B6A     		ldr	r3, [r3, #32]
 205 00be 3868     		ldr	r0, [r7]
 206 00c0 0422     		movs	r2, #4
 207 00c2 0421     		movs	r1, #4
 208 00c4 9847     		blx	r3
  76:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  77:C:/Users/Maija/Documents/mop/pong\startup.c **** 	unsigned ascii_loop=0;
 209              		.loc 1 77 0
 210 00c6 0023     		movs	r3, #0
 211 00c8 7B60     		str	r3, [r7, #4]
 212              	.L11:
  78:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(1){
  79:C:/Users/Maija/Documents/mop/pong\startup.c **** 		pball->move(pball);
 213              		.loc 1 79 0
 214 00ca 3B68     		ldr	r3, [r7]
 215 00cc DB69     		ldr	r3, [r3, #28]
 216 00ce 3A68     		ldr	r2, [r7]
 217 00d0 1000     		movs	r0, r2
 218 00d2 9847     		blx	r3
  80:C:/Users/Maija/Documents/mop/pong\startup.c **** 		//delay_milli(40);
  81:C:/Users/Maija/Documents/mop/pong\startup.c **** 		if((ascii_loop%5)==0){
 219              		.loc 1 81 0
 220 00d4 7B68     		ldr	r3, [r7, #4]
 221 00d6 0521     		movs	r1, #5
 222 00d8 1800     		movs	r0, r3
 223 00da FFF7FEFF 		bl	__aeabi_uidivmod
 224 00de 0B1E     		subs	r3, r1, #0
 225 00e0 04D1     		bne	.L10
  82:C:/Users/Maija/Documents/mop/pong\startup.c **** 			write_to_ascii(ascii_loop);
 226              		.loc 1 82 0
 227 00e2 7B68     		ldr	r3, [r7, #4]
 228 00e4 DBB2     		uxtb	r3, r3
 229 00e6 1800     		movs	r0, r3
 230 00e8 FFF7FEFF 		bl	write_to_ascii
 231              	.L10:
  83:C:/Users/Maija/Documents/mop/pong\startup.c **** 		}
  84:C:/Users/Maija/Documents/mop/pong\startup.c **** 		ascii_loop++;
 232              		.loc 1 84 0
 233 00ec 7B68     		ldr	r3, [r7, #4]
 234 00ee 0133     		adds	r3, r3, #1
 235 00f0 7B60     		str	r3, [r7, #4]
  85:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
 236              		.loc 1 85 0
 237 00f2 EAE7     		b	.L11
 238              	.L13:
 239              		.align	2
 240              	.L12:
 241 00f4 00000000 		.word	ball.4244
 242              		.cfi_endproc
 243              	.LFE2:
 245              		.data
 246              		.align	2
 249              	ball.4244:
 250 0000 24000000 		.word	ball_geometry.4243
 251 0004 00000000 		.word	0
 252 0008 00000000 		.word	0
 253 000c 01000000 		.word	1
 254 0010 01000000 		.word	1
 255 0014 00000000 		.word	draw_object
 256 0018 00000000 		.word	clear_object
 257 001c 00000000 		.word	move_object
 258 0020 00000000 		.word	set_object_speed
 259              		.align	2
 262              	ball_geometry.4243:
 263 0024 0C000000 		.word	12
 264 0028 04000000 		.word	4
 265 002c 04000000 		.word	4
 266 0030 00       		.byte	0
 267 0031 01       		.byte	1
 268 0032 00       		.byte	0
 269 0033 02       		.byte	2
 270 0034 01       		.byte	1
 271 0035 00       		.byte	0
 272 0036 01       		.byte	1
 273 0037 01       		.byte	1
 274 0038 01       		.byte	1
 275 0039 02       		.byte	2
 276 003a 01       		.byte	1
 277 003b 03       		.byte	3
 278 003c 02       		.byte	2
 279 003d 00       		.byte	0
 280 003e 02       		.byte	2
 281 003f 01       		.byte	1
 282 0040 02       		.byte	2
 283 0041 02       		.byte	2
 284 0042 02       		.byte	2
 285 0043 03       		.byte	3
 286 0044 03       		.byte	3
 287 0045 01       		.byte	1
 288 0046 03       		.byte	3
 289 0047 02       		.byte	2
 290 0048 00000000 		.space	16
 290      00000000 
 290      00000000 
 290      00000000 
 291              		.text
 292              	.Letext0:
 293              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
