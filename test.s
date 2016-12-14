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
