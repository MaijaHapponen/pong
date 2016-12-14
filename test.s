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
  30:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_x(obj)) //Betyder att x är påväg över kanten, vänd 180°.
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
  33:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  34:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_y(obj)) //Betyder att x är påväg över kanten, vänd 180°.
 268              		.loc 1 34 0
 269 0132 7B68     		ldr	r3, [r7, #4]
 270 0134 1800     		movs	r0, r3
 271 0136 FFF7FEFF 		bl	is_out_of_bounds_y
 272 013a 031E     		subs	r3, r0, #0
 273 013c 04D0     		beq	.L10
  35:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  36:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->diry = obj->diry * (-1);
 274              		.loc 1 36 0
 275 013e 7B68     		ldr	r3, [r7, #4]
 276 0140 9B68     		ldr	r3, [r3, #8]
 277 0142 5A42     		rsbs	r2, r3, #0
 278 0144 7B68     		ldr	r3, [r7, #4]
 279 0146 9A60     		str	r2, [r3, #8]
 280              	.L10:
  37:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  38:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 281              		.loc 1 38 0
 282 0148 7B68     		ldr	r3, [r7, #4]
 283 014a 1800     		movs	r0, r3
 284 014c FFF7FEFF 		bl	draw_object
  39:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 285              		.loc 1 39 0
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
  40:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_player(POBJECT obj){
 301              		.loc 1 40 0
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
  41:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(is_out_of_bounds_y(obj))
 312              		.loc 1 41 0
 313 0160 7B68     		ldr	r3, [r7, #4]
 314 0162 1800     		movs	r0, r3
 315 0164 FFF7FEFF 		bl	is_out_of_bounds_y
  42:C:/Users/Maija/Documents/mop/pong\objects.c **** 		return;
  43:C:/Users/Maija/Documents/mop/pong\objects.c **** 		
  44:C:/Users/Maija/Documents/mop/pong\objects.c **** 	//move player	
  45:C:/Users/Maija/Documents/mop/pong\objects.c **** 	
  46:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 316              		.loc 1 46 0
 317 0168 BD46     		mov	sp, r7
 318 016a 02B0     		add	sp, sp, #8
 319              		@ sp needed
 320 016c 80BD     		pop	{r7, pc}
 321              		.cfi_endproc
 322              	.LFE4:
 324 016e C046     		.align	2
 325              		.global	is_out_of_bounds_y
 326              		.code	16
 327              		.thumb_func
 329              	is_out_of_bounds_y:
 330              	.LFB5:
  47:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  48:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_y(POBJECT obj){
 331              		.loc 1 48 0
 332              		.cfi_startproc
 333 0170 80B5     		push	{r7, lr}
 334              		.cfi_def_cfa_offset 8
 335              		.cfi_offset 7, -8
 336              		.cfi_offset 14, -4
 337 0172 82B0     		sub	sp, sp, #8
 338              		.cfi_def_cfa_offset 16
 339 0174 00AF     		add	r7, sp, #0
 340              		.cfi_def_cfa_register 7
 341 0176 7860     		str	r0, [r7, #4]
  49:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return (obj->posy<0 || (obj->posy) >(64-(obj->geo->sizey))); 
 342              		.loc 1 49 0
 343 0178 7B68     		ldr	r3, [r7, #4]
 344 017a 1B69     		ldr	r3, [r3, #16]
 345 017c 002B     		cmp	r3, #0
 346 017e 08DB     		blt	.L14
 347              		.loc 1 49 0 is_stmt 0 discriminator 2
 348 0180 7B68     		ldr	r3, [r7, #4]
 349 0182 1A69     		ldr	r2, [r3, #16]
 350 0184 7B68     		ldr	r3, [r7, #4]
 351 0186 1B68     		ldr	r3, [r3]
 352 0188 9B68     		ldr	r3, [r3, #8]
 353 018a 4021     		movs	r1, #64
 354 018c CB1A     		subs	r3, r1, r3
 355 018e 9A42     		cmp	r2, r3
 356 0190 01DD     		ble	.L15
 357              	.L14:
 358              		.loc 1 49 0 discriminator 3
 359 0192 0123     		movs	r3, #1
 360 0194 00E0     		b	.L16
 361              	.L15:
 362              		.loc 1 49 0 discriminator 4
 363 0196 0023     		movs	r3, #0
 364              	.L16:
 365              		.loc 1 49 0 discriminator 6
 366 0198 DBB2     		uxtb	r3, r3
  50:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 367              		.loc 1 50 0 is_stmt 1 discriminator 6
 368 019a 1800     		movs	r0, r3
 369 019c BD46     		mov	sp, r7
 370 019e 02B0     		add	sp, sp, #8
 371              		@ sp needed
 372 01a0 80BD     		pop	{r7, pc}
 373              		.cfi_endproc
 374              	.LFE5:
 376 01a2 C046     		.align	2
 377              		.global	is_out_of_bounds_x
 378              		.code	16
 379              		.thumb_func
 381              	is_out_of_bounds_x:
 382              	.LFB6:
  51:C:/Users/Maija/Documents/mop/pong\objects.c **** char is_out_of_bounds_x(POBJECT obj){
 383              		.loc 1 51 0
 384              		.cfi_startproc
 385 01a4 80B5     		push	{r7, lr}
 386              		.cfi_def_cfa_offset 8
 387              		.cfi_offset 7, -8
 388              		.cfi_offset 14, -4
 389 01a6 82B0     		sub	sp, sp, #8
 390              		.cfi_def_cfa_offset 16
 391 01a8 00AF     		add	r7, sp, #0
 392              		.cfi_def_cfa_register 7
 393 01aa 7860     		str	r0, [r7, #4]
  52:C:/Users/Maija/Documents/mop/pong\objects.c **** 	return (obj->posx<0 || (obj->posx)>(128-(obj->geo->sizex))); 
 394              		.loc 1 52 0
 395 01ac 7B68     		ldr	r3, [r7, #4]
 396 01ae DB68     		ldr	r3, [r3, #12]
 397 01b0 002B     		cmp	r3, #0
 398 01b2 08DB     		blt	.L19
 399              		.loc 1 52 0 is_stmt 0 discriminator 2
 400 01b4 7B68     		ldr	r3, [r7, #4]
 401 01b6 DA68     		ldr	r2, [r3, #12]
 402 01b8 7B68     		ldr	r3, [r7, #4]
 403 01ba 1B68     		ldr	r3, [r3]
 404 01bc 5B68     		ldr	r3, [r3, #4]
 405 01be 8021     		movs	r1, #128
 406 01c0 CB1A     		subs	r3, r1, r3
 407 01c2 9A42     		cmp	r2, r3
 408 01c4 01DD     		ble	.L20
 409              	.L19:
 410              		.loc 1 52 0 discriminator 3
 411 01c6 0123     		movs	r3, #1
 412 01c8 00E0     		b	.L21
 413              	.L20:
 414              		.loc 1 52 0 discriminator 4
 415 01ca 0023     		movs	r3, #0
 416              	.L21:
 417              		.loc 1 52 0 discriminator 6
 418 01cc DBB2     		uxtb	r3, r3
  53:C:/Users/Maija/Documents/mop/pong\objects.c **** }
 419              		.loc 1 53 0 is_stmt 1 discriminator 6
 420 01ce 1800     		movs	r0, r3
 421 01d0 BD46     		mov	sp, r7
 422 01d2 02B0     		add	sp, sp, #8
 423              		@ sp needed
 424 01d4 80BD     		pop	{r7, pc}
 425              		.cfi_endproc
 426              	.LFE6:
 428              		.data
 429              		.align	2
 432              	ball_geometry:
 433 0000 0C000000 		.word	12
 434 0004 04000000 		.word	4
 435 0008 04000000 		.word	4
 436 000c 00       		.byte	0
 437 000d 01       		.byte	1
 438 000e 00       		.byte	0
 439 000f 02       		.byte	2
 440 0010 01       		.byte	1
 441 0011 00       		.byte	0
 442 0012 01       		.byte	1
 443 0013 01       		.byte	1
 444 0014 01       		.byte	1
 445 0015 02       		.byte	2
 446 0016 01       		.byte	1
 447 0017 03       		.byte	3
 448 0018 02       		.byte	2
 449 0019 00       		.byte	0
 450 001a 02       		.byte	2
 451 001b 01       		.byte	1
 452 001c 02       		.byte	2
 453 001d 02       		.byte	2
 454 001e 02       		.byte	2
 455 001f 03       		.byte	3
 456 0020 03       		.byte	3
 457 0021 01       		.byte	1
 458 0022 03       		.byte	3
 459 0023 02       		.byte	2
 460 0024 00000000 		.space	36
 460      00000000 
 460      00000000 
 460      00000000 
 460      00000000 
 461              		.align	2
 464              	player_geometry:
 465 0048 1C000000 		.word	28
 466 004c 02000000 		.word	2
 467 0050 0E000000 		.word	14
 468 0054 00       		.byte	0
 469 0055 00       		.byte	0
 470 0056 01       		.byte	1
 471 0057 00       		.byte	0
 472 0058 00       		.byte	0
 473 0059 01       		.byte	1
 474 005a 01       		.byte	1
 475 005b 01       		.byte	1
 476 005c 00       		.byte	0
 477 005d 02       		.byte	2
 478 005e 01       		.byte	1
 479 005f 02       		.byte	2
 480 0060 00       		.byte	0
 481 0061 03       		.byte	3
 482 0062 01       		.byte	1
 483 0063 03       		.byte	3
 484 0064 00       		.byte	0
 485 0065 04       		.byte	4
 486 0066 01       		.byte	1
 487 0067 04       		.byte	4
 488 0068 00       		.byte	0
 489 0069 05       		.byte	5
 490 006a 01       		.byte	1
 491 006b 05       		.byte	5
 492 006c 00       		.byte	0
 493 006d 06       		.byte	6
 494 006e 01       		.byte	1
 495 006f 06       		.byte	6
 496 0070 00       		.byte	0
 497 0071 07       		.byte	7
 498 0072 01       		.byte	1
 499 0073 07       		.byte	7
 500 0074 00       		.byte	0
 501 0075 08       		.byte	8
 502 0076 01       		.byte	1
 503 0077 08       		.byte	8
 504 0078 00       		.byte	0
 505 0079 09       		.byte	9
 506 007a 01       		.byte	1
 507 007b 09       		.byte	9
 508 007c 00       		.byte	0
 509 007d 0A       		.byte	10
 510 007e 01       		.byte	1
 511 007f 0A       		.byte	10
 512 0080 00       		.byte	0
 513 0081 0B       		.byte	11
 514 0082 01       		.byte	1
 515 0083 0B       		.byte	11
 516 0084 00       		.byte	0
 517 0085 0C       		.byte	12
 518 0086 01       		.byte	1
 519 0087 0C       		.byte	12
 520 0088 00       		.byte	0
 521 0089 0D       		.byte	13
 522 008a 01       		.byte	1
 523 008b 0D       		.byte	13
 524 008c 00000000 		.space	4
 525              		.global	ball
 526              		.align	2
 529              	ball:
 530 0090 00000000 		.word	ball_geometry
 531 0094 00000000 		.word	0
 532 0098 00000000 		.word	0
 533 009c 01000000 		.word	1
 534 00a0 01000000 		.word	1
 535 00a4 00000000 		.word	draw_object
 536 00a8 00000000 		.word	clear_object
 537 00ac 00000000 		.word	move_ball
 538 00b0 00000000 		.word	set_object_speed
 539              		.global	player1
 540              		.align	2
 543              	player1:
 544 00b4 48000000 		.word	player_geometry
 545 00b8 00000000 		.word	0
 546 00bc 00000000 		.word	0
 547 00c0 00000000 		.word	0
 548 00c4 00000000 		.word	0
 549 00c8 00000000 		.word	draw_object
 550 00cc 00000000 		.word	clear_object
 551 00d0 00000000 		.word	move_player
 552 00d4 00000000 		.word	set_object_speed
 553              		.global	player2
 554              		.align	2
 557              	player2:
 558 00d8 48000000 		.word	player_geometry
 559 00dc 00000000 		.word	0
 560 00e0 00000000 		.word	0
 561 00e4 7E000000 		.word	126
 562 00e8 01000000 		.word	1
 563 00ec 00000000 		.word	draw_object
 564 00f0 00000000 		.word	clear_object
 565 00f4 00000000 		.word	move_player
 566 00f8 00000000 		.word	set_object_speed
 567              		.text
 568              	.Letext0:
 569              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
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
 212 00be C046     		.align	2
 213              		.global	check_key_pressed
 214              		.code	16
 215              		.thumb_func
 217              	check_key_pressed:
 218              	.LFB3:
  51:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  52:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** //Checks if key is pressed and moves correct player.
  53:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void check_key_pressed(unsigned char c)
  54:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
 219              		.loc 1 54 0
 220              		.cfi_startproc
 221              		@ args = 0, pretend = 0, frame = 8
 222              		@ frame_needed = 1, uses_anonymous_args = 0
 223 00c0 80B5     		push	{r7, lr}
 224              		.cfi_def_cfa_offset 8
 225              		.cfi_offset 7, -8
 226              		.cfi_offset 14, -4
 227 00c2 82B0     		sub	sp, sp, #8
 228              		.cfi_def_cfa_offset 16
 229 00c4 00AF     		add	r7, sp, #0
 230              		.cfi_def_cfa_register 7
 231 00c6 0200     		movs	r2, r0
 232 00c8 FB1D     		adds	r3, r7, #7
 233 00ca 1A70     		strb	r2, [r3]
  55:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	if(c == 4 | c == 7) //Left player 1
  56:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	{
  57:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//move left player 1
  58:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		
  59:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}else if(c == 0xB | c == 0xC){ //Right player 2
  60:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//move right player 2
  61:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
  62:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** }
 234              		.loc 1 62 0
 235 00cc C046     		nop
 236 00ce BD46     		mov	sp, r7
 237 00d0 02B0     		add	sp, sp, #8
 238              		@ sp needed
 239 00d2 80BD     		pop	{r7, pc}
 240              		.cfi_endproc
 241              	.LFE3:
 243              		.align	2
 244              		.global	main
 245              		.code	16
 246              		.thumb_func
 248              	main:
 249              	.LFB4:
  63:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 
  64:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** void main(void)
  65:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** {
 250              		.loc 1 65 0
 251              		.cfi_startproc
 252              		@ args = 0, pretend = 0, frame = 16
 253              		@ frame_needed = 1, uses_anonymous_args = 0
 254 00d4 80B5     		push	{r7, lr}
 255              		.cfi_def_cfa_offset 8
 256              		.cfi_offset 7, -8
 257              		.cfi_offset 14, -4
 258 00d6 84B0     		sub	sp, sp, #16
 259              		.cfi_def_cfa_offset 24
 260 00d8 00AF     		add	r7, sp, #0
 261              		.cfi_def_cfa_register 7
  66:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static GEOMETRY ball_geometry={
  67:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		12, //numpoints
  68:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		4,4, //sixex, sixey
  69:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		{
  70:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			//px[0,1,2...]
  71:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,1},{0,2},{1,0},{1,1},
  72:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{1,2},{1,3},{2,0},{2,1},
  73:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{2,2},{2,3},{3,1},{3,2},
  74:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		}
  75:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  76:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static GEOMETRY player_geometry={
  77:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		28, //numpoints
  78:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		2,14, //sixex, sixey
  79:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		{
  80:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			//px[0,1,2...]
  81:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,0},{1,0},
  82:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,1},{1,1},
  83:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,2},{1,2},
  84:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,3},{1,3},
  85:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,4},{1,4},
  86:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,5},{1,5},
  87:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,6},{1,6},
  88:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,7},{1,7},
  89:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,8},{1,8},
  90:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,9},{1,9},
  91:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,10},{1,10},
  92:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,11},{1,11},
  93:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,12},{1,12},
  94:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 			{0,13},{1,13},
  95:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		}
  96:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
  97:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT ball= {
  98:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&ball_geometry,
  99:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
 100:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		1,1, //initiala startpositioner
 101:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
 102:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
 103:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
 104:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
 105:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
 106:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT player1= {
 107:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&player_geometry,
 108:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
 109:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		(128-2),0, //initiala startpositioner
 110:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
 111:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
 112:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
 113:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
 114:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
 115:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	static OBJECT player2= {
 116:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		&player_geometry,
 117:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		0,0, //initiala riktningpositioner
 118:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		1,1, //initiala startpositioner
 119:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		draw_object,
 120:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		clear_object,
 121:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		move_object,
 122:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		set_object_speed
 123:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	};
 124:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pball= &ball;
 262              		.loc 1 124 0
 263 00da 154B     		ldr	r3, .L14
 264 00dc FB60     		str	r3, [r7, #12]
 125:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pplayer1=&player1;
 265              		.loc 1 125 0
 266 00de 154B     		ldr	r3, .L14+4
 267 00e0 BB60     		str	r3, [r7, #8]
 126:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	POBJECT pplayer2=&player2;
 268              		.loc 1 126 0
 269 00e2 154B     		ldr	r3, .L14+8
 270 00e4 7B60     		str	r3, [r7, #4]
 127:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
 128:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_keypad();
 271              		.loc 1 128 0
 272 00e6 FFF7FEFF 		bl	init_keypad
 129:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	init_graphic_port();
 273              		.loc 1 129 0
 274 00ea FFF7FEFF 		bl	init_graphic_port
 130:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	graphic_initialize();
 275              		.loc 1 130 0
 276 00ee FFF7FEFF 		bl	graphic_initialize
 131:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#ifndef SIMULATOR
 132:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		graphic_clear_screen();
 277              		.loc 1 132 0
 278 00f2 FFF7FEFF 		bl	graphic_clear_screen
 133:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	#endif
 134:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	pball->set_speed(pball,4,4);
 279              		.loc 1 134 0
 280 00f6 FB68     		ldr	r3, [r7, #12]
 281 00f8 1B6A     		ldr	r3, [r3, #32]
 282 00fa F868     		ldr	r0, [r7, #12]
 283 00fc 0422     		movs	r2, #4
 284 00fe 0421     		movs	r1, #4
 285 0100 9847     		blx	r3
 286              	.L13:
 135:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	
 136:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	while(1){
 137:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		check_key_pressed(keyb());
 287              		.loc 1 137 0 discriminator 1
 288 0102 FFF7FEFF 		bl	keyb
 289 0106 0300     		movs	r3, r0
 290 0108 1800     		movs	r0, r3
 291 010a FFF7FEFF 		bl	check_key_pressed
 138:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer1->draw(pplayer1);
 292              		.loc 1 138 0 discriminator 1
 293 010e BB68     		ldr	r3, [r7, #8]
 294 0110 5B69     		ldr	r3, [r3, #20]
 295 0112 BA68     		ldr	r2, [r7, #8]
 296 0114 1000     		movs	r0, r2
 297 0116 9847     		blx	r3
 139:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pplayer2->draw(pplayer2);
 298              		.loc 1 139 0 discriminator 1
 299 0118 7B68     		ldr	r3, [r7, #4]
 300 011a 5B69     		ldr	r3, [r3, #20]
 301 011c 7A68     		ldr	r2, [r7, #4]
 302 011e 1000     		movs	r0, r2
 303 0120 9847     		blx	r3
 140:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		pball->move(pball);
 304              		.loc 1 140 0 discriminator 1
 305 0122 FB68     		ldr	r3, [r7, #12]
 306 0124 DB69     		ldr	r3, [r3, #28]
 307 0126 FA68     		ldr	r2, [r7, #12]
 308 0128 1000     		movs	r0, r2
 309 012a 9847     		blx	r3
 141:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//delay_milli(40);
 142:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 		//if goal update_score
 143:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/startup.c **** 	}
 310              		.loc 1 143 0 discriminator 1
 311 012c E9E7     		b	.L13
 312              	.L15:
 313 012e C046     		.align	2
 314              	.L14:
 315 0130 00000000 		.word	ball.4264
 316 0134 24000000 		.word	player1.4265
 317 0138 48000000 		.word	player2.4266
 318              		.cfi_endproc
 319              	.LFE4:
 321              		.data
 322              		.align	2
 325              	ball.4264:
 326 0000 B4000000 		.word	ball_geometry.4262
 327 0004 00000000 		.word	0
 328 0008 00000000 		.word	0
 329 000c 01000000 		.word	1
 330 0010 01000000 		.word	1
 331 0014 00000000 		.word	draw_object
 332 0018 00000000 		.word	clear_object
 333 001c 00000000 		.word	move_object
 334 0020 00000000 		.word	set_object_speed
 335              		.align	2
 338              	player1.4265:
 339 0024 6C000000 		.word	player_geometry.4263
 340 0028 00000000 		.word	0
 341 002c 00000000 		.word	0
 342 0030 7E000000 		.word	126
 343 0034 00000000 		.word	0
 344 0038 00000000 		.word	draw_object
 345 003c 00000000 		.word	clear_object
 346 0040 00000000 		.word	move_object
 347 0044 00000000 		.word	set_object_speed
 348              		.align	2
 351              	player2.4266:
 352 0048 6C000000 		.word	player_geometry.4263
 353 004c 00000000 		.word	0
 354 0050 00000000 		.word	0
 355 0054 01000000 		.word	1
 356 0058 01000000 		.word	1
 357 005c 00000000 		.word	draw_object
 358 0060 00000000 		.word	clear_object
 359 0064 00000000 		.word	move_object
 360 0068 00000000 		.word	set_object_speed
 361              		.align	2
 364              	player_geometry.4263:
 365 006c 1C000000 		.word	28
 366 0070 02000000 		.word	2
 367 0074 0E000000 		.word	14
 368 0078 00       		.byte	0
 369 0079 00       		.byte	0
 370 007a 01       		.byte	1
 371 007b 00       		.byte	0
 372 007c 00       		.byte	0
 373 007d 01       		.byte	1
 374 007e 01       		.byte	1
 375 007f 01       		.byte	1
 376 0080 00       		.byte	0
 377 0081 02       		.byte	2
 378 0082 01       		.byte	1
 379 0083 02       		.byte	2
 380 0084 00       		.byte	0
 381 0085 03       		.byte	3
 382 0086 01       		.byte	1
 383 0087 03       		.byte	3
 384 0088 00       		.byte	0
 385 0089 04       		.byte	4
 386 008a 01       		.byte	1
 387 008b 04       		.byte	4
 388 008c 00       		.byte	0
 389 008d 05       		.byte	5
 390 008e 01       		.byte	1
 391 008f 05       		.byte	5
 392 0090 00       		.byte	0
 393 0091 06       		.byte	6
 394 0092 01       		.byte	1
 395 0093 06       		.byte	6
 396 0094 00       		.byte	0
 397 0095 07       		.byte	7
 398 0096 01       		.byte	1
 399 0097 07       		.byte	7
 400 0098 00       		.byte	0
 401 0099 08       		.byte	8
 402 009a 01       		.byte	1
 403 009b 08       		.byte	8
 404 009c 00       		.byte	0
 405 009d 09       		.byte	9
 406 009e 01       		.byte	1
 407 009f 09       		.byte	9
 408 00a0 00       		.byte	0
 409 00a1 0A       		.byte	10
 410 00a2 01       		.byte	1
 411 00a3 0A       		.byte	10
 412 00a4 00       		.byte	0
 413 00a5 0B       		.byte	11
 414 00a6 01       		.byte	1
 415 00a7 0B       		.byte	11
 416 00a8 00       		.byte	0
 417 00a9 0C       		.byte	12
 418 00aa 01       		.byte	1
 419 00ab 0C       		.byte	12
 420 00ac 00       		.byte	0
 421 00ad 0D       		.byte	13
 422 00ae 01       		.byte	1
 423 00af 0D       		.byte	13
 424 00b0 00000000 		.space	4
 425              		.align	2
 428              	ball_geometry.4262:
 429 00b4 0C000000 		.word	12
 430 00b8 04000000 		.word	4
 431 00bc 04000000 		.word	4
 432 00c0 00       		.byte	0
 433 00c1 01       		.byte	1
 434 00c2 00       		.byte	0
 435 00c3 02       		.byte	2
 436 00c4 01       		.byte	1
 437 00c5 00       		.byte	0
 438 00c6 01       		.byte	1
 439 00c7 01       		.byte	1
 440 00c8 01       		.byte	1
 441 00c9 02       		.byte	2
 442 00ca 01       		.byte	1
 443 00cb 03       		.byte	3
 444 00cc 02       		.byte	2
 445 00cd 00       		.byte	0
 446 00ce 02       		.byte	2
 447 00cf 01       		.byte	1
 448 00d0 02       		.byte	2
 449 00d1 02       		.byte	2
 450 00d2 02       		.byte	2
 451 00d3 03       		.byte	3
 452 00d4 03       		.byte	3
 453 00d5 01       		.byte	1
 454 00d6 03       		.byte	3
 455 00d7 02       		.byte	2
 456 00d8 00000000 		.space	36
 456      00000000 
 456      00000000 
 456      00000000 
 456      00000000 
 457              		.text
 458              	.Letext0:
 459              		.file 2 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.h"
>>>>>>> fe599f2ed2c5d1ea2dc517b7827bfe7211aa4134
