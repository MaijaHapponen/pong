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
  26              		.file 1 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c"
   1:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** #include "objects.h"
   2:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 
   3:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** void set_object_speed(POBJECT obj, int speedx, int speedy)
   4:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** {
  27              		.loc 1 4 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 16
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  31 0000 80B5     		push	{r7, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 7, -8
  34              		.cfi_offset 14, -4
  35 0002 84B0     		sub	sp, sp, #16
  36              		.cfi_def_cfa_offset 24
  37 0004 00AF     		add	r7, sp, #0
  38              		.cfi_def_cfa_register 7
  39 0006 F860     		str	r0, [r7, #12]
  40 0008 B960     		str	r1, [r7, #8]
  41 000a 7A60     		str	r2, [r7, #4]
   5:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	obj->dirx = speedx;
  42              		.loc 1 5 0
  43 000c FB68     		ldr	r3, [r7, #12]
  44 000e BA68     		ldr	r2, [r7, #8]
  45 0010 5A60     		str	r2, [r3, #4]
   6:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	obj->diry = speedy;
  46              		.loc 1 6 0
  47 0012 FB68     		ldr	r3, [r7, #12]
  48 0014 7A68     		ldr	r2, [r7, #4]
  49 0016 9A60     		str	r2, [r3, #8]
   7:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** }
  50              		.loc 1 7 0
  51 0018 C046     		nop
  52 001a BD46     		mov	sp, r7
  53 001c 04B0     		add	sp, sp, #16
  54              		@ sp needed
  55 001e 80BD     		pop	{r7, pc}
  56              		.cfi_endproc
  57              	.LFE0:
  59              		.align	2
  60              		.global	draw_object
  61              		.code	16
  62              		.thumb_func
  64              	draw_object:
  65              	.LFB1:
   8:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 
   9:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** void draw_object(POBJECT obj)
  10:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** {
  66              		.loc 1 10 0
  67              		.cfi_startproc
  68              		@ args = 0, pretend = 0, frame = 16
  69              		@ frame_needed = 1, uses_anonymous_args = 0
  70 0020 80B5     		push	{r7, lr}
  71              		.cfi_def_cfa_offset 8
  72              		.cfi_offset 7, -8
  73              		.cfi_offset 14, -4
  74 0022 84B0     		sub	sp, sp, #16
  75              		.cfi_def_cfa_offset 24
  76 0024 00AF     		add	r7, sp, #0
  77              		.cfi_def_cfa_register 7
  78 0026 7860     		str	r0, [r7, #4]
  79              	.LBB2:
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
  80              		.loc 1 11 0
  81 0028 0023     		movs	r3, #0
  82 002a FB60     		str	r3, [r7, #12]
  83 002c 1CE0     		b	.L3
  84              	.L4:
  85              	.LBB3:
  12:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	{
  13:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 1);
  86              		.loc 1 13 0 discriminator 3
  87 002e 7B68     		ldr	r3, [r7, #4]
  88 0030 DA68     		ldr	r2, [r3, #12]
  89 0032 7B68     		ldr	r3, [r7, #4]
  90 0034 1968     		ldr	r1, [r3]
  91 0036 FB68     		ldr	r3, [r7, #12]
  92 0038 0433     		adds	r3, r3, #4
  93 003a 5B00     		lsls	r3, r3, #1
  94 003c CB18     		adds	r3, r1, r3
  95 003e 0433     		adds	r3, r3, #4
  96 0040 1B78     		ldrb	r3, [r3]
  97 0042 D018     		adds	r0, r2, r3
  98 0044 7B68     		ldr	r3, [r7, #4]
  99 0046 1A69     		ldr	r2, [r3, #16]
 100 0048 7B68     		ldr	r3, [r7, #4]
 101 004a 1968     		ldr	r1, [r3]
 102 004c FB68     		ldr	r3, [r7, #12]
 103 004e 0433     		adds	r3, r3, #4
 104 0050 5B00     		lsls	r3, r3, #1
 105 0052 CB18     		adds	r3, r1, r3
 106 0054 0533     		adds	r3, r3, #5
 107 0056 1B78     		ldrb	r3, [r3]
 108 0058 D318     		adds	r3, r2, r3
 109 005a 0122     		movs	r2, #1
 110 005c 1900     		movs	r1, r3
 111 005e FFF7FEFF 		bl	pixel
 112              	.LBE3:
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 113              		.loc 1 11 0 discriminator 3
 114 0062 FB68     		ldr	r3, [r7, #12]
 115 0064 0133     		adds	r3, r3, #1
 116 0066 FB60     		str	r3, [r7, #12]
 117              	.L3:
  11:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(int i=0; i<obj->geo->numpoints; i++)
 118              		.loc 1 11 0 is_stmt 0 discriminator 1
 119 0068 7B68     		ldr	r3, [r7, #4]
 120 006a 1B68     		ldr	r3, [r3]
 121 006c 1A68     		ldr	r2, [r3]
 122 006e FB68     		ldr	r3, [r7, #12]
 123 0070 9A42     		cmp	r2, r3
 124 0072 DCDC     		bgt	.L4
 125              	.LBE2:
  14:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	}
  15:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** }
 126              		.loc 1 15 0 is_stmt 1
 127 0074 C046     		nop
 128 0076 BD46     		mov	sp, r7
 129 0078 04B0     		add	sp, sp, #16
 130              		@ sp needed
 131 007a 80BD     		pop	{r7, pc}
 132              		.cfi_endproc
 133              	.LFE1:
 135              		.align	2
 136              		.global	clear_object
 137              		.code	16
 138              		.thumb_func
 140              	clear_object:
 141              	.LFB2:
  16:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 
  17:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** void clear_object(POBJECT obj)
  18:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** {
 142              		.loc 1 18 0
 143              		.cfi_startproc
 144              		@ args = 0, pretend = 0, frame = 16
 145              		@ frame_needed = 1, uses_anonymous_args = 0
 146 007c 80B5     		push	{r7, lr}
 147              		.cfi_def_cfa_offset 8
 148              		.cfi_offset 7, -8
 149              		.cfi_offset 14, -4
 150 007e 84B0     		sub	sp, sp, #16
 151              		.cfi_def_cfa_offset 24
 152 0080 00AF     		add	r7, sp, #0
 153              		.cfi_def_cfa_register 7
 154 0082 7860     		str	r0, [r7, #4]
 155              	.LBB4:
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 156              		.loc 1 19 0
 157 0084 0F23     		movs	r3, #15
 158 0086 FB18     		adds	r3, r7, r3
 159 0088 0022     		movs	r2, #0
 160 008a 1A70     		strb	r2, [r3]
 161 008c 24E0     		b	.L6
 162              	.L7:
 163              	.LBB5:
  20:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	{
  21:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 		pixel(obj->posx + obj->geo->px[i].x, obj->posy + obj->geo->px[i].y, 0);
 164              		.loc 1 21 0 discriminator 3
 165 008e 7B68     		ldr	r3, [r7, #4]
 166 0090 DA68     		ldr	r2, [r3, #12]
 167 0092 7B68     		ldr	r3, [r7, #4]
 168 0094 1968     		ldr	r1, [r3]
 169 0096 0F23     		movs	r3, #15
 170 0098 FB18     		adds	r3, r7, r3
 171 009a 1B78     		ldrb	r3, [r3]
 172 009c 0433     		adds	r3, r3, #4
 173 009e 5B00     		lsls	r3, r3, #1
 174 00a0 CB18     		adds	r3, r1, r3
 175 00a2 0433     		adds	r3, r3, #4
 176 00a4 1B78     		ldrb	r3, [r3]
 177 00a6 D018     		adds	r0, r2, r3
 178 00a8 7B68     		ldr	r3, [r7, #4]
 179 00aa 1A69     		ldr	r2, [r3, #16]
 180 00ac 7B68     		ldr	r3, [r7, #4]
 181 00ae 1968     		ldr	r1, [r3]
 182 00b0 0F23     		movs	r3, #15
 183 00b2 FB18     		adds	r3, r7, r3
 184 00b4 1B78     		ldrb	r3, [r3]
 185 00b6 0433     		adds	r3, r3, #4
 186 00b8 5B00     		lsls	r3, r3, #1
 187 00ba CB18     		adds	r3, r1, r3
 188 00bc 0533     		adds	r3, r3, #5
 189 00be 1B78     		ldrb	r3, [r3]
 190 00c0 D318     		adds	r3, r2, r3
 191 00c2 0022     		movs	r2, #0
 192 00c4 1900     		movs	r1, r3
 193 00c6 FFF7FEFF 		bl	pixel
 194              	.LBE5:
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 195              		.loc 1 19 0 discriminator 3
 196 00ca 0F23     		movs	r3, #15
 197 00cc FB18     		adds	r3, r7, r3
 198 00ce 1A78     		ldrb	r2, [r3]
 199 00d0 0F23     		movs	r3, #15
 200 00d2 FB18     		adds	r3, r7, r3
 201 00d4 0132     		adds	r2, r2, #1
 202 00d6 1A70     		strb	r2, [r3]
 203              	.L6:
  19:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	for(unsigned char i=0; i<obj->geo->numpoints; i++)
 204              		.loc 1 19 0 is_stmt 0 discriminator 1
 205 00d8 0F23     		movs	r3, #15
 206 00da FB18     		adds	r3, r7, r3
 207 00dc 1A78     		ldrb	r2, [r3]
 208 00de 7B68     		ldr	r3, [r7, #4]
 209 00e0 1B68     		ldr	r3, [r3]
 210 00e2 1B68     		ldr	r3, [r3]
 211 00e4 9A42     		cmp	r2, r3
 212 00e6 D2DB     		blt	.L7
 213              	.LBE4:
  22:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	}
  23:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** }
 214              		.loc 1 23 0 is_stmt 1
 215 00e8 C046     		nop
 216 00ea BD46     		mov	sp, r7
 217 00ec 04B0     		add	sp, sp, #16
 218              		@ sp needed
 219 00ee 80BD     		pop	{r7, pc}
 220              		.cfi_endproc
 221              	.LFE2:
 223              		.align	2
 224              		.global	move_object
 225              		.code	16
 226              		.thumb_func
 228              	move_object:
 229              	.LFB3:
  24:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 
  25:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** void move_object(POBJECT obj)
  26:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** {
 230              		.loc 1 26 0
 231              		.cfi_startproc
 232              		@ args = 0, pretend = 0, frame = 8
 233              		@ frame_needed = 1, uses_anonymous_args = 0
 234 00f0 80B5     		push	{r7, lr}
 235              		.cfi_def_cfa_offset 8
 236              		.cfi_offset 7, -8
 237              		.cfi_offset 14, -4
 238 00f2 82B0     		sub	sp, sp, #8
 239              		.cfi_def_cfa_offset 16
 240 00f4 00AF     		add	r7, sp, #0
 241              		.cfi_def_cfa_register 7
 242 00f6 7860     		str	r0, [r7, #4]
  27:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	clear_object(obj);
 243              		.loc 1 27 0
 244 00f8 7B68     		ldr	r3, [r7, #4]
 245 00fa 1800     		movs	r0, r3
 246 00fc FFF7FEFF 		bl	clear_object
  28:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	obj->posx = obj->posx + obj->dirx;
 247              		.loc 1 28 0
 248 0100 7B68     		ldr	r3, [r7, #4]
 249 0102 DA68     		ldr	r2, [r3, #12]
 250 0104 7B68     		ldr	r3, [r7, #4]
 251 0106 5B68     		ldr	r3, [r3, #4]
 252 0108 D218     		adds	r2, r2, r3
 253 010a 7B68     		ldr	r3, [r7, #4]
 254 010c DA60     		str	r2, [r3, #12]
  29:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	obj->posy = obj->posy + obj->diry;
 255              		.loc 1 29 0
 256 010e 7B68     		ldr	r3, [r7, #4]
 257 0110 1A69     		ldr	r2, [r3, #16]
 258 0112 7B68     		ldr	r3, [r7, #4]
 259 0114 9B68     		ldr	r3, [r3, #8]
 260 0116 D218     		adds	r2, r2, r3
 261 0118 7B68     		ldr	r3, [r7, #4]
 262 011a 1A61     		str	r2, [r3, #16]
  30:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	if(obj->posx<1 || obj->posx>128-(obj->geo->sizex)) //Betyder att x är påväg över kanten, vänd
 263              		.loc 1 30 0
 264 011c 7B68     		ldr	r3, [r7, #4]
 265 011e DB68     		ldr	r3, [r3, #12]
 266 0120 002B     		cmp	r3, #0
 267 0122 08DD     		ble	.L9
 268              		.loc 1 30 0 is_stmt 0 discriminator 1
 269 0124 7B68     		ldr	r3, [r7, #4]
 270 0126 DA68     		ldr	r2, [r3, #12]
 271 0128 7B68     		ldr	r3, [r7, #4]
 272 012a 1B68     		ldr	r3, [r3]
 273 012c 5B68     		ldr	r3, [r3, #4]
 274 012e 8021     		movs	r1, #128
 275 0130 CB1A     		subs	r3, r1, r3
 276 0132 9A42     		cmp	r2, r3
 277 0134 04DD     		ble	.L10
 278              	.L9:
  31:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	{
  32:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 		obj->dirx = obj->dirx * (-1);
 279              		.loc 1 32 0 is_stmt 1
 280 0136 7B68     		ldr	r3, [r7, #4]
 281 0138 5B68     		ldr	r3, [r3, #4]
 282 013a 5A42     		rsbs	r2, r3, #0
 283 013c 7B68     		ldr	r3, [r7, #4]
 284 013e 5A60     		str	r2, [r3, #4]
 285              	.L10:
  33:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	}
  34:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	if(obj->posy<1 || obj->posy>(64-obj->geo->sizey)) //Betyder att x är påväg över kanten, vänd 
 286              		.loc 1 34 0
 287 0140 7B68     		ldr	r3, [r7, #4]
 288 0142 1B69     		ldr	r3, [r3, #16]
 289 0144 002B     		cmp	r3, #0
 290 0146 08DD     		ble	.L11
 291              		.loc 1 34 0 is_stmt 0 discriminator 1
 292 0148 7B68     		ldr	r3, [r7, #4]
 293 014a 1A69     		ldr	r2, [r3, #16]
 294 014c 7B68     		ldr	r3, [r7, #4]
 295 014e 1B68     		ldr	r3, [r3]
 296 0150 9B68     		ldr	r3, [r3, #8]
 297 0152 4021     		movs	r1, #64
 298 0154 CB1A     		subs	r3, r1, r3
 299 0156 9A42     		cmp	r2, r3
 300 0158 04DD     		ble	.L12
 301              	.L11:
  35:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	{
  36:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 		obj->diry = obj->diry * (-1);
 302              		.loc 1 36 0 is_stmt 1
 303 015a 7B68     		ldr	r3, [r7, #4]
 304 015c 9B68     		ldr	r3, [r3, #8]
 305 015e 5A42     		rsbs	r2, r3, #0
 306 0160 7B68     		ldr	r3, [r7, #4]
 307 0162 9A60     		str	r2, [r3, #8]
 308              	.L12:
  37:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	}
  38:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** 	draw_object(obj);
 309              		.loc 1 38 0
 310 0164 7B68     		ldr	r3, [r7, #4]
 311 0166 1800     		movs	r0, r3
 312 0168 FFF7FEFF 		bl	draw_object
  39:/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.c **** }...
 313              		.loc 1 39 0
 314 016c C046     		nop
 315 016e BD46     		mov	sp, r7
 316 0170 02B0     		add	sp, sp, #8
 317              		@ sp needed
 318 0172 80BD     		pop	{r7, pc}
 319              		.cfi_endproc
 320              	.LFE3:
 322              	.Letext0:
 323              		.file 2 "/Users/se/Documents/Chalmers/mop/Moplaborationer/pong/objects.h"
