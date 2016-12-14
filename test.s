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
 212 00be C046     		.align	2
 213              		.global	main
 214              		.code	16
 215              		.thumb_func
 217              	main:
 218              	.LFB3:
  51:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  52:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void main(void)
  53:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
 219              		.loc 1 53 0
 220              		.cfi_startproc
 221              		@ args = 0, pretend = 0, frame = 16
 222              		@ frame_needed = 1, uses_anonymous_args = 0
 223 00c0 80B5     		push	{r7, lr}
 224              		.cfi_def_cfa_offset 8
 225              		.cfi_offset 7, -8
 226              		.cfi_offset 14, -4
 227 00c2 84B0     		sub	sp, sp, #16
 228              		.cfi_def_cfa_offset 24
 229 00c4 00AF     		add	r7, sp, #0
 230              		.cfi_def_cfa_register 7
  54:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static GEOMETRY ball_geometry={
  55:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		12, //numpoints
  56:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		4,4, //sixex, sixey
  57:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		{
  58:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			//px[0,1,2...]
  59:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,1},{0,2},{1,0},{1,1},
  60:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{1,2},{1,3},{2,0},{2,1},
  61:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{2,2},{2,3},{3,1},{3,2},
  62:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		}
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  64:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static GEOMETRY player_geometry={
  65:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		16, //numpoints
  66:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		2,8, //sixex, sixey
  67:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		{
  68:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			//px[0,1,2...]
  69:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,0},{0,1},{1,0},{1,1},
  70:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{2,0},{2,1},{3,0},{3,1},
  71:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{4,0},{4,1},{5,0},{5,1},
  72:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{6,0},{6,1},{7,0},{7,1},
  73:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		}
  74:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  75:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT ball= {
  76:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&ball_geometry,
  77:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
  78:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		1,1, //initiala startpositioner
  79:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
  80:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
  81:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
  82:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
  83:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  84:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT player1= {
  85:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&player_geometry,
  86:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
  87:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		(128-2),0, //initiala startpositioner
  88:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
  89:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
  90:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
  91:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
  92:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  93:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT player2= {
  94:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&player_geometry,
  95:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
  96:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		1,1, //initiala startpositioner
  97:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
  98:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
  99:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
 100:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
 101:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
 102:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pball= &ball;
 231              		.loc 1 102 0
 232 00c6 124B     		ldr	r3, .L12
 233 00c8 FB60     		str	r3, [r7, #12]
 103:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pplayer1=&player1;
 234              		.loc 1 103 0
 235 00ca 124B     		ldr	r3, .L12+4
 236 00cc BB60     		str	r3, [r7, #8]
 104:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pplayer2=&player2;
 237              		.loc 1 104 0
 238 00ce 124B     		ldr	r3, .L12+8
 239 00d0 7B60     		str	r3, [r7, #4]
 105:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
 106:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_keypad();
 240              		.loc 1 106 0
 241 00d2 FFF7FEFF 		bl	init_keypad
 107:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_graphic_port();
 242              		.loc 1 107 0
 243 00d6 FFF7FEFF 		bl	init_graphic_port
 108:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	graphic_initialize();
 244              		.loc 1 108 0
 245 00da FFF7FEFF 		bl	graphic_initialize
 109:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#ifndef SIMULATOR
 110:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		graphic_clear_screen();
 246              		.loc 1 110 0
 247 00de FFF7FEFF 		bl	graphic_clear_screen
 111:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#endif
 112:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	pball->set_speed(pball,4,4);
 248              		.loc 1 112 0
 249 00e2 FB68     		ldr	r3, [r7, #12]
 250 00e4 1B6A     		ldr	r3, [r3, #32]
 251 00e6 F868     		ldr	r0, [r7, #12]
 252 00e8 0422     		movs	r2, #4
 253 00ea 0421     		movs	r1, #4
 254 00ec 9847     		blx	r3
 255              	.L11:
 113:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
 114:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(1){
 115:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pball->move(pball);
 256              		.loc 1 115 0 discriminator 1
 257 00ee FB68     		ldr	r3, [r7, #12]
 258 00f0 DB69     		ldr	r3, [r3, #28]
 259 00f2 FA68     		ldr	r2, [r7, #12]
 260 00f4 1000     		movs	r0, r2
 261 00f6 9847     		blx	r3
 116:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer1->draw(pplayer1);
 262              		.loc 1 116 0 discriminator 1
 263 00f8 BB68     		ldr	r3, [r7, #8]
 264 00fa 5B69     		ldr	r3, [r3, #20]
 265 00fc BA68     		ldr	r2, [r7, #8]
 266 00fe 1000     		movs	r0, r2
 267 0100 9847     		blx	r3
 117:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer2->draw(pplayer2);
 268              		.loc 1 117 0 discriminator 1
 269 0102 7B68     		ldr	r3, [r7, #4]
 270 0104 5B69     		ldr	r3, [r3, #20]
 271 0106 7A68     		ldr	r2, [r7, #4]
 272 0108 1000     		movs	r0, r2
 273 010a 9847     		blx	r3
 118:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//delay_milli(40);
 119:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//if goal update_score
 120:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
 274              		.loc 1 120 0 discriminator 1
 275 010c EFE7     		b	.L11
 276              	.L13:
 277 010e C046     		.align	2
 278              	.L12:
 279 0110 00000000 		.word	ball.4261
 280 0114 24000000 		.word	player1.4262
 281 0118 48000000 		.word	player2.4263
 282              		.cfi_endproc
 283              	.LFE3:
 285              		.data
 286              		.align	2
 289              	ball.4261:
 290 0000 A0000000 		.word	ball_geometry.4259
 291 0004 00000000 		.word	0
 292 0008 00000000 		.word	0
 293 000c 01000000 		.word	1
 294 0010 01000000 		.word	1
 295 0014 00000000 		.word	draw_object
 296 0018 00000000 		.word	clear_object
 297 001c 00000000 		.word	move_object
 298 0020 00000000 		.word	set_object_speed
 299              		.align	2
 302              	player1.4262:
 303 0024 6C000000 		.word	player_geometry.4260
 304 0028 00000000 		.word	0
 305 002c 00000000 		.word	0
 306 0030 7E000000 		.word	126
 307 0034 00000000 		.word	0
 308 0038 00000000 		.word	draw_object
 309 003c 00000000 		.word	clear_object
 310 0040 00000000 		.word	move_object
 311 0044 00000000 		.word	set_object_speed
 312              		.align	2
 315              	player2.4263:
 316 0048 6C000000 		.word	player_geometry.4260
 317 004c 00000000 		.word	0
 318 0050 00000000 		.word	0
 319 0054 01000000 		.word	1
 320 0058 01000000 		.word	1
 321 005c 00000000 		.word	draw_object
 322 0060 00000000 		.word	clear_object
 323 0064 00000000 		.word	move_object
 324 0068 00000000 		.word	set_object_speed
 325              		.align	2
 328              	player_geometry.4260:
 329 006c 10000000 		.word	16
 330 0070 02000000 		.word	2
 331 0074 08000000 		.word	8
 332 0078 00       		.byte	0
 333 0079 00       		.byte	0
 334 007a 00       		.byte	0
 335 007b 01       		.byte	1
 336 007c 01       		.byte	1
 337 007d 00       		.byte	0
 338 007e 01       		.byte	1
 339 007f 01       		.byte	1
 340 0080 02       		.byte	2
 341 0081 00       		.byte	0
 342 0082 02       		.byte	2
 343 0083 01       		.byte	1
 344 0084 03       		.byte	3
 345 0085 00       		.byte	0
 346 0086 03       		.byte	3
 347 0087 01       		.byte	1
 348 0088 04       		.byte	4
 349 0089 00       		.byte	0
 350 008a 04       		.byte	4
 351 008b 01       		.byte	1
 352 008c 05       		.byte	5
 353 008d 00       		.byte	0
 354 008e 05       		.byte	5
 355 008f 01       		.byte	1
 356 0090 06       		.byte	6
 357 0091 00       		.byte	0
 358 0092 06       		.byte	6
 359 0093 01       		.byte	1
 360 0094 07       		.byte	7
 361 0095 00       		.byte	0
 362 0096 07       		.byte	7
 363 0097 01       		.byte	1
 364 0098 00000000 		.space	8
 364      00000000 
 365              		.align	2
 368              	ball_geometry.4259:
 369 00a0 0C000000 		.word	12
 370 00a4 04000000 		.word	4
 371 00a8 04000000 		.word	4
 372 00ac 00       		.byte	0
 373 00ad 01       		.byte	1
 374 00ae 00       		.byte	0
 375 00af 02       		.byte	2
 376 00b0 01       		.byte	1
 377 00b1 00       		.byte	0
 378 00b2 01       		.byte	1
 379 00b3 01       		.byte	1
 380 00b4 01       		.byte	1
 381 00b5 02       		.byte	2
 382 00b6 01       		.byte	1
 383 00b7 03       		.byte	3
 384 00b8 02       		.byte	2
 385 00b9 00       		.byte	0
 386 00ba 02       		.byte	2
 387 00bb 01       		.byte	1
 388 00bc 02       		.byte	2
 389 00bd 02       		.byte	2
 390 00be 02       		.byte	2
 391 00bf 03       		.byte	3
 392 00c0 03       		.byte	3
 393 00c1 01       		.byte	1
 394 00c2 03       		.byte	3
 395 00c3 02       		.byte	2
 396 00c4 00000000 		.space	16
 396      00000000 
 396      00000000 
 396      00000000 
 397              		.text
 398              	.Letext0:
 399              		.file 2 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.h"
