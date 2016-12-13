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
 218              		.global	move_object
 219              		.code	16
 220              		.thumb_func
 222              	move_object:
 223              	.LFB3:
  24:C:/Users/Maija/Documents/mop/pong\objects.c **** 
  25:C:/Users/Maija/Documents/mop/pong\objects.c **** void move_object(POBJECT obj)
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
  30:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(obj->posx<1 || obj->posx>128-(obj->geo->sizex)) //Betyder att x är påväg över kanten, vänd
 255              		.loc 1 30 0
 256 011c 7B68     		ldr	r3, [r7, #4]
 257 011e DB68     		ldr	r3, [r3, #12]
 258 0120 002B     		cmp	r3, #0
 259 0122 08DD     		ble	.L9
 260              		.loc 1 30 0 is_stmt 0 discriminator 1
 261 0124 7B68     		ldr	r3, [r7, #4]
 262 0126 DA68     		ldr	r2, [r3, #12]
 263 0128 7B68     		ldr	r3, [r7, #4]
 264 012a 1B68     		ldr	r3, [r3]
 265 012c 5B68     		ldr	r3, [r3, #4]
 266 012e 8021     		movs	r1, #128
 267 0130 CB1A     		subs	r3, r1, r3
 268 0132 9A42     		cmp	r2, r3
 269 0134 04DD     		ble	.L10
 270              	.L9:
  31:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  32:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->dirx = obj->dirx * (-1);
 271              		.loc 1 32 0 is_stmt 1
 272 0136 7B68     		ldr	r3, [r7, #4]
 273 0138 5B68     		ldr	r3, [r3, #4]
 274 013a 5A42     		rsbs	r2, r3, #0
 275 013c 7B68     		ldr	r3, [r7, #4]
 276 013e 5A60     		str	r2, [r3, #4]
 277              	.L10:
  33:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  34:C:/Users/Maija/Documents/mop/pong\objects.c **** 	if(obj->posy<1 || obj->posy>(64-obj->geo->sizey)) //Betyder att x är påväg över kanten, vänd 
 278              		.loc 1 34 0
 279 0140 7B68     		ldr	r3, [r7, #4]
 280 0142 1B69     		ldr	r3, [r3, #16]
 281 0144 002B     		cmp	r3, #0
 282 0146 08DD     		ble	.L11
 283              		.loc 1 34 0 is_stmt 0 discriminator 1
 284 0148 7B68     		ldr	r3, [r7, #4]
 285 014a 1A69     		ldr	r2, [r3, #16]
 286 014c 7B68     		ldr	r3, [r7, #4]
 287 014e 1B68     		ldr	r3, [r3]
 288 0150 9B68     		ldr	r3, [r3, #8]
 289 0152 4021     		movs	r1, #64
 290 0154 CB1A     		subs	r3, r1, r3
 291 0156 9A42     		cmp	r2, r3
 292 0158 04DD     		ble	.L12
 293              	.L11:
  35:C:/Users/Maija/Documents/mop/pong\objects.c **** 	{
  36:C:/Users/Maija/Documents/mop/pong\objects.c **** 		obj->diry = obj->diry * (-1);
 294              		.loc 1 36 0 is_stmt 1
 295 015a 7B68     		ldr	r3, [r7, #4]
 296 015c 9B68     		ldr	r3, [r3, #8]
 297 015e 5A42     		rsbs	r2, r3, #0
 298 0160 7B68     		ldr	r3, [r7, #4]
 299 0162 9A60     		str	r2, [r3, #8]
 300              	.L12:
  37:C:/Users/Maija/Documents/mop/pong\objects.c **** 	}
  38:C:/Users/Maija/Documents/mop/pong\objects.c **** 	draw_object(obj);
 301              		.loc 1 38 0
 302 0164 7B68     		ldr	r3, [r7, #4]
 303 0166 1800     		movs	r0, r3
 304 0168 FFF7FEFF 		bl	draw_object
  39:C:/Users/Maija/Documents/mop/pong\objects.c **** }...
 305              		.loc 1 39 0
 306 016c C046     		nop
 307 016e BD46     		mov	sp, r7
 308 0170 02B0     		add	sp, sp, #8
 309              		@ sp needed
 310 0172 80BD     		pop	{r7, pc}
 311              		.cfi_endproc
 312              	.LFE3:
 314              	.Letext0:
 315              		.file 2 "C:/Users/Maija/Documents/mop/pong/objects.h"
