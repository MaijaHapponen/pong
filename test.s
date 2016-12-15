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
  15              		.file	"objects.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.data
  20              		.align	2
  23              	ptrball:
  24 0000 00000000 		.word	ball
  25              		.align	2
  28              	ptrplayer1:
  29 0004 00000000 		.word	player1
  30              		.align	2
  33              	ptrplayer2:
  34 0008 00000000 		.word	player2
  35              		.text
  36              		.align	2
  37              		.global	set_object_speed
  38              		.code	16
  39              		.thumb_func
  41              	set_object_speed:
  42              	.LFB0:
  43              		.file 1 "C:/Users/Maija/Documents/mop/pong/objects.c"
   1:C:/Users/Maija/Documents/mop/pong\objects.c **** #include "objects.h"
   2:C:/Users/Maija/Documents/mop/pong\objects.c **** 
   3:C:/Users/Maija/Documents/mop/pong\objects.c **** void set_object_speed(POBJECT obj, int speedx, int speedy)
   4:C:/Users/Maija/Documents/mop/pong\objects.c **** {
  44              		.loc 1 4 0
  45              		.cfi_startproc
  46 0000 80B5     		push	{r7, lr}
  47              		.cfi_def_cfa_offset 8
  48              		.cfi_offset 7, -8
  49              		.cfi_offset 14, -4
  50 0002 84B0     		sub	sp, sp, #16
  51              		.cfi_def_cfa_offset 24
  52 0004 00AF     		add	r7, sp, #0
  53              		.cfi_def_cfa_register 7
  54 0006 F860     		str	r0, [r7, #12]
  55 0008 B960     		str	r1, [r7, #8]
  56 000a 7A60     		str	r2, [r7, #4]
   5:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->dirx = speedx;
  57              		.loc 1 5 0
  58 000c FB68     		ldr	r3, [r7, #12]
  59 000e BA68     		ldr	r2, [r7, #8]
  60 0010 5A60     		str	r2, [r3, #4]
   6:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->diry = speedy;
  61              		.loc 1 6 0
  62 0012 FB68     		ldr	r3, [r7, #12]
  63 0014 7A68     		ldr	r2, [r7, #4]
  64 0016 9A60     		str	r2, [r3, #8]
   7:C:/Users/Maija/Documents/mop/pong\objects.c **** }
  65              		.loc 1 7 0
  66 0018 C046     		nop
  67 001a BD46     		mov	sp, r7
  68 001c 04B0     		add	sp, sp, #16
  69              		@ sp needed
  70 001e 80BD     		pop	{r7, pc}
  71              		.cfi_endproc
  72              	.LFE0:
  74              		.align	2
  75              		.global	draw_object
  76              		.code	16
  77              		.thumb_func
  79              	draw_object:
  80              	.LFB1:
   8:C:/Users/Maija/Documents/mop/pong\objects.c **** 
   9:C:/Users/Maija/Documents/mop/pong\objects.c **** void draw_object(POBJECT obj)
  10:C:/Users/Maija/Documents/mop/pong\objects.c **** {
  81              		.loc 1 10 0
  82              		.cfi_startproc
  83 0020 80B5     		push	{r7, lr}
  84              		.cfi_def_cfa_offset 8
  85              		.cfi_offset 7, -8
  86              		.cfi_offset 14, -4
  87 0022 84B0     		sub	sp, sp, #16
  88              		.cfi_def_cfa_offset 24
  89 0024 00AF     		add	r7, sp, #0
  90              		.cfi_def_cfa_register 7
  91 0026 7860     		str	r0, [r7, #4]
  92              	.LBB2:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
  93              		.loc 1 11 0
  94 0028 0023     		movs	r3, #0
  95 002a FB60     		str	r3, [r7, #12]
  96 002c 1CE0     		b	.L3
  97              	.L4:
  98              	.LBB3:
  12:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  13:C:/Users/Maija/Documents/mop/pong\objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 1);
  99              		.loc 1 13 0 discriminator 3
 100 002e 7B68     		ldr	r3, [r7, #4]
 101 0030 DA68     		ldr	r2, [r3, #12]
 102 0032 7B68     		ldr	r3, [r7, #4]
 103 0034 1968     		ldr	r1, [r3]
 104 0036 FB68     		ldr	r3, [r7, #12]
 105 0038 0433     		adds	r3, r3, #4
 106 003a 5B00     		lsls	r3, r3, #1
 107 003c CB18     		adds	r3, r1, r3
 108 003e 0433     		adds	r3, r3, #4
 109 0040 1B78     		ldrb	r3, [r3]
 110 0042 D018     		adds	r0, r2, r3
 111 0044 7B68     		ldr	r3, [r7, #4]
 112 0046 1A69     		ldr	r2, [r3, #16]
 113 0048 7B68     		ldr	r3, [r7, #4]
 114 004a 1968     		ldr	r1, [r3]
 115 004c FB68     		ldr	r3, [r7, #12]
 116 004e 0433     		adds	r3, r3, #4
 117 0050 5B00     		lsls	r3, r3, #1
 118 0052 CB18     		adds	r3, r1, r3
 119 0054 0533     		adds	r3, r3, #5
 120 0056 1B78     		ldrb	r3, [r3]
 121 0058 D318     		adds	r3, r2, r3
 122 005a 0122     		movs	r2, #1
 123 005c 1900     		movs	r1, r3
 124 005e FFF7FEFF 		bl	pixel
 125              	.LBE3:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 126              		.loc 1 11 0 discriminator 3
 127 0062 FB68     		ldr	r3, [r7, #12]
 128 0064 0133     		adds	r3, r3, #1
 129 0066 FB60     		str	r3, [r7, #12]
 130              	.L3:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 131              		.loc 1 11 0 is_stmt 0 discriminator 1
 132 0068 7B68     		ldr	r3, [r7, #4]
 133 006a 1B68     		ldr	r3, [r3]
 134 006c 1A68     		ldr	r2, [r3]
 135 006e FB68     		ldr	r3, [r7, #12]
 136 0070 9A42     		cmp	r2, r3
 137 0072 DCDC     		bgt	.L4
 138              	.LBE2:
  14:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  15:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 139              		.loc 1 15 0 is_stmt 1
 140 0074 C046     		nop
 141 0076 BD46     		mov	sp, r7
 142 0078 04B0     		add	sp, sp, #16
 143              		@ sp needed
 144 007a 80BD     		pop	{r7, pc}
 145              		.cfi_endproc
 146              	.LFE1:
 148              		.align	2
 149              		.global	clear_object
 150              		.code	16
 151              		.thumb_func
 153              	clear_object:
 154              	.LFB2:
  16:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  17:C:/Users/Maija/Documents/mop/pong\objects.c **** void clear_object(POBJECT obj)
  18:C:/Users/Maija/Documents/mop/pong\objects.c **** {
 155              		.loc 1 18 0
 156              		.cfi_startproc
 157 007c 80B5     		push	{r7, lr}
 158              		.cfi_def_cfa_offset 8
 159              		.cfi_offset 7, -8
 160              		.cfi_offset 14, -4
 161 007e 84B0     		sub	sp, sp, #16
 162              		.cfi_def_cfa_offset 24
 163 0080 00AF     		add	r7, sp, #0
 164              		.cfi_def_cfa_register 7
 165 0082 7860     		str	r0, [r7, #4]
 166              	.LBB4:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 167              		.loc 1 19 0
 168 0084 0F23     		movs	r3, #15
 169 0086 FB18     		adds	r3, r7, r3
 170 0088 0022     		movs	r2, #0
 171 008a 1A70     		strb	r2, [r3]
 172 008c 24E0     		b	.L6
 173              	.L7:
 174              	.LBB5:
  20:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  21:C:/Users/Maija/Documents/mop/pong\objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 0);
 175              		.loc 1 21 0 discriminator 3
 176 008e 7B68     		ldr	r3, [r7, #4]
 177 0090 DA68     		ldr	r2, [r3, #12]
 178 0092 7B68     		ldr	r3, [r7, #4]
 179 0094 1968     		ldr	r1, [r3]
 180 0096 0F23     		movs	r3, #15
 181 0098 FB18     		adds	r3, r7, r3
 182 009a 1B78     		ldrb	r3, [r3]
 183 009c 0433     		adds	r3, r3, #4
 184 009e 5B00     		lsls	r3, r3, #1
 185 00a0 CB18     		adds	r3, r1, r3
 186 00a2 0433     		adds	r3, r3, #4
 187 00a4 1B78     		ldrb	r3, [r3]
 188 00a6 D018     		adds	r0, r2, r3
 189 00a8 7B68     		ldr	r3, [r7, #4]
 190 00aa 1A69     		ldr	r2, [r3, #16]
 191 00ac 7B68     		ldr	r3, [r7, #4]
 192 00ae 1968     		ldr	r1, [r3]
 193 00b0 0F23     		movs	r3, #15
 194 00b2 FB18     		adds	r3, r7, r3
 195 00b4 1B78     		ldrb	r3, [r3]
 196 00b6 0433     		adds	r3, r3, #4
 197 00b8 5B00     		lsls	r3, r3, #1
 198 00ba CB18     		adds	r3, r1, r3
 199 00bc 0533     		adds	r3, r3, #5
 200 00be 1B78     		ldrb	r3, [r3]
 201 00c0 D318     		adds	r3, r2, r3
 202 00c2 0022     		movs	r2, #0
 203 00c4 1900     		movs	r1, r3
 204 00c6 FFF7FEFF 		bl	pixel
 205              	.LBE5:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 206              		.loc 1 19 0 discriminator 3
 207 00ca 0F23     		movs	r3, #15
 208 00cc FB18     		adds	r3, r7, r3
 209 00ce 1A78     		ldrb	r2, [r3]
 210 00d0 0F23     		movs	r3, #15
 211 00d2 FB18     		adds	r3, r7, r3
 212 00d4 0132     		adds	r2, r2, #1
 213 00d6 1A70     		strb	r2, [r3]
 214              	.L6:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 215              		.loc 1 19 0 is_stmt 0 discriminator 1
 216 00d8 0F23     		movs	r3, #15
 217 00da FB18     		adds	r3, r7, r3
 218 00dc 1A78     		ldrb	r2, [r3]
 219 00de 7B68     		ldr	r3, [r7, #4]
 220 00e0 1B68     		ldr	r3, [r3]
 221 00e2 1B68     		ldr	r3, [r3]
 222 00e4 9A42     		cmp	r2, r3
 223 00e6 D2DB     		blt	.L7
 224              	.LBE4:
  22:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  23:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 225              		.loc 1 23 0 is_stmt 1
 226 00e8 C046     		nop
 227 00ea BD46     		mov	sp, r7
 228 00ec 04B0     		add	sp, sp, #16
 229              		@ sp needed
 230 00ee 80BD     		pop	{r7, pc}
 231              		.cfi_endproc
 232              	.LFE2:
 234              		.align	2
 235              		.global	move_ball
 236              		.code	16
 237              		.thumb_func
 239              	move_ball:
 240              	.LFB3:
  24:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  25:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_ball(POBJECT obj)
  26:C:/Users/Maija/Documents/mop/pong\objects.c **** {
 241              		.loc 1 26 0
 242              		.cfi_startproc
 243 00f0 80B5     		push	{r7, lr}
 244              		.cfi_def_cfa_offset 8
 245              		.cfi_offset 7, -8
 246              		.cfi_offset 14, -4
 247 00f2 82B0     		sub	sp, sp, #8
 248              		.cfi_def_cfa_offset 16
 249 00f4 00AF     		add	r7, sp, #0
 250              		.cfi_def_cfa_register 7
 251 00f6 7860     		str	r0, [r7, #4]
  27:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object(obj);
 252              		.loc 1 27 0
 253 00f8 7B68     		ldr	r3, [r7, #4]
 254 00fa 1800     		movs	r0, r3
 255 00fc FFF7FEFF 		bl	clear_object
  28:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posx = obj->posx + obj->dirx;
 256              		.loc 1 28 0
 257 0100 7B68     		ldr	r3, [r7, #4]
 258 0102 DA68     		ldr	r2, [r3, #12]
 259 0104 7B68     		ldr	r3, [r7, #4]
 260 0106 5B68     		ldr	r3, [r3, #4]
 261 0108 D218     		adds	r2, r2, r3
 262 010a 7B68     		ldr	r3, [r7, #4]
 263 010c DA60     		str	r2, [r3, #12]
  29:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posy = obj->posy + obj->diry;
 264              		.loc 1 29 0
 265 010e 7B68     		ldr	r3, [r7, #4]
 266 0110 1A69     		ldr	r2, [r3, #16]
 267 0112 7B68     		ldr	r3, [r7, #4]
 268 0114 9B68     		ldr	r3, [r3, #8]
 269 0116 D218     		adds	r2, r2, r3
 270 0118 7B68     		ldr	r3, [r7, #4]
 271 011a 1A61     		str	r2, [r3, #16]
  30:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_x(obj)) //Betyder att boll är påväg över kanten (höger, vänater) vänd 1
 272              		.loc 1 30 0
 273 011c 7B68     		ldr	r3, [r7, #4]
 274 011e 1800     		movs	r0, r3
 275 0120 FFF7FEFF 		bl	is_out_of_bounds_x
 276 0124 031E     		subs	r3, r0, #0
 277 0126 04D0     		beq	.L9
  31:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  32:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->dirx = obj->dirx * (-1);
 278              		.loc 1 32 0
 279 0128 7B68     		ldr	r3, [r7, #4]
 280 012a 5B68     		ldr	r3, [r3, #4]
 281 012c 5A42     		rsbs	r2, r3, #0
 282 012e 7B68     		ldr	r3, [r7, #4]
 283 0130 5A60     		str	r2, [r3, #4]
 284              	.L9:
  33:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}if(is_out_of_bounds_y(obj) || if_hit_object(obj)){
 285              		.loc 1 33 0
 286 0132 7B68     		ldr	r3, [r7, #4]
 287 0134 1800     		movs	r0, r3
 288 0136 FFF7FEFF 		bl	is_out_of_bounds_y
 289 013a 031E     		subs	r3, r0, #0
 290 013c 05D1     		bne	.L10
 291              		.loc 1 33 0 is_stmt 0 discriminator 1
 292 013e 7B68     		ldr	r3, [r7, #4]
 293 0140 1800     		movs	r0, r3
 294 0142 FFF7FEFF 		bl	if_hit_object
 295 0146 031E     		subs	r3, r0, #0
 296 0148 04D0     		beq	.L11
 297              	.L10:
  34:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->diry = obj->diry * (-1);
 298              		.loc 1 34 0 is_stmt 1
 299 014a 7B68     		ldr	r3, [r7, #4]
 300 014c 9B68     		ldr	r3, [r3, #8]
 301 014e 5A42     		rsbs	r2, r3, #0
 302 0150 7B68     		ldr	r3, [r7, #4]
 303 0152 9A60     		str	r2, [r3, #8]
 304              	.L11:
  35:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  36:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
  37:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 305              		.loc 1 37 0
 306 0154 7B68     		ldr	r3, [r7, #4]
 307 0156 1800     		movs	r0, r3
 308 0158 FFF7FEFF 		bl	draw_object
  38:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 309              		.loc 1 38 0
 310 015c C046     		nop
 311 015e BD46     		mov	sp, r7
 312 0160 02B0     		add	sp, sp, #8
 313              		@ sp needed
 314 0162 80BD     		pop	{r7, pc}
 315              		.cfi_endproc
 316              	.LFE3:
 318              		.align	2
 319              		.global	move_player
 320              		.code	16
 321              		.thumb_func
 323              	move_player:
 324              	.LFB4:
  39:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_player(POBJECT obj){
 325              		.loc 1 39 0
 326              		.cfi_startproc
 327 0164 80B5     		push	{r7, lr}
 328              		.cfi_def_cfa_offset 8
 329              		.cfi_offset 7, -8
 330              		.cfi_offset 14, -4
 331 0166 82B0     		sub	sp, sp, #8
 332              		.cfi_def_cfa_offset 16
 333 0168 00AF     		add	r7, sp, #0
 334              		.cfi_def_cfa_register 7
 335 016a 7860     		str	r0, [r7, #4]
  40:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_y(obj))
 336              		.loc 1 40 0
 337 016c 7B68     		ldr	r3, [r7, #4]
 338 016e 1800     		movs	r0, r3
 339 0170 FFF7FEFF 		bl	is_out_of_bounds_y
 340 0174 031E     		subs	r3, r0, #0
 341 0176 0FD1     		bne	.L15
  41:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return;
  42:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
  43:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object(obj);
 342              		.loc 1 43 0
 343 0178 7B68     		ldr	r3, [r7, #4]
 344 017a 1800     		movs	r0, r3
 345 017c FFF7FEFF 		bl	clear_object
  44:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posy = obj->posy + obj->diry;
 346              		.loc 1 44 0
 347 0180 7B68     		ldr	r3, [r7, #4]
 348 0182 1A69     		ldr	r2, [r3, #16]
 349 0184 7B68     		ldr	r3, [r7, #4]
 350 0186 9B68     		ldr	r3, [r3, #8]
 351 0188 D218     		adds	r2, r2, r3
 352 018a 7B68     		ldr	r3, [r7, #4]
 353 018c 1A61     		str	r2, [r3, #16]
  45:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 354              		.loc 1 45 0
 355 018e 7B68     		ldr	r3, [r7, #4]
 356 0190 1800     		movs	r0, r3
 357 0192 FFF7FEFF 		bl	draw_object
 358 0196 00E0     		b	.L12
 359              	.L15:
  41:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return;
 360              		.loc 1 41 0
 361 0198 C046     		nop
 362              	.L12:
  46:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 363              		.loc 1 46 0
 364 019a BD46     		mov	sp, r7
 365 019c 02B0     		add	sp, sp, #8
 366              		@ sp needed
 367 019e 80BD     		pop	{r7, pc}
 368              		.cfi_endproc
 369              	.LFE4:
 371              		.align	2
 372              		.global	is_out_of_bounds_y
 373              		.code	16
 374              		.thumb_func
 376              	is_out_of_bounds_y:
 377              	.LFB5:
  47:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  48:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_y(POBJECT obj){
 378              		.loc 1 48 0
 379              		.cfi_startproc
 380 01a0 80B5     		push	{r7, lr}
 381              		.cfi_def_cfa_offset 8
 382              		.cfi_offset 7, -8
 383              		.cfi_offset 14, -4
 384 01a2 82B0     		sub	sp, sp, #8
 385              		.cfi_def_cfa_offset 16
 386 01a4 00AF     		add	r7, sp, #0
 387              		.cfi_def_cfa_register 7
 388 01a6 7860     		str	r0, [r7, #4]
  49:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return ((obj->posy)<0 || (obj->posy) >(64-(obj->geo->sizey))); 
 389              		.loc 1 49 0
 390 01a8 7B68     		ldr	r3, [r7, #4]
 391 01aa 1B69     		ldr	r3, [r3, #16]
 392 01ac 002B     		cmp	r3, #0
 393 01ae 08DB     		blt	.L17
 394              		.loc 1 49 0 is_stmt 0 discriminator 2
 395 01b0 7B68     		ldr	r3, [r7, #4]
 396 01b2 1A69     		ldr	r2, [r3, #16]
 397 01b4 7B68     		ldr	r3, [r7, #4]
 398 01b6 1B68     		ldr	r3, [r3]
 399 01b8 9B68     		ldr	r3, [r3, #8]
 400 01ba 4021     		movs	r1, #64
 401 01bc CB1A     		subs	r3, r1, r3
 402 01be 9A42     		cmp	r2, r3
 403 01c0 01DD     		ble	.L18
 404              	.L17:
 405              		.loc 1 49 0 discriminator 3
 406 01c2 0123     		movs	r3, #1
 407 01c4 00E0     		b	.L19
 408              	.L18:
 409              		.loc 1 49 0 discriminator 4
 410 01c6 0023     		movs	r3, #0
 411              	.L19:
 412              		.loc 1 49 0 discriminator 6
 413 01c8 DBB2     		uxtb	r3, r3
  50:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 414              		.loc 1 50 0 is_stmt 1 discriminator 6
 415 01ca 1800     		movs	r0, r3
 416 01cc BD46     		mov	sp, r7
 417 01ce 02B0     		add	sp, sp, #8
 418              		@ sp needed
 419 01d0 80BD     		pop	{r7, pc}
 420              		.cfi_endproc
 421              	.LFE5:
 423 01d2 C046     		.align	2
 424              		.global	is_out_of_bounds_x
 425              		.code	16
 426              		.thumb_func
 428              	is_out_of_bounds_x:
 429              	.LFB6:
  51:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_x(POBJECT obj){
 430              		.loc 1 51 0
 431              		.cfi_startproc
 432 01d4 80B5     		push	{r7, lr}
 433              		.cfi_def_cfa_offset 8
 434              		.cfi_offset 7, -8
 435              		.cfi_offset 14, -4
 436 01d6 82B0     		sub	sp, sp, #8
 437              		.cfi_def_cfa_offset 16
 438 01d8 00AF     		add	r7, sp, #0
 439              		.cfi_def_cfa_register 7
 440 01da 7860     		str	r0, [r7, #4]
  52:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return ((obj->posx)<0 || (obj->posx)>(128-(obj->geo->sizex))); 
 441              		.loc 1 52 0
 442 01dc 7B68     		ldr	r3, [r7, #4]
 443 01de DB68     		ldr	r3, [r3, #12]
 444 01e0 002B     		cmp	r3, #0
 445 01e2 08DB     		blt	.L22
 446              		.loc 1 52 0 is_stmt 0 discriminator 2
 447 01e4 7B68     		ldr	r3, [r7, #4]
 448 01e6 DA68     		ldr	r2, [r3, #12]
 449 01e8 7B68     		ldr	r3, [r7, #4]
 450 01ea 1B68     		ldr	r3, [r3]
 451 01ec 5B68     		ldr	r3, [r3, #4]
 452 01ee 8021     		movs	r1, #128
 453 01f0 CB1A     		subs	r3, r1, r3
 454 01f2 9A42     		cmp	r2, r3
 455 01f4 01DD     		ble	.L23
 456              	.L22:
 457              		.loc 1 52 0 discriminator 3
 458 01f6 0123     		movs	r3, #1
 459 01f8 00E0     		b	.L24
 460              	.L23:
 461              		.loc 1 52 0 discriminator 4
 462 01fa 0023     		movs	r3, #0
 463              	.L24:
 464              		.loc 1 52 0 discriminator 6
 465 01fc DBB2     		uxtb	r3, r3
  53:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 466              		.loc 1 53 0 is_stmt 1 discriminator 6
 467 01fe 1800     		movs	r0, r3
 468 0200 BD46     		mov	sp, r7
 469 0202 02B0     		add	sp, sp, #8
 470              		@ sp needed
 471 0204 80BD     		pop	{r7, pc}
 472              		.cfi_endproc
 473              	.LFE6:
 475              		.data
 476              		.align	2
 479              	ball_geometry:
 480 000c 0C000000 		.word	12
 481 0010 04000000 		.word	4
 482 0014 04000000 		.word	4
 483 0018 00       		.byte	0
 484 0019 01       		.byte	1
 485 001a 00       		.byte	0
 486 001b 02       		.byte	2
 487 001c 01       		.byte	1
 488 001d 00       		.byte	0
 489 001e 01       		.byte	1
 490 001f 01       		.byte	1
 491 0020 01       		.byte	1
 492 0021 02       		.byte	2
 493 0022 01       		.byte	1
 494 0023 03       		.byte	3
 495 0024 02       		.byte	2
 496 0025 00       		.byte	0
 497 0026 02       		.byte	2
 498 0027 01       		.byte	1
 499 0028 02       		.byte	2
 500 0029 02       		.byte	2
 501 002a 02       		.byte	2
 502 002b 03       		.byte	3
 503 002c 03       		.byte	3
 504 002d 01       		.byte	1
 505 002e 03       		.byte	3
 506 002f 02       		.byte	2
 507 0030 00000000 		.space	36
 507      00000000 
 507      00000000 
 507      00000000 
 507      00000000 
 508              		.align	2
 511              	player_geometry:
 512 0054 1C000000 		.word	28
 513 0058 02000000 		.word	2
 514 005c 0E000000 		.word	14
 515 0060 00       		.byte	0
 516 0061 00       		.byte	0
 517 0062 01       		.byte	1
 518 0063 00       		.byte	0
 519 0064 00       		.byte	0
 520 0065 01       		.byte	1
 521 0066 01       		.byte	1
 522 0067 01       		.byte	1
 523 0068 00       		.byte	0
 524 0069 02       		.byte	2
 525 006a 01       		.byte	1
 526 006b 02       		.byte	2
 527 006c 00       		.byte	0
 528 006d 03       		.byte	3
 529 006e 01       		.byte	1
 530 006f 03       		.byte	3
 531 0070 00       		.byte	0
 532 0071 04       		.byte	4
 533 0072 01       		.byte	1
 534 0073 04       		.byte	4
 535 0074 00       		.byte	0
 536 0075 05       		.byte	5
 537 0076 01       		.byte	1
 538 0077 05       		.byte	5
 539 0078 00       		.byte	0
 540 0079 06       		.byte	6
 541 007a 01       		.byte	1
 542 007b 06       		.byte	6
 543 007c 00       		.byte	0
 544 007d 07       		.byte	7
 545 007e 01       		.byte	1
 546 007f 07       		.byte	7
 547 0080 00       		.byte	0
 548 0081 08       		.byte	8
 549 0082 01       		.byte	1
 550 0083 08       		.byte	8
 551 0084 00       		.byte	0
 552 0085 09       		.byte	9
 553 0086 01       		.byte	1
 554 0087 09       		.byte	9
 555 0088 00       		.byte	0
 556 0089 0A       		.byte	10
 557 008a 01       		.byte	1
 558 008b 0A       		.byte	10
 559 008c 00       		.byte	0
 560 008d 0B       		.byte	11
 561 008e 01       		.byte	1
 562 008f 0B       		.byte	11
 563 0090 00       		.byte	0
 564 0091 0C       		.byte	12
 565 0092 01       		.byte	1
 566 0093 0C       		.byte	12
 567 0094 00       		.byte	0
 568 0095 0D       		.byte	13
 569 0096 01       		.byte	1
 570 0097 0D       		.byte	13
 571 0098 00000000 		.space	4
 572              		.global	ball
 573              		.align	2
 576              	ball:
 577 009c 0C000000 		.word	ball_geometry
 578 00a0 00000000 		.word	0
 579 00a4 00000000 		.word	0
 580 00a8 3E000000 		.word	62
 581 00ac 1E000000 		.word	30
 582 00b0 00000000 		.word	draw_object
 583 00b4 00000000 		.word	clear_object
 584 00b8 00000000 		.word	move_ball
 585 00bc 00000000 		.word	set_object_speed
 586              		.global	player1
 587              		.align	2
 590              	player1:
 591 00c0 54000000 		.word	player_geometry
 592 00c4 00000000 		.word	0
 593 00c8 00000000 		.word	0
 594 00cc 01000000 		.word	1
 595 00d0 01000000 		.word	1
 596 00d4 00000000 		.word	draw_object
 597 00d8 00000000 		.word	clear_object
 598 00dc 00000000 		.word	move_player
 599 00e0 00000000 		.word	set_object_speed
 600              		.global	player2
 601              		.align	2
 604              	player2:
 605 00e4 54000000 		.word	player_geometry
 606 00e8 00000000 		.word	0
 607 00ec 00000000 		.word	0
 608 00f0 7E000000 		.word	126
 609 00f4 01000000 		.word	1
 610 00f8 00000000 		.word	draw_object
 611 00fc 00000000 		.word	clear_object
 612 0100 00000000 		.word	move_player
 613 0104 00000000 		.word	set_object_speed
 614              		.global	player1_score
 615              		.bss
 618              	player1_score:
 619 0000 00       		.space	1
 620              		.global	player2_score
 623              	player2_score:
 624 0001 00       		.space	1
 625              		.text
 626 0206 C046     		.align	2
 627              		.global	if_hit_object
 628              		.code	16
 629              		.thumb_func
 631              	if_hit_object:
 632              	.LFB7:
  54:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  55:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  56:C:/Users/Maija/Documents/mop/pong\objects.c **** static GEOMETRY ball_geometry={
  57:C:/Users/Maija/Documents/mop/pong\objects.c **** 	12, //numpoints
  58:C:/Users/Maija/Documents/mop/pong\objects.c **** 	4,4, //sixex, sixey
  59:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  60:C:/Users/Maija/Documents/mop/pong\objects.c **** 		//px[0,1,2...]
  61:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,1},{0,2},{1,0},{1,1},
  62:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{1,2},{1,3},{2,0},{2,1},
  63:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{2,2},{2,3},{3,1},{3,2},
  64:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  65:C:/Users/Maija/Documents/mop/pong\objects.c **** };
  66:C:/Users/Maija/Documents/mop/pong\objects.c **** static GEOMETRY player_geometry={
  67:C:/Users/Maija/Documents/mop/pong\objects.c **** 	28, //numpoints
  68:C:/Users/Maija/Documents/mop/pong\objects.c **** 	2,14, //sixex, sixey
  69:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  70:C:/Users/Maija/Documents/mop/pong\objects.c **** 		//px[0,1,2...]
  71:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,0},{1,0},
  72:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,1},{1,1},
  73:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,2},{1,2},
  74:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,3},{1,3},
  75:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,4},{1,4},
  76:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,5},{1,5},
  77:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,6},{1,6},
  78:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,7},{1,7},
  79:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,8},{1,8},
  80:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,9},{1,9},
  81:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,10},{1,10},
  82:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,11},{1,11},
  83:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,12},{1,12},
  84:C:/Users/Maija/Documents/mop/pong\objects.c **** 		{0,13},{1,13},
  85:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  86:C:/Users/Maija/Documents/mop/pong\objects.c **** };
  87:C:/Users/Maija/Documents/mop/pong\objects.c **** extern OBJECT ball= {
  88:C:/Users/Maija/Documents/mop/pong\objects.c **** 	&ball_geometry,
  89:C:/Users/Maija/Documents/mop/pong\objects.c **** 	0,0, //initiala riktningpositioner
  90:C:/Users/Maija/Documents/mop/pong\objects.c **** 	(128/2-2),(64/2-2), //initiala startpositioner
  91:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object,
  92:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object,
  93:C:/Users/Maija/Documents/mop/pong\objects.c **** 	move_ball,
  94:C:/Users/Maija/Documents/mop/pong\objects.c **** 	set_object_speed
  95:C:/Users/Maija/Documents/mop/pong\objects.c **** };
  96:C:/Users/Maija/Documents/mop/pong\objects.c **** extern OBJECT player1= {
  97:C:/Users/Maija/Documents/mop/pong\objects.c **** 	&player_geometry,
  98:C:/Users/Maija/Documents/mop/pong\objects.c **** 	0,0, //initiala riktningpositioner
  99:C:/Users/Maija/Documents/mop/pong\objects.c **** 	1,1, //initiala startpositioner
 100:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object,
 101:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object,
 102:C:/Users/Maija/Documents/mop/pong\objects.c **** 	move_player,
 103:C:/Users/Maija/Documents/mop/pong\objects.c **** 	set_object_speed
 104:C:/Users/Maija/Documents/mop/pong\objects.c **** };
 105:C:/Users/Maija/Documents/mop/pong\objects.c **** extern OBJECT player2= {
 106:C:/Users/Maija/Documents/mop/pong\objects.c **** 	&player_geometry,
 107:C:/Users/Maija/Documents/mop/pong\objects.c **** 	0,0, //initiala riktningpositioner
 108:C:/Users/Maija/Documents/mop/pong\objects.c **** 	(128-2),1, //initiala startpositioner
 109:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object,
 110:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object,
 111:C:/Users/Maija/Documents/mop/pong\objects.c **** 	move_player,
 112:C:/Users/Maija/Documents/mop/pong\objects.c **** 	set_object_speed
 113:C:/Users/Maija/Documents/mop/pong\objects.c **** };
 114:C:/Users/Maija/Documents/mop/pong\objects.c **** 
 115:C:/Users/Maija/Documents/mop/pong\objects.c **** extern char player1_score=0;
 116:C:/Users/Maija/Documents/mop/pong\objects.c **** extern char player2_score=0;
 117:C:/Users/Maija/Documents/mop/pong\objects.c **** 
 118:C:/Users/Maija/Documents/mop/pong\objects.c **** static POBJECT ptrball = &ball;
 119:C:/Users/Maija/Documents/mop/pong\objects.c **** static POBJECT ptrplayer1 = &player1;
 120:C:/Users/Maija/Documents/mop/pong\objects.c **** static POBJECT ptrplayer2 = &player2;
 121:C:/Users/Maija/Documents/mop/pong\objects.c **** 
 122:C:/Users/Maija/Documents/mop/pong\objects.c **** char if_hit_object(POBJECT obj){
 633              		.loc 1 122 0
 634              		.cfi_startproc
 635 0208 80B5     		push	{r7, lr}
 636              		.cfi_def_cfa_offset 8
 637              		.cfi_offset 7, -8
 638              		.cfi_offset 14, -4
 639 020a 8CB0     		sub	sp, sp, #48
 640              		.cfi_def_cfa_offset 56
 641 020c 00AF     		add	r7, sp, #0
 642              		.cfi_def_cfa_register 7
 643 020e 7860     		str	r0, [r7, #4]
 123:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int x = obj->posx;
 644              		.loc 1 123 0
 645 0210 7B68     		ldr	r3, [r7, #4]
 646 0212 DB68     		ldr	r3, [r3, #12]
 647 0214 FB62     		str	r3, [r7, #44]
 124:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int y = obj->posy;
 648              		.loc 1 124 0
 649 0216 7B68     		ldr	r3, [r7, #4]
 650 0218 1B69     		ldr	r3, [r3, #16]
 651 021a BB62     		str	r3, [r7, #40]
 125:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
 126:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int sizex = obj->geo->sizex;
 652              		.loc 1 126 0
 653 021c 7B68     		ldr	r3, [r7, #4]
 654 021e 1B68     		ldr	r3, [r3]
 655 0220 5B68     		ldr	r3, [r3, #4]
 656 0222 7B62     		str	r3, [r7, #36]
 127:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int sizey = obj->geo->sizey;
 657              		.loc 1 127 0
 658 0224 7B68     		ldr	r3, [r7, #4]
 659 0226 1B68     		ldr	r3, [r3]
 660 0228 9B68     		ldr	r3, [r3, #8]
 661 022a 3B62     		str	r3, [r7, #32]
 128:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
 129:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int player1x = ptrplayer1->posx;
 662              		.loc 1 129 0
 663 022c 2F4B     		ldr	r3, .L30
 664 022e 1B68     		ldr	r3, [r3]
 665 0230 DB68     		ldr	r3, [r3, #12]
 666 0232 FB61     		str	r3, [r7, #28]
 130:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int player1y = ptrplayer1->posy;
 667              		.loc 1 130 0
 668 0234 2D4B     		ldr	r3, .L30
 669 0236 1B68     		ldr	r3, [r3]
 670 0238 1B69     		ldr	r3, [r3, #16]
 671 023a BB61     		str	r3, [r7, #24]
 131:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
 132:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int player2x = ptrplayer2->posx;
 672              		.loc 1 132 0
 673 023c 2C4B     		ldr	r3, .L30+4
 674 023e 1B68     		ldr	r3, [r3]
 675 0240 DB68     		ldr	r3, [r3, #12]
 676 0242 7B61     		str	r3, [r7, #20]
 133:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int player2y = ptrplayer2->posy;
 677              		.loc 1 133 0
 678 0244 2A4B     		ldr	r3, .L30+4
 679 0246 1B68     		ldr	r3, [r3]
 680 0248 1B69     		ldr	r3, [r3, #16]
 681 024a 3B61     		str	r3, [r7, #16]
 134:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
 135:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int playerheight = ptrplayer1->geo->sizey;
 682              		.loc 1 135 0
 683 024c 274B     		ldr	r3, .L30
 684 024e 1B68     		ldr	r3, [r3]
 685 0250 1B68     		ldr	r3, [r3]
 686 0252 9B68     		ldr	r3, [r3, #8]
 687 0254 FB60     		str	r3, [r7, #12]
 136:C:/Users/Maija/Documents/mop/pong\objects.c **** 	int playerwidth = ptrplayer1->geo->sizex;
 688              		.loc 1 136 0
 689 0256 254B     		ldr	r3, .L30
 690 0258 1B68     		ldr	r3, [r3]
 691 025a 1B68     		ldr	r3, [r3]
 692 025c 5B68     		ldr	r3, [r3, #4]
 693 025e BB60     		str	r3, [r7, #8]
 137:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
 138:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(((x+sizex)>=player2x) && (y>=player2y) && (y<=(player2y+playerheight))&& ((y+sizey)>=player2y) 
 694              		.loc 1 138 0
 695 0260 FA6A     		ldr	r2, [r7, #44]
 696 0262 7B6A     		ldr	r3, [r7, #36]
 697 0264 D218     		adds	r2, r2, r3
 698 0266 7B69     		ldr	r3, [r7, #20]
 699 0268 9A42     		cmp	r2, r3
 700 026a 19DB     		blt	.L27
 701              		.loc 1 138 0 is_stmt 0 discriminator 1
 702 026c BA6A     		ldr	r2, [r7, #40]
 703 026e 3B69     		ldr	r3, [r7, #16]
 704 0270 9A42     		cmp	r2, r3
 705 0272 15DB     		blt	.L27
 706              		.loc 1 138 0 discriminator 2
 707 0274 3A69     		ldr	r2, [r7, #16]
 708 0276 FB68     		ldr	r3, [r7, #12]
 709 0278 D218     		adds	r2, r2, r3
 710 027a BB6A     		ldr	r3, [r7, #40]
 711 027c 9A42     		cmp	r2, r3
 712 027e 0FDB     		blt	.L27
 713              		.loc 1 138 0 discriminator 3
 714 0280 BA6A     		ldr	r2, [r7, #40]
 715 0282 3B6A     		ldr	r3, [r7, #32]
 716 0284 D218     		adds	r2, r2, r3
 717 0286 3B69     		ldr	r3, [r7, #16]
 718 0288 9A42     		cmp	r2, r3
 719 028a 09DB     		blt	.L27
 720              		.loc 1 138 0 discriminator 4
 721 028c BA6A     		ldr	r2, [r7, #40]
 722 028e 3B6A     		ldr	r3, [r7, #32]
 723 0290 D218     		adds	r2, r2, r3
 724 0292 3969     		ldr	r1, [r7, #16]
 725 0294 FB68     		ldr	r3, [r7, #12]
 726 0296 CB18     		adds	r3, r1, r3
 727 0298 9A42     		cmp	r2, r3
 728 029a 01DC     		bgt	.L27
 139:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return 1;
 729              		.loc 1 139 0 is_stmt 1
 730 029c 0123     		movs	r3, #1
 731 029e 20E0     		b	.L28
 732              	.L27:
 140:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
 141:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if((x<=(player1x+playerwidth)) && (y>=player1y) && (y<=(player1y+playerheight))&& ((y+sizey)>=play
 733              		.loc 1 141 0
 734 02a0 FA69     		ldr	r2, [r7, #28]
 735 02a2 BB68     		ldr	r3, [r7, #8]
 736 02a4 D218     		adds	r2, r2, r3
 737 02a6 FB6A     		ldr	r3, [r7, #44]
 738 02a8 9A42     		cmp	r2, r3
 739 02aa 19DB     		blt	.L29
 740              		.loc 1 141 0 is_stmt 0 discriminator 1
 741 02ac BA6A     		ldr	r2, [r7, #40]
 742 02ae BB69     		ldr	r3, [r7, #24]
 743 02b0 9A42     		cmp	r2, r3
 744 02b2 15DB     		blt	.L29
 745              		.loc 1 141 0 discriminator 2
 746 02b4 BA69     		ldr	r2, [r7, #24]
 747 02b6 FB68     		ldr	r3, [r7, #12]
 748 02b8 D218     		adds	r2, r2, r3
 749 02ba BB6A     		ldr	r3, [r7, #40]
 750 02bc 9A42     		cmp	r2, r3
 751 02be 0FDB     		blt	.L29
 752              		.loc 1 141 0 discriminator 3
 753 02c0 BA6A     		ldr	r2, [r7, #40]
 754 02c2 3B6A     		ldr	r3, [r7, #32]
 755 02c4 D218     		adds	r2, r2, r3
 756 02c6 BB69     		ldr	r3, [r7, #24]
 757 02c8 9A42     		cmp	r2, r3
 758 02ca 09DB     		blt	.L29
 759              		.loc 1 141 0 discriminator 4
 760 02cc BA6A     		ldr	r2, [r7, #40]
 761 02ce 3B6A     		ldr	r3, [r7, #32]
 762 02d0 D218     		adds	r2, r2, r3
 763 02d2 B969     		ldr	r1, [r7, #24]
 764 02d4 FB68     		ldr	r3, [r7, #12]
 765 02d6 CB18     		adds	r3, r1, r3
 766 02d8 9A42     		cmp	r2, r3
 767 02da 01DC     		bgt	.L29
 142:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return 1;
 768              		.loc 1 142 0 is_stmt 1
 769 02dc 0123     		movs	r3, #1
 770 02de 00E0     		b	.L28
 771              	.L29:
 143:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
 144:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return 0;
 772              		.loc 1 144 0
 773 02e0 0023     		movs	r3, #0
 774              	.L28:
 145:C:/Users/Maija/Documents/mop/pong\objects.c **** }...
 775              		.loc 1 145 0
 776 02e2 1800     		movs	r0, r3
 777 02e4 BD46     		mov	sp, r7
 778 02e6 0CB0     		add	sp, sp, #48
 779              		@ sp needed
 780 02e8 80BD     		pop	{r7, pc}
 781              	.L31:
 782 02ea C046     		.align	2
 783              	.L30:
 784 02ec 04000000 		.word	ptrplayer1
 785 02f0 08000000 		.word	ptrplayer2
 786              		.cfi_endproc
 787              	.LFE7:
 789              	.Letext0:
 790              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
