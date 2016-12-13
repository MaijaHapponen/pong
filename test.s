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
  55              		.global	update_score
  56              		.code	16
  57              		.thumb_func
  59              	update_score:
  60              	.LFB1:
  18:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  19:C:/Users/Maija/Documents/mop/pong\startup.c **** void update_score(unsigned char player1, unsigned char player2){
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
  75 000c BB1D     		adds	r3, r7, #6
  76 000e 0A1C     		adds	r2, r1, #0
  77 0010 1A70     		strb	r2, [r3]
  20:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char *s;
  21:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char test1[12] = "Player 1:  ";
  78              		.loc 1 21 0
  79 0012 1823     		movs	r3, #24
  80 0014 FB18     		adds	r3, r7, r3
  81 0016 234A     		ldr	r2, .L7
  82 0018 13CA     		ldmia	r2!, {r0, r1, r4}
  83 001a 13C3     		stmia	r3!, {r0, r1, r4}
  22:C:/Users/Maija/Documents/mop/pong\startup.c **** 	char test2[12] = "Player 2:  ";
  84              		.loc 1 22 0
  85 001c 0C23     		movs	r3, #12
  86 001e FB18     		adds	r3, r7, r3
  87 0020 214A     		ldr	r2, .L7+4
  88 0022 13CA     		ldmia	r2!, {r0, r1, r4}
  89 0024 13C3     		stmia	r3!, {r0, r1, r4}
  23:C:/Users/Maija/Documents/mop/pong\startup.c **** 	test1[10] = '0'+player1; 
  90              		.loc 1 23 0
  91 0026 FB1D     		adds	r3, r7, #7
  92 0028 1B78     		ldrb	r3, [r3]
  93 002a 3033     		adds	r3, r3, #48
  94 002c DAB2     		uxtb	r2, r3
  95 002e 1823     		movs	r3, #24
  96 0030 FB18     		adds	r3, r7, r3
  97 0032 9A72     		strb	r2, [r3, #10]
  24:C:/Users/Maija/Documents/mop/pong\startup.c **** 	test2[10] = '0'+player2; 
  98              		.loc 1 24 0
  99 0034 BB1D     		adds	r3, r7, #6
 100 0036 1B78     		ldrb	r3, [r3]
 101 0038 3033     		adds	r3, r3, #48
 102 003a DAB2     		uxtb	r2, r3
 103 003c 0C23     		movs	r3, #12
 104 003e FB18     		adds	r3, r7, r3
 105 0040 9A72     		strb	r2, [r3, #10]
  25:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  26:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_ascii_ports();
 106              		.loc 1 26 0
 107 0042 FFF7FEFF 		bl	init_ascii_ports
  27:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_init();
 108              		.loc 1 27 0
 109 0046 FFF7FEFF 		bl	ascii_init
  28:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  29:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_gotoxy(1,1);
 110              		.loc 1 29 0
 111 004a 0121     		movs	r1, #1
 112 004c 0120     		movs	r0, #1
 113 004e FFF7FEFF 		bl	ascii_gotoxy
  30:C:/Users/Maija/Documents/mop/pong\startup.c **** 	s = test1;
 114              		.loc 1 30 0
 115 0052 1823     		movs	r3, #24
 116 0054 FB18     		adds	r3, r7, r3
 117 0056 7B62     		str	r3, [r7, #36]
  31:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 118              		.loc 1 31 0
 119 0058 06E0     		b	.L3
 120              	.L4:
 121              	.LBB2:
  32:C:/Users/Maija/Documents/mop/pong\startup.c **** 	{
  33:C:/Users/Maija/Documents/mop/pong\startup.c **** 		ascii_write_char( *s++);
 122              		.loc 1 33 0
 123 005a 7B6A     		ldr	r3, [r7, #36]
 124 005c 5A1C     		adds	r2, r3, #1
 125 005e 7A62     		str	r2, [r7, #36]
 126 0060 1B78     		ldrb	r3, [r3]
 127 0062 1800     		movs	r0, r3
 128 0064 FFF7FEFF 		bl	ascii_write_char
 129              	.L3:
 130              	.LBE2:
  31:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 131              		.loc 1 31 0
 132 0068 7B6A     		ldr	r3, [r7, #36]
 133 006a 1B78     		ldrb	r3, [r3]
 134 006c 002B     		cmp	r3, #0
 135 006e F4D1     		bne	.L4
  34:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
  35:C:/Users/Maija/Documents/mop/pong\startup.c **** 	ascii_gotoxy(1,2);
 136              		.loc 1 35 0
 137 0070 0221     		movs	r1, #2
 138 0072 0120     		movs	r0, #1
 139 0074 FFF7FEFF 		bl	ascii_gotoxy
  36:C:/Users/Maija/Documents/mop/pong\startup.c **** 	s = test2;
 140              		.loc 1 36 0
 141 0078 0C23     		movs	r3, #12
 142 007a FB18     		adds	r3, r7, r3
 143 007c 7B62     		str	r3, [r7, #36]
  37:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 144              		.loc 1 37 0
 145 007e 06E0     		b	.L5
 146              	.L6:
 147              	.LBB3:
  38:C:/Users/Maija/Documents/mop/pong\startup.c **** 	{
  39:C:/Users/Maija/Documents/mop/pong\startup.c **** 		ascii_write_char(*s++);
 148              		.loc 1 39 0
 149 0080 7B6A     		ldr	r3, [r7, #36]
 150 0082 5A1C     		adds	r2, r3, #1
 151 0084 7A62     		str	r2, [r7, #36]
 152 0086 1B78     		ldrb	r3, [r3]
 153 0088 1800     		movs	r0, r3
 154 008a FFF7FEFF 		bl	ascii_write_char
 155              	.L5:
 156              	.LBE3:
  37:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(*s)
 157              		.loc 1 37 0
 158 008e 7B6A     		ldr	r3, [r7, #36]
 159 0090 1B78     		ldrb	r3, [r3]
 160 0092 002B     		cmp	r3, #0
 161 0094 F4D1     		bne	.L6
  40:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
  41:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
  42:C:/Users/Maija/Documents/mop/pong\startup.c **** 	//meddelandet utskrivet, gör grafisk display primär igen
  43:C:/Users/Maija/Documents/mop/pong\startup.c **** 	restart_game();
 162              		.loc 1 43 0
 163 0096 FFF7FEFF 		bl	restart_game
  44:C:/Users/Maija/Documents/mop/pong\startup.c **** }
 164              		.loc 1 44 0
 165 009a C046     		nop
 166 009c BD46     		mov	sp, r7
 167 009e 0BB0     		add	sp, sp, #44
 168              		@ sp needed
 169 00a0 90BD     		pop	{r4, r7, pc}
 170              	.L8:
 171 00a2 C046     		.align	2
 172              	.L7:
 173 00a4 00000000 		.word	.LC0
 174 00a8 0C000000 		.word	.LC2
 175              		.cfi_endproc
 176              	.LFE1:
 178              		.align	2
 179              		.global	restart_game
 180              		.code	16
 181              		.thumb_func
 183              	restart_game:
 184              	.LFB2:
  45:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  46:C:/Users/Maija/Documents/mop/pong\startup.c **** void restart_game(void){
 185              		.loc 1 46 0
 186              		.cfi_startproc
 187 00ac 80B5     		push	{r7, lr}
 188              		.cfi_def_cfa_offset 8
 189              		.cfi_offset 7, -8
 190              		.cfi_offset 14, -4
 191 00ae 00AF     		add	r7, sp, #0
 192              		.cfi_def_cfa_register 7
  47:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_graphic_port();
 193              		.loc 1 47 0
 194 00b0 FFF7FEFF 		bl	init_graphic_port
  48:C:/Users/Maija/Documents/mop/pong\startup.c **** 	graphic_initialize();
 195              		.loc 1 48 0
 196 00b4 FFF7FEFF 		bl	graphic_initialize
  49:C:/Users/Maija/Documents/mop/pong\startup.c **** }
 197              		.loc 1 49 0
 198 00b8 C046     		nop
 199 00ba BD46     		mov	sp, r7
 200              		@ sp needed
 201 00bc 80BD     		pop	{r7, pc}
 202              		.cfi_endproc
 203              	.LFE2:
 205 00be C046     		.align	2
 206              		.global	main
 207              		.code	16
 208              		.thumb_func
 210              	main:
 211              	.LFB3:
  50:C:/Users/Maija/Documents/mop/pong\startup.c **** 
  51:C:/Users/Maija/Documents/mop/pong\startup.c **** void main(void)
  52:C:/Users/Maija/Documents/mop/pong\startup.c **** {
 212              		.loc 1 52 0
 213              		.cfi_startproc
 214 00c0 80B5     		push	{r7, lr}
 215              		.cfi_def_cfa_offset 8
 216              		.cfi_offset 7, -8
 217              		.cfi_offset 14, -4
 218 00c2 84B0     		sub	sp, sp, #16
 219              		.cfi_def_cfa_offset 24
 220 00c4 00AF     		add	r7, sp, #0
 221              		.cfi_def_cfa_register 7
  53:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static GEOMETRY ball_geometry={
  54:C:/Users/Maija/Documents/mop/pong\startup.c **** 		12, //numpoints
  55:C:/Users/Maija/Documents/mop/pong\startup.c **** 		4,4, //sixex, sixey
  56:C:/Users/Maija/Documents/mop/pong\startup.c **** 		{
  57:C:/Users/Maija/Documents/mop/pong\startup.c **** 			//px[0,1,2...]
  58:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{0,1},{0,2},{1,0},{1,1},
  59:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{1,2},{1,3},{2,0},{2,1},
  60:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{2,2},{2,3},{3,1},{3,2},
  61:C:/Users/Maija/Documents/mop/pong\startup.c **** 		}
  62:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  63:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static GEOMETRY player_geometry={
  64:C:/Users/Maija/Documents/mop/pong\startup.c **** 		16, //numpoints
  65:C:/Users/Maija/Documents/mop/pong\startup.c **** 		2,8, //sixex, sixey
  66:C:/Users/Maija/Documents/mop/pong\startup.c **** 		{
  67:C:/Users/Maija/Documents/mop/pong\startup.c **** 			//px[0,1,2...]
  68:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{0,0},{0,1},{1,0},{1,1},
  69:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{2,0},{2,1},{3,0},{3,1},
  70:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{4,0},{4,1},{5,0},{5,1},
  71:C:/Users/Maija/Documents/mop/pong\startup.c **** 			{6,0},{6,1},{7,0},{7,1},
  72:C:/Users/Maija/Documents/mop/pong\startup.c **** 		}
  73:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  74:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static OBJECT ball= {
  75:C:/Users/Maija/Documents/mop/pong\startup.c **** 		&ball_geometry,
  76:C:/Users/Maija/Documents/mop/pong\startup.c **** 		0,0, //initiala riktningpositioner
  77:C:/Users/Maija/Documents/mop/pong\startup.c **** 		1,1, //initiala startpositioner
  78:C:/Users/Maija/Documents/mop/pong\startup.c **** 		draw_object,
  79:C:/Users/Maija/Documents/mop/pong\startup.c **** 		clear_object,
  80:C:/Users/Maija/Documents/mop/pong\startup.c **** 		move_object,
  81:C:/Users/Maija/Documents/mop/pong\startup.c **** 		set_object_speed
  82:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  83:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static OBJECT player1= {
  84:C:/Users/Maija/Documents/mop/pong\startup.c **** 		&player_geometry,
  85:C:/Users/Maija/Documents/mop/pong\startup.c **** 		0,0, //initiala riktningpositioner
  86:C:/Users/Maija/Documents/mop/pong\startup.c **** 		(128-2),0, //initiala startpositioner
  87:C:/Users/Maija/Documents/mop/pong\startup.c **** 		draw_object,
  88:C:/Users/Maija/Documents/mop/pong\startup.c **** 		clear_object,
  89:C:/Users/Maija/Documents/mop/pong\startup.c **** 		move_object,
  90:C:/Users/Maija/Documents/mop/pong\startup.c **** 		set_object_speed
  91:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
  92:C:/Users/Maija/Documents/mop/pong\startup.c **** 	static OBJECT player2= {
  93:C:/Users/Maija/Documents/mop/pong\startup.c **** 		&player_geometry,
  94:C:/Users/Maija/Documents/mop/pong\startup.c **** 		0,0, //initiala riktningpositioner
  95:C:/Users/Maija/Documents/mop/pong\startup.c **** 		1,1, //initiala startpositioner
  96:C:/Users/Maija/Documents/mop/pong\startup.c **** 		draw_object,
  97:C:/Users/Maija/Documents/mop/pong\startup.c **** 		clear_object,
  98:C:/Users/Maija/Documents/mop/pong\startup.c **** 		move_object,
  99:C:/Users/Maija/Documents/mop/pong\startup.c **** 		set_object_speed
 100:C:/Users/Maija/Documents/mop/pong\startup.c **** 	};
 101:C:/Users/Maija/Documents/mop/pong\startup.c **** 	POBJECT pball= &ball;
 222              		.loc 1 101 0
 223 00c6 0B4B     		ldr	r3, .L12
 224 00c8 FB60     		str	r3, [r7, #12]
 102:C:/Users/Maija/Documents/mop/pong\startup.c **** 	POBJECT pplayer1=&player1;
 225              		.loc 1 102 0
 226 00ca 0B4B     		ldr	r3, .L12+4
 227 00cc BB60     		str	r3, [r7, #8]
 103:C:/Users/Maija/Documents/mop/pong\startup.c **** 	POBJECT pplayer2=&player2;
 228              		.loc 1 103 0
 229 00ce 0B4B     		ldr	r3, .L12+8
 230 00d0 7B60     		str	r3, [r7, #4]
 104:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
 105:C:/Users/Maija/Documents/mop/pong\startup.c **** 	init_graphic_port();
 231              		.loc 1 105 0
 232 00d2 FFF7FEFF 		bl	init_graphic_port
 106:C:/Users/Maija/Documents/mop/pong\startup.c **** 	graphic_initialize();
 233              		.loc 1 106 0
 234 00d6 FFF7FEFF 		bl	graphic_initialize
 107:C:/Users/Maija/Documents/mop/pong\startup.c **** 	#ifndef SIMULATOR
 108:C:/Users/Maija/Documents/mop/pong\startup.c **** 		graphic_clear_screen();
 109:C:/Users/Maija/Documents/mop/pong\startup.c **** 	#endif
 110:C:/Users/Maija/Documents/mop/pong\startup.c **** 	pball->set_speed(pball,4,4);
 235              		.loc 1 110 0
 236 00da FB68     		ldr	r3, [r7, #12]
 237 00dc 1B6A     		ldr	r3, [r3, #32]
 238 00de F868     		ldr	r0, [r7, #12]
 239 00e0 0422     		movs	r2, #4
 240 00e2 0421     		movs	r1, #4
 241 00e4 9847     		blx	r3
 242              	.L11:
 111:C:/Users/Maija/Documents/mop/pong\startup.c **** 	
 112:C:/Users/Maija/Documents/mop/pong\startup.c **** 	while(1){
 113:C:/Users/Maija/Documents/mop/pong\startup.c **** 		pball->move(pball);
 243              		.loc 1 113 0 discriminator 1
 244 00e6 FB68     		ldr	r3, [r7, #12]
 245 00e8 DB69     		ldr	r3, [r3, #28]
 246 00ea FA68     		ldr	r2, [r7, #12]
 247 00ec 1000     		movs	r0, r2
 248 00ee 9847     		blx	r3
 114:C:/Users/Maija/Documents/mop/pong\startup.c **** 		pplayer1->draw;
 115:C:/Users/Maija/Documents/mop/pong\startup.c **** 		pplayer2->draw;
 116:C:/Users/Maija/Documents/mop/pong\startup.c **** 		//delay_milli(40);
 117:C:/Users/Maija/Documents/mop/pong\startup.c **** 		//if goal update_score
 118:C:/Users/Maija/Documents/mop/pong\startup.c **** 	}
 249              		.loc 1 118 0 discriminator 1
 250 00f0 F9E7     		b	.L11
 251              	.L13:
 252 00f2 C046     		.align	2
 253              	.L12:
 254 00f4 00000000 		.word	ball.4251
 255 00f8 24000000 		.word	player1.4252
 256 00fc 48000000 		.word	player2.4253
 257              		.cfi_endproc
 258              	.LFE3:
 260              		.data
 261              		.align	2
 264              	ball.4251:
 265 0000 A0000000 		.word	ball_geometry.4249
 266 0004 00000000 		.word	0
 267 0008 00000000 		.word	0
 268 000c 01000000 		.word	1
 269 0010 01000000 		.word	1
 270 0014 00000000 		.word	draw_object
 271 0018 00000000 		.word	clear_object
 272 001c 00000000 		.word	move_object
 273 0020 00000000 		.word	set_object_speed
 274              		.align	2
 277              	player1.4252:
 278 0024 6C000000 		.word	player_geometry.4250
 279 0028 00000000 		.word	0
 280 002c 00000000 		.word	0
 281 0030 7E000000 		.word	126
 282 0034 00000000 		.word	0
 283 0038 00000000 		.word	draw_object
 284 003c 00000000 		.word	clear_object
 285 0040 00000000 		.word	move_object
 286 0044 00000000 		.word	set_object_speed
 287              		.align	2
 290              	player2.4253:
 291 0048 6C000000 		.word	player_geometry.4250
 292 004c 00000000 		.word	0
 293 0050 00000000 		.word	0
 294 0054 01000000 		.word	1
 295 0058 01000000 		.word	1
 296 005c 00000000 		.word	draw_object
 297 0060 00000000 		.word	clear_object
 298 0064 00000000 		.word	move_object
 299 0068 00000000 		.word	set_object_speed
 300              		.align	2
 303              	player_geometry.4250:
 304 006c 10000000 		.word	16
 305 0070 02000000 		.word	2
 306 0074 08000000 		.word	8
 307 0078 00       		.byte	0
 308 0079 00       		.byte	0
 309 007a 00       		.byte	0
 310 007b 01       		.byte	1
 311 007c 01       		.byte	1
 312 007d 00       		.byte	0
 313 007e 01       		.byte	1
 314 007f 01       		.byte	1
 315 0080 02       		.byte	2
 316 0081 00       		.byte	0
 317 0082 02       		.byte	2
 318 0083 01       		.byte	1
 319 0084 03       		.byte	3
 320 0085 00       		.byte	0
 321 0086 03       		.byte	3
 322 0087 01       		.byte	1
 323 0088 04       		.byte	4
 324 0089 00       		.byte	0
 325 008a 04       		.byte	4
 326 008b 01       		.byte	1
 327 008c 05       		.byte	5
 328 008d 00       		.byte	0
 329 008e 05       		.byte	5
 330 008f 01       		.byte	1
 331 0090 06       		.byte	6
 332 0091 00       		.byte	0
 333 0092 06       		.byte	6
 334 0093 01       		.byte	1
 335 0094 07       		.byte	7
 336 0095 00       		.byte	0
 337 0096 07       		.byte	7
 338 0097 01       		.byte	1
 339 0098 00000000 		.space	8
 339      00000000 
 340              		.align	2
 343              	ball_geometry.4249:
 344 00a0 0C000000 		.word	12
 345 00a4 04000000 		.word	4
 346 00a8 04000000 		.word	4
 347 00ac 00       		.byte	0
 348 00ad 01       		.byte	1
 349 00ae 00       		.byte	0
 350 00af 02       		.byte	2
 351 00b0 01       		.byte	1
 352 00b1 00       		.byte	0
 353 00b2 01       		.byte	1
 354 00b3 01       		.byte	1
 355 00b4 01       		.byte	1
 356 00b5 02       		.byte	2
 357 00b6 01       		.byte	1
 358 00b7 03       		.byte	3
 359 00b8 02       		.byte	2
 360 00b9 00       		.byte	0
 361 00ba 02       		.byte	2
 362 00bb 01       		.byte	1
 363 00bc 02       		.byte	2
 364 00bd 02       		.byte	2
 365 00be 02       		.byte	2
 366 00bf 03       		.byte	3
 367 00c0 03       		.byte	3
 368 00c1 01       		.byte	1
 369 00c2 03       		.byte	3
 370 00c3 02       		.byte	2
 371 00c4 00000000 		.space	16
 371      00000000 
 371      00000000 
 371      00000000 
 372              		.text
 373              	.Letext0:
 374              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
