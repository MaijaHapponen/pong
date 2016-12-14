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
