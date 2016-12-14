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
   4:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** #include "objects.h"
   5:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** #include "keypad.h"
   6:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c ****  
   7:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c ****  
   8:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   9:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  10:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void startup ( void )
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
  28              		.loc 1 11 0
  29              		.cfi_startproc
  30              		@ Naked Function: prologue and epilogue provided by programmer.
  31              		@ args = 0, pretend = 0, frame = 0
  32              		@ frame_needed = 1, uses_anonymous_args = 0
  12:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** asm volatile(
  33              		.loc 1 12 0
  34              		.syntax divided
  35              	@ 12 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c" 1
  36 0000 0248     		 LDR R0,=0x2001C000
  37 0002 8546     	 MOV SP,R0
  38 0004 FFF7FEFF 	 BL main
  39 0008 FEE7     	.L1: B .L1
  40              	
  41              	@ 0 "" 2
  13:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  14:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" MOV SP,R0\n"
  15:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	" BL main\n"				/* call main */
  16:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	".L1: B .L1\n"				/* never return */
  17:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	) ;
  18:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
  42              		.loc 1 18 0
  43              		.thumb
  44              		.syntax unified
  45 000a C046     		nop
  46              		.cfi_endproc
  47              	.LFE0:
  49              		.section	.rodata
  50              		.align	2
  51              	.LC0:
  52 0000 506C6179 		.ascii	"Player 1:  \000"
  52      65722031 
  52      3A202000 
  53              		.align	2
  54              	.LC2:
  55 000c 506C6179 		.ascii	"Player 2:  \000"
  55      65722032 
  55      3A202000 
  56              		.text
  57              		.align	2
  58              		.global	update_score
  59              		.code	16
  60              		.thumb_func
  62              	update_score:
  63              	.LFB1:
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  20:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void update_score(unsigned char player1, unsigned char player2){
  64              		.loc 1 20 0
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
  77 0006 0200     		movs	r2, r0
  78 0008 FB1D     		adds	r3, r7, #7
  79 000a 1A70     		strb	r2, [r3]
  80 000c BB1D     		adds	r3, r7, #6
  81 000e 0A1C     		adds	r2, r1, #0
  82 0010 1A70     		strb	r2, [r3]
  21:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char *s;
  22:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test1[12] = "Player 1:  ";
  83              		.loc 1 22 0
  84 0012 1823     		movs	r3, #24
  85 0014 FB18     		adds	r3, r7, r3
  86 0016 234A     		ldr	r2, .L7
  87 0018 13CA     		ldmia	r2!, {r0, r1, r4}
  88 001a 13C3     		stmia	r3!, {r0, r1, r4}
  23:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	char test2[12] = "Player 2:  ";
  89              		.loc 1 23 0
  90 001c 0C23     		movs	r3, #12
  91 001e FB18     		adds	r3, r7, r3
  92 0020 214A     		ldr	r2, .L7+4
  93 0022 13CA     		ldmia	r2!, {r0, r1, r4}
  94 0024 13C3     		stmia	r3!, {r0, r1, r4}
  24:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	test1[10] = '0'+player1; 
  95              		.loc 1 24 0
  96 0026 FB1D     		adds	r3, r7, #7
  97 0028 1B78     		ldrb	r3, [r3]
  98 002a 3033     		adds	r3, r3, #48
  99 002c DAB2     		uxtb	r2, r3
 100 002e 1823     		movs	r3, #24
 101 0030 FB18     		adds	r3, r7, r3
 102 0032 9A72     		strb	r2, [r3, #10]
  25:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	test2[10] = '0'+player2; 
 103              		.loc 1 25 0
 104 0034 BB1D     		adds	r3, r7, #6
 105 0036 1B78     		ldrb	r3, [r3]
 106 0038 3033     		adds	r3, r3, #48
 107 003a DAB2     		uxtb	r2, r3
 108 003c 0C23     		movs	r3, #12
 109 003e FB18     		adds	r3, r7, r3
 110 0040 9A72     		strb	r2, [r3, #10]
  26:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  27:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_ascii_ports();
 111              		.loc 1 27 0
 112 0042 FFF7FEFF 		bl	init_ascii_ports
  28:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_init();
 113              		.loc 1 28 0
 114 0046 FFF7FEFF 		bl	ascii_init
  29:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  30:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,1);
 115              		.loc 1 30 0
 116 004a 0121     		movs	r1, #1
 117 004c 0120     		movs	r0, #1
 118 004e FFF7FEFF 		bl	ascii_gotoxy
  31:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test1;
 119              		.loc 1 31 0
 120 0052 1823     		movs	r3, #24
 121 0054 FB18     		adds	r3, r7, r3
 122 0056 7B62     		str	r3, [r7, #36]
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 123              		.loc 1 32 0
 124 0058 06E0     		b	.L3
 125              	.L4:
 126              	.LBB2:
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  34:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char( *s++);
 127              		.loc 1 34 0
 128 005a 7B6A     		ldr	r3, [r7, #36]
 129 005c 5A1C     		adds	r2, r3, #1
 130 005e 7A62     		str	r2, [r7, #36]
 131 0060 1B78     		ldrb	r3, [r3]
 132 0062 1800     		movs	r0, r3
 133 0064 FFF7FEFF 		bl	ascii_write_char
 134              	.L3:
 135              	.LBE2:
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 136              		.loc 1 32 0
 137 0068 7B6A     		ldr	r3, [r7, #36]
 138 006a 1B78     		ldrb	r3, [r3]
 139 006c 002B     		cmp	r3, #0
 140 006e F4D1     		bne	.L4
  35:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  36:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	ascii_gotoxy(1,2);
 141              		.loc 1 36 0
 142 0070 0221     		movs	r1, #2
 143 0072 0120     		movs	r0, #1
 144 0074 FFF7FEFF 		bl	ascii_gotoxy
  37:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	s = test2;
 145              		.loc 1 37 0
 146 0078 0C23     		movs	r3, #12
 147 007a FB18     		adds	r3, r7, r3
 148 007c 7B62     		str	r3, [r7, #36]
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 149              		.loc 1 38 0
 150 007e 06E0     		b	.L5
 151              	.L6:
 152              	.LBB3:
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  40:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		ascii_write_char(*s++);
 153              		.loc 1 40 0
 154 0080 7B6A     		ldr	r3, [r7, #36]
 155 0082 5A1C     		adds	r2, r3, #1
 156 0084 7A62     		str	r2, [r7, #36]
 157 0086 1B78     		ldrb	r3, [r3]
 158 0088 1800     		movs	r0, r3
 159 008a FFF7FEFF 		bl	ascii_write_char
 160              	.L5:
 161              	.LBE3:
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(*s)
 162              		.loc 1 38 0
 163 008e 7B6A     		ldr	r3, [r7, #36]
 164 0090 1B78     		ldrb	r3, [r3]
 165 0092 002B     		cmp	r3, #0
 166 0094 F4D1     		bne	.L6
  41:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  42:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  43:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	//meddelandet utskrivet, gör grafisk display primär igen
  44:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	restart_game();
 167              		.loc 1 44 0
 168 0096 FFF7FEFF 		bl	restart_game
  45:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 169              		.loc 1 45 0
 170 009a C046     		nop
 171 009c BD46     		mov	sp, r7
 172 009e 0BB0     		add	sp, sp, #44
 173              		@ sp needed
 174 00a0 90BD     		pop	{r4, r7, pc}
 175              	.L8:
 176 00a2 C046     		.align	2
 177              	.L7:
 178 00a4 00000000 		.word	.LC0
 179 00a8 0C000000 		.word	.LC2
 180              		.cfi_endproc
 181              	.LFE1:
 183              		.align	2
 184              		.global	restart_game
 185              		.code	16
 186              		.thumb_func
 188              	restart_game:
 189              	.LFB2:
  46:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  47:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void restart_game(void){
 190              		.loc 1 47 0
 191              		.cfi_startproc
 192              		@ args = 0, pretend = 0, frame = 0
 193              		@ frame_needed = 1, uses_anonymous_args = 0
 194 00ac 80B5     		push	{r7, lr}
 195              		.cfi_def_cfa_offset 8
 196              		.cfi_offset 7, -8
 197              		.cfi_offset 14, -4
 198 00ae 00AF     		add	r7, sp, #0
 199              		.cfi_def_cfa_register 7
  48:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_graphic_port();
 200              		.loc 1 48 0
 201 00b0 FFF7FEFF 		bl	init_graphic_port
  49:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	graphic_initialize();
 202              		.loc 1 49 0
 203 00b4 FFF7FEFF 		bl	graphic_initialize
  50:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 204              		.loc 1 50 0
 205 00b8 C046     		nop
 206 00ba BD46     		mov	sp, r7
 207              		@ sp needed
 208 00bc 80BD     		pop	{r7, pc}
 209              		.cfi_endproc
 210              	.LFE2:
 212              		.global	pball
 213              		.data
 214              		.align	2
 217              	pball:
 218 0000 00000000 		.word	ball
 219              		.global	pplayer1
 220              		.align	2
 223              	pplayer1:
 224 0004 00000000 		.word	player1
 225              		.global	pplayer2
 226              		.align	2
 229              	pplayer2:
 230 0008 00000000 		.word	player2
 231              		.text
 232 00be C046     		.align	2
 233              		.global	check_key_pressed
 234              		.code	16
 235              		.thumb_func
 237              	check_key_pressed:
 238              	.LFB3:
  51:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  52:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** POBJECT pball= &ball;
  53:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** POBJECT pplayer1=&player1;
  54:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** POBJECT pplayer2=&player2;
  55:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  56:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** //Checks if key is pressed and moves correct player.
  57:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void check_key_pressed() //Check key released någonstans. Vart? Ny metod?
  58:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
 239              		.loc 1 58 0
 240              		.cfi_startproc
 241              		@ args = 0, pretend = 0, frame = 8
 242              		@ frame_needed = 1, uses_anonymous_args = 0
 243 00c0 90B5     		push	{r4, r7, lr}
 244              		.cfi_def_cfa_offset 12
 245              		.cfi_offset 4, -12
 246              		.cfi_offset 7, -8
 247              		.cfi_offset 14, -4
 248 00c2 83B0     		sub	sp, sp, #12
 249              		.cfi_def_cfa_offset 24
 250 00c4 00AF     		add	r7, sp, #0
 251              		.cfi_def_cfa_register 7
  59:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	unsigned char c = keyb();
 252              		.loc 1 59 0
 253 00c6 FC1D     		adds	r4, r7, #7
 254 00c8 FFF7FEFF 		bl	keyb
 255 00cc 0300     		movs	r3, r0
 256 00ce 2370     		strb	r3, [r4]
  60:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	switch(c)
 257              		.loc 1 60 0
 258 00d0 FB1D     		adds	r3, r7, #7
 259 00d2 1B78     		ldrb	r3, [r3]
 260 00d4 072B     		cmp	r3, #7
 261 00d6 08D0     		beq	.L12
 262 00d8 02DC     		bgt	.L13
 263 00da 042B     		cmp	r3, #4
 264 00dc 10D0     		beq	.L14
  61:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  62:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 7: pplayer1->set_speed(pplayer1, 0, -2); break; //Player 1 up
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 4: pplayer1->set_speed(pplayer1, 0, 2); break; //Player 1 down
  64:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 0xB: pplayer2->set_speed(pplayer2, 0, -2); break; //Player 2 up
  65:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 0xC: pplayer2->set_speed(pplayer2, 0, 2); break; //Player 2 down
  66:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  67:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 265              		.loc 1 67 0
 266 00de 2EE0     		b	.L17
 267              	.L13:
  60:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	switch(c)
 268              		.loc 1 60 0
 269 00e0 0B2B     		cmp	r3, #11
 270 00e2 17D0     		beq	.L15
 271 00e4 0C2B     		cmp	r3, #12
 272 00e6 20D0     		beq	.L16
 273              		.loc 1 67 0
 274 00e8 29E0     		b	.L17
 275              	.L12:
  62:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 4: pplayer1->set_speed(pplayer1, 0, 2); break; //Player 1 down
 276              		.loc 1 62 0
 277 00ea 174B     		ldr	r3, .L18
 278 00ec 1B68     		ldr	r3, [r3]
 279 00ee 1C6A     		ldr	r4, [r3, #32]
 280 00f0 154B     		ldr	r3, .L18
 281 00f2 1868     		ldr	r0, [r3]
 282 00f4 0223     		movs	r3, #2
 283 00f6 5B42     		rsbs	r3, r3, #0
 284 00f8 1A00     		movs	r2, r3
 285 00fa 0021     		movs	r1, #0
 286 00fc A047     		blx	r4
 287 00fe 1EE0     		b	.L11
 288              	.L14:
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 0xB: pplayer2->set_speed(pplayer2, 0, -2); break; //Player 2 up
 289              		.loc 1 63 0
 290 0100 114B     		ldr	r3, .L18
 291 0102 1B68     		ldr	r3, [r3]
 292 0104 1C6A     		ldr	r4, [r3, #32]
 293 0106 104B     		ldr	r3, .L18
 294 0108 1B68     		ldr	r3, [r3]
 295 010a 0222     		movs	r2, #2
 296 010c 0021     		movs	r1, #0
 297 010e 1800     		movs	r0, r3
 298 0110 A047     		blx	r4
 299 0112 14E0     		b	.L11
 300              	.L15:
  64:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		case 0xC: pplayer2->set_speed(pplayer2, 0, 2); break; //Player 2 down
 301              		.loc 1 64 0
 302 0114 0D4B     		ldr	r3, .L18+4
 303 0116 1B68     		ldr	r3, [r3]
 304 0118 1C6A     		ldr	r4, [r3, #32]
 305 011a 0C4B     		ldr	r3, .L18+4
 306 011c 1868     		ldr	r0, [r3]
 307 011e 0223     		movs	r3, #2
 308 0120 5B42     		rsbs	r3, r3, #0
 309 0122 1A00     		movs	r2, r3
 310 0124 0021     		movs	r1, #0
 311 0126 A047     		blx	r4
 312 0128 09E0     		b	.L11
 313              	.L16:
  65:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
 314              		.loc 1 65 0
 315 012a 084B     		ldr	r3, .L18+4
 316 012c 1B68     		ldr	r3, [r3]
 317 012e 1C6A     		ldr	r4, [r3, #32]
 318 0130 064B     		ldr	r3, .L18+4
 319 0132 1B68     		ldr	r3, [r3]
 320 0134 0222     		movs	r2, #2
 321 0136 0021     		movs	r1, #0
 322 0138 1800     		movs	r0, r3
 323 013a A047     		blx	r4
 324 013c C046     		nop
 325              	.L11:
 326              	.L17:
 327              		.loc 1 67 0
 328 013e C046     		nop
 329 0140 BD46     		mov	sp, r7
 330 0142 03B0     		add	sp, sp, #12
 331              		@ sp needed
 332 0144 90BD     		pop	{r4, r7, pc}
 333              	.L19:
 334 0146 C046     		.align	2
 335              	.L18:
 336 0148 00000000 		.word	pplayer1
 337 014c 00000000 		.word	pplayer2
 338              		.cfi_endproc
 339              	.LFE3:
 341              		.align	2
 342              		.global	main
 343              		.code	16
 344              		.thumb_func
 346              	main:
 347              	.LFB4:
  68:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  69:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void main(void)
  70:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {	
 348              		.loc 1 70 0
 349              		.cfi_startproc
 350              		@ args = 0, pretend = 0, frame = 0
 351              		@ frame_needed = 1, uses_anonymous_args = 0
 352 0150 B0B5     		push	{r4, r5, r7, lr}
 353              		.cfi_def_cfa_offset 16
 354              		.cfi_offset 4, -16
 355              		.cfi_offset 5, -12
 356              		.cfi_offset 7, -8
 357              		.cfi_offset 14, -4
 358 0152 00AF     		add	r7, sp, #0
 359              		.cfi_def_cfa_register 7
  71:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_keypad();
 360              		.loc 1 71 0
 361 0154 FFF7FEFF 		bl	init_keypad
  72:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_graphic_port();
 362              		.loc 1 72 0
 363 0158 FFF7FEFF 		bl	init_graphic_port
  73:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	graphic_initialize();
 364              		.loc 1 73 0
 365 015c FFF7FEFF 		bl	graphic_initialize
  74:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#ifndef SIMULATOR
  75:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		graphic_clear_screen();
 366              		.loc 1 75 0
 367 0160 FFF7FEFF 		bl	graphic_clear_screen
  76:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#endif
  77:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	pball->set_speed(pball,4,4);
 368              		.loc 1 77 0
 369 0164 104B     		ldr	r3, .L22
 370 0166 1B68     		ldr	r3, [r3]
 371 0168 1C6A     		ldr	r4, [r3, #32]
 372 016a 0F4B     		ldr	r3, .L22
 373 016c 1B68     		ldr	r3, [r3]
 374 016e 0422     		movs	r2, #4
 375 0170 0421     		movs	r1, #4
 376 0172 1800     		movs	r0, r3
 377 0174 A047     		blx	r4
 378              	.L21:
  78:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
  79:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(1){
  80:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		check_key_pressed();
 379              		.loc 1 80 0 discriminator 1
 380 0176 FFF7FEFF 		bl	check_key_pressed
  81:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer1->move(pplayer1);
 381              		.loc 1 81 0 discriminator 1
 382 017a 0C4B     		ldr	r3, .L22+4
 383 017c 1B68     		ldr	r3, [r3]
 384 017e DA69     		ldr	r2, [r3, #28]
 385 0180 0A4B     		ldr	r3, .L22+4
 386 0182 1B68     		ldr	r3, [r3]
 387 0184 1800     		movs	r0, r3
 388 0186 9047     		blx	r2
  82:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer2->move(pplayer2);
 389              		.loc 1 82 0 discriminator 1
 390 0188 094B     		ldr	r3, .L22+8
 391 018a 1B68     		ldr	r3, [r3]
 392 018c DA69     		ldr	r2, [r3, #28]
 393 018e 084B     		ldr	r3, .L22+8
 394 0190 1B68     		ldr	r3, [r3]
 395 0192 1800     		movs	r0, r3
 396 0194 9047     		blx	r2
  83:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pball->move(pball);
 397              		.loc 1 83 0 discriminator 1
 398 0196 044B     		ldr	r3, .L22
 399 0198 1B68     		ldr	r3, [r3]
 400 019a DA69     		ldr	r2, [r3, #28]
 401 019c 024B     		ldr	r3, .L22
 402 019e 1B68     		ldr	r3, [r3]
 403 01a0 1800     		movs	r0, r3
 404 01a2 9047     		blx	r2
  84:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//delay_milli(40);
  85:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//if goal update_score
  86:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
 405              		.loc 1 86 0 discriminator 1
 406 01a4 E7E7     		b	.L21
 407              	.L23:
 408 01a6 C046     		.align	2
 409              	.L22:
 410 01a8 00000000 		.word	pball
 411 01ac 00000000 		.word	pplayer1
 412 01b0 00000000 		.word	pplayer2
 413              		.cfi_endproc
 414              	.LFE4:
 416              	.Letext0:
 417              		.file 2 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.h"
