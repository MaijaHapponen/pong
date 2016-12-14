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
<<<<<<< HEAD
  15              		.file	"objects.c"
  16              		.text
  17              	.Ltext0:
  18              		.cfi_sections	.debug_frame
  19              		.align	2
  20              		.global	set_object_speed
  21              		.code	16
  22              		.thumb_func
  24              	set_object_speed:
  25              	.LFB0:
  26              		.file 1 "C:/Users/Maija/Documents/mop/pong/objects.c"
   1:C:/Users/Maija/Documents/mop/pong\objects.c **** #include "objects.h"
   2:C:/Users/Maija/Documents/mop/pong\objects.c **** 
   3:C:/Users/Maija/Documents/mop/pong\objects.c **** void set_object_speed(POBJECT obj, int speedx, int speedy)
   4:C:/Users/Maija/Documents/mop/pong\objects.c **** {
  27              		.loc 1 4 0
  28              		.cfi_startproc
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 84B0     		sub	sp, sp, #16
  34              		.cfi_def_cfa_offset 24
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 F860     		str	r0, [r7, #12]
  38 0008 B960     		str	r1, [r7, #8]
  39 000a 7A60     		str	r2, [r7, #4]
   5:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->dirx = speedx;
  40              		.loc 1 5 0
  41 000c FB68     		ldr	r3, [r7, #12]
  42 000e BA68     		ldr	r2, [r7, #8]
  43 0010 5A60     		str	r2, [r3, #4]
   6:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->diry = speedy;
  44              		.loc 1 6 0
  45 0012 FB68     		ldr	r3, [r7, #12]
  46 0014 7A68     		ldr	r2, [r7, #4]
  47 0016 9A60     		str	r2, [r3, #8]
   7:C:/Users/Maija/Documents/mop/pong\objects.c **** }
  48              		.loc 1 7 0
  49 0018 C046     		nop
  50 001a BD46     		mov	sp, r7
  51 001c 04B0     		add	sp, sp, #16
  52              		@ sp needed
  53 001e 80BD     		pop	{r7, pc}
  54              		.cfi_endproc
  55              	.LFE0:
  57              		.align	2
  58              		.global	draw_object
  59              		.code	16
  60              		.thumb_func
  62              	draw_object:
  63              	.LFB1:
   8:C:/Users/Maija/Documents/mop/pong\objects.c **** 
   9:C:/Users/Maija/Documents/mop/pong\objects.c **** void draw_object(POBJECT obj)
  10:C:/Users/Maija/Documents/mop/pong\objects.c **** {
  64              		.loc 1 10 0
  65              		.cfi_startproc
  66 0020 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0022 84B0     		sub	sp, sp, #16
  71              		.cfi_def_cfa_offset 24
  72 0024 00AF     		add	r7, sp, #0
  73              		.cfi_def_cfa_register 7
  74 0026 7860     		str	r0, [r7, #4]
  75              	.LBB2:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
  76              		.loc 1 11 0
  77 0028 0023     		movs	r3, #0
  78 002a FB60     		str	r3, [r7, #12]
  79 002c 1CE0     		b	.L3
  80              	.L4:
  81              	.LBB3:
  12:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  13:C:/Users/Maija/Documents/mop/pong\objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 1);
  82              		.loc 1 13 0 discriminator 3
  83 002e 7B68     		ldr	r3, [r7, #4]
  84 0030 DA68     		ldr	r2, [r3, #12]
  85 0032 7B68     		ldr	r3, [r7, #4]
  86 0034 1968     		ldr	r1, [r3]
  87 0036 FB68     		ldr	r3, [r7, #12]
  88 0038 0433     		adds	r3, r3, #4
  89 003a 5B00     		lsls	r3, r3, #1
  90 003c CB18     		adds	r3, r1, r3
  91 003e 0433     		adds	r3, r3, #4
  92 0040 1B78     		ldrb	r3, [r3]
  93 0042 D018     		adds	r0, r2, r3
  94 0044 7B68     		ldr	r3, [r7, #4]
  95 0046 1A69     		ldr	r2, [r3, #16]
  96 0048 7B68     		ldr	r3, [r7, #4]
  97 004a 1968     		ldr	r1, [r3]
  98 004c FB68     		ldr	r3, [r7, #12]
  99 004e 0433     		adds	r3, r3, #4
 100 0050 5B00     		lsls	r3, r3, #1
 101 0052 CB18     		adds	r3, r1, r3
 102 0054 0533     		adds	r3, r3, #5
 103 0056 1B78     		ldrb	r3, [r3]
 104 0058 D318     		adds	r3, r2, r3
 105 005a 0122     		movs	r2, #1
 106 005c 1900     		movs	r1, r3
 107 005e FFF7FEFF 		bl	pixel
 108              	.LBE3:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 109              		.loc 1 11 0 discriminator 3
 110 0062 FB68     		ldr	r3, [r7, #12]
 111 0064 0133     		adds	r3, r3, #1
 112 0066 FB60     		str	r3, [r7, #12]
 113              	.L3:
  11:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 114              		.loc 1 11 0 is_stmt 0 discriminator 1
 115 0068 7B68     		ldr	r3, [r7, #4]
 116 006a 1B68     		ldr	r3, [r3]
 117 006c 1A68     		ldr	r2, [r3]
 118 006e FB68     		ldr	r3, [r7, #12]
 119 0070 9A42     		cmp	r2, r3
 120 0072 DCDC     		bgt	.L4
 121              	.LBE2:
  14:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  15:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 122              		.loc 1 15 0 is_stmt 1
 123 0074 C046     		nop
 124 0076 BD46     		mov	sp, r7
 125 0078 04B0     		add	sp, sp, #16
 126              		@ sp needed
 127 007a 80BD     		pop	{r7, pc}
 128              		.cfi_endproc
 129              	.LFE1:
 131              		.align	2
 132              		.global	clear_object
 133              		.code	16
 134              		.thumb_func
 136              	clear_object:
 137              	.LFB2:
  16:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  17:C:/Users/Maija/Documents/mop/pong\objects.c **** void clear_object(POBJECT obj)
  18:C:/Users/Maija/Documents/mop/pong\objects.c **** {
 138              		.loc 1 18 0
 139              		.cfi_startproc
 140 007c 80B5     		push	{r7, lr}
 141              		.cfi_def_cfa_offset 8
 142              		.cfi_offset 7, -8
 143              		.cfi_offset 14, -4
 144 007e 84B0     		sub	sp, sp, #16
 145              		.cfi_def_cfa_offset 24
 146 0080 00AF     		add	r7, sp, #0
 147              		.cfi_def_cfa_register 7
 148 0082 7860     		str	r0, [r7, #4]
 149              	.LBB4:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 150              		.loc 1 19 0
 151 0084 0F23     		movs	r3, #15
 152 0086 FB18     		adds	r3, r7, r3
 153 0088 0022     		movs	r2, #0
 154 008a 1A70     		strb	r2, [r3]
 155 008c 24E0     		b	.L6
 156              	.L7:
 157              	.LBB5:
  20:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  21:C:/Users/Maija/Documents/mop/pong\objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 0);
 158              		.loc 1 21 0 discriminator 3
 159 008e 7B68     		ldr	r3, [r7, #4]
 160 0090 DA68     		ldr	r2, [r3, #12]
 161 0092 7B68     		ldr	r3, [r7, #4]
 162 0094 1968     		ldr	r1, [r3]
 163 0096 0F23     		movs	r3, #15
 164 0098 FB18     		adds	r3, r7, r3
 165 009a 1B78     		ldrb	r3, [r3]
 166 009c 0433     		adds	r3, r3, #4
 167 009e 5B00     		lsls	r3, r3, #1
 168 00a0 CB18     		adds	r3, r1, r3
 169 00a2 0433     		adds	r3, r3, #4
 170 00a4 1B78     		ldrb	r3, [r3]
 171 00a6 D018     		adds	r0, r2, r3
 172 00a8 7B68     		ldr	r3, [r7, #4]
 173 00aa 1A69     		ldr	r2, [r3, #16]
 174 00ac 7B68     		ldr	r3, [r7, #4]
 175 00ae 1968     		ldr	r1, [r3]
 176 00b0 0F23     		movs	r3, #15
 177 00b2 FB18     		adds	r3, r7, r3
 178 00b4 1B78     		ldrb	r3, [r3]
 179 00b6 0433     		adds	r3, r3, #4
 180 00b8 5B00     		lsls	r3, r3, #1
 181 00ba CB18     		adds	r3, r1, r3
 182 00bc 0533     		adds	r3, r3, #5
 183 00be 1B78     		ldrb	r3, [r3]
 184 00c0 D318     		adds	r3, r2, r3
 185 00c2 0022     		movs	r2, #0
 186 00c4 1900     		movs	r1, r3
 187 00c6 FFF7FEFF 		bl	pixel
 188              	.LBE5:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 189              		.loc 1 19 0 discriminator 3
 190 00ca 0F23     		movs	r3, #15
 191 00cc FB18     		adds	r3, r7, r3
 192 00ce 1A78     		ldrb	r2, [r3]
 193 00d0 0F23     		movs	r3, #15
 194 00d2 FB18     		adds	r3, r7, r3
 195 00d4 0132     		adds	r2, r2, #1
 196 00d6 1A70     		strb	r2, [r3]
 197              	.L6:
  19:C:/Users/Maija/Documents/mop/pong\objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 198              		.loc 1 19 0 is_stmt 0 discriminator 1
 199 00d8 0F23     		movs	r3, #15
 200 00da FB18     		adds	r3, r7, r3
 201 00dc 1A78     		ldrb	r2, [r3]
 202 00de 7B68     		ldr	r3, [r7, #4]
 203 00e0 1B68     		ldr	r3, [r3]
 204 00e2 1B68     		ldr	r3, [r3]
 205 00e4 9A42     		cmp	r2, r3
 206 00e6 D2DB     		blt	.L7
 207              	.LBE4:
  22:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  23:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 208              		.loc 1 23 0 is_stmt 1
 209 00e8 C046     		nop
 210 00ea BD46     		mov	sp, r7
 211 00ec 04B0     		add	sp, sp, #16
 212              		@ sp needed
 213 00ee 80BD     		pop	{r7, pc}
 214              		.cfi_endproc
 215              	.LFE2:
 217              		.align	2
 218              		.global	move_ball
 219              		.code	16
 220              		.thumb_func
 222              	move_ball:
 223              	.LFB3:
  24:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  25:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_ball(POBJECT obj)
  26:C:/Users/Maija/Documents/mop/pong\objects.c **** {
 224              		.loc 1 26 0
 225              		.cfi_startproc
 226 00f0 80B5     		push	{r7, lr}
 227              		.cfi_def_cfa_offset 8
 228              		.cfi_offset 7, -8
 229              		.cfi_offset 14, -4
 230 00f2 82B0     		sub	sp, sp, #8
 231              		.cfi_def_cfa_offset 16
 232 00f4 00AF     		add	r7, sp, #0
 233              		.cfi_def_cfa_register 7
 234 00f6 7860     		str	r0, [r7, #4]
  27:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object(obj);
 235              		.loc 1 27 0
 236 00f8 7B68     		ldr	r3, [r7, #4]
 237 00fa 1800     		movs	r0, r3
 238 00fc FFF7FEFF 		bl	clear_object
  28:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posx = obj->posx + obj->dirx;
 239              		.loc 1 28 0
 240 0100 7B68     		ldr	r3, [r7, #4]
 241 0102 DA68     		ldr	r2, [r3, #12]
 242 0104 7B68     		ldr	r3, [r7, #4]
 243 0106 5B68     		ldr	r3, [r3, #4]
 244 0108 D218     		adds	r2, r2, r3
 245 010a 7B68     		ldr	r3, [r7, #4]
 246 010c DA60     		str	r2, [r3, #12]
  29:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posy = obj->posy + obj->diry;
 247              		.loc 1 29 0
 248 010e 7B68     		ldr	r3, [r7, #4]
 249 0110 1A69     		ldr	r2, [r3, #16]
 250 0112 7B68     		ldr	r3, [r7, #4]
 251 0114 9B68     		ldr	r3, [r3, #8]
 252 0116 D218     		adds	r2, r2, r3
 253 0118 7B68     		ldr	r3, [r7, #4]
 254 011a 1A61     		str	r2, [r3, #16]
  30:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_x(obj)) //Betyder att boll är påväg över kanten (höger, vänater) vänd 1
 255              		.loc 1 30 0
 256 011c 7B68     		ldr	r3, [r7, #4]
 257 011e 1800     		movs	r0, r3
 258 0120 FFF7FEFF 		bl	is_out_of_bounds_x
 259 0124 031E     		subs	r3, r0, #0
 260 0126 04D0     		beq	.L9
  31:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  32:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->dirx = obj->dirx * (-1);
 261              		.loc 1 32 0
 262 0128 7B68     		ldr	r3, [r7, #4]
 263 012a 5B68     		ldr	r3, [r3, #4]
 264 012c 5A42     		rsbs	r2, r3, #0
 265 012e 7B68     		ldr	r3, [r7, #4]
 266 0130 5A60     		str	r2, [r3, #4]
 267              	.L9:
  33:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}if(is_out_of_bounds_y(obj)){
 268              		.loc 1 33 0
 269 0132 7B68     		ldr	r3, [r7, #4]
 270 0134 1800     		movs	r0, r3
 271 0136 FFF7FEFF 		bl	is_out_of_bounds_y
 272 013a 031E     		subs	r3, r0, #0
 273 013c 04D0     		beq	.L10
  34:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->diry = obj->diry * (-1);
 274              		.loc 1 34 0
 275 013e 7B68     		ldr	r3, [r7, #4]
 276 0140 9B68     		ldr	r3, [r3, #8]
 277 0142 5A42     		rsbs	r2, r3, #0
 278 0144 7B68     		ldr	r3, [r7, #4]
 279 0146 9A60     		str	r2, [r3, #8]
 280              	.L10:
  35:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  36:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
  37:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 281              		.loc 1 37 0
 282 0148 7B68     		ldr	r3, [r7, #4]
 283 014a 1800     		movs	r0, r3
 284 014c FFF7FEFF 		bl	draw_object
  38:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 285              		.loc 1 38 0
 286 0150 C046     		nop
 287 0152 BD46     		mov	sp, r7
 288 0154 02B0     		add	sp, sp, #8
 289              		@ sp needed
 290 0156 80BD     		pop	{r7, pc}
 291              		.cfi_endproc
 292              	.LFE3:
 294              		.align	2
 295              		.global	move_player
 296              		.code	16
 297              		.thumb_func
 299              	move_player:
 300              	.LFB4:
  39:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_player(POBJECT obj){
 301              		.loc 1 39 0
 302              		.cfi_startproc
 303 0158 80B5     		push	{r7, lr}
 304              		.cfi_def_cfa_offset 8
 305              		.cfi_offset 7, -8
 306              		.cfi_offset 14, -4
 307 015a 82B0     		sub	sp, sp, #8
 308              		.cfi_def_cfa_offset 16
 309 015c 00AF     		add	r7, sp, #0
 310              		.cfi_def_cfa_register 7
 311 015e 7860     		str	r0, [r7, #4]
  40:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_y(obj))
 312              		.loc 1 40 0
 313 0160 7B68     		ldr	r3, [r7, #4]
 314 0162 1800     		movs	r0, r3
 315 0164 FFF7FEFF 		bl	is_out_of_bounds_y
 316 0168 031E     		subs	r3, r0, #0
 317 016a 0FD1     		bne	.L14
  41:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return;
  42:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
  43:C:/Users/Maija/Documents/mop/pong\objects.c **** 	clear_object(obj);
 318              		.loc 1 43 0
 319 016c 7B68     		ldr	r3, [r7, #4]
 320 016e 1800     		movs	r0, r3
 321 0170 FFF7FEFF 		bl	clear_object
  44:C:/Users/Maija/Documents/mop/pong\objects.c **** 	obj->posy = obj->posy + obj->diry;
 322              		.loc 1 44 0
 323 0174 7B68     		ldr	r3, [r7, #4]
 324 0176 1A69     		ldr	r2, [r3, #16]
 325 0178 7B68     		ldr	r3, [r7, #4]
 326 017a 9B68     		ldr	r3, [r3, #8]
 327 017c D218     		adds	r2, r2, r3
 328 017e 7B68     		ldr	r3, [r7, #4]
 329 0180 1A61     		str	r2, [r3, #16]
  45:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 330              		.loc 1 45 0
 331 0182 7B68     		ldr	r3, [r7, #4]
 332 0184 1800     		movs	r0, r3
 333 0186 FFF7FEFF 		bl	draw_object
 334 018a 00E0     		b	.L11
 335              	.L14:
  41:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return;
 336              		.loc 1 41 0
 337 018c C046     		nop
 338              	.L11:
  46:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 339              		.loc 1 46 0
 340 018e BD46     		mov	sp, r7
 341 0190 02B0     		add	sp, sp, #8
 342              		@ sp needed
 343 0192 80BD     		pop	{r7, pc}
 344              		.cfi_endproc
 345              	.LFE4:
 347              		.align	2
 348              		.global	is_out_of_bounds_y
 349              		.code	16
 350              		.thumb_func
 352              	is_out_of_bounds_y:
 353              	.LFB5:
  47:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  48:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_y(POBJECT obj){
 354              		.loc 1 48 0
 355              		.cfi_startproc
 356 0194 80B5     		push	{r7, lr}
 357              		.cfi_def_cfa_offset 8
 358              		.cfi_offset 7, -8
 359              		.cfi_offset 14, -4
 360 0196 82B0     		sub	sp, sp, #8
 361              		.cfi_def_cfa_offset 16
 362 0198 00AF     		add	r7, sp, #0
 363              		.cfi_def_cfa_register 7
 364 019a 7860     		str	r0, [r7, #4]
  49:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return ((obj->posy)<0 || (obj->posy) >(64-(obj->geo->sizey))); 
 365              		.loc 1 49 0
 366 019c 7B68     		ldr	r3, [r7, #4]
 367 019e 1B69     		ldr	r3, [r3, #16]
 368 01a0 002B     		cmp	r3, #0
 369 01a2 08DB     		blt	.L16
 370              		.loc 1 49 0 is_stmt 0 discriminator 2
 371 01a4 7B68     		ldr	r3, [r7, #4]
 372 01a6 1A69     		ldr	r2, [r3, #16]
 373 01a8 7B68     		ldr	r3, [r7, #4]
 374 01aa 1B68     		ldr	r3, [r3]
 375 01ac 9B68     		ldr	r3, [r3, #8]
 376 01ae 4021     		movs	r1, #64
 377 01b0 CB1A     		subs	r3, r1, r3
 378 01b2 9A42     		cmp	r2, r3
 379 01b4 01DD     		ble	.L17
 380              	.L16:
 381              		.loc 1 49 0 discriminator 3
 382 01b6 0123     		movs	r3, #1
 383 01b8 00E0     		b	.L18
 384              	.L17:
 385              		.loc 1 49 0 discriminator 4
 386 01ba 0023     		movs	r3, #0
 387              	.L18:
 388              		.loc 1 49 0 discriminator 6
 389 01bc DBB2     		uxtb	r3, r3
  50:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 390              		.loc 1 50 0 is_stmt 1 discriminator 6
 391 01be 1800     		movs	r0, r3
 392 01c0 BD46     		mov	sp, r7
 393 01c2 02B0     		add	sp, sp, #8
 394              		@ sp needed
 395 01c4 80BD     		pop	{r7, pc}
 396              		.cfi_endproc
 397              	.LFE5:
 399 01c6 C046     		.align	2
 400              		.global	is_out_of_bounds_x
 401              		.code	16
 402              		.thumb_func
 404              	is_out_of_bounds_x:
 405              	.LFB6:
  51:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_x(POBJECT obj){
 406              		.loc 1 51 0
 407              		.cfi_startproc
 408 01c8 80B5     		push	{r7, lr}
 409              		.cfi_def_cfa_offset 8
 410              		.cfi_offset 7, -8
 411              		.cfi_offset 14, -4
 412 01ca 82B0     		sub	sp, sp, #8
 413              		.cfi_def_cfa_offset 16
 414 01cc 00AF     		add	r7, sp, #0
 415              		.cfi_def_cfa_register 7
 416 01ce 7860     		str	r0, [r7, #4]
  52:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return ((obj->posx)<0 || (obj->posx)>(128-(obj->geo->sizex))); 
 417              		.loc 1 52 0
 418 01d0 7B68     		ldr	r3, [r7, #4]
 419 01d2 DB68     		ldr	r3, [r3, #12]
 420 01d4 002B     		cmp	r3, #0
 421 01d6 08DB     		blt	.L21
 422              		.loc 1 52 0 is_stmt 0 discriminator 2
 423 01d8 7B68     		ldr	r3, [r7, #4]
 424 01da DA68     		ldr	r2, [r3, #12]
 425 01dc 7B68     		ldr	r3, [r7, #4]
 426 01de 1B68     		ldr	r3, [r3]
 427 01e0 5B68     		ldr	r3, [r3, #4]
 428 01e2 8021     		movs	r1, #128
 429 01e4 CB1A     		subs	r3, r1, r3
 430 01e6 9A42     		cmp	r2, r3
 431 01e8 01DD     		ble	.L22
 432              	.L21:
 433              		.loc 1 52 0 discriminator 3
 434 01ea 0123     		movs	r3, #1
 435 01ec 00E0     		b	.L23
 436              	.L22:
 437              		.loc 1 52 0 discriminator 4
 438 01ee 0023     		movs	r3, #0
 439              	.L23:
 440              		.loc 1 52 0 discriminator 6
 441 01f0 DBB2     		uxtb	r3, r3
  53:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 442              		.loc 1 53 0 is_stmt 1 discriminator 6
 443 01f2 1800     		movs	r0, r3
 444 01f4 BD46     		mov	sp, r7
 445 01f6 02B0     		add	sp, sp, #8
 446              		@ sp needed
 447 01f8 80BD     		pop	{r7, pc}
 448              		.cfi_endproc
 449              	.LFE6:
 451              		.data
 452              		.align	2
 455              	ball_geometry:
 456 0000 0C000000 		.word	12
 457 0004 04000000 		.word	4
 458 0008 04000000 		.word	4
 459 000c 00       		.byte	0
 460 000d 01       		.byte	1
 461 000e 00       		.byte	0
 462 000f 02       		.byte	2
 463 0010 01       		.byte	1
 464 0011 00       		.byte	0
 465 0012 01       		.byte	1
 466 0013 01       		.byte	1
 467 0014 01       		.byte	1
 468 0015 02       		.byte	2
 469 0016 01       		.byte	1
 470 0017 03       		.byte	3
 471 0018 02       		.byte	2
 472 0019 00       		.byte	0
 473 001a 02       		.byte	2
 474 001b 01       		.byte	1
 475 001c 02       		.byte	2
 476 001d 02       		.byte	2
 477 001e 02       		.byte	2
 478 001f 03       		.byte	3
 479 0020 03       		.byte	3
 480 0021 01       		.byte	1
 481 0022 03       		.byte	3
 482 0023 02       		.byte	2
 483 0024 00000000 		.space	36
 483      00000000 
 483      00000000 
 483      00000000 
 483      00000000 
 484              		.align	2
 487              	player_geometry:
 488 0048 1C000000 		.word	28
 489 004c 02000000 		.word	2
 490 0050 0E000000 		.word	14
 491 0054 00       		.byte	0
 492 0055 00       		.byte	0
 493 0056 01       		.byte	1
 494 0057 00       		.byte	0
 495 0058 00       		.byte	0
 496 0059 01       		.byte	1
 497 005a 01       		.byte	1
 498 005b 01       		.byte	1
 499 005c 00       		.byte	0
 500 005d 02       		.byte	2
 501 005e 01       		.byte	1
 502 005f 02       		.byte	2
 503 0060 00       		.byte	0
 504 0061 03       		.byte	3
 505 0062 01       		.byte	1
 506 0063 03       		.byte	3
 507 0064 00       		.byte	0
 508 0065 04       		.byte	4
 509 0066 01       		.byte	1
 510 0067 04       		.byte	4
 511 0068 00       		.byte	0
 512 0069 05       		.byte	5
 513 006a 01       		.byte	1
 514 006b 05       		.byte	5
 515 006c 00       		.byte	0
 516 006d 06       		.byte	6
 517 006e 01       		.byte	1
 518 006f 06       		.byte	6
 519 0070 00       		.byte	0
 520 0071 07       		.byte	7
 521 0072 01       		.byte	1
 522 0073 07       		.byte	7
 523 0074 00       		.byte	0
 524 0075 08       		.byte	8
 525 0076 01       		.byte	1
 526 0077 08       		.byte	8
 527 0078 00       		.byte	0
 528 0079 09       		.byte	9
 529 007a 01       		.byte	1
 530 007b 09       		.byte	9
 531 007c 00       		.byte	0
 532 007d 0A       		.byte	10
 533 007e 01       		.byte	1
 534 007f 0A       		.byte	10
 535 0080 00       		.byte	0
 536 0081 0B       		.byte	11
 537 0082 01       		.byte	1
 538 0083 0B       		.byte	11
 539 0084 00       		.byte	0
 540 0085 0C       		.byte	12
 541 0086 01       		.byte	1
 542 0087 0C       		.byte	12
 543 0088 00       		.byte	0
 544 0089 0D       		.byte	13
 545 008a 01       		.byte	1
 546 008b 0D       		.byte	13
 547 008c 00000000 		.space	4
 548              		.global	ball
 549              		.align	2
 552              	ball:
 553 0090 00000000 		.word	ball_geometry
 554 0094 00000000 		.word	0
 555 0098 00000000 		.word	0
 556 009c 40000000 		.word	64
 557 00a0 20000000 		.word	32
 558 00a4 00000000 		.word	draw_object
 559 00a8 00000000 		.word	clear_object
 560 00ac 00000000 		.word	move_ball
 561 00b0 00000000 		.word	set_object_speed
 562              		.global	player1
 563              		.align	2
 566              	player1:
 567 00b4 48000000 		.word	player_geometry
 568 00b8 00000000 		.word	0
 569 00bc 00000000 		.word	0
 570 00c0 01000000 		.word	1
 571 00c4 01000000 		.word	1
 572 00c8 00000000 		.word	draw_object
 573 00cc 00000000 		.word	clear_object
 574 00d0 00000000 		.word	move_player
 575 00d4 00000000 		.word	set_object_speed
 576              		.global	player2
 577              		.align	2
 580              	player2:
 581 00d8 48000000 		.word	player_geometry
 582 00dc 00000000 		.word	0
 583 00e0 00000000 		.word	0
 584 00e4 7E000000 		.word	126
 585 00e8 01000000 		.word	1
 586 00ec 00000000 		.word	draw_object
 587 00f0 00000000 		.word	clear_object
 588 00f4 00000000 		.word	move_player
 589 00f8 00000000 		.word	set_object_speed
 590              		.global	player1_score
 591              		.bss
 594              	player1_score:
 595 0000 00       		.space	1
 596              		.global	player2_score
 599              	player2_score:
 600 0001 00       		.space	1
 601              		.text
 602              	.Letext0:
 603              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
=======
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
>>>>>>> a43ce623dd8563f9bd72d6691f69dd0cb4136108
