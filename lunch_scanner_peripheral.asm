
lunch_scanner_peripheral.elf:     file format elf32-littlearm


Disassembly of section .text:

10000000 <_user_entry>:
10000000:	4813      	ldr	r0, [pc, #76]	; (10000050 <_upgrade_data_end+0x30>)
10000002:	4914      	ldr	r1, [pc, #80]	; (10000054 <_upgrade_data_end+0x34>)
10000004:	4a14      	ldr	r2, [pc, #80]	; (10000058 <_upgrade_data_end+0x38>)
10000006:	4b15      	ldr	r3, [pc, #84]	; (1000005c <_upgrade_data_end+0x3c>)
10000008:	1a9b      	subs	r3, r3, r2
1000000a:	c00e      	stmia	r0!, {r1, r2, r3}
1000000c:	3814      	subs	r0, #20
1000000e:	e007      	b.n	10000020 <_upgrade_data_end>

10000010 <_upgrade_data>:
10000010:	525355fe 	.word	0x525355fe
10000014:	10000000 	.word	0x10000000
10000018:	ffffffff 	.word	0xffffffff
1000001c:	ffffffff 	.word	0xffffffff

10000020 <_upgrade_data_end>:
10000020:	2180      	movs	r1, #128	; 0x80
10000022:	0609      	lsls	r1, r1, #24
10000024:	6001      	str	r1, [r0, #0]
10000026:	2100      	movs	r1, #0
10000028:	6001      	str	r1, [r0, #0]
1000002a:	2300      	movs	r3, #0
1000002c:	6043      	str	r3, [r0, #4]
1000002e:	490c      	ldr	r1, [pc, #48]	; (10000060 <_upgrade_data_end+0x40>)
10000030:	60c1      	str	r1, [r0, #12]
10000032:	4a0c      	ldr	r2, [pc, #48]	; (10000064 <_upgrade_data_end+0x44>)
10000034:	1a52      	subs	r2, r2, r1
10000036:	6102      	str	r2, [r0, #16]
10000038:	490b      	ldr	r1, [pc, #44]	; (10000068 <_upgrade_data_end+0x48>)
1000003a:	6001      	str	r1, [r0, #0]
1000003c:	6003      	str	r3, [r0, #0]
1000003e:	b500      	push	{lr}
10000040:	f004 ffdc 	bl	10004ffc <__libc_init_array>
10000044:	bc01      	pop	{r0}
10000046:	4686      	mov	lr, r0
10000048:	2000      	movs	r0, #0
1000004a:	2100      	movs	r1, #0
1000004c:	4b07      	ldr	r3, [pc, #28]	; (1000006c <_upgrade_data_end+0x4c>)
1000004e:	4718      	bx	r3
10000050:	70000008 	.word	0x70000008
10000054:	100067f4 	.word	0x100067f4
10000058:	20014000 	.word	0x20014000
1000005c:	20014b5c 	.word	0x20014b5c
10000060:	20014b60 	.word	0x20014b60
10000064:	20014ebc 	.word	0x20014ebc
10000068:	80000001 	.word	0x80000001
1000006c:	10000d19 	.word	0x10000d19

10000070 <_init>:
10000070:	4770      	bx	lr
	...

10000074 <try_parse_lunch_data>:
10000074:	b5f0      	push	{r4, r5, r6, r7, lr}
10000076:	2400      	movs	r4, #0
10000078:	b085      	sub	sp, #20
1000007a:	af00      	add	r7, sp, #0
1000007c:	60f8      	str	r0, [r7, #12]
1000007e:	6039      	str	r1, [r7, #0]
10000080:	607a      	str	r2, [r7, #4]
10000082:	683b      	ldr	r3, [r7, #0]
10000084:	429c      	cmp	r4, r3
10000086:	db01      	blt.n	1000008c <try_parse_lunch_data+0x18>
10000088:	2001      	movs	r0, #1
1000008a:	e00a      	b.n	100000a2 <try_parse_lunch_data+0x2e>
1000008c:	68fb      	ldr	r3, [r7, #12]
1000008e:	5d1d      	ldrb	r5, [r3, r4]
10000090:	191b      	adds	r3, r3, r4
10000092:	785b      	ldrb	r3, [r3, #1]
10000094:	2d00      	cmp	r5, #0
10000096:	d107      	bne.n	100000a8 <try_parse_lunch_data+0x34>
10000098:	4917      	ldr	r1, [pc, #92]	; (100000f8 <try_parse_lunch_data+0x84>)
1000009a:	4818      	ldr	r0, [pc, #96]	; (100000fc <try_parse_lunch_data+0x88>)
1000009c:	4b18      	ldr	r3, [pc, #96]	; (10000100 <try_parse_lunch_data+0x8c>)
1000009e:	4798      	blx	r3
100000a0:	0028      	movs	r0, r5
100000a2:	46bd      	mov	sp, r7
100000a4:	b005      	add	sp, #20
100000a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
100000a8:	2b2a      	cmp	r3, #42	; 0x2a
100000aa:	d122      	bne.n	100000f2 <try_parse_lunch_data+0x7e>
100000ac:	466e      	mov	r6, sp
100000ae:	1dab      	adds	r3, r5, #6
100000b0:	08db      	lsrs	r3, r3, #3
100000b2:	00db      	lsls	r3, r3, #3
100000b4:	1af3      	subs	r3, r6, r3
100000b6:	469d      	mov	sp, r3
100000b8:	60bb      	str	r3, [r7, #8]
100000ba:	68fb      	ldr	r3, [r7, #12]
100000bc:	1ca1      	adds	r1, r4, #2
100000be:	1859      	adds	r1, r3, r1
100000c0:	4668      	mov	r0, sp
100000c2:	4b10      	ldr	r3, [pc, #64]	; (10000104 <try_parse_lunch_data+0x90>)
100000c4:	1e6a      	subs	r2, r5, #1
100000c6:	4798      	blx	r3
100000c8:	68bb      	ldr	r3, [r7, #8]
100000ca:	781b      	ldrb	r3, [r3, #0]
100000cc:	2bf5      	cmp	r3, #245	; 0xf5
100000ce:	d10f      	bne.n	100000f0 <try_parse_lunch_data+0x7c>
100000d0:	68bb      	ldr	r3, [r7, #8]
100000d2:	785b      	ldrb	r3, [r3, #1]
100000d4:	2b2a      	cmp	r3, #42	; 0x2a
100000d6:	d10b      	bne.n	100000f0 <try_parse_lunch_data+0x7c>
100000d8:	466b      	mov	r3, sp
100000da:	2206      	movs	r2, #6
100000dc:	1c99      	adds	r1, r3, #2
100000de:	6878      	ldr	r0, [r7, #4]
100000e0:	4b08      	ldr	r3, [pc, #32]	; (10000104 <try_parse_lunch_data+0x90>)
100000e2:	4798      	blx	r3
100000e4:	687b      	ldr	r3, [r7, #4]
100000e6:	220a      	movs	r2, #10
100000e8:	1d98      	adds	r0, r3, #6
100000ea:	a902      	add	r1, sp, #8
100000ec:	4b05      	ldr	r3, [pc, #20]	; (10000104 <try_parse_lunch_data+0x90>)
100000ee:	4798      	blx	r3
100000f0:	46b5      	mov	sp, r6
100000f2:	1c68      	adds	r0, r5, #1
100000f4:	1824      	adds	r4, r4, r0
100000f6:	e7c4      	b.n	10000082 <try_parse_lunch_data+0xe>
100000f8:	100050db 	.word	0x100050db
100000fc:	100050b0 	.word	0x100050b0
10000100:	000066b1 	.word	0x000066b1
10000104:	00005821 	.word	0x00005821

10000108 <user_init_appm_init>:
10000108:	b510      	push	{r4, lr}
1000010a:	4b02      	ldr	r3, [pc, #8]	; (10000114 <user_init_appm_init+0xc>)
1000010c:	4798      	blx	r3
1000010e:	2001      	movs	r0, #1
10000110:	bd10      	pop	{r4, pc}
10000112:	46c0      	nop			; (mov r8, r8)
10000114:	10001775 	.word	0x10001775

10000118 <user_init_constructor>:
10000118:	b530      	push	{r4, r5, lr}
1000011a:	4b22      	ldr	r3, [pc, #136]	; (100001a4 <user_init_constructor+0x8c>)
1000011c:	b085      	sub	sp, #20
1000011e:	4798      	blx	r3
10000120:	4921      	ldr	r1, [pc, #132]	; (100001a8 <user_init_constructor+0x90>)
10000122:	4c22      	ldr	r4, [pc, #136]	; (100001ac <user_init_constructor+0x94>)
10000124:	4822      	ldr	r0, [pc, #136]	; (100001b0 <user_init_constructor+0x98>)
10000126:	47a0      	blx	r4
10000128:	4922      	ldr	r1, [pc, #136]	; (100001b4 <user_init_constructor+0x9c>)
1000012a:	4823      	ldr	r0, [pc, #140]	; (100001b8 <user_init_constructor+0xa0>)
1000012c:	47a0      	blx	r4
1000012e:	4b23      	ldr	r3, [pc, #140]	; (100001bc <user_init_constructor+0xa4>)
10000130:	681b      	ldr	r3, [r3, #0]
10000132:	2b02      	cmp	r3, #2
10000134:	d108      	bne.n	10000148 <user_init_constructor+0x30>
10000136:	2201      	movs	r2, #1
10000138:	4b21      	ldr	r3, [pc, #132]	; (100001c0 <user_init_constructor+0xa8>)
1000013a:	701a      	strb	r2, [r3, #0]
1000013c:	4921      	ldr	r1, [pc, #132]	; (100001c4 <user_init_constructor+0xac>)
1000013e:	4822      	ldr	r0, [pc, #136]	; (100001c8 <user_init_constructor+0xb0>)
10000140:	4b22      	ldr	r3, [pc, #136]	; (100001cc <user_init_constructor+0xb4>)
10000142:	4798      	blx	r3
10000144:	b005      	add	sp, #20
10000146:	bd30      	pop	{r4, r5, pc}
10000148:	4b21      	ldr	r3, [pc, #132]	; (100001d0 <user_init_constructor+0xb8>)
1000014a:	4798      	blx	r3
1000014c:	2400      	movs	r4, #0
1000014e:	0005      	movs	r5, r0
10000150:	42a0      	cmp	r0, r4
10000152:	d00a      	beq.n	1000016a <user_init_constructor+0x52>
10000154:	466b      	mov	r3, sp
10000156:	1d99      	adds	r1, r3, #6
10000158:	2306      	movs	r3, #6
1000015a:	2001      	movs	r0, #1
1000015c:	800b      	strh	r3, [r1, #0]
1000015e:	aa02      	add	r2, sp, #8
10000160:	4b1c      	ldr	r3, [pc, #112]	; (100001d4 <user_init_constructor+0xbc>)
10000162:	4798      	blx	r3
10000164:	4243      	negs	r3, r0
10000166:	4158      	adcs	r0, r3
10000168:	b2c4      	uxtb	r4, r0
1000016a:	4b1b      	ldr	r3, [pc, #108]	; (100001d8 <user_init_constructor+0xc0>)
1000016c:	4798      	blx	r3
1000016e:	481b      	ldr	r0, [pc, #108]	; (100001dc <user_init_constructor+0xc4>)
10000170:	4b1b      	ldr	r3, [pc, #108]	; (100001e0 <user_init_constructor+0xc8>)
10000172:	491c      	ldr	r1, [pc, #112]	; (100001e4 <user_init_constructor+0xcc>)
10000174:	1a09      	subs	r1, r1, r0
10000176:	1ac0      	subs	r0, r0, r3
10000178:	4b1b      	ldr	r3, [pc, #108]	; (100001e8 <user_init_constructor+0xd0>)
1000017a:	4798      	blx	r3
1000017c:	2d00      	cmp	r5, #0
1000017e:	d0dd      	beq.n	1000013c <user_init_constructor+0x24>
10000180:	466b      	mov	r3, sp
10000182:	2200      	movs	r2, #0
10000184:	1d99      	adds	r1, r3, #6
10000186:	2001      	movs	r0, #1
10000188:	4b12      	ldr	r3, [pc, #72]	; (100001d4 <user_init_constructor+0xbc>)
1000018a:	800a      	strh	r2, [r1, #0]
1000018c:	4798      	blx	r3
1000018e:	2804      	cmp	r0, #4
10000190:	d0d4      	beq.n	1000013c <user_init_constructor+0x24>
10000192:	2c00      	cmp	r4, #0
10000194:	d0d2      	beq.n	1000013c <user_init_constructor+0x24>
10000196:	2106      	movs	r1, #6
10000198:	4b14      	ldr	r3, [pc, #80]	; (100001ec <user_init_constructor+0xd4>)
1000019a:	aa02      	add	r2, sp, #8
1000019c:	2001      	movs	r0, #1
1000019e:	4798      	blx	r3
100001a0:	e7cc      	b.n	1000013c <user_init_constructor+0x24>
100001a2:	46c0      	nop			; (mov r8, r8)
100001a4:	10001809 	.word	0x10001809
100001a8:	100050e8 	.word	0x100050e8
100001ac:	000066b1 	.word	0x000066b1
100001b0:	100050ee 	.word	0x100050ee
100001b4:	100050fe 	.word	0x100050fe
100001b8:	10005106 	.word	0x10005106
100001bc:	4000303c 	.word	0x4000303c
100001c0:	200012b0 	.word	0x200012b0
100001c4:	20014000 	.word	0x20014000
100001c8:	20001290 	.word	0x20001290
100001cc:	00006715 	.word	0x00006715
100001d0:	00005dbd 	.word	0x00005dbd
100001d4:	00002f55 	.word	0x00002f55
100001d8:	10001f21 	.word	0x10001f21
100001dc:	10078000 	.word	0x10078000
100001e0:	10000000 	.word	0x10000000
100001e4:	10080000 	.word	0x10080000
100001e8:	00002e35 	.word	0x00002e35
100001ec:	0000308d 	.word	0x0000308d

100001f0 <periph_adv_on>:
100001f0:	b510      	push	{r4, lr}
100001f2:	4a05      	ldr	r2, [pc, #20]	; (10000208 <periph_adv_on+0x18>)
100001f4:	4905      	ldr	r1, [pc, #20]	; (1000020c <periph_adv_on+0x1c>)
100001f6:	4b06      	ldr	r3, [pc, #24]	; (10000210 <periph_adv_on+0x20>)
100001f8:	4806      	ldr	r0, [pc, #24]	; (10000214 <periph_adv_on+0x24>)
100001fa:	4798      	blx	r3
100001fc:	22ff      	movs	r2, #255	; 0xff
100001fe:	2108      	movs	r1, #8
10000200:	2000      	movs	r0, #0
10000202:	4b05      	ldr	r3, [pc, #20]	; (10000218 <periph_adv_on+0x28>)
10000204:	4798      	blx	r3
10000206:	bd10      	pop	{r4, pc}
10000208:	10005614 	.word	0x10005614
1000020c:	100054ed 	.word	0x100054ed
10000210:	000066b1 	.word	0x000066b1
10000214:	10005116 	.word	0x10005116
10000218:	10002f01 	.word	0x10002f01

1000021c <periph_init>:
1000021c:	b5f0      	push	{r4, r5, r6, r7, lr}
1000021e:	2009      	movs	r0, #9
10000220:	b085      	sub	sp, #20
10000222:	4b30      	ldr	r3, [pc, #192]	; (100002e4 <periph_init+0xc8>)
10000224:	4798      	blx	r3
10000226:	2009      	movs	r0, #9
10000228:	4b2f      	ldr	r3, [pc, #188]	; (100002e8 <periph_init+0xcc>)
1000022a:	4798      	blx	r3
1000022c:	2009      	movs	r0, #9
1000022e:	4b2f      	ldr	r3, [pc, #188]	; (100002ec <periph_init+0xd0>)
10000230:	4798      	blx	r3
10000232:	4b2f      	ldr	r3, [pc, #188]	; (100002f0 <periph_init+0xd4>)
10000234:	2009      	movs	r0, #9
10000236:	4798      	blx	r3
10000238:	4c2e      	ldr	r4, [pc, #184]	; (100002f4 <periph_init+0xd8>)
1000023a:	4b2f      	ldr	r3, [pc, #188]	; (100002f8 <periph_init+0xdc>)
1000023c:	7020      	strb	r0, [r4, #0]
1000023e:	2009      	movs	r0, #9
10000240:	4798      	blx	r3
10000242:	4b2e      	ldr	r3, [pc, #184]	; (100002fc <periph_init+0xe0>)
10000244:	2009      	movs	r0, #9
10000246:	4798      	blx	r3
10000248:	7823      	ldrb	r3, [r4, #0]
1000024a:	4a2d      	ldr	r2, [pc, #180]	; (10000300 <periph_init+0xe4>)
1000024c:	2b00      	cmp	r3, #0
1000024e:	d000      	beq.n	10000252 <periph_init+0x36>
10000250:	4a2c      	ldr	r2, [pc, #176]	; (10000304 <periph_init+0xe8>)
10000252:	4d2d      	ldr	r5, [pc, #180]	; (10000308 <periph_init+0xec>)
10000254:	4b2d      	ldr	r3, [pc, #180]	; (1000030c <periph_init+0xf0>)
10000256:	0029      	movs	r1, r5
10000258:	482d      	ldr	r0, [pc, #180]	; (10000310 <periph_init+0xf4>)
1000025a:	4798      	blx	r3
1000025c:	2304      	movs	r3, #4
1000025e:	4c2d      	ldr	r4, [pc, #180]	; (10000314 <periph_init+0xf8>)
10000260:	a903      	add	r1, sp, #12
10000262:	0022      	movs	r2, r4
10000264:	2009      	movs	r0, #9
10000266:	4f2c      	ldr	r7, [pc, #176]	; (10000318 <periph_init+0xfc>)
10000268:	800b      	strh	r3, [r1, #0]
1000026a:	47b8      	blx	r7
1000026c:	2800      	cmp	r0, #0
1000026e:	d001      	beq.n	10000274 <periph_init+0x58>
10000270:	2300      	movs	r3, #0
10000272:	6023      	str	r3, [r4, #0]
10000274:	210e      	movs	r1, #14
10000276:	2301      	movs	r3, #1
10000278:	4e28      	ldr	r6, [pc, #160]	; (1000031c <periph_init+0x100>)
1000027a:	4469      	add	r1, sp
1000027c:	0032      	movs	r2, r6
1000027e:	2011      	movs	r0, #17
10000280:	800b      	strh	r3, [r1, #0]
10000282:	47b8      	blx	r7
10000284:	2800      	cmp	r0, #0
10000286:	d001      	beq.n	1000028c <periph_init+0x70>
10000288:	2304      	movs	r3, #4
1000028a:	7033      	strb	r3, [r6, #0]
1000028c:	220a      	movs	r2, #10
1000028e:	6823      	ldr	r3, [r4, #0]
10000290:	0029      	movs	r1, r5
10000292:	435a      	muls	r2, r3
10000294:	4822      	ldr	r0, [pc, #136]	; (10000320 <periph_init+0x104>)
10000296:	4b1d      	ldr	r3, [pc, #116]	; (1000030c <periph_init+0xf0>)
10000298:	4798      	blx	r3
1000029a:	6823      	ldr	r3, [r4, #0]
1000029c:	2b00      	cmp	r3, #0
1000029e:	d010      	beq.n	100002c2 <periph_init+0xa6>
100002a0:	2100      	movs	r1, #0
100002a2:	4b20      	ldr	r3, [pc, #128]	; (10000324 <periph_init+0x108>)
100002a4:	4820      	ldr	r0, [pc, #128]	; (10000328 <periph_init+0x10c>)
100002a6:	4798      	blx	r3
100002a8:	466d      	mov	r5, sp
100002aa:	4b20      	ldr	r3, [pc, #128]	; (1000032c <periph_init+0x110>)
100002ac:	4e20      	ldr	r6, [pc, #128]	; (10000330 <periph_init+0x114>)
100002ae:	7018      	strb	r0, [r3, #0]
100002b0:	2102      	movs	r1, #2
100002b2:	0028      	movs	r0, r5
100002b4:	4b1f      	ldr	r3, [pc, #124]	; (10000334 <periph_init+0x118>)
100002b6:	4798      	blx	r3
100002b8:	cd0c      	ldmia	r5!, {r2, r3}
100002ba:	c60c      	stmia	r6!, {r2, r3}
100002bc:	4b1e      	ldr	r3, [pc, #120]	; (10000338 <periph_init+0x11c>)
100002be:	6820      	ldr	r0, [r4, #0]
100002c0:	4798      	blx	r3
100002c2:	220b      	movs	r2, #11
100002c4:	2000      	movs	r0, #0
100002c6:	491d      	ldr	r1, [pc, #116]	; (1000033c <periph_init+0x120>)
100002c8:	4b1d      	ldr	r3, [pc, #116]	; (10000340 <periph_init+0x124>)
100002ca:	4798      	blx	r3
100002cc:	2100      	movs	r1, #0
100002ce:	22ff      	movs	r2, #255	; 0xff
100002d0:	0008      	movs	r0, r1
100002d2:	4b1c      	ldr	r3, [pc, #112]	; (10000344 <periph_init+0x128>)
100002d4:	4798      	blx	r3
100002d6:	2100      	movs	r1, #0
100002d8:	4b1b      	ldr	r3, [pc, #108]	; (10000348 <periph_init+0x12c>)
100002da:	0008      	movs	r0, r1
100002dc:	4798      	blx	r3
100002de:	2000      	movs	r0, #0
100002e0:	b005      	add	sp, #20
100002e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
100002e4:	10001315 	.word	0x10001315
100002e8:	10001401 	.word	0x10001401
100002ec:	1000148d 	.word	0x1000148d
100002f0:	1000151d 	.word	0x1000151d
100002f4:	20014b68 	.word	0x20014b68
100002f8:	100014d5 	.word	0x100014d5
100002fc:	10001449 	.word	0x10001449
10000300:	10005130 	.word	0x10005130
10000304:	1000513a 	.word	0x1000513a
10000308:	100054ed 	.word	0x100054ed
1000030c:	000066b1 	.word	0x000066b1
10000310:	10005145 	.word	0x10005145
10000314:	20014b6c 	.word	0x20014b6c
10000318:	00002f55 	.word	0x00002f55
1000031c:	20014b81 	.word	0x20014b81
10000320:	1000516f 	.word	0x1000516f
10000324:	10001041 	.word	0x10001041
10000328:	1000034d 	.word	0x1000034d
1000032c:	20014b82 	.word	0x20014b82
10000330:	20014b78 	.word	0x20014b78
10000334:	100011fd 	.word	0x100011fd
10000338:	100012f9 	.word	0x100012f9
1000033c:	10005648 	.word	0x10005648
10000340:	10002ecd 	.word	0x10002ecd
10000344:	10002f01 	.word	0x10002f01
10000348:	10002f4d 	.word	0x10002f4d

1000034c <periph_restart_timer>:
1000034c:	b510      	push	{r4, lr}
1000034e:	210b      	movs	r1, #11
10000350:	2000      	movs	r0, #0
10000352:	4b01      	ldr	r3, [pc, #4]	; (10000358 <periph_restart_timer+0xc>)
10000354:	4798      	blx	r3
10000356:	bd10      	pop	{r4, pc}
10000358:	10002f4d 	.word	0x10002f4d

1000035c <periph_adv_state_change>:
1000035c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000035e:	0004      	movs	r4, r0
10000360:	4f12      	ldr	r7, [pc, #72]	; (100003ac <periph_adv_state_change+0x50>)
10000362:	0002      	movs	r2, r0
10000364:	000d      	movs	r5, r1
10000366:	4812      	ldr	r0, [pc, #72]	; (100003b0 <periph_adv_state_change+0x54>)
10000368:	0039      	movs	r1, r7
1000036a:	4e12      	ldr	r6, [pc, #72]	; (100003b4 <periph_adv_state_change+0x58>)
1000036c:	47b0      	blx	r6
1000036e:	1ea0      	subs	r0, r4, #2
10000370:	280a      	cmp	r0, #10
10000372:	d816      	bhi.n	100003a2 <periph_adv_state_change+0x46>
10000374:	f004 fe74 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10000378:	150d1506 	.word	0x150d1506
1000037c:	0f151115 	.word	0x0f151115
10000380:	1515      	.short	0x1515
10000382:	13          	.byte	0x13
10000383:	00          	.byte	0x00
10000384:	2102      	movs	r1, #2
10000386:	4b0c      	ldr	r3, [pc, #48]	; (100003b8 <periph_adv_state_change+0x5c>)
10000388:	701d      	strb	r5, [r3, #0]
1000038a:	2000      	movs	r0, #0
1000038c:	4b0b      	ldr	r3, [pc, #44]	; (100003bc <periph_adv_state_change+0x60>)
1000038e:	4798      	blx	r3
10000390:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10000392:	2103      	movs	r1, #3
10000394:	e7f9      	b.n	1000038a <periph_adv_state_change+0x2e>
10000396:	2105      	movs	r1, #5
10000398:	e7f7      	b.n	1000038a <periph_adv_state_change+0x2e>
1000039a:	2106      	movs	r1, #6
1000039c:	e7f5      	b.n	1000038a <periph_adv_state_change+0x2e>
1000039e:	2107      	movs	r1, #7
100003a0:	e7f3      	b.n	1000038a <periph_adv_state_change+0x2e>
100003a2:	0022      	movs	r2, r4
100003a4:	0039      	movs	r1, r7
100003a6:	4806      	ldr	r0, [pc, #24]	; (100003c0 <periph_adv_state_change+0x64>)
100003a8:	47b0      	blx	r6
100003aa:	e7f1      	b.n	10000390 <periph_adv_state_change+0x34>
100003ac:	100054ed 	.word	0x100054ed
100003b0:	100051a5 	.word	0x100051a5
100003b4:	000066b1 	.word	0x000066b1
100003b8:	20014b60 	.word	0x20014b60
100003bc:	10002f4d 	.word	0x10002f4d
100003c0:	100051d1 	.word	0x100051d1

100003c4 <periph_gap_init_cfm>:
100003c4:	b510      	push	{r4, lr}
100003c6:	2101      	movs	r1, #1
100003c8:	2000      	movs	r0, #0
100003ca:	4b01      	ldr	r3, [pc, #4]	; (100003d0 <periph_gap_init_cfm+0xc>)
100003cc:	4798      	blx	r3
100003ce:	bd10      	pop	{r4, pc}
100003d0:	10002f4d 	.word	0x10002f4d

100003d4 <periph_restart_scan>:
100003d4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
100003d6:	4b08      	ldr	r3, [pc, #32]	; (100003f8 <periph_restart_scan+0x24>)
100003d8:	4668      	mov	r0, sp
100003da:	4798      	blx	r3
100003dc:	4b07      	ldr	r3, [pc, #28]	; (100003fc <periph_restart_scan+0x28>)
100003de:	4669      	mov	r1, sp
100003e0:	7818      	ldrb	r0, [r3, #0]
100003e2:	4b07      	ldr	r3, [pc, #28]	; (10000400 <periph_restart_scan+0x2c>)
100003e4:	4798      	blx	r3
100003e6:	1e03      	subs	r3, r0, #0
100003e8:	d004      	beq.n	100003f4 <periph_restart_scan+0x20>
100003ea:	4a06      	ldr	r2, [pc, #24]	; (10000404 <periph_restart_scan+0x30>)
100003ec:	4906      	ldr	r1, [pc, #24]	; (10000408 <periph_restart_scan+0x34>)
100003ee:	4807      	ldr	r0, [pc, #28]	; (1000040c <periph_restart_scan+0x38>)
100003f0:	4c07      	ldr	r4, [pc, #28]	; (10000410 <periph_restart_scan+0x3c>)
100003f2:	47a0      	blx	r4
100003f4:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
100003f6:	46c0      	nop			; (mov r8, r8)
100003f8:	10003959 	.word	0x10003959
100003fc:	20014b74 	.word	0x20014b74
10000400:	10003805 	.word	0x10003805
10000404:	100055a0 	.word	0x100055a0
10000408:	100054ed 	.word	0x100054ed
1000040c:	100051fd 	.word	0x100051fd
10000410:	000066b1 	.word	0x000066b1

10000414 <periph_delete_adv>:
10000414:	b510      	push	{r4, lr}
10000416:	4b06      	ldr	r3, [pc, #24]	; (10000430 <periph_delete_adv+0x1c>)
10000418:	7818      	ldrb	r0, [r3, #0]
1000041a:	4b06      	ldr	r3, [pc, #24]	; (10000434 <periph_delete_adv+0x20>)
1000041c:	4798      	blx	r3
1000041e:	1e03      	subs	r3, r0, #0
10000420:	d004      	beq.n	1000042c <periph_delete_adv+0x18>
10000422:	4a05      	ldr	r2, [pc, #20]	; (10000438 <periph_delete_adv+0x24>)
10000424:	4905      	ldr	r1, [pc, #20]	; (1000043c <periph_delete_adv+0x28>)
10000426:	4806      	ldr	r0, [pc, #24]	; (10000440 <periph_delete_adv+0x2c>)
10000428:	4c06      	ldr	r4, [pc, #24]	; (10000444 <periph_delete_adv+0x30>)
1000042a:	47a0      	blx	r4
1000042c:	bd10      	pop	{r4, pc}
1000042e:	46c0      	nop			; (mov r8, r8)
10000430:	20014b60 	.word	0x20014b60
10000434:	10002ded 	.word	0x10002ded
10000438:	1000558e 	.word	0x1000558e
1000043c:	100054ed 	.word	0x100054ed
10000440:	1000522d 	.word	0x1000522d
10000444:	000066b1 	.word	0x000066b1

10000448 <periph_start_adv>:
10000448:	b570      	push	{r4, r5, r6, lr}
1000044a:	4e0b      	ldr	r6, [pc, #44]	; (10000478 <periph_start_adv+0x30>)
1000044c:	4d0b      	ldr	r5, [pc, #44]	; (1000047c <periph_start_adv+0x34>)
1000044e:	0032      	movs	r2, r6
10000450:	0029      	movs	r1, r5
10000452:	480b      	ldr	r0, [pc, #44]	; (10000480 <periph_start_adv+0x38>)
10000454:	4c0b      	ldr	r4, [pc, #44]	; (10000484 <periph_start_adv+0x3c>)
10000456:	47a0      	blx	r4
10000458:	4b0b      	ldr	r3, [pc, #44]	; (10000488 <periph_start_adv+0x40>)
1000045a:	2000      	movs	r0, #0
1000045c:	4798      	blx	r3
1000045e:	4b0b      	ldr	r3, [pc, #44]	; (1000048c <periph_start_adv+0x44>)
10000460:	0001      	movs	r1, r0
10000462:	7818      	ldrb	r0, [r3, #0]
10000464:	4b0a      	ldr	r3, [pc, #40]	; (10000490 <periph_start_adv+0x48>)
10000466:	4798      	blx	r3
10000468:	1e03      	subs	r3, r0, #0
1000046a:	d003      	beq.n	10000474 <periph_start_adv+0x2c>
1000046c:	0032      	movs	r2, r6
1000046e:	0029      	movs	r1, r5
10000470:	4808      	ldr	r0, [pc, #32]	; (10000494 <periph_start_adv+0x4c>)
10000472:	47a0      	blx	r4
10000474:	bd70      	pop	{r4, r5, r6, pc}
10000476:	46c0      	nop			; (mov r8, r8)
10000478:	10005603 	.word	0x10005603
1000047c:	100054ed 	.word	0x100054ed
10000480:	1000525e 	.word	0x1000525e
10000484:	000066b1 	.word	0x000066b1
10000488:	10002eb5 	.word	0x10002eb5
1000048c:	20014b60 	.word	0x20014b60
10000490:	10002d55 	.word	0x10002d55
10000494:	100052af 	.word	0x100052af

10000498 <periph_create_adv>:
10000498:	b570      	push	{r4, r5, r6, lr}
1000049a:	4b0b      	ldr	r3, [pc, #44]	; (100004c8 <periph_create_adv+0x30>)
1000049c:	480b      	ldr	r0, [pc, #44]	; (100004cc <periph_create_adv+0x34>)
1000049e:	4798      	blx	r3
100004a0:	4e0b      	ldr	r6, [pc, #44]	; (100004d0 <periph_create_adv+0x38>)
100004a2:	4d0c      	ldr	r5, [pc, #48]	; (100004d4 <periph_create_adv+0x3c>)
100004a4:	0032      	movs	r2, r6
100004a6:	0029      	movs	r1, r5
100004a8:	480b      	ldr	r0, [pc, #44]	; (100004d8 <periph_create_adv+0x40>)
100004aa:	4c0c      	ldr	r4, [pc, #48]	; (100004dc <periph_create_adv+0x44>)
100004ac:	47a0      	blx	r4
100004ae:	4b0c      	ldr	r3, [pc, #48]	; (100004e0 <periph_create_adv+0x48>)
100004b0:	2000      	movs	r0, #0
100004b2:	4798      	blx	r3
100004b4:	4b0b      	ldr	r3, [pc, #44]	; (100004e4 <periph_create_adv+0x4c>)
100004b6:	4798      	blx	r3
100004b8:	1e03      	subs	r3, r0, #0
100004ba:	d003      	beq.n	100004c4 <periph_create_adv+0x2c>
100004bc:	0032      	movs	r2, r6
100004be:	0029      	movs	r1, r5
100004c0:	4809      	ldr	r0, [pc, #36]	; (100004e8 <periph_create_adv+0x50>)
100004c2:	47a0      	blx	r4
100004c4:	bd70      	pop	{r4, r5, r6, pc}
100004c6:	46c0      	nop			; (mov r8, r8)
100004c8:	100029cd 	.word	0x100029cd
100004cc:	1000035d 	.word	0x1000035d
100004d0:	100055dd 	.word	0x100055dd
100004d4:	100054ed 	.word	0x100054ed
100004d8:	100052ee 	.word	0x100052ee
100004dc:	000066b1 	.word	0x000066b1
100004e0:	10002ea5 	.word	0x10002ea5
100004e4:	100029f1 	.word	0x100029f1
100004e8:	10005340 	.word	0x10005340

100004ec <periph_start_scan>:
100004ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
100004ee:	4b08      	ldr	r3, [pc, #32]	; (10000510 <periph_start_scan+0x24>)
100004f0:	4668      	mov	r0, sp
100004f2:	4798      	blx	r3
100004f4:	4b07      	ldr	r3, [pc, #28]	; (10000514 <periph_start_scan+0x28>)
100004f6:	4669      	mov	r1, sp
100004f8:	2000      	movs	r0, #0
100004fa:	4a07      	ldr	r2, [pc, #28]	; (10000518 <periph_start_scan+0x2c>)
100004fc:	4798      	blx	r3
100004fe:	1e03      	subs	r3, r0, #0
10000500:	d004      	beq.n	1000050c <periph_start_scan+0x20>
10000502:	4a06      	ldr	r2, [pc, #24]	; (1000051c <periph_start_scan+0x30>)
10000504:	4906      	ldr	r1, [pc, #24]	; (10000520 <periph_start_scan+0x34>)
10000506:	4807      	ldr	r0, [pc, #28]	; (10000524 <periph_start_scan+0x38>)
10000508:	4c07      	ldr	r4, [pc, #28]	; (10000528 <periph_start_scan+0x3c>)
1000050a:	47a0      	blx	r4
1000050c:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
1000050e:	46c0      	nop			; (mov r8, r8)
10000510:	10003959 	.word	0x10003959
10000514:	10003791 	.word	0x10003791
10000518:	100056a0 	.word	0x100056a0
1000051c:	1000557c 	.word	0x1000557c
10000520:	100054ed 	.word	0x100054ed
10000524:	10005374 	.word	0x10005374
10000528:	000066b1 	.word	0x000066b1

1000052c <periph_scan_start_cfm>:
1000052c:	b570      	push	{r4, r5, r6, lr}
1000052e:	0004      	movs	r4, r0
10000530:	2900      	cmp	r1, #0
10000532:	d003      	beq.n	1000053c <periph_scan_start_cfm+0x10>
10000534:	2398      	movs	r3, #152	; 0x98
10000536:	4a05      	ldr	r2, [pc, #20]	; (1000054c <periph_scan_start_cfm+0x20>)
10000538:	4d05      	ldr	r5, [pc, #20]	; (10000550 <periph_scan_start_cfm+0x24>)
1000053a:	47a8      	blx	r5
1000053c:	4b05      	ldr	r3, [pc, #20]	; (10000554 <periph_scan_start_cfm+0x28>)
1000053e:	2108      	movs	r1, #8
10000540:	701c      	strb	r4, [r3, #0]
10000542:	2000      	movs	r0, #0
10000544:	4b04      	ldr	r3, [pc, #16]	; (10000558 <periph_scan_start_cfm+0x2c>)
10000546:	4798      	blx	r3
10000548:	bd70      	pop	{r4, r5, r6, pc}
1000054a:	46c0      	nop			; (mov r8, r8)
1000054c:	100053af 	.word	0x100053af
10000550:	00006641 	.word	0x00006641
10000554:	20014b74 	.word	0x20014b74
10000558:	10002f4d 	.word	0x10002f4d

1000055c <periph_gap_init>:
1000055c:	b510      	push	{r4, lr}
1000055e:	4b03      	ldr	r3, [pc, #12]	; (1000056c <periph_gap_init+0x10>)
10000560:	4798      	blx	r3
10000562:	4903      	ldr	r1, [pc, #12]	; (10000570 <periph_gap_init+0x14>)
10000564:	4b03      	ldr	r3, [pc, #12]	; (10000574 <periph_gap_init+0x18>)
10000566:	4798      	blx	r3
10000568:	bd10      	pop	{r4, pc}
1000056a:	46c0      	nop			; (mov r8, r8)
1000056c:	100036c5 	.word	0x100036c5
10000570:	10005624 	.word	0x10005624
10000574:	1000326d 	.word	0x1000326d

10000578 <kh_resize_rssi>:
10000578:	b5f0      	push	{r4, r5, r6, r7, lr}
1000057a:	231f      	movs	r3, #31
1000057c:	0004      	movs	r4, r0
1000057e:	4a69      	ldr	r2, [pc, #420]	; (10000724 <kh_resize_rssi+0x1ac>)
10000580:	b091      	sub	sp, #68	; 0x44
10000582:	0098      	lsls	r0, r3, #2
10000584:	5810      	ldr	r0, [r2, r0]
10000586:	4288      	cmp	r0, r1
10000588:	d849      	bhi.n	1000061e <kh_resize_rssi+0xa6>
1000058a:	3301      	adds	r3, #1
1000058c:	009b      	lsls	r3, r3, #2
1000058e:	589e      	ldr	r6, [r3, r2]
10000590:	4b65      	ldr	r3, [pc, #404]	; (10000728 <kh_resize_rssi+0x1b0>)
10000592:	0030      	movs	r0, r6
10000594:	4798      	blx	r3
10000596:	4a65      	ldr	r2, [pc, #404]	; (1000072c <kh_resize_rssi+0x1b4>)
10000598:	4b65      	ldr	r3, [pc, #404]	; (10000730 <kh_resize_rssi+0x1b8>)
1000059a:	4d66      	ldr	r5, [pc, #408]	; (10000734 <kh_resize_rssi+0x1bc>)
1000059c:	47a8      	blx	r5
1000059e:	2200      	movs	r2, #0
100005a0:	4b65      	ldr	r3, [pc, #404]	; (10000738 <kh_resize_rssi+0x1c0>)
100005a2:	4d66      	ldr	r5, [pc, #408]	; (1000073c <kh_resize_rssi+0x1c4>)
100005a4:	47a8      	blx	r5
100005a6:	4b66      	ldr	r3, [pc, #408]	; (10000740 <kh_resize_rssi+0x1c8>)
100005a8:	4798      	blx	r3
100005aa:	6863      	ldr	r3, [r4, #4]
100005ac:	9006      	str	r0, [sp, #24]
100005ae:	4283      	cmp	r3, r0
100005b0:	d233      	bcs.n	1000061a <kh_resize_rssi+0xa2>
100005b2:	0935      	lsrs	r5, r6, #4
100005b4:	3501      	adds	r5, #1
100005b6:	00ad      	lsls	r5, r5, #2
100005b8:	4b62      	ldr	r3, [pc, #392]	; (10000744 <kh_resize_rssi+0x1cc>)
100005ba:	0028      	movs	r0, r5
100005bc:	4798      	blx	r3
100005be:	4b62      	ldr	r3, [pc, #392]	; (10000748 <kh_resize_rssi+0x1d0>)
100005c0:	002a      	movs	r2, r5
100005c2:	21aa      	movs	r1, #170	; 0xaa
100005c4:	9005      	str	r0, [sp, #20]
100005c6:	4798      	blx	r3
100005c8:	6823      	ldr	r3, [r4, #0]
100005ca:	42b3      	cmp	r3, r6
100005cc:	d209      	bcs.n	100005e2 <kh_resize_rssi+0x6a>
100005ce:	4d5f      	ldr	r5, [pc, #380]	; (1000074c <kh_resize_rssi+0x1d4>)
100005d0:	00b1      	lsls	r1, r6, #2
100005d2:	6960      	ldr	r0, [r4, #20]
100005d4:	47a8      	blx	r5
100005d6:	210f      	movs	r1, #15
100005d8:	6160      	str	r0, [r4, #20]
100005da:	4371      	muls	r1, r6
100005dc:	69a0      	ldr	r0, [r4, #24]
100005de:	47a8      	blx	r5
100005e0:	61a0      	str	r0, [r4, #24]
100005e2:	2300      	movs	r3, #0
100005e4:	9301      	str	r3, [sp, #4]
100005e6:	9a01      	ldr	r2, [sp, #4]
100005e8:	6823      	ldr	r3, [r4, #0]
100005ea:	4293      	cmp	r3, r2
100005ec:	d119      	bne.n	10000622 <kh_resize_rssi+0xaa>
100005ee:	42b2      	cmp	r2, r6
100005f0:	d909      	bls.n	10000606 <kh_resize_rssi+0x8e>
100005f2:	4d56      	ldr	r5, [pc, #344]	; (1000074c <kh_resize_rssi+0x1d4>)
100005f4:	00b1      	lsls	r1, r6, #2
100005f6:	6960      	ldr	r0, [r4, #20]
100005f8:	47a8      	blx	r5
100005fa:	210f      	movs	r1, #15
100005fc:	6160      	str	r0, [r4, #20]
100005fe:	4371      	muls	r1, r6
10000600:	69a0      	ldr	r0, [r4, #24]
10000602:	47a8      	blx	r5
10000604:	61a0      	str	r0, [r4, #24]
10000606:	4b52      	ldr	r3, [pc, #328]	; (10000750 <kh_resize_rssi+0x1d8>)
10000608:	6920      	ldr	r0, [r4, #16]
1000060a:	4798      	blx	r3
1000060c:	9b05      	ldr	r3, [sp, #20]
1000060e:	6026      	str	r6, [r4, #0]
10000610:	6123      	str	r3, [r4, #16]
10000612:	6863      	ldr	r3, [r4, #4]
10000614:	60a3      	str	r3, [r4, #8]
10000616:	9b06      	ldr	r3, [sp, #24]
10000618:	60e3      	str	r3, [r4, #12]
1000061a:	b011      	add	sp, #68	; 0x44
1000061c:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000061e:	3b01      	subs	r3, #1
10000620:	e7af      	b.n	10000582 <kh_resize_rssi+0xa>
10000622:	221e      	movs	r2, #30
10000624:	9b01      	ldr	r3, [sp, #4]
10000626:	091d      	lsrs	r5, r3, #4
10000628:	6923      	ldr	r3, [r4, #16]
1000062a:	00ad      	lsls	r5, r5, #2
1000062c:	195d      	adds	r5, r3, r5
1000062e:	9b01      	ldr	r3, [sp, #4]
10000630:	682f      	ldr	r7, [r5, #0]
10000632:	005b      	lsls	r3, r3, #1
10000634:	401a      	ands	r2, r3
10000636:	003b      	movs	r3, r7
10000638:	9203      	str	r2, [sp, #12]
1000063a:	40d3      	lsrs	r3, r2
1000063c:	2203      	movs	r2, #3
1000063e:	4213      	tst	r3, r2
10000640:	d16d      	bne.n	1000071e <kh_resize_rssi+0x1a6>
10000642:	9b01      	ldr	r3, [sp, #4]
10000644:	6962      	ldr	r2, [r4, #20]
10000646:	009b      	lsls	r3, r3, #2
10000648:	589b      	ldr	r3, [r3, r2]
1000064a:	220f      	movs	r2, #15
1000064c:	9901      	ldr	r1, [sp, #4]
1000064e:	9302      	str	r3, [sp, #8]
10000650:	4351      	muls	r1, r2
10000652:	69a3      	ldr	r3, [r4, #24]
10000654:	a808      	add	r0, sp, #32
10000656:	1859      	adds	r1, r3, r1
10000658:	4b3e      	ldr	r3, [pc, #248]	; (10000754 <kh_resize_rssi+0x1dc>)
1000065a:	4798      	blx	r3
1000065c:	2301      	movs	r3, #1
1000065e:	9a03      	ldr	r2, [sp, #12]
10000660:	4093      	lsls	r3, r2
10000662:	431f      	orrs	r7, r3
10000664:	602f      	str	r7, [r5, #0]
10000666:	4d3c      	ldr	r5, [pc, #240]	; (10000758 <kh_resize_rssi+0x1e0>)
10000668:	0031      	movs	r1, r6
1000066a:	9802      	ldr	r0, [sp, #8]
1000066c:	47a8      	blx	r5
1000066e:	9802      	ldr	r0, [sp, #8]
10000670:	000f      	movs	r7, r1
10000672:	1e71      	subs	r1, r6, #1
10000674:	47a8      	blx	r5
10000676:	3101      	adds	r1, #1
10000678:	251e      	movs	r5, #30
1000067a:	093b      	lsrs	r3, r7, #4
1000067c:	009b      	lsls	r3, r3, #2
1000067e:	9304      	str	r3, [sp, #16]
10000680:	9a04      	ldr	r2, [sp, #16]
10000682:	9b05      	ldr	r3, [sp, #20]
10000684:	0078      	lsls	r0, r7, #1
10000686:	189a      	adds	r2, r3, r2
10000688:	6813      	ldr	r3, [r2, #0]
1000068a:	4005      	ands	r5, r0
1000068c:	0018      	movs	r0, r3
1000068e:	9503      	str	r5, [sp, #12]
10000690:	40e8      	lsrs	r0, r5
10000692:	2502      	movs	r5, #2
10000694:	4228      	tst	r0, r5
10000696:	d034      	beq.n	10000702 <kh_resize_rssi+0x18a>
10000698:	0029      	movs	r1, r5
1000069a:	9803      	ldr	r0, [sp, #12]
1000069c:	350d      	adds	r5, #13
1000069e:	4081      	lsls	r1, r0
100006a0:	438b      	bics	r3, r1
100006a2:	6013      	str	r3, [r2, #0]
100006a4:	6823      	ldr	r3, [r4, #0]
100006a6:	437d      	muls	r5, r7
100006a8:	00b9      	lsls	r1, r7, #2
100006aa:	42bb      	cmp	r3, r7
100006ac:	d92e      	bls.n	1000070c <kh_resize_rssi+0x194>
100006ae:	9804      	ldr	r0, [sp, #16]
100006b0:	6922      	ldr	r2, [r4, #16]
100006b2:	6963      	ldr	r3, [r4, #20]
100006b4:	5812      	ldr	r2, [r2, r0]
100006b6:	9803      	ldr	r0, [sp, #12]
100006b8:	185b      	adds	r3, r3, r1
100006ba:	40c2      	lsrs	r2, r0
100006bc:	2003      	movs	r0, #3
100006be:	4202      	tst	r2, r0
100006c0:	d124      	bne.n	1000070c <kh_resize_rssi+0x194>
100006c2:	681a      	ldr	r2, [r3, #0]
100006c4:	4f23      	ldr	r7, [pc, #140]	; (10000754 <kh_resize_rssi+0x1dc>)
100006c6:	9207      	str	r2, [sp, #28]
100006c8:	9a02      	ldr	r2, [sp, #8]
100006ca:	a80c      	add	r0, sp, #48	; 0x30
100006cc:	601a      	str	r2, [r3, #0]
100006ce:	69a3      	ldr	r3, [r4, #24]
100006d0:	220f      	movs	r2, #15
100006d2:	195d      	adds	r5, r3, r5
100006d4:	0029      	movs	r1, r5
100006d6:	47b8      	blx	r7
100006d8:	220f      	movs	r2, #15
100006da:	a908      	add	r1, sp, #32
100006dc:	0028      	movs	r0, r5
100006de:	47b8      	blx	r7
100006e0:	220f      	movs	r2, #15
100006e2:	a90c      	add	r1, sp, #48	; 0x30
100006e4:	a808      	add	r0, sp, #32
100006e6:	47b8      	blx	r7
100006e8:	6922      	ldr	r2, [r4, #16]
100006ea:	9903      	ldr	r1, [sp, #12]
100006ec:	4694      	mov	ip, r2
100006ee:	2201      	movs	r2, #1
100006f0:	408a      	lsls	r2, r1
100006f2:	9b04      	ldr	r3, [sp, #16]
100006f4:	4463      	add	r3, ip
100006f6:	6819      	ldr	r1, [r3, #0]
100006f8:	430a      	orrs	r2, r1
100006fa:	601a      	str	r2, [r3, #0]
100006fc:	9b07      	ldr	r3, [sp, #28]
100006fe:	9302      	str	r3, [sp, #8]
10000700:	e7b1      	b.n	10000666 <kh_resize_rssi+0xee>
10000702:	187f      	adds	r7, r7, r1
10000704:	42b7      	cmp	r7, r6
10000706:	d3b7      	bcc.n	10000678 <kh_resize_rssi+0x100>
10000708:	1bbf      	subs	r7, r7, r6
1000070a:	e7b5      	b.n	10000678 <kh_resize_rssi+0x100>
1000070c:	6963      	ldr	r3, [r4, #20]
1000070e:	9a02      	ldr	r2, [sp, #8]
10000710:	505a      	str	r2, [r3, r1]
10000712:	69a3      	ldr	r3, [r4, #24]
10000714:	220f      	movs	r2, #15
10000716:	1958      	adds	r0, r3, r5
10000718:	a908      	add	r1, sp, #32
1000071a:	4b0e      	ldr	r3, [pc, #56]	; (10000754 <kh_resize_rssi+0x1dc>)
1000071c:	4798      	blx	r3
1000071e:	9b01      	ldr	r3, [sp, #4]
10000720:	3301      	adds	r3, #1
10000722:	e75f      	b.n	100005e4 <kh_resize_rssi+0x6c>
10000724:	100054fc 	.word	0x100054fc
10000728:	0003ae69 	.word	0x0003ae69
1000072c:	0a3d70a4 	.word	0x0a3d70a4
10000730:	3fe8a3d7 	.word	0x3fe8a3d7
10000734:	0003a211 	.word	0x0003a211
10000738:	3fe00000 	.word	0x3fe00000
1000073c:	00039389 	.word	0x00039389
10000740:	0003c255 	.word	0x0003c255
10000744:	0002f615 	.word	0x0002f615
10000748:	00005859 	.word	0x00005859
1000074c:	0002fe0d 	.word	0x0002fe0d
10000750:	0002f629 	.word	0x0002f629
10000754:	00005821 	.word	0x00005821
10000758:	0002ee49 	.word	0x0002ee49

1000075c <kh_del_rssi.part.0>:
1000075c:	6903      	ldr	r3, [r0, #16]
1000075e:	090a      	lsrs	r2, r1, #4
10000760:	0092      	lsls	r2, r2, #2
10000762:	189a      	adds	r2, r3, r2
10000764:	231e      	movs	r3, #30
10000766:	b510      	push	{r4, lr}
10000768:	6814      	ldr	r4, [r2, #0]
1000076a:	0049      	lsls	r1, r1, #1
1000076c:	4019      	ands	r1, r3
1000076e:	0023      	movs	r3, r4
10000770:	40cb      	lsrs	r3, r1
10000772:	079b      	lsls	r3, r3, #30
10000774:	d106      	bne.n	10000784 <kh_del_rssi.part.0+0x28>
10000776:	2301      	movs	r3, #1
10000778:	408b      	lsls	r3, r1
1000077a:	4323      	orrs	r3, r4
1000077c:	6013      	str	r3, [r2, #0]
1000077e:	6843      	ldr	r3, [r0, #4]
10000780:	3b01      	subs	r3, #1
10000782:	6043      	str	r3, [r0, #4]
10000784:	bd10      	pop	{r4, pc}
	...

10000788 <periph_scan_stop_ind>:
10000788:	b510      	push	{r4, lr}
1000078a:	4b05      	ldr	r3, [pc, #20]	; (100007a0 <periph_scan_stop_ind+0x18>)
1000078c:	2109      	movs	r1, #9
1000078e:	7818      	ldrb	r0, [r3, #0]
10000790:	4b04      	ldr	r3, [pc, #16]	; (100007a4 <periph_scan_stop_ind+0x1c>)
10000792:	2800      	cmp	r0, #0
10000794:	d001      	beq.n	1000079a <periph_scan_stop_ind+0x12>
10000796:	210a      	movs	r1, #10
10000798:	2000      	movs	r0, #0
1000079a:	4798      	blx	r3
1000079c:	bd10      	pop	{r4, pc}
1000079e:	46c0      	nop			; (mov r8, r8)
100007a0:	20014b80 	.word	0x20014b80
100007a4:	10002f4d 	.word	0x10002f4d

100007a8 <periph_unlock_hibernation>:
100007a8:	b510      	push	{r4, lr}
100007aa:	4b0b      	ldr	r3, [pc, #44]	; (100007d8 <periph_unlock_hibernation+0x30>)
100007ac:	4a0b      	ldr	r2, [pc, #44]	; (100007dc <periph_unlock_hibernation+0x34>)
100007ae:	490c      	ldr	r1, [pc, #48]	; (100007e0 <periph_unlock_hibernation+0x38>)
100007b0:	480c      	ldr	r0, [pc, #48]	; (100007e4 <periph_unlock_hibernation+0x3c>)
100007b2:	4798      	blx	r3
100007b4:	4c0c      	ldr	r4, [pc, #48]	; (100007e8 <periph_unlock_hibernation+0x40>)
100007b6:	6823      	ldr	r3, [r4, #0]
100007b8:	2b00      	cmp	r3, #0
100007ba:	d00c      	beq.n	100007d6 <periph_unlock_hibernation+0x2e>
100007bc:	4b0b      	ldr	r3, [pc, #44]	; (100007ec <periph_unlock_hibernation+0x44>)
100007be:	cb03      	ldmia	r3!, {r0, r1}
100007c0:	4b0b      	ldr	r3, [pc, #44]	; (100007f0 <periph_unlock_hibernation+0x48>)
100007c2:	4798      	blx	r3
100007c4:	4b0b      	ldr	r3, [pc, #44]	; (100007f4 <periph_unlock_hibernation+0x4c>)
100007c6:	781b      	ldrb	r3, [r3, #0]
100007c8:	2b04      	cmp	r3, #4
100007ca:	d004      	beq.n	100007d6 <periph_unlock_hibernation+0x2e>
100007cc:	4b0a      	ldr	r3, [pc, #40]	; (100007f8 <periph_unlock_hibernation+0x50>)
100007ce:	6821      	ldr	r1, [r4, #0]
100007d0:	7818      	ldrb	r0, [r3, #0]
100007d2:	4b0a      	ldr	r3, [pc, #40]	; (100007fc <periph_unlock_hibernation+0x54>)
100007d4:	4798      	blx	r3
100007d6:	bd10      	pop	{r4, pc}
100007d8:	000066b1 	.word	0x000066b1
100007dc:	100055c3 	.word	0x100055c3
100007e0:	100054ed 	.word	0x100054ed
100007e4:	10005116 	.word	0x10005116
100007e8:	20014b6c 	.word	0x20014b6c
100007ec:	20014b78 	.word	0x20014b78
100007f0:	100012a5 	.word	0x100012a5
100007f4:	20014b81 	.word	0x20014b81
100007f8:	20014b82 	.word	0x20014b82
100007fc:	10001109 	.word	0x10001109

10000800 <periph_scan_on>:
10000800:	b510      	push	{r4, lr}
10000802:	4a09      	ldr	r2, [pc, #36]	; (10000828 <periph_scan_on+0x28>)
10000804:	4909      	ldr	r1, [pc, #36]	; (1000082c <periph_scan_on+0x2c>)
10000806:	4b0a      	ldr	r3, [pc, #40]	; (10000830 <periph_scan_on+0x30>)
10000808:	480a      	ldr	r0, [pc, #40]	; (10000834 <periph_scan_on+0x34>)
1000080a:	4798      	blx	r3
1000080c:	4b0a      	ldr	r3, [pc, #40]	; (10000838 <periph_scan_on+0x38>)
1000080e:	22ff      	movs	r2, #255	; 0xff
10000810:	2104      	movs	r1, #4
10000812:	2000      	movs	r0, #0
10000814:	4798      	blx	r3
10000816:	4b09      	ldr	r3, [pc, #36]	; (1000083c <periph_scan_on+0x3c>)
10000818:	681b      	ldr	r3, [r3, #0]
1000081a:	2b00      	cmp	r3, #0
1000081c:	d003      	beq.n	10000826 <periph_scan_on+0x26>
1000081e:	4b08      	ldr	r3, [pc, #32]	; (10000840 <periph_scan_on+0x40>)
10000820:	cb03      	ldmia	r3!, {r0, r1}
10000822:	4b08      	ldr	r3, [pc, #32]	; (10000844 <periph_scan_on+0x44>)
10000824:	4798      	blx	r3
10000826:	bd10      	pop	{r4, pc}
10000828:	100055b4 	.word	0x100055b4
1000082c:	100054ed 	.word	0x100054ed
10000830:	000066b1 	.word	0x000066b1
10000834:	10005116 	.word	0x10005116
10000838:	10002f01 	.word	0x10002f01
1000083c:	20014b6c 	.word	0x20014b6c
10000840:	20014b78 	.word	0x20014b78
10000844:	10001251 	.word	0x10001251

10000848 <periph_ext_adv_ind>:
10000848:	b5f0      	push	{r4, r5, r6, r7, lr}
1000084a:	7803      	ldrb	r3, [r0, #0]
1000084c:	b08d      	sub	sp, #52	; 0x34
1000084e:	9000      	str	r0, [sp, #0]
10000850:	071b      	lsls	r3, r3, #28
10000852:	d400      	bmi.n	10000856 <periph_ext_adv_ind+0xe>
10000854:	e0f2      	b.n	10000a3c <periph_ext_adv_ind+0x1f4>
10000856:	4b88      	ldr	r3, [pc, #544]	; (10000a78 <periph_ext_adv_ind+0x230>)
10000858:	3001      	adds	r0, #1
1000085a:	4798      	blx	r3
1000085c:	2800      	cmp	r0, #0
1000085e:	d100      	bne.n	10000862 <periph_ext_adv_ind+0x1a>
10000860:	e0ec      	b.n	10000a3c <periph_ext_adv_ind+0x1f4>
10000862:	2210      	movs	r2, #16
10000864:	2100      	movs	r1, #0
10000866:	4b85      	ldr	r3, [pc, #532]	; (10000a7c <periph_ext_adv_ind+0x234>)
10000868:	a804      	add	r0, sp, #16
1000086a:	4798      	blx	r3
1000086c:	9b00      	ldr	r3, [sp, #0]
1000086e:	aa04      	add	r2, sp, #16
10000870:	0018      	movs	r0, r3
10000872:	7d99      	ldrb	r1, [r3, #22]
10000874:	3018      	adds	r0, #24
10000876:	4b82      	ldr	r3, [pc, #520]	; (10000a80 <periph_ext_adv_ind+0x238>)
10000878:	4798      	blx	r3
1000087a:	2800      	cmp	r0, #0
1000087c:	d100      	bne.n	10000880 <periph_ext_adv_ind+0x38>
1000087e:	e0dd      	b.n	10000a3c <periph_ext_adv_ind+0x1f4>
10000880:	2201      	movs	r2, #1
10000882:	4b80      	ldr	r3, [pc, #512]	; (10000a84 <periph_ext_adv_ind+0x23c>)
10000884:	a904      	add	r1, sp, #16
10000886:	701a      	strb	r2, [r3, #0]
10000888:	4b7f      	ldr	r3, [pc, #508]	; (10000a88 <periph_ext_adv_ind+0x240>)
1000088a:	320f      	adds	r2, #15
1000088c:	681c      	ldr	r4, [r3, #0]
1000088e:	a808      	add	r0, sp, #32
10000890:	4b7e      	ldr	r3, [pc, #504]	; (10000a8c <periph_ext_adv_ind+0x244>)
10000892:	4798      	blx	r3
10000894:	2500      	movs	r5, #0
10000896:	2209      	movs	r2, #9
10000898:	210a      	movs	r1, #10
1000089a:	ab08      	add	r3, sp, #32
1000089c:	189b      	adds	r3, r3, r2
1000089e:	799b      	ldrb	r3, [r3, #6]
100008a0:	3b30      	subs	r3, #48	; 0x30
100008a2:	195d      	adds	r5, r3, r5
100008a4:	434d      	muls	r5, r1
100008a6:	3a01      	subs	r2, #1
100008a8:	d2f7      	bcs.n	1000089a <periph_ext_adv_ind+0x52>
100008aa:	6826      	ldr	r6, [r4, #0]
100008ac:	2e00      	cmp	r6, #0
100008ae:	d04a      	beq.n	10000946 <periph_ext_adv_ind+0xfe>
100008b0:	4f77      	ldr	r7, [pc, #476]	; (10000a90 <periph_ext_adv_ind+0x248>)
100008b2:	0031      	movs	r1, r6
100008b4:	0028      	movs	r0, r5
100008b6:	47b8      	blx	r7
100008b8:	0028      	movs	r0, r5
100008ba:	9101      	str	r1, [sp, #4]
100008bc:	1e71      	subs	r1, r6, #1
100008be:	47b8      	blx	r7
100008c0:	221e      	movs	r2, #30
100008c2:	2701      	movs	r7, #1
100008c4:	4694      	mov	ip, r2
100008c6:	1c4b      	adds	r3, r1, #1
100008c8:	9302      	str	r3, [sp, #8]
100008ca:	6923      	ldr	r3, [r4, #16]
100008cc:	9303      	str	r3, [sp, #12]
100008ce:	9b01      	ldr	r3, [sp, #4]
100008d0:	4660      	mov	r0, ip
100008d2:	0059      	lsls	r1, r3, #1
100008d4:	4001      	ands	r1, r0
100008d6:	091a      	lsrs	r2, r3, #4
100008d8:	9803      	ldr	r0, [sp, #12]
100008da:	0092      	lsls	r2, r2, #2
100008dc:	5812      	ldr	r2, [r2, r0]
100008de:	40ca      	lsrs	r2, r1
100008e0:	2102      	movs	r1, #2
100008e2:	420a      	tst	r2, r1
100008e4:	d020      	beq.n	10000928 <periph_ext_adv_ind+0xe0>
100008e6:	0792      	lsls	r2, r2, #30
100008e8:	d12d      	bne.n	10000946 <periph_ext_adv_ind+0xfe>
100008ea:	429e      	cmp	r6, r3
100008ec:	d02b      	beq.n	10000946 <periph_ext_adv_ind+0xfe>
100008ee:	220f      	movs	r2, #15
100008f0:	4353      	muls	r3, r2
100008f2:	69a2      	ldr	r2, [r4, #24]
100008f4:	18d3      	adds	r3, r2, r3
100008f6:	791a      	ldrb	r2, [r3, #4]
100008f8:	7858      	ldrb	r0, [r3, #1]
100008fa:	3201      	adds	r2, #1
100008fc:	7899      	ldrb	r1, [r3, #2]
100008fe:	711a      	strb	r2, [r3, #4]
10000900:	781a      	ldrb	r2, [r3, #0]
10000902:	0200      	lsls	r0, r0, #8
10000904:	4310      	orrs	r0, r2
10000906:	0409      	lsls	r1, r1, #16
10000908:	4308      	orrs	r0, r1
1000090a:	9900      	ldr	r1, [sp, #0]
1000090c:	78da      	ldrb	r2, [r3, #3]
1000090e:	7c09      	ldrb	r1, [r1, #16]
10000910:	0612      	lsls	r2, r2, #24
10000912:	b249      	sxtb	r1, r1
10000914:	4302      	orrs	r2, r0
10000916:	1852      	adds	r2, r2, r1
10000918:	0a11      	lsrs	r1, r2, #8
1000091a:	701a      	strb	r2, [r3, #0]
1000091c:	7059      	strb	r1, [r3, #1]
1000091e:	0c11      	lsrs	r1, r2, #16
10000920:	0e12      	lsrs	r2, r2, #24
10000922:	7099      	strb	r1, [r3, #2]
10000924:	70da      	strb	r2, [r3, #3]
10000926:	e089      	b.n	10000a3c <periph_ext_adv_ind+0x1f4>
10000928:	423a      	tst	r2, r7
1000092a:	d104      	bne.n	10000936 <periph_ext_adv_ind+0xee>
1000092c:	6960      	ldr	r0, [r4, #20]
1000092e:	0099      	lsls	r1, r3, #2
10000930:	5809      	ldr	r1, [r1, r0]
10000932:	428d      	cmp	r5, r1
10000934:	d0d7      	beq.n	100008e6 <periph_ext_adv_ind+0x9e>
10000936:	9a02      	ldr	r2, [sp, #8]
10000938:	189b      	adds	r3, r3, r2
1000093a:	429e      	cmp	r6, r3
1000093c:	d800      	bhi.n	10000940 <periph_ext_adv_ind+0xf8>
1000093e:	1b9b      	subs	r3, r3, r6
10000940:	9a01      	ldr	r2, [sp, #4]
10000942:	429a      	cmp	r2, r3
10000944:	d1c4      	bne.n	100008d0 <periph_ext_adv_ind+0x88>
10000946:	68a3      	ldr	r3, [r4, #8]
10000948:	68e2      	ldr	r2, [r4, #12]
1000094a:	4293      	cmp	r3, r2
1000094c:	d308      	bcc.n	10000960 <periph_ext_adv_ind+0x118>
1000094e:	6863      	ldr	r3, [r4, #4]
10000950:	1e71      	subs	r1, r6, #1
10000952:	005a      	lsls	r2, r3, #1
10000954:	4b4f      	ldr	r3, [pc, #316]	; (10000a94 <periph_ext_adv_ind+0x24c>)
10000956:	4296      	cmp	r6, r2
10000958:	d800      	bhi.n	1000095c <periph_ext_adv_ind+0x114>
1000095a:	1c71      	adds	r1, r6, #1
1000095c:	0020      	movs	r0, r4
1000095e:	4798      	blx	r3
10000960:	6826      	ldr	r6, [r4, #0]
10000962:	4b4b      	ldr	r3, [pc, #300]	; (10000a90 <periph_ext_adv_ind+0x248>)
10000964:	0031      	movs	r1, r6
10000966:	0028      	movs	r0, r5
10000968:	4798      	blx	r3
1000096a:	6923      	ldr	r3, [r4, #16]
1000096c:	9101      	str	r1, [sp, #4]
1000096e:	9302      	str	r3, [sp, #8]
10000970:	004a      	lsls	r2, r1, #1
10000972:	090b      	lsrs	r3, r1, #4
10000974:	211e      	movs	r1, #30
10000976:	400a      	ands	r2, r1
10000978:	9902      	ldr	r1, [sp, #8]
1000097a:	009b      	lsls	r3, r3, #2
1000097c:	585b      	ldr	r3, [r3, r1]
1000097e:	9f01      	ldr	r7, [sp, #4]
10000980:	40d3      	lsrs	r3, r2
10000982:	2202      	movs	r2, #2
10000984:	4213      	tst	r3, r2
10000986:	d128      	bne.n	100009da <periph_ext_adv_ind+0x192>
10000988:	4b41      	ldr	r3, [pc, #260]	; (10000a90 <periph_ext_adv_ind+0x248>)
1000098a:	0028      	movs	r0, r5
1000098c:	1e71      	subs	r1, r6, #1
1000098e:	4798      	blx	r3
10000990:	0033      	movs	r3, r6
10000992:	3101      	adds	r1, #1
10000994:	093a      	lsrs	r2, r7, #4
10000996:	0092      	lsls	r2, r2, #2
10000998:	9203      	str	r2, [sp, #12]
1000099a:	221e      	movs	r2, #30
1000099c:	0078      	lsls	r0, r7, #1
1000099e:	4010      	ands	r0, r2
100009a0:	4684      	mov	ip, r0
100009a2:	9a02      	ldr	r2, [sp, #8]
100009a4:	9803      	ldr	r0, [sp, #12]
100009a6:	5882      	ldr	r2, [r0, r2]
100009a8:	4660      	mov	r0, ip
100009aa:	40c2      	lsrs	r2, r0
100009ac:	2002      	movs	r0, #2
100009ae:	4202      	tst	r2, r0
100009b0:	d107      	bne.n	100009c2 <periph_ext_adv_ind+0x17a>
100009b2:	3801      	subs	r0, #1
100009b4:	4202      	tst	r2, r0
100009b6:	d143      	bne.n	10000a40 <periph_ext_adv_ind+0x1f8>
100009b8:	6960      	ldr	r0, [r4, #20]
100009ba:	00ba      	lsls	r2, r7, #2
100009bc:	5812      	ldr	r2, [r2, r0]
100009be:	4295      	cmp	r5, r2
100009c0:	d13f      	bne.n	10000a42 <periph_ext_adv_ind+0x1fa>
100009c2:	201e      	movs	r0, #30
100009c4:	0079      	lsls	r1, r7, #1
100009c6:	4001      	ands	r1, r0
100009c8:	093a      	lsrs	r2, r7, #4
100009ca:	9802      	ldr	r0, [sp, #8]
100009cc:	0092      	lsls	r2, r2, #2
100009ce:	5812      	ldr	r2, [r2, r0]
100009d0:	40ca      	lsrs	r2, r1
100009d2:	0792      	lsls	r2, r2, #30
100009d4:	d501      	bpl.n	100009da <periph_ext_adv_ind+0x192>
100009d6:	429e      	cmp	r6, r3
100009d8:	d13c      	bne.n	10000a54 <periph_ext_adv_ind+0x20c>
100009da:	231e      	movs	r3, #30
100009dc:	0079      	lsls	r1, r7, #1
100009de:	400b      	ands	r3, r1
100009e0:	093a      	lsrs	r2, r7, #4
100009e2:	9902      	ldr	r1, [sp, #8]
100009e4:	0092      	lsls	r2, r2, #2
100009e6:	5889      	ldr	r1, [r1, r2]
100009e8:	40d9      	lsrs	r1, r3
100009ea:	0788      	lsls	r0, r1, #30
100009ec:	d534      	bpl.n	10000a58 <periph_ext_adv_ind+0x210>
100009ee:	6960      	ldr	r0, [r4, #20]
100009f0:	00b9      	lsls	r1, r7, #2
100009f2:	500d      	str	r5, [r1, r0]
100009f4:	6921      	ldr	r1, [r4, #16]
100009f6:	188a      	adds	r2, r1, r2
100009f8:	2103      	movs	r1, #3
100009fa:	4099      	lsls	r1, r3
100009fc:	6813      	ldr	r3, [r2, #0]
100009fe:	438b      	bics	r3, r1
10000a00:	6013      	str	r3, [r2, #0]
10000a02:	6863      	ldr	r3, [r4, #4]
10000a04:	3301      	adds	r3, #1
10000a06:	6063      	str	r3, [r4, #4]
10000a08:	68a3      	ldr	r3, [r4, #8]
10000a0a:	3301      	adds	r3, #1
10000a0c:	60a3      	str	r3, [r4, #8]
10000a0e:	2015      	movs	r0, #21
10000a10:	9b00      	ldr	r3, [sp, #0]
10000a12:	220a      	movs	r2, #10
10000a14:	7c1b      	ldrb	r3, [r3, #16]
10000a16:	4d1d      	ldr	r5, [pc, #116]	; (10000a8c <periph_ext_adv_ind+0x244>)
10000a18:	b25b      	sxtb	r3, r3
10000a1a:	9300      	str	r3, [sp, #0]
10000a1c:	ab04      	add	r3, sp, #16
10000a1e:	1d99      	adds	r1, r3, #6
10000a20:	18c0      	adds	r0, r0, r3
10000a22:	47a8      	blx	r5
10000a24:	220f      	movs	r2, #15
10000a26:	0038      	movs	r0, r7
10000a28:	4350      	muls	r0, r2
10000a2a:	69a3      	ldr	r3, [r4, #24]
10000a2c:	ae08      	add	r6, sp, #32
10000a2e:	1818      	adds	r0, r3, r0
10000a30:	9b00      	ldr	r3, [sp, #0]
10000a32:	0031      	movs	r1, r6
10000a34:	9308      	str	r3, [sp, #32]
10000a36:	2301      	movs	r3, #1
10000a38:	7133      	strb	r3, [r6, #4]
10000a3a:	47a8      	blx	r5
10000a3c:	b00d      	add	sp, #52	; 0x34
10000a3e:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000a40:	003b      	movs	r3, r7
10000a42:	187f      	adds	r7, r7, r1
10000a44:	42be      	cmp	r6, r7
10000a46:	d800      	bhi.n	10000a4a <periph_ext_adv_ind+0x202>
10000a48:	1bbf      	subs	r7, r7, r6
10000a4a:	9a01      	ldr	r2, [sp, #4]
10000a4c:	42ba      	cmp	r2, r7
10000a4e:	d1a1      	bne.n	10000994 <periph_ext_adv_ind+0x14c>
10000a50:	429e      	cmp	r6, r3
10000a52:	d0b6      	beq.n	100009c2 <periph_ext_adv_ind+0x17a>
10000a54:	001f      	movs	r7, r3
10000a56:	e7c0      	b.n	100009da <periph_ext_adv_ind+0x192>
10000a58:	07c9      	lsls	r1, r1, #31
10000a5a:	d5d8      	bpl.n	10000a0e <periph_ext_adv_ind+0x1c6>
10000a5c:	6960      	ldr	r0, [r4, #20]
10000a5e:	00b9      	lsls	r1, r7, #2
10000a60:	500d      	str	r5, [r1, r0]
10000a62:	6921      	ldr	r1, [r4, #16]
10000a64:	188a      	adds	r2, r1, r2
10000a66:	2103      	movs	r1, #3
10000a68:	4099      	lsls	r1, r3
10000a6a:	6813      	ldr	r3, [r2, #0]
10000a6c:	438b      	bics	r3, r1
10000a6e:	6013      	str	r3, [r2, #0]
10000a70:	6863      	ldr	r3, [r4, #4]
10000a72:	3301      	adds	r3, #1
10000a74:	6063      	str	r3, [r4, #4]
10000a76:	e7ca      	b.n	10000a0e <periph_ext_adv_ind+0x1c6>
10000a78:	10001579 	.word	0x10001579
10000a7c:	00005859 	.word	0x00005859
10000a80:	10000075 	.word	0x10000075
10000a84:	20014b80 	.word	0x20014b80
10000a88:	20014b70 	.word	0x20014b70
10000a8c:	00005821 	.word	0x00005821
10000a90:	0002ee49 	.word	0x0002ee49
10000a94:	10000579 	.word	0x10000579

10000a98 <periph_set_adv_data>:
10000a98:	b5f0      	push	{r4, r5, r6, r7, lr}
10000a9a:	4b8b      	ldr	r3, [pc, #556]	; (10000cc8 <periph_set_adv_data+0x230>)
10000a9c:	b0ad      	sub	sp, #180	; 0xb4
10000a9e:	681f      	ldr	r7, [r3, #0]
10000aa0:	683b      	ldr	r3, [r7, #0]
10000aa2:	2b00      	cmp	r3, #0
10000aa4:	d105      	bne.n	10000ab2 <periph_set_adv_data+0x1a>
10000aa6:	4989      	ldr	r1, [pc, #548]	; (10000ccc <periph_set_adv_data+0x234>)
10000aa8:	4889      	ldr	r0, [pc, #548]	; (10000cd0 <periph_set_adv_data+0x238>)
10000aaa:	4b8a      	ldr	r3, [pc, #552]	; (10000cd4 <periph_set_adv_data+0x23c>)
10000aac:	4798      	blx	r3
10000aae:	b02d      	add	sp, #180	; 0xb4
10000ab0:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000ab2:	4b89      	ldr	r3, [pc, #548]	; (10000cd8 <periph_set_adv_data+0x240>)
10000ab4:	222d      	movs	r2, #45	; 0x2d
10000ab6:	2100      	movs	r1, #0
10000ab8:	a820      	add	r0, sp, #128	; 0x80
10000aba:	4798      	blx	r3
10000abc:	ab20      	add	r3, sp, #128	; 0x80
10000abe:	9313      	str	r3, [sp, #76]	; 0x4c
10000ac0:	9314      	str	r3, [sp, #80]	; 0x50
10000ac2:	2300      	movs	r3, #0
10000ac4:	9315      	str	r3, [sp, #84]	; 0x54
10000ac6:	2501      	movs	r5, #1
10000ac8:	683b      	ldr	r3, [r7, #0]
10000aca:	2600      	movs	r6, #0
10000acc:	9316      	str	r3, [sp, #88]	; 0x58
10000ace:	426d      	negs	r5, r5
10000ad0:	e035      	b.n	10000b3e <periph_set_adv_data+0xa6>
10000ad2:	211e      	movs	r1, #30
10000ad4:	0072      	lsls	r2, r6, #1
10000ad6:	400a      	ands	r2, r1
10000ad8:	1133      	asrs	r3, r6, #4
10000ada:	6939      	ldr	r1, [r7, #16]
10000adc:	009b      	lsls	r3, r3, #2
10000ade:	585b      	ldr	r3, [r3, r1]
10000ae0:	40d3      	lsrs	r3, r2
10000ae2:	2203      	movs	r2, #3
10000ae4:	4213      	tst	r3, r2
10000ae6:	d129      	bne.n	10000b3c <periph_set_adv_data+0xa4>
10000ae8:	320c      	adds	r2, #12
10000aea:	4372      	muls	r2, r6
10000aec:	69bc      	ldr	r4, [r7, #24]
10000aee:	18a3      	adds	r3, r4, r2
10000af0:	1c69      	adds	r1, r5, #1
10000af2:	d001      	beq.n	10000af8 <periph_set_adv_data+0x60>
10000af4:	220f      	movs	r2, #15
10000af6:	436a      	muls	r2, r5
10000af8:	18a4      	adds	r4, r4, r2
10000afa:	785a      	ldrb	r2, [r3, #1]
10000afc:	7818      	ldrb	r0, [r3, #0]
10000afe:	7899      	ldrb	r1, [r3, #2]
10000b00:	0212      	lsls	r2, r2, #8
10000b02:	4302      	orrs	r2, r0
10000b04:	0409      	lsls	r1, r1, #16
10000b06:	430a      	orrs	r2, r1
10000b08:	2104      	movs	r1, #4
10000b0a:	78d8      	ldrb	r0, [r3, #3]
10000b0c:	5659      	ldrsb	r1, [r3, r1]
10000b0e:	0600      	lsls	r0, r0, #24
10000b10:	4b72      	ldr	r3, [pc, #456]	; (10000cdc <periph_set_adv_data+0x244>)
10000b12:	4310      	orrs	r0, r2
10000b14:	4798      	blx	r3
10000b16:	2104      	movs	r1, #4
10000b18:	7863      	ldrb	r3, [r4, #1]
10000b1a:	9017      	str	r0, [sp, #92]	; 0x5c
10000b1c:	7820      	ldrb	r0, [r4, #0]
10000b1e:	78a2      	ldrb	r2, [r4, #2]
10000b20:	021b      	lsls	r3, r3, #8
10000b22:	4303      	orrs	r3, r0
10000b24:	78e0      	ldrb	r0, [r4, #3]
10000b26:	0412      	lsls	r2, r2, #16
10000b28:	4313      	orrs	r3, r2
10000b2a:	0600      	lsls	r0, r0, #24
10000b2c:	4318      	orrs	r0, r3
10000b2e:	5661      	ldrsb	r1, [r4, r1]
10000b30:	4b6a      	ldr	r3, [pc, #424]	; (10000cdc <periph_set_adv_data+0x244>)
10000b32:	4798      	blx	r3
10000b34:	9b17      	ldr	r3, [sp, #92]	; 0x5c
10000b36:	4283      	cmp	r3, r0
10000b38:	db00      	blt.n	10000b3c <periph_set_adv_data+0xa4>
10000b3a:	0035      	movs	r5, r6
10000b3c:	3601      	adds	r6, #1
10000b3e:	9b16      	ldr	r3, [sp, #88]	; 0x58
10000b40:	429e      	cmp	r6, r3
10000b42:	d1c6      	bne.n	10000ad2 <periph_set_adv_data+0x3a>
10000b44:	220f      	movs	r2, #15
10000b46:	1c6b      	adds	r3, r5, #1
10000b48:	d100      	bne.n	10000b4c <periph_set_adv_data+0xb4>
10000b4a:	e0a4      	b.n	10000c96 <periph_set_adv_data+0x1fe>
10000b4c:	0011      	movs	r1, r2
10000b4e:	4369      	muls	r1, r5
10000b50:	69bb      	ldr	r3, [r7, #24]
10000b52:	9814      	ldr	r0, [sp, #80]	; 0x50
10000b54:	1859      	adds	r1, r3, r1
10000b56:	4b62      	ldr	r3, [pc, #392]	; (10000ce0 <periph_set_adv_data+0x248>)
10000b58:	4798      	blx	r3
10000b5a:	683b      	ldr	r3, [r7, #0]
10000b5c:	429d      	cmp	r5, r3
10000b5e:	d003      	beq.n	10000b68 <periph_set_adv_data+0xd0>
10000b60:	0029      	movs	r1, r5
10000b62:	0038      	movs	r0, r7
10000b64:	4b5f      	ldr	r3, [pc, #380]	; (10000ce4 <periph_set_adv_data+0x24c>)
10000b66:	4798      	blx	r3
10000b68:	9b15      	ldr	r3, [sp, #84]	; 0x54
10000b6a:	3301      	adds	r3, #1
10000b6c:	9315      	str	r3, [sp, #84]	; 0x54
10000b6e:	9b14      	ldr	r3, [sp, #80]	; 0x50
10000b70:	330f      	adds	r3, #15
10000b72:	9314      	str	r3, [sp, #80]	; 0x50
10000b74:	9b15      	ldr	r3, [sp, #84]	; 0x54
10000b76:	2b03      	cmp	r3, #3
10000b78:	d1a5      	bne.n	10000ac6 <periph_set_adv_data+0x2e>
10000b7a:	2400      	movs	r4, #0
10000b7c:	230f      	movs	r3, #15
10000b7e:	4363      	muls	r3, r4
10000b80:	aa20      	add	r2, sp, #128	; 0x80
10000b82:	5c98      	ldrb	r0, [r3, r2]
10000b84:	18d3      	adds	r3, r2, r3
10000b86:	785a      	ldrb	r2, [r3, #1]
10000b88:	7899      	ldrb	r1, [r3, #2]
10000b8a:	0212      	lsls	r2, r2, #8
10000b8c:	4302      	orrs	r2, r0
10000b8e:	0409      	lsls	r1, r1, #16
10000b90:	430a      	orrs	r2, r1
10000b92:	2104      	movs	r1, #4
10000b94:	78d8      	ldrb	r0, [r3, #3]
10000b96:	9b13      	ldr	r3, [sp, #76]	; 0x4c
10000b98:	0600      	lsls	r0, r0, #24
10000b9a:	5659      	ldrsb	r1, [r3, r1]
10000b9c:	4310      	orrs	r0, r2
10000b9e:	4b4f      	ldr	r3, [pc, #316]	; (10000cdc <periph_set_adv_data+0x244>)
10000ba0:	4798      	blx	r3
10000ba2:	b243      	sxtb	r3, r0
10000ba4:	2049      	movs	r0, #73	; 0x49
10000ba6:	9913      	ldr	r1, [sp, #76]	; 0x4c
10000ba8:	9314      	str	r3, [sp, #80]	; 0x50
10000baa:	ab06      	add	r3, sp, #24
10000bac:	2206      	movs	r2, #6
10000bae:	4d4c      	ldr	r5, [pc, #304]	; (10000ce0 <periph_set_adv_data+0x248>)
10000bb0:	3108      	adds	r1, #8
10000bb2:	18c0      	adds	r0, r0, r3
10000bb4:	47a8      	blx	r5
10000bb6:	2007      	movs	r0, #7
10000bb8:	4360      	muls	r0, r4
10000bba:	9b14      	ldr	r3, [sp, #80]	; 0x50
10000bbc:	ae18      	add	r6, sp, #96	; 0x60
10000bbe:	7033      	strb	r3, [r6, #0]
10000bc0:	ab1a      	add	r3, sp, #104	; 0x68
10000bc2:	18c0      	adds	r0, r0, r3
10000bc4:	2207      	movs	r2, #7
10000bc6:	0031      	movs	r1, r6
10000bc8:	47a8      	blx	r5
10000bca:	9b13      	ldr	r3, [sp, #76]	; 0x4c
10000bcc:	3401      	adds	r4, #1
10000bce:	330f      	adds	r3, #15
10000bd0:	9313      	str	r3, [sp, #76]	; 0x4c
10000bd2:	2c03      	cmp	r4, #3
10000bd4:	d1d2      	bne.n	10000b7c <periph_set_adv_data+0xe4>
10000bd6:	2600      	movs	r6, #0
10000bd8:	683b      	ldr	r3, [r7, #0]
10000bda:	42b3      	cmp	r3, r6
10000bdc:	d164      	bne.n	10000ca8 <periph_set_adv_data+0x210>
10000bde:	4b42      	ldr	r3, [pc, #264]	; (10000ce8 <periph_set_adv_data+0x250>)
10000be0:	2000      	movs	r0, #0
10000be2:	4798      	blx	r3
10000be4:	4b41      	ldr	r3, [pc, #260]	; (10000cec <periph_set_adv_data+0x254>)
10000be6:	6842      	ldr	r2, [r0, #4]
10000be8:	781b      	ldrb	r3, [r3, #0]
10000bea:	4c41      	ldr	r4, [pc, #260]	; (10000cf0 <periph_set_adv_data+0x258>)
10000bec:	7093      	strb	r3, [r2, #2]
10000bee:	6020      	str	r0, [r4, #0]
10000bf0:	6840      	ldr	r0, [r0, #4]
10000bf2:	2215      	movs	r2, #21
10000bf4:	a91a      	add	r1, sp, #104	; 0x68
10000bf6:	3004      	adds	r0, #4
10000bf8:	47a8      	blx	r5
10000bfa:	4e34      	ldr	r6, [pc, #208]	; (10000ccc <periph_set_adv_data+0x234>)
10000bfc:	4d35      	ldr	r5, [pc, #212]	; (10000cd4 <periph_set_adv_data+0x23c>)
10000bfe:	2215      	movs	r2, #21
10000c00:	0031      	movs	r1, r6
10000c02:	483c      	ldr	r0, [pc, #240]	; (10000cf4 <periph_set_adv_data+0x25c>)
10000c04:	47a8      	blx	r5
10000c06:	6823      	ldr	r3, [r4, #0]
10000c08:	6859      	ldr	r1, [r3, #4]
10000c0a:	7cc8      	ldrb	r0, [r1, #19]
10000c0c:	784b      	ldrb	r3, [r1, #1]
10000c0e:	780a      	ldrb	r2, [r1, #0]
10000c10:	9011      	str	r0, [sp, #68]	; 0x44
10000c12:	7c88      	ldrb	r0, [r1, #18]
10000c14:	9010      	str	r0, [sp, #64]	; 0x40
10000c16:	7c48      	ldrb	r0, [r1, #17]
10000c18:	900f      	str	r0, [sp, #60]	; 0x3c
10000c1a:	7c08      	ldrb	r0, [r1, #16]
10000c1c:	900e      	str	r0, [sp, #56]	; 0x38
10000c1e:	7bc8      	ldrb	r0, [r1, #15]
10000c20:	900d      	str	r0, [sp, #52]	; 0x34
10000c22:	7b88      	ldrb	r0, [r1, #14]
10000c24:	900c      	str	r0, [sp, #48]	; 0x30
10000c26:	7b48      	ldrb	r0, [r1, #13]
10000c28:	900b      	str	r0, [sp, #44]	; 0x2c
10000c2a:	7b08      	ldrb	r0, [r1, #12]
10000c2c:	900a      	str	r0, [sp, #40]	; 0x28
10000c2e:	7ac8      	ldrb	r0, [r1, #11]
10000c30:	9009      	str	r0, [sp, #36]	; 0x24
10000c32:	7a88      	ldrb	r0, [r1, #10]
10000c34:	9008      	str	r0, [sp, #32]
10000c36:	7a48      	ldrb	r0, [r1, #9]
10000c38:	9007      	str	r0, [sp, #28]
10000c3a:	7a08      	ldrb	r0, [r1, #8]
10000c3c:	9006      	str	r0, [sp, #24]
10000c3e:	79c8      	ldrb	r0, [r1, #7]
10000c40:	9005      	str	r0, [sp, #20]
10000c42:	7988      	ldrb	r0, [r1, #6]
10000c44:	9004      	str	r0, [sp, #16]
10000c46:	7948      	ldrb	r0, [r1, #5]
10000c48:	9003      	str	r0, [sp, #12]
10000c4a:	7908      	ldrb	r0, [r1, #4]
10000c4c:	9002      	str	r0, [sp, #8]
10000c4e:	78c8      	ldrb	r0, [r1, #3]
10000c50:	9001      	str	r0, [sp, #4]
10000c52:	7889      	ldrb	r1, [r1, #2]
10000c54:	4828      	ldr	r0, [pc, #160]	; (10000cf8 <periph_set_adv_data+0x260>)
10000c56:	9100      	str	r1, [sp, #0]
10000c58:	0031      	movs	r1, r6
10000c5a:	47a8      	blx	r5
10000c5c:	2366      	movs	r3, #102	; 0x66
10000c5e:	aa06      	add	r2, sp, #24
10000c60:	189b      	adds	r3, r3, r2
10000c62:	9301      	str	r3, [sp, #4]
10000c64:	235f      	movs	r3, #95	; 0x5f
10000c66:	189b      	adds	r3, r3, r2
10000c68:	2251      	movs	r2, #81	; 0x51
10000c6a:	a906      	add	r1, sp, #24
10000c6c:	1852      	adds	r2, r2, r1
10000c6e:	9300      	str	r3, [sp, #0]
10000c70:	0031      	movs	r1, r6
10000c72:	ab1c      	add	r3, sp, #112	; 0x70
10000c74:	4821      	ldr	r0, [pc, #132]	; (10000cfc <periph_set_adv_data+0x264>)
10000c76:	47a8      	blx	r5
10000c78:	4b21      	ldr	r3, [pc, #132]	; (10000d00 <periph_set_adv_data+0x268>)
10000c7a:	6821      	ldr	r1, [r4, #0]
10000c7c:	7818      	ldrb	r0, [r3, #0]
10000c7e:	4b21      	ldr	r3, [pc, #132]	; (10000d04 <periph_set_adv_data+0x26c>)
10000c80:	4798      	blx	r3
10000c82:	1e03      	subs	r3, r0, #0
10000c84:	d003      	beq.n	10000c8e <periph_set_adv_data+0x1f6>
10000c86:	0031      	movs	r1, r6
10000c88:	4a1f      	ldr	r2, [pc, #124]	; (10000d08 <periph_set_adv_data+0x270>)
10000c8a:	4820      	ldr	r0, [pc, #128]	; (10000d0c <periph_set_adv_data+0x274>)
10000c8c:	47a8      	blx	r5
10000c8e:	2200      	movs	r2, #0
10000c90:	4b1f      	ldr	r3, [pc, #124]	; (10000d10 <periph_set_adv_data+0x278>)
10000c92:	701a      	strb	r2, [r3, #0]
10000c94:	e70b      	b.n	10000aae <periph_set_adv_data+0x16>
10000c96:	491f      	ldr	r1, [pc, #124]	; (10000d14 <periph_set_adv_data+0x27c>)
10000c98:	4c11      	ldr	r4, [pc, #68]	; (10000ce0 <periph_set_adv_data+0x248>)
10000c9a:	a81a      	add	r0, sp, #104	; 0x68
10000c9c:	47a0      	blx	r4
10000c9e:	220f      	movs	r2, #15
10000ca0:	9814      	ldr	r0, [sp, #80]	; 0x50
10000ca2:	a91a      	add	r1, sp, #104	; 0x68
10000ca4:	47a0      	blx	r4
10000ca6:	e75f      	b.n	10000b68 <periph_set_adv_data+0xd0>
10000ca8:	211e      	movs	r1, #30
10000caa:	0072      	lsls	r2, r6, #1
10000cac:	400a      	ands	r2, r1
10000cae:	1133      	asrs	r3, r6, #4
10000cb0:	6939      	ldr	r1, [r7, #16]
10000cb2:	009b      	lsls	r3, r3, #2
10000cb4:	585b      	ldr	r3, [r3, r1]
10000cb6:	40d3      	lsrs	r3, r2
10000cb8:	4223      	tst	r3, r4
10000cba:	d103      	bne.n	10000cc4 <periph_set_adv_data+0x22c>
10000cbc:	0031      	movs	r1, r6
10000cbe:	0038      	movs	r0, r7
10000cc0:	4b08      	ldr	r3, [pc, #32]	; (10000ce4 <periph_set_adv_data+0x24c>)
10000cc2:	4798      	blx	r3
10000cc4:	3601      	adds	r6, #1
10000cc6:	e787      	b.n	10000bd8 <periph_set_adv_data+0x140>
10000cc8:	20014b70 	.word	0x20014b70
10000ccc:	100054ed 	.word	0x100054ed
10000cd0:	100053ca 	.word	0x100053ca
10000cd4:	000066b1 	.word	0x000066b1
10000cd8:	00005859 	.word	0x00005859
10000cdc:	0002ee51 	.word	0x0002ee51
10000ce0:	00005821 	.word	0x00005821
10000ce4:	1000075d 	.word	0x1000075d
10000ce8:	10002ec1 	.word	0x10002ec1
10000cec:	20014b68 	.word	0x20014b68
10000cf0:	20014b64 	.word	0x20014b64
10000cf4:	100053f0 	.word	0x100053f0
10000cf8:	10005410 	.word	0x10005410
10000cfc:	10005463 	.word	0x10005463
10000d00:	20014b60 	.word	0x20014b60
10000d04:	10002b4d 	.word	0x10002b4d
10000d08:	100055ef 	.word	0x100055ef
10000d0c:	10005499 	.word	0x10005499
10000d10:	20014b80 	.word	0x20014b80
10000d14:	100054de 	.word	0x100054de

10000d18 <main>:
10000d18:	b510      	push	{r4, lr}
10000d1a:	211c      	movs	r1, #28
10000d1c:	4b06      	ldr	r3, [pc, #24]	; (10000d38 <main+0x20>)
10000d1e:	2001      	movs	r0, #1
10000d20:	4798      	blx	r3
10000d22:	4b06      	ldr	r3, [pc, #24]	; (10000d3c <main+0x24>)
10000d24:	4906      	ldr	r1, [pc, #24]	; (10000d40 <main+0x28>)
10000d26:	6018      	str	r0, [r3, #0]
10000d28:	4806      	ldr	r0, [pc, #24]	; (10000d44 <main+0x2c>)
10000d2a:	4b07      	ldr	r3, [pc, #28]	; (10000d48 <main+0x30>)
10000d2c:	4798      	blx	r3
10000d2e:	4807      	ldr	r0, [pc, #28]	; (10000d4c <main+0x34>)
10000d30:	4b07      	ldr	r3, [pc, #28]	; (10000d50 <main+0x38>)
10000d32:	4798      	blx	r3
10000d34:	2000      	movs	r0, #0
10000d36:	bd10      	pop	{r4, pc}
10000d38:	0002f53d 	.word	0x0002f53d
10000d3c:	20014b70 	.word	0x20014b70
10000d40:	20014008 	.word	0x20014008
10000d44:	20001290 	.word	0x20001290
10000d48:	0000671d 	.word	0x0000671d
10000d4c:	100054cd 	.word	0x100054cd
10000d50:	000066b1 	.word	0x000066b1

10000d54 <user_debug_constructor>:
10000d54:	b510      	push	{r4, lr}
10000d56:	4b03      	ldr	r3, [pc, #12]	; (10000d64 <user_debug_constructor+0x10>)
10000d58:	4a03      	ldr	r2, [pc, #12]	; (10000d68 <user_debug_constructor+0x14>)
10000d5a:	601a      	str	r2, [r3, #0]
10000d5c:	4b03      	ldr	r3, [pc, #12]	; (10000d6c <user_debug_constructor+0x18>)
10000d5e:	4798      	blx	r3
10000d60:	bd10      	pop	{r4, pc}
10000d62:	46c0      	nop			; (mov r8, r8)
10000d64:	20000004 	.word	0x20000004
10000d68:	10000d75 	.word	0x10000d75
10000d6c:	00005785 	.word	0x00005785

10000d70 <loop_forever>:
10000d70:	bf30      	wfi
10000d72:	e7fd      	b.n	10000d70 <loop_forever>

10000d74 <HardFault_Handler>:
10000d74:	4b05      	ldr	r3, [pc, #20]	; (10000d8c <MSP_stacking+0x8>)
10000d76:	2004      	movs	r0, #4
10000d78:	4671      	mov	r1, lr
10000d7a:	4208      	tst	r0, r1
10000d7c:	d002      	beq.n	10000d84 <MSP_stacking>
10000d7e:	f3ef 8009 	mrs	r0, PSP
10000d82:	4718      	bx	r3

10000d84 <MSP_stacking>:
10000d84:	f3ef 8008 	mrs	r0, MSP
10000d88:	4718      	bx	r3
10000d8a:	46c0      	nop			; (mov r8, r8)
10000d8c:	10000d91 	.word	0x10000d91

10000d90 <HardFault_Handler_c>:
10000d90:	b537      	push	{r0, r1, r2, r4, r5, lr}
10000d92:	0004      	movs	r4, r0
10000d94:	4b11      	ldr	r3, [pc, #68]	; (10000ddc <HardFault_Handler_c+0x4c>)
10000d96:	4812      	ldr	r0, [pc, #72]	; (10000de0 <HardFault_Handler_c+0x50>)
10000d98:	4798      	blx	r3
10000d9a:	68e3      	ldr	r3, [r4, #12]
10000d9c:	4d11      	ldr	r5, [pc, #68]	; (10000de4 <HardFault_Handler_c+0x54>)
10000d9e:	6862      	ldr	r2, [r4, #4]
10000da0:	6821      	ldr	r1, [r4, #0]
10000da2:	9300      	str	r3, [sp, #0]
10000da4:	4810      	ldr	r0, [pc, #64]	; (10000de8 <HardFault_Handler_c+0x58>)
10000da6:	68a3      	ldr	r3, [r4, #8]
10000da8:	47a8      	blx	r5
10000daa:	69e3      	ldr	r3, [r4, #28]
10000dac:	6962      	ldr	r2, [r4, #20]
10000dae:	9300      	str	r3, [sp, #0]
10000db0:	6921      	ldr	r1, [r4, #16]
10000db2:	69a3      	ldr	r3, [r4, #24]
10000db4:	480d      	ldr	r0, [pc, #52]	; (10000dec <HardFault_Handler_c+0x5c>)
10000db6:	47a8      	blx	r5
10000db8:	4d0d      	ldr	r5, [pc, #52]	; (10000df0 <HardFault_Handler_c+0x60>)
10000dba:	2d00      	cmp	r5, #0
10000dbc:	d009      	beq.n	10000dd2 <HardFault_Handler_c+0x42>
10000dbe:	0022      	movs	r2, r4
10000dc0:	69e3      	ldr	r3, [r4, #28]
10000dc2:	3220      	adds	r2, #32
10000dc4:	059b      	lsls	r3, r3, #22
10000dc6:	d500      	bpl.n	10000dca <HardFault_Handler_c+0x3a>
10000dc8:	3204      	adds	r2, #4
10000dca:	2300      	movs	r3, #0
10000dcc:	6961      	ldr	r1, [r4, #20]
10000dce:	69a0      	ldr	r0, [r4, #24]
10000dd0:	47a8      	blx	r5
10000dd2:	4b08      	ldr	r3, [pc, #32]	; (10000df4 <HardFault_Handler_c+0x64>)
10000dd4:	681b      	ldr	r3, [r3, #0]
10000dd6:	4798      	blx	r3
10000dd8:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
10000dda:	46c0      	nop			; (mov r8, r8)
10000ddc:	0002fdb1 	.word	0x0002fdb1
10000de0:	100056b0 	.word	0x100056b0
10000de4:	0002fccd 	.word	0x0002fccd
10000de8:	100056bc 	.word	0x100056bc
10000dec:	100056eb 	.word	0x100056eb
10000df0:	100023d5 	.word	0x100023d5
10000df4:	20014010 	.word	0x20014010

10000df8 <install_HFH>:
10000df8:	4b01      	ldr	r3, [pc, #4]	; (10000e00 <install_HFH+0x8>)
10000dfa:	4a02      	ldr	r2, [pc, #8]	; (10000e04 <install_HFH+0xc>)
10000dfc:	601a      	str	r2, [r3, #0]
10000dfe:	4770      	bx	lr
10000e00:	20000004 	.word	0x20000004
10000e04:	10000d75 	.word	0x10000d75

10000e08 <ROM_errata_10_appm_init>:
10000e08:	b573      	push	{r0, r1, r4, r5, r6, lr}
10000e0a:	4c0f      	ldr	r4, [pc, #60]	; (10000e48 <ROM_errata_10_appm_init+0x40>)
10000e0c:	8963      	ldrh	r3, [r4, #10]
10000e0e:	2b1c      	cmp	r3, #28
10000e10:	d004      	beq.n	10000e1c <ROM_errata_10_appm_init+0x14>
10000e12:	2232      	movs	r2, #50	; 0x32
10000e14:	490d      	ldr	r1, [pc, #52]	; (10000e4c <ROM_errata_10_appm_init+0x44>)
10000e16:	480e      	ldr	r0, [pc, #56]	; (10000e50 <ROM_errata_10_appm_init+0x48>)
10000e18:	4b0e      	ldr	r3, [pc, #56]	; (10000e54 <ROM_errata_10_appm_init+0x4c>)
10000e1a:	4798      	blx	r3
10000e1c:	4e0e      	ldr	r6, [pc, #56]	; (10000e58 <ROM_errata_10_appm_init+0x50>)
10000e1e:	4d0f      	ldr	r5, [pc, #60]	; (10000e5c <ROM_errata_10_appm_init+0x54>)
10000e20:	6833      	ldr	r3, [r6, #0]
10000e22:	0028      	movs	r0, r5
10000e24:	6819      	ldr	r1, [r3, #0]
10000e26:	22e0      	movs	r2, #224	; 0xe0
10000e28:	4b0d      	ldr	r3, [pc, #52]	; (10000e60 <ROM_errata_10_appm_init+0x58>)
10000e2a:	4798      	blx	r3
10000e2c:	4b0d      	ldr	r3, [pc, #52]	; (10000e64 <ROM_errata_10_appm_init+0x5c>)
10000e2e:	6862      	ldr	r2, [r4, #4]
10000e30:	66eb      	str	r3, [r5, #108]	; 0x6c
10000e32:	4b0d      	ldr	r3, [pc, #52]	; (10000e68 <ROM_errata_10_appm_init+0x60>)
10000e34:	9201      	str	r2, [sp, #4]
10000e36:	605a      	str	r2, [r3, #4]
10000e38:	8922      	ldrh	r2, [r4, #8]
10000e3a:	601d      	str	r5, [r3, #0]
10000e3c:	811a      	strh	r2, [r3, #8]
10000e3e:	221c      	movs	r2, #28
10000e40:	2001      	movs	r0, #1
10000e42:	815a      	strh	r2, [r3, #10]
10000e44:	6033      	str	r3, [r6, #0]
10000e46:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10000e48:	0003d13c 	.word	0x0003d13c
10000e4c:	1000571a 	.word	0x1000571a
10000e50:	1000572a 	.word	0x1000572a
10000e54:	00006609 	.word	0x00006609
10000e58:	20000ae4 	.word	0x20000ae4
10000e5c:	20014b90 	.word	0x20014b90
10000e60:	00005821 	.word	0x00005821
10000e64:	20014015 	.word	0x20014015
10000e68:	20014b84 	.word	0x20014b84

10000e6c <ROM_errata_10_constructor>:
10000e6c:	b510      	push	{r4, lr}
10000e6e:	4902      	ldr	r1, [pc, #8]	; (10000e78 <ROM_errata_10_constructor+0xc>)
10000e70:	4802      	ldr	r0, [pc, #8]	; (10000e7c <ROM_errata_10_constructor+0x10>)
10000e72:	4b03      	ldr	r3, [pc, #12]	; (10000e80 <ROM_errata_10_constructor+0x14>)
10000e74:	4798      	blx	r3
10000e76:	bd10      	pop	{r4, pc}
10000e78:	20014048 	.word	0x20014048
10000e7c:	20001290 	.word	0x20001290
10000e80:	0000671d 	.word	0x0000671d

10000e84 <lld_dynamic_rf_mode_control>:
10000e84:	b570      	push	{r4, r5, r6, lr}
10000e86:	4b0c      	ldr	r3, [pc, #48]	; (10000eb8 <lld_dynamic_rf_mode_control+0x34>)
10000e88:	0004      	movs	r4, r0
10000e8a:	4798      	blx	r3
10000e8c:	4b0b      	ldr	r3, [pc, #44]	; (10000ebc <lld_dynamic_rf_mode_control+0x38>)
10000e8e:	781d      	ldrb	r5, [r3, #0]
10000e90:	2c00      	cmp	r4, #0
10000e92:	d007      	beq.n	10000ea4 <lld_dynamic_rf_mode_control+0x20>
10000e94:	2201      	movs	r2, #1
10000e96:	701a      	strb	r2, [r3, #0]
10000e98:	002a      	movs	r2, r5
10000e9a:	0021      	movs	r1, r4
10000e9c:	4b08      	ldr	r3, [pc, #32]	; (10000ec0 <lld_dynamic_rf_mode_control+0x3c>)
10000e9e:	4809      	ldr	r0, [pc, #36]	; (10000ec4 <lld_dynamic_rf_mode_control+0x40>)
10000ea0:	4798      	blx	r3
10000ea2:	bd70      	pop	{r4, r5, r6, pc}
10000ea4:	701c      	strb	r4, [r3, #0]
10000ea6:	4b08      	ldr	r3, [pc, #32]	; (10000ec8 <lld_dynamic_rf_mode_control+0x44>)
10000ea8:	2203      	movs	r2, #3
10000eaa:	601c      	str	r4, [r3, #0]
10000eac:	0021      	movs	r1, r4
10000eae:	4b07      	ldr	r3, [pc, #28]	; (10000ecc <lld_dynamic_rf_mode_control+0x48>)
10000eb0:	4807      	ldr	r0, [pc, #28]	; (10000ed0 <lld_dynamic_rf_mode_control+0x4c>)
10000eb2:	4798      	blx	r3
10000eb4:	e7f0      	b.n	10000e98 <lld_dynamic_rf_mode_control+0x14>
10000eb6:	46c0      	nop			; (mov r8, r8)
10000eb8:	20014295 	.word	0x20014295
10000ebc:	20014c73 	.word	0x20014c73
10000ec0:	000066b1 	.word	0x000066b1
10000ec4:	10005766 	.word	0x10005766
10000ec8:	20014c78 	.word	0x20014c78
10000ecc:	00005859 	.word	0x00005859
10000ed0:	20014c70 	.word	0x20014c70

10000ed4 <enable_ROM_errata_14>:
10000ed4:	b510      	push	{r4, lr}
10000ed6:	4804      	ldr	r0, [pc, #16]	; (10000ee8 <enable_ROM_errata_14+0x14>)
10000ed8:	4b04      	ldr	r3, [pc, #16]	; (10000eec <enable_ROM_errata_14+0x18>)
10000eda:	4798      	blx	r3
10000edc:	4904      	ldr	r1, [pc, #16]	; (10000ef0 <enable_ROM_errata_14+0x1c>)
10000ede:	4805      	ldr	r0, [pc, #20]	; (10000ef4 <enable_ROM_errata_14+0x20>)
10000ee0:	4b05      	ldr	r3, [pc, #20]	; (10000ef8 <enable_ROM_errata_14+0x24>)
10000ee2:	4798      	blx	r3
10000ee4:	bd10      	pop	{r4, pc}
10000ee6:	46c0      	nop			; (mov r8, r8)
10000ee8:	10000e85 	.word	0x10000e85
10000eec:	100017dd 	.word	0x100017dd
10000ef0:	20014194 	.word	0x20014194
10000ef4:	20001294 	.word	0x20001294
10000ef8:	00006981 	.word	0x00006981

10000efc <ROM_errata_16_appm_init>:
10000efc:	b573      	push	{r0, r1, r4, r5, r6, lr}
10000efe:	4c0f      	ldr	r4, [pc, #60]	; (10000f3c <ROM_errata_16_appm_init+0x40>)
10000f00:	8963      	ldrh	r3, [r4, #10]
10000f02:	2b12      	cmp	r3, #18
10000f04:	d004      	beq.n	10000f10 <ROM_errata_16_appm_init+0x14>
10000f06:	223c      	movs	r2, #60	; 0x3c
10000f08:	490d      	ldr	r1, [pc, #52]	; (10000f40 <ROM_errata_16_appm_init+0x44>)
10000f0a:	480e      	ldr	r0, [pc, #56]	; (10000f44 <ROM_errata_16_appm_init+0x48>)
10000f0c:	4b0e      	ldr	r3, [pc, #56]	; (10000f48 <ROM_errata_16_appm_init+0x4c>)
10000f0e:	4798      	blx	r3
10000f10:	4e0e      	ldr	r6, [pc, #56]	; (10000f4c <ROM_errata_16_appm_init+0x50>)
10000f12:	4d0f      	ldr	r5, [pc, #60]	; (10000f50 <ROM_errata_16_appm_init+0x54>)
10000f14:	6833      	ldr	r3, [r6, #0]
10000f16:	0028      	movs	r0, r5
10000f18:	6819      	ldr	r1, [r3, #0]
10000f1a:	2290      	movs	r2, #144	; 0x90
10000f1c:	4b0d      	ldr	r3, [pc, #52]	; (10000f54 <ROM_errata_16_appm_init+0x58>)
10000f1e:	4798      	blx	r3
10000f20:	4b0d      	ldr	r3, [pc, #52]	; (10000f58 <ROM_errata_16_appm_init+0x5c>)
10000f22:	6862      	ldr	r2, [r4, #4]
10000f24:	66eb      	str	r3, [r5, #108]	; 0x6c
10000f26:	4b0d      	ldr	r3, [pc, #52]	; (10000f5c <ROM_errata_16_appm_init+0x60>)
10000f28:	9201      	str	r2, [sp, #4]
10000f2a:	605a      	str	r2, [r3, #4]
10000f2c:	8922      	ldrh	r2, [r4, #8]
10000f2e:	601d      	str	r5, [r3, #0]
10000f30:	811a      	strh	r2, [r3, #8]
10000f32:	2212      	movs	r2, #18
10000f34:	2001      	movs	r0, #1
10000f36:	815a      	strh	r2, [r3, #10]
10000f38:	6033      	str	r3, [r6, #0]
10000f3a:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10000f3c:	0003cd88 	.word	0x0003cd88
10000f40:	10005782 	.word	0x10005782
10000f44:	10005792 	.word	0x10005792
10000f48:	00006609 	.word	0x00006609
10000f4c:	20000ae0 	.word	0x20000ae0
10000f50:	20014c88 	.word	0x20014c88
10000f54:	00005821 	.word	0x00005821
10000f58:	2001419d 	.word	0x2001419d
10000f5c:	20014c7c 	.word	0x20014c7c

10000f60 <ROM_errata_16_constructor>:
10000f60:	b510      	push	{r4, lr}
10000f62:	4902      	ldr	r1, [pc, #8]	; (10000f6c <ROM_errata_16_constructor+0xc>)
10000f64:	4802      	ldr	r0, [pc, #8]	; (10000f70 <ROM_errata_16_constructor+0x10>)
10000f66:	4b03      	ldr	r3, [pc, #12]	; (10000f74 <ROM_errata_16_constructor+0x14>)
10000f68:	4798      	blx	r3
10000f6a:	bd10      	pop	{r4, pc}
10000f6c:	200141cc 	.word	0x200141cc
10000f70:	20001290 	.word	0x20001290
10000f74:	0000671d 	.word	0x0000671d

10000f78 <sw_timer_appm_init>:
10000f78:	b510      	push	{r4, lr}
10000f7a:	2017      	movs	r0, #23
10000f7c:	4902      	ldr	r1, [pc, #8]	; (10000f88 <sw_timer_appm_init+0x10>)
10000f7e:	4b03      	ldr	r3, [pc, #12]	; (10000f8c <sw_timer_appm_init+0x14>)
10000f80:	4798      	blx	r3
10000f82:	2001      	movs	r0, #1
10000f84:	bd10      	pop	{r4, pc}
10000f86:	46c0      	nop			; (mov r8, r8)
10000f88:	100058ac 	.word	0x100058ac
10000f8c:	00001775 	.word	0x00001775

10000f90 <sw_timer_msg_handler>:
10000f90:	b510      	push	{r4, lr}
10000f92:	0a01      	lsrs	r1, r0, #8
10000f94:	2964      	cmp	r1, #100	; 0x64
10000f96:	d006      	beq.n	10000fa6 <sw_timer_msg_handler+0x16>
10000f98:	2913      	cmp	r1, #19
10000f9a:	d002      	beq.n	10000fa2 <sw_timer_msg_handler+0x12>
10000f9c:	480c      	ldr	r0, [pc, #48]	; (10000fd0 <sw_timer_msg_handler+0x40>)
10000f9e:	4c0d      	ldr	r4, [pc, #52]	; (10000fd4 <sw_timer_msg_handler+0x44>)
10000fa0:	47a0      	blx	r4
10000fa2:	2000      	movs	r0, #0
10000fa4:	bd10      	pop	{r4, pc}
10000fa6:	b2c0      	uxtb	r0, r0
10000fa8:	2807      	cmp	r0, #7
10000faa:	d904      	bls.n	10000fb6 <sw_timer_msg_handler+0x26>
10000fac:	0001      	movs	r1, r0
10000fae:	480a      	ldr	r0, [pc, #40]	; (10000fd8 <sw_timer_msg_handler+0x48>)
10000fb0:	4b08      	ldr	r3, [pc, #32]	; (10000fd4 <sw_timer_msg_handler+0x44>)
10000fb2:	4798      	blx	r3
10000fb4:	e7f5      	b.n	10000fa2 <sw_timer_msg_handler+0x12>
10000fb6:	220c      	movs	r2, #12
10000fb8:	4342      	muls	r2, r0
10000fba:	4b08      	ldr	r3, [pc, #32]	; (10000fdc <sw_timer_msg_handler+0x4c>)
10000fbc:	58d4      	ldr	r4, [r2, r3]
10000fbe:	2c00      	cmp	r4, #0
10000fc0:	d102      	bne.n	10000fc8 <sw_timer_msg_handler+0x38>
10000fc2:	0001      	movs	r1, r0
10000fc4:	4806      	ldr	r0, [pc, #24]	; (10000fe0 <sw_timer_msg_handler+0x50>)
10000fc6:	e7f3      	b.n	10000fb0 <sw_timer_msg_handler+0x20>
10000fc8:	189b      	adds	r3, r3, r2
10000fca:	6859      	ldr	r1, [r3, #4]
10000fcc:	47a0      	blx	r4
10000fce:	e7e8      	b.n	10000fa2 <sw_timer_msg_handler+0x12>
10000fd0:	100057ce 	.word	0x100057ce
10000fd4:	000066b1 	.word	0x000066b1
10000fd8:	100057fc 	.word	0x100057fc
10000fdc:	20014d20 	.word	0x20014d20
10000fe0:	1000581f 	.word	0x1000581f

10000fe4 <sw_timer_init_constructor>:
10000fe4:	b570      	push	{r4, r5, r6, lr}
10000fe6:	4c0e      	ldr	r4, [pc, #56]	; (10001020 <sw_timer_init_constructor+0x3c>)
10000fe8:	6823      	ldr	r3, [r4, #0]
10000fea:	2b00      	cmp	r3, #0
10000fec:	d004      	beq.n	10000ff8 <sw_timer_init_constructor+0x14>
10000fee:	2269      	movs	r2, #105	; 0x69
10000ff0:	490c      	ldr	r1, [pc, #48]	; (10001024 <sw_timer_init_constructor+0x40>)
10000ff2:	480d      	ldr	r0, [pc, #52]	; (10001028 <sw_timer_init_constructor+0x44>)
10000ff4:	4b0d      	ldr	r3, [pc, #52]	; (1000102c <sw_timer_init_constructor+0x48>)
10000ff6:	4798      	blx	r3
10000ff8:	490d      	ldr	r1, [pc, #52]	; (10001030 <sw_timer_init_constructor+0x4c>)
10000ffa:	2208      	movs	r2, #8
10000ffc:	000b      	movs	r3, r1
10000ffe:	6820      	ldr	r0, [r4, #0]
10001000:	3354      	adds	r3, #84	; 0x54
10001002:	001d      	movs	r5, r3
10001004:	3a01      	subs	r2, #1
10001006:	6098      	str	r0, [r3, #8]
10001008:	3d0c      	subs	r5, #12
1000100a:	0018      	movs	r0, r3
1000100c:	2a00      	cmp	r2, #0
1000100e:	d105      	bne.n	1000101c <sw_timer_init_constructor+0x38>
10001010:	6021      	str	r1, [r4, #0]
10001012:	4808      	ldr	r0, [pc, #32]	; (10001034 <sw_timer_init_constructor+0x50>)
10001014:	4908      	ldr	r1, [pc, #32]	; (10001038 <sw_timer_init_constructor+0x54>)
10001016:	4b09      	ldr	r3, [pc, #36]	; (1000103c <sw_timer_init_constructor+0x58>)
10001018:	4798      	blx	r3
1000101a:	bd70      	pop	{r4, r5, r6, pc}
1000101c:	002b      	movs	r3, r5
1000101e:	e7f0      	b.n	10001002 <sw_timer_init_constructor+0x1e>
10001020:	20014d18 	.word	0x20014d18
10001024:	10005843 	.word	0x10005843
10001028:	1000584e 	.word	0x1000584e
1000102c:	00006609 	.word	0x00006609
10001030:	20014d20 	.word	0x20014d20
10001034:	20001290 	.word	0x20001290
10001038:	200141d4 	.word	0x200141d4
1000103c:	00006715 	.word	0x00006715

10001040 <sw_timer_alloc>:
10001040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10001042:	0005      	movs	r5, r0
10001044:	000e      	movs	r6, r1
10001046:	2800      	cmp	r0, #0
10001048:	d104      	bne.n	10001054 <sw_timer_alloc+0x14>
1000104a:	2276      	movs	r2, #118	; 0x76
1000104c:	4910      	ldr	r1, [pc, #64]	; (10001090 <sw_timer_alloc+0x50>)
1000104e:	4811      	ldr	r0, [pc, #68]	; (10001094 <sw_timer_alloc+0x54>)
10001050:	4b11      	ldr	r3, [pc, #68]	; (10001098 <sw_timer_alloc+0x58>)
10001052:	4798      	blx	r3
10001054:	4f11      	ldr	r7, [pc, #68]	; (1000109c <sw_timer_alloc+0x5c>)
10001056:	683b      	ldr	r3, [r7, #0]
10001058:	2b00      	cmp	r3, #0
1000105a:	d104      	bne.n	10001066 <sw_timer_alloc+0x26>
1000105c:	2277      	movs	r2, #119	; 0x77
1000105e:	490c      	ldr	r1, [pc, #48]	; (10001090 <sw_timer_alloc+0x50>)
10001060:	480f      	ldr	r0, [pc, #60]	; (100010a0 <sw_timer_alloc+0x60>)
10001062:	4b0d      	ldr	r3, [pc, #52]	; (10001098 <sw_timer_alloc+0x58>)
10001064:	4798      	blx	r3
10001066:	683c      	ldr	r4, [r7, #0]
10001068:	2c00      	cmp	r4, #0
1000106a:	d104      	bne.n	10001076 <sw_timer_alloc+0x36>
1000106c:	227b      	movs	r2, #123	; 0x7b
1000106e:	4908      	ldr	r1, [pc, #32]	; (10001090 <sw_timer_alloc+0x50>)
10001070:	480c      	ldr	r0, [pc, #48]	; (100010a4 <sw_timer_alloc+0x64>)
10001072:	4b09      	ldr	r3, [pc, #36]	; (10001098 <sw_timer_alloc+0x58>)
10001074:	4798      	blx	r3
10001076:	68a3      	ldr	r3, [r4, #8]
10001078:	480b      	ldr	r0, [pc, #44]	; (100010a8 <sw_timer_alloc+0x68>)
1000107a:	603b      	str	r3, [r7, #0]
1000107c:	2300      	movs	r3, #0
1000107e:	6025      	str	r5, [r4, #0]
10001080:	6066      	str	r6, [r4, #4]
10001082:	60a3      	str	r3, [r4, #8]
10001084:	1a20      	subs	r0, r4, r0
10001086:	4c09      	ldr	r4, [pc, #36]	; (100010ac <sw_timer_alloc+0x6c>)
10001088:	1080      	asrs	r0, r0, #2
1000108a:	4360      	muls	r0, r4
1000108c:	b2c0      	uxtb	r0, r0
1000108e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10001090:	10005843 	.word	0x10005843
10001094:	100058a1 	.word	0x100058a1
10001098:	00006609 	.word	0x00006609
1000109c:	20014d18 	.word	0x20014d18
100010a0:	10005869 	.word	0x10005869
100010a4:	1000587c 	.word	0x1000587c
100010a8:	20014d20 	.word	0x20014d20
100010ac:	aaaaaaab 	.word	0xaaaaaaab

100010b0 <sw_timer_free>:
100010b0:	b570      	push	{r4, r5, r6, lr}
100010b2:	0005      	movs	r5, r0
100010b4:	2807      	cmp	r0, #7
100010b6:	d904      	bls.n	100010c2 <sw_timer_free+0x12>
100010b8:	2386      	movs	r3, #134	; 0x86
100010ba:	2108      	movs	r1, #8
100010bc:	4a0c      	ldr	r2, [pc, #48]	; (100010f0 <sw_timer_free+0x40>)
100010be:	4c0d      	ldr	r4, [pc, #52]	; (100010f4 <sw_timer_free+0x44>)
100010c0:	47a0      	blx	r4
100010c2:	230c      	movs	r3, #12
100010c4:	436b      	muls	r3, r5
100010c6:	4c0c      	ldr	r4, [pc, #48]	; (100010f8 <sw_timer_free+0x48>)
100010c8:	18e6      	adds	r6, r4, r3
100010ca:	58e3      	ldr	r3, [r4, r3]
100010cc:	2b00      	cmp	r3, #0
100010ce:	d104      	bne.n	100010da <sw_timer_free+0x2a>
100010d0:	2288      	movs	r2, #136	; 0x88
100010d2:	4907      	ldr	r1, [pc, #28]	; (100010f0 <sw_timer_free+0x40>)
100010d4:	4809      	ldr	r0, [pc, #36]	; (100010fc <sw_timer_free+0x4c>)
100010d6:	4b0a      	ldr	r3, [pc, #40]	; (10001100 <sw_timer_free+0x50>)
100010d8:	4798      	blx	r3
100010da:	200c      	movs	r0, #12
100010dc:	2300      	movs	r3, #0
100010de:	4345      	muls	r5, r0
100010e0:	5163      	str	r3, [r4, r5]
100010e2:	1964      	adds	r4, r4, r5
100010e4:	6063      	str	r3, [r4, #4]
100010e6:	4b07      	ldr	r3, [pc, #28]	; (10001104 <sw_timer_free+0x54>)
100010e8:	681a      	ldr	r2, [r3, #0]
100010ea:	601e      	str	r6, [r3, #0]
100010ec:	60a2      	str	r2, [r4, #8]
100010ee:	bd70      	pop	{r4, r5, r6, pc}
100010f0:	10005843 	.word	0x10005843
100010f4:	00006641 	.word	0x00006641
100010f8:	20014d20 	.word	0x20014d20
100010fc:	10005880 	.word	0x10005880
10001100:	00006609 	.word	0x00006609
10001104:	20014d18 	.word	0x20014d18

10001108 <sw_timer_set>:
10001108:	b570      	push	{r4, r5, r6, lr}
1000110a:	0004      	movs	r4, r0
1000110c:	000d      	movs	r5, r1
1000110e:	2807      	cmp	r0, #7
10001110:	d904      	bls.n	1000111c <sw_timer_set+0x14>
10001112:	23a1      	movs	r3, #161	; 0xa1
10001114:	2108      	movs	r1, #8
10001116:	4a0b      	ldr	r2, [pc, #44]	; (10001144 <sw_timer_set+0x3c>)
10001118:	4e0b      	ldr	r6, [pc, #44]	; (10001148 <sw_timer_set+0x40>)
1000111a:	47b0      	blx	r6
1000111c:	230c      	movs	r3, #12
1000111e:	4363      	muls	r3, r4
10001120:	4a0a      	ldr	r2, [pc, #40]	; (1000114c <sw_timer_set+0x44>)
10001122:	589b      	ldr	r3, [r3, r2]
10001124:	2b00      	cmp	r3, #0
10001126:	d104      	bne.n	10001132 <sw_timer_set+0x2a>
10001128:	22a2      	movs	r2, #162	; 0xa2
1000112a:	4906      	ldr	r1, [pc, #24]	; (10001144 <sw_timer_set+0x3c>)
1000112c:	4808      	ldr	r0, [pc, #32]	; (10001150 <sw_timer_set+0x48>)
1000112e:	4b09      	ldr	r3, [pc, #36]	; (10001154 <sw_timer_set+0x4c>)
10001130:	4798      	blx	r3
10001132:	20c8      	movs	r0, #200	; 0xc8
10001134:	01c0      	lsls	r0, r0, #7
10001136:	002a      	movs	r2, r5
10001138:	2117      	movs	r1, #23
1000113a:	4b07      	ldr	r3, [pc, #28]	; (10001158 <sw_timer_set+0x50>)
1000113c:	4320      	orrs	r0, r4
1000113e:	4798      	blx	r3
10001140:	bd70      	pop	{r4, r5, r6, pc}
10001142:	46c0      	nop			; (mov r8, r8)
10001144:	10005843 	.word	0x10005843
10001148:	00006641 	.word	0x00006641
1000114c:	20014d20 	.word	0x20014d20
10001150:	1000588d 	.word	0x1000588d
10001154:	00006609 	.word	0x00006609
10001158:	00001005 	.word	0x00001005

1000115c <sw_timer_clear>:
1000115c:	b570      	push	{r4, r5, r6, lr}
1000115e:	0004      	movs	r4, r0
10001160:	2807      	cmp	r0, #7
10001162:	d904      	bls.n	1000116e <sw_timer_clear+0x12>
10001164:	23a9      	movs	r3, #169	; 0xa9
10001166:	2108      	movs	r1, #8
10001168:	4a0a      	ldr	r2, [pc, #40]	; (10001194 <sw_timer_clear+0x38>)
1000116a:	4d0b      	ldr	r5, [pc, #44]	; (10001198 <sw_timer_clear+0x3c>)
1000116c:	47a8      	blx	r5
1000116e:	230c      	movs	r3, #12
10001170:	4363      	muls	r3, r4
10001172:	4a0a      	ldr	r2, [pc, #40]	; (1000119c <sw_timer_clear+0x40>)
10001174:	589b      	ldr	r3, [r3, r2]
10001176:	2b00      	cmp	r3, #0
10001178:	d104      	bne.n	10001184 <sw_timer_clear+0x28>
1000117a:	22aa      	movs	r2, #170	; 0xaa
1000117c:	4905      	ldr	r1, [pc, #20]	; (10001194 <sw_timer_clear+0x38>)
1000117e:	4808      	ldr	r0, [pc, #32]	; (100011a0 <sw_timer_clear+0x44>)
10001180:	4b08      	ldr	r3, [pc, #32]	; (100011a4 <sw_timer_clear+0x48>)
10001182:	4798      	blx	r3
10001184:	20c8      	movs	r0, #200	; 0xc8
10001186:	01c0      	lsls	r0, r0, #7
10001188:	2117      	movs	r1, #23
1000118a:	4b07      	ldr	r3, [pc, #28]	; (100011a8 <sw_timer_clear+0x4c>)
1000118c:	4320      	orrs	r0, r4
1000118e:	4798      	blx	r3
10001190:	bd70      	pop	{r4, r5, r6, pc}
10001192:	46c0      	nop			; (mov r8, r8)
10001194:	10005843 	.word	0x10005843
10001198:	00006641 	.word	0x00006641
1000119c:	20014d20 	.word	0x20014d20
100011a0:	1000588d 	.word	0x1000588d
100011a4:	00006609 	.word	0x00006609
100011a8:	000010bd 	.word	0x000010bd

100011ac <atm_timer_init_constructor>:
100011ac:	b510      	push	{r4, lr}
100011ae:	4904      	ldr	r1, [pc, #16]	; (100011c0 <atm_timer_init_constructor+0x14>)
100011b0:	4c04      	ldr	r4, [pc, #16]	; (100011c4 <atm_timer_init_constructor+0x18>)
100011b2:	4805      	ldr	r0, [pc, #20]	; (100011c8 <atm_timer_init_constructor+0x1c>)
100011b4:	47a0      	blx	r4
100011b6:	4905      	ldr	r1, [pc, #20]	; (100011cc <atm_timer_init_constructor+0x20>)
100011b8:	4805      	ldr	r0, [pc, #20]	; (100011d0 <atm_timer_init_constructor+0x24>)
100011ba:	47a0      	blx	r4
100011bc:	bd10      	pop	{r4, pc}
100011be:	46c0      	nop			; (mov r8, r8)
100011c0:	200141f4 	.word	0x200141f4
100011c4:	00006805 	.word	0x00006805
100011c8:	20001260 	.word	0x20001260
100011cc:	200141fc 	.word	0x200141fc
100011d0:	20001284 	.word	0x20001284

100011d4 <atm_pm_init_constructor>:
100011d4:	b510      	push	{r4, lr}
100011d6:	4904      	ldr	r1, [pc, #16]	; (100011e8 <atm_pm_init_constructor+0x14>)
100011d8:	4c04      	ldr	r4, [pc, #16]	; (100011ec <atm_pm_init_constructor+0x18>)
100011da:	4805      	ldr	r0, [pc, #20]	; (100011f0 <atm_pm_init_constructor+0x1c>)
100011dc:	47a0      	blx	r4
100011de:	4905      	ldr	r1, [pc, #20]	; (100011f4 <atm_pm_init_constructor+0x20>)
100011e0:	4805      	ldr	r0, [pc, #20]	; (100011f8 <atm_pm_init_constructor+0x24>)
100011e2:	47a0      	blx	r4
100011e4:	bd10      	pop	{r4, pc}
100011e6:	46c0      	nop			; (mov r8, r8)
100011e8:	20014258 	.word	0x20014258
100011ec:	00006805 	.word	0x00006805
100011f0:	20001260 	.word	0x20001260
100011f4:	20014260 	.word	0x20014260
100011f8:	20001284 	.word	0x20001284

100011fc <atm_pm_alloc>:
100011fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100011fe:	0004      	movs	r4, r0
10001200:	000d      	movs	r5, r1
10001202:	2902      	cmp	r1, #2
10001204:	d904      	bls.n	10001210 <atm_pm_alloc+0x14>
10001206:	2249      	movs	r2, #73	; 0x49
10001208:	490c      	ldr	r1, [pc, #48]	; (1000123c <atm_pm_alloc+0x40>)
1000120a:	480d      	ldr	r0, [pc, #52]	; (10001240 <atm_pm_alloc+0x44>)
1000120c:	4b0d      	ldr	r3, [pc, #52]	; (10001244 <atm_pm_alloc+0x48>)
1000120e:	4798      	blx	r3
10001210:	4f0d      	ldr	r7, [pc, #52]	; (10001248 <atm_pm_alloc+0x4c>)
10001212:	00ae      	lsls	r6, r5, #2
10001214:	59f3      	ldr	r3, [r6, r7]
10001216:	3301      	adds	r3, #1
10001218:	d104      	bne.n	10001224 <atm_pm_alloc+0x28>
1000121a:	224a      	movs	r2, #74	; 0x4a
1000121c:	4907      	ldr	r1, [pc, #28]	; (1000123c <atm_pm_alloc+0x40>)
1000121e:	480b      	ldr	r0, [pc, #44]	; (1000124c <atm_pm_alloc+0x50>)
10001220:	4b08      	ldr	r3, [pc, #32]	; (10001244 <atm_pm_alloc+0x48>)
10001222:	4798      	blx	r3
10001224:	2301      	movs	r3, #1
10001226:	59ba      	ldr	r2, [r7, r6]
10001228:	4213      	tst	r3, r2
1000122a:	d105      	bne.n	10001238 <atm_pm_alloc+0x3c>
1000122c:	431a      	orrs	r2, r3
1000122e:	51ba      	str	r2, [r7, r6]
10001230:	0020      	movs	r0, r4
10001232:	7125      	strb	r5, [r4, #4]
10001234:	6023      	str	r3, [r4, #0]
10001236:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10001238:	005b      	lsls	r3, r3, #1
1000123a:	e7f5      	b.n	10001228 <atm_pm_alloc+0x2c>
1000123c:	100058c0 	.word	0x100058c0
10001240:	10005911 	.word	0x10005911
10001244:	00006609 	.word	0x00006609
10001248:	20014d98 	.word	0x20014d98
1000124c:	100058eb 	.word	0x100058eb

10001250 <atm_pm_lock>:
10001250:	b537      	push	{r0, r1, r2, r4, r5, lr}
10001252:	0005      	movs	r5, r0
10001254:	b2cc      	uxtb	r4, r1
10001256:	2800      	cmp	r0, #0
10001258:	d104      	bne.n	10001264 <atm_pm_lock+0x14>
1000125a:	2260      	movs	r2, #96	; 0x60
1000125c:	490b      	ldr	r1, [pc, #44]	; (1000128c <atm_pm_lock+0x3c>)
1000125e:	480c      	ldr	r0, [pc, #48]	; (10001290 <atm_pm_lock+0x40>)
10001260:	4b0c      	ldr	r3, [pc, #48]	; (10001294 <atm_pm_lock+0x44>)
10001262:	4798      	blx	r3
10001264:	2c02      	cmp	r4, #2
10001266:	d904      	bls.n	10001272 <atm_pm_lock+0x22>
10001268:	2261      	movs	r2, #97	; 0x61
1000126a:	4908      	ldr	r1, [pc, #32]	; (1000128c <atm_pm_lock+0x3c>)
1000126c:	480a      	ldr	r0, [pc, #40]	; (10001298 <atm_pm_lock+0x48>)
1000126e:	4b09      	ldr	r3, [pc, #36]	; (10001294 <atm_pm_lock+0x44>)
10001270:	4798      	blx	r3
10001272:	4b0a      	ldr	r3, [pc, #40]	; (1000129c <atm_pm_lock+0x4c>)
10001274:	00a2      	lsls	r2, r4, #2
10001276:	58d1      	ldr	r1, [r2, r3]
10001278:	430d      	orrs	r5, r1
1000127a:	50d5      	str	r5, [r2, r3]
1000127c:	2c00      	cmp	r4, #0
1000127e:	d103      	bne.n	10001288 <atm_pm_lock+0x38>
10001280:	2080      	movs	r0, #128	; 0x80
10001282:	4b07      	ldr	r3, [pc, #28]	; (100012a0 <atm_pm_lock+0x50>)
10001284:	0140      	lsls	r0, r0, #5
10001286:	4798      	blx	r3
10001288:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
1000128a:	46c0      	nop			; (mov r8, r8)
1000128c:	100058c0 	.word	0x100058c0
10001290:	10005943 	.word	0x10005943
10001294:	00006609 	.word	0x00006609
10001298:	1000590e 	.word	0x1000590e
1000129c:	20014d8c 	.word	0x20014d8c
100012a0:	0000069d 	.word	0x0000069d

100012a4 <atm_pm_unlock>:
100012a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
100012a6:	0005      	movs	r5, r0
100012a8:	b2cc      	uxtb	r4, r1
100012aa:	2800      	cmp	r0, #0
100012ac:	d104      	bne.n	100012b8 <atm_pm_unlock+0x14>
100012ae:	226a      	movs	r2, #106	; 0x6a
100012b0:	490b      	ldr	r1, [pc, #44]	; (100012e0 <atm_pm_unlock+0x3c>)
100012b2:	480c      	ldr	r0, [pc, #48]	; (100012e4 <atm_pm_unlock+0x40>)
100012b4:	4b0c      	ldr	r3, [pc, #48]	; (100012e8 <atm_pm_unlock+0x44>)
100012b6:	4798      	blx	r3
100012b8:	2c02      	cmp	r4, #2
100012ba:	d904      	bls.n	100012c6 <atm_pm_unlock+0x22>
100012bc:	226b      	movs	r2, #107	; 0x6b
100012be:	4908      	ldr	r1, [pc, #32]	; (100012e0 <atm_pm_unlock+0x3c>)
100012c0:	480a      	ldr	r0, [pc, #40]	; (100012ec <atm_pm_unlock+0x48>)
100012c2:	4b09      	ldr	r3, [pc, #36]	; (100012e8 <atm_pm_unlock+0x44>)
100012c4:	4798      	blx	r3
100012c6:	4a0a      	ldr	r2, [pc, #40]	; (100012f0 <atm_pm_unlock+0x4c>)
100012c8:	00a1      	lsls	r1, r4, #2
100012ca:	588b      	ldr	r3, [r1, r2]
100012cc:	43ab      	bics	r3, r5
100012ce:	508b      	str	r3, [r1, r2]
100012d0:	d105      	bne.n	100012de <atm_pm_unlock+0x3a>
100012d2:	2c00      	cmp	r4, #0
100012d4:	d103      	bne.n	100012de <atm_pm_unlock+0x3a>
100012d6:	2080      	movs	r0, #128	; 0x80
100012d8:	4b06      	ldr	r3, [pc, #24]	; (100012f4 <atm_pm_unlock+0x50>)
100012da:	0140      	lsls	r0, r0, #5
100012dc:	4798      	blx	r3
100012de:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
100012e0:	100058c0 	.word	0x100058c0
100012e4:	10005943 	.word	0x10005943
100012e8:	00006609 	.word	0x00006609
100012ec:	1000590e 	.word	0x1000590e
100012f0:	20014d8c 	.word	0x20014d8c
100012f4:	000006b5 	.word	0x000006b5

100012f8 <atm_pm_set_hib_restart_time>:
100012f8:	b510      	push	{r4, lr}
100012fa:	2264      	movs	r2, #100	; 0x64
100012fc:	2300      	movs	r3, #0
100012fe:	4c03      	ldr	r4, [pc, #12]	; (1000130c <atm_pm_set_hib_restart_time+0x14>)
10001300:	0c41      	lsrs	r1, r0, #17
10001302:	03c0      	lsls	r0, r0, #15
10001304:	47a0      	blx	r4
10001306:	4b02      	ldr	r3, [pc, #8]	; (10001310 <atm_pm_set_hib_restart_time+0x18>)
10001308:	6018      	str	r0, [r3, #0]
1000130a:	bd10      	pop	{r4, pc}
1000130c:	0002f0ad 	.word	0x0002f0ad
10001310:	20014d88 	.word	0x20014d88

10001314 <atm_gpio_setup>:
10001314:	b570      	push	{r4, r5, r6, lr}
10001316:	2401      	movs	r4, #1
10001318:	4084      	lsls	r4, r0
1000131a:	4d2d      	ldr	r5, [pc, #180]	; (100013d0 <atm_gpio_setup+0xbc>)
1000131c:	682b      	ldr	r3, [r5, #0]
1000131e:	4223      	tst	r3, r4
10001320:	d117      	bne.n	10001352 <atm_gpio_setup+0x3e>
10001322:	3809      	subs	r0, #9
10001324:	2814      	cmp	r0, #20
10001326:	d84d      	bhi.n	100013c4 <atm_gpio_setup+0xb0>
10001328:	f003 fe9a 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
1000132c:	4c18140b 	.word	0x4c18140b
10001330:	234c4c1d 	.word	0x234c4c1d
10001334:	322d294c 	.word	0x322d294c
10001338:	4c4c4c38 	.word	0x4c4c4c38
1000133c:	434c3d4c 	.word	0x434c3d4c
10001340:	48          	.byte	0x48
10001341:	00          	.byte	0x00
10001342:	4a24      	ldr	r2, [pc, #144]	; (100013d4 <atm_gpio_setup+0xc0>)
10001344:	4924      	ldr	r1, [pc, #144]	; (100013d8 <atm_gpio_setup+0xc4>)
10001346:	6d53      	ldr	r3, [r2, #84]	; 0x54
10001348:	400b      	ands	r3, r1
1000134a:	6553      	str	r3, [r2, #84]	; 0x54
1000134c:	682b      	ldr	r3, [r5, #0]
1000134e:	431c      	orrs	r4, r3
10001350:	602c      	str	r4, [r5, #0]
10001352:	bd70      	pop	{r4, r5, r6, pc}
10001354:	4a1f      	ldr	r2, [pc, #124]	; (100013d4 <atm_gpio_setup+0xc0>)
10001356:	4921      	ldr	r1, [pc, #132]	; (100013dc <atm_gpio_setup+0xc8>)
10001358:	6d53      	ldr	r3, [r2, #84]	; 0x54
1000135a:	e7f5      	b.n	10001348 <atm_gpio_setup+0x34>
1000135c:	217c      	movs	r1, #124	; 0x7c
1000135e:	4a1d      	ldr	r2, [pc, #116]	; (100013d4 <atm_gpio_setup+0xc0>)
10001360:	6d53      	ldr	r3, [r2, #84]	; 0x54
10001362:	438b      	bics	r3, r1
10001364:	e7f1      	b.n	1000134a <atm_gpio_setup+0x36>
10001366:	4a1b      	ldr	r2, [pc, #108]	; (100013d4 <atm_gpio_setup+0xc0>)
10001368:	491d      	ldr	r1, [pc, #116]	; (100013e0 <atm_gpio_setup+0xcc>)
1000136a:	6d93      	ldr	r3, [r2, #88]	; 0x58
1000136c:	400b      	ands	r3, r1
1000136e:	6593      	str	r3, [r2, #88]	; 0x58
10001370:	e7ec      	b.n	1000134c <atm_gpio_setup+0x38>
10001372:	4a18      	ldr	r2, [pc, #96]	; (100013d4 <atm_gpio_setup+0xc0>)
10001374:	491b      	ldr	r1, [pc, #108]	; (100013e4 <atm_gpio_setup+0xd0>)
10001376:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
10001378:	400b      	ands	r3, r1
1000137a:	65d3      	str	r3, [r2, #92]	; 0x5c
1000137c:	e7e6      	b.n	1000134c <atm_gpio_setup+0x38>
1000137e:	4a15      	ldr	r2, [pc, #84]	; (100013d4 <atm_gpio_setup+0xc0>)
10001380:	4916      	ldr	r1, [pc, #88]	; (100013dc <atm_gpio_setup+0xc8>)
10001382:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
10001384:	e7f8      	b.n	10001378 <atm_gpio_setup+0x64>
10001386:	217c      	movs	r1, #124	; 0x7c
10001388:	4a12      	ldr	r2, [pc, #72]	; (100013d4 <atm_gpio_setup+0xc0>)
1000138a:	6dd3      	ldr	r3, [r2, #92]	; 0x5c
1000138c:	438b      	bics	r3, r1
1000138e:	e7f4      	b.n	1000137a <atm_gpio_setup+0x66>
10001390:	4a10      	ldr	r2, [pc, #64]	; (100013d4 <atm_gpio_setup+0xc0>)
10001392:	6e13      	ldr	r3, [r2, #96]	; 0x60
10001394:	015b      	lsls	r3, r3, #5
10001396:	095b      	lsrs	r3, r3, #5
10001398:	6613      	str	r3, [r2, #96]	; 0x60
1000139a:	e7d7      	b.n	1000134c <atm_gpio_setup+0x38>
1000139c:	4a0d      	ldr	r2, [pc, #52]	; (100013d4 <atm_gpio_setup+0xc0>)
1000139e:	4910      	ldr	r1, [pc, #64]	; (100013e0 <atm_gpio_setup+0xcc>)
100013a0:	6e13      	ldr	r3, [r2, #96]	; 0x60
100013a2:	400b      	ands	r3, r1
100013a4:	e7f8      	b.n	10001398 <atm_gpio_setup+0x84>
100013a6:	4a0b      	ldr	r2, [pc, #44]	; (100013d4 <atm_gpio_setup+0xc0>)
100013a8:	6e53      	ldr	r3, [r2, #100]	; 0x64
100013aa:	015b      	lsls	r3, r3, #5
100013ac:	095b      	lsrs	r3, r3, #5
100013ae:	6653      	str	r3, [r2, #100]	; 0x64
100013b0:	e7cc      	b.n	1000134c <atm_gpio_setup+0x38>
100013b2:	4a08      	ldr	r2, [pc, #32]	; (100013d4 <atm_gpio_setup+0xc0>)
100013b4:	490b      	ldr	r1, [pc, #44]	; (100013e4 <atm_gpio_setup+0xd0>)
100013b6:	6e53      	ldr	r3, [r2, #100]	; 0x64
100013b8:	400b      	ands	r3, r1
100013ba:	e7f8      	b.n	100013ae <atm_gpio_setup+0x9a>
100013bc:	4a05      	ldr	r2, [pc, #20]	; (100013d4 <atm_gpio_setup+0xc0>)
100013be:	4906      	ldr	r1, [pc, #24]	; (100013d8 <atm_gpio_setup+0xc4>)
100013c0:	6e53      	ldr	r3, [r2, #100]	; 0x64
100013c2:	e7f9      	b.n	100013b8 <atm_gpio_setup+0xa4>
100013c4:	22b8      	movs	r2, #184	; 0xb8
100013c6:	4908      	ldr	r1, [pc, #32]	; (100013e8 <atm_gpio_setup+0xd4>)
100013c8:	4808      	ldr	r0, [pc, #32]	; (100013ec <atm_gpio_setup+0xd8>)
100013ca:	4b09      	ldr	r3, [pc, #36]	; (100013f0 <atm_gpio_setup+0xdc>)
100013cc:	4798      	blx	r3
100013ce:	e7bd      	b.n	1000134c <atm_gpio_setup+0x38>
100013d0:	20014da4 	.word	0x20014da4
100013d4:	40003000 	.word	0x40003000
100013d8:	fffe0fff 	.word	0xfffe0fff
100013dc:	fffff07f 	.word	0xfffff07f
100013e0:	f83fffff 	.word	0xf83fffff
100013e4:	ffc1ffff 	.word	0xffc1ffff
100013e8:	10005949 	.word	0x10005949
100013ec:	100050ec 	.word	0x100050ec
100013f0:	00006609 	.word	0x00006609

100013f4 <atm_gpio_init_constructor>:
100013f4:	2200      	movs	r2, #0
100013f6:	4b01      	ldr	r3, [pc, #4]	; (100013fc <atm_gpio_init_constructor+0x8>)
100013f8:	601a      	str	r2, [r3, #0]
100013fa:	4770      	bx	lr
100013fc:	20014da4 	.word	0x20014da4

10001400 <atm_gpio_set_input>:
10001400:	b510      	push	{r4, lr}
10001402:	4b0b      	ldr	r3, [pc, #44]	; (10001430 <atm_gpio_set_input+0x30>)
10001404:	0004      	movs	r4, r0
10001406:	4798      	blx	r3
10001408:	2800      	cmp	r0, #0
1000140a:	d004      	beq.n	10001416 <atm_gpio_set_input+0x16>
1000140c:	22cb      	movs	r2, #203	; 0xcb
1000140e:	4909      	ldr	r1, [pc, #36]	; (10001434 <atm_gpio_set_input+0x34>)
10001410:	4809      	ldr	r0, [pc, #36]	; (10001438 <atm_gpio_set_input+0x38>)
10001412:	4b0a      	ldr	r3, [pc, #40]	; (1000143c <atm_gpio_set_input+0x3c>)
10001414:	4798      	blx	r3
10001416:	2c0f      	cmp	r4, #15
10001418:	d907      	bls.n	1000142a <atm_gpio_set_input+0x2a>
1000141a:	3c10      	subs	r4, #16
1000141c:	4a08      	ldr	r2, [pc, #32]	; (10001440 <atm_gpio_set_input+0x40>)
1000141e:	b2e4      	uxtb	r4, r4
10001420:	2301      	movs	r3, #1
10001422:	40a3      	lsls	r3, r4
10001424:	61d3      	str	r3, [r2, #28]
10001426:	6113      	str	r3, [r2, #16]
10001428:	bd10      	pop	{r4, pc}
1000142a:	4a06      	ldr	r2, [pc, #24]	; (10001444 <atm_gpio_set_input+0x44>)
1000142c:	e7f8      	b.n	10001420 <atm_gpio_set_input+0x20>
1000142e:	46c0      	nop			; (mov r8, r8)
10001430:	20014269 	.word	0x20014269
10001434:	10005949 	.word	0x10005949
10001438:	10005954 	.word	0x10005954
1000143c:	00006609 	.word	0x00006609
10001440:	40011000 	.word	0x40011000
10001444:	40010000 	.word	0x40010000

10001448 <atm_gpio_clear_input>:
10001448:	b510      	push	{r4, lr}
1000144a:	4b0a      	ldr	r3, [pc, #40]	; (10001474 <atm_gpio_clear_input+0x2c>)
1000144c:	0004      	movs	r4, r0
1000144e:	4798      	blx	r3
10001450:	2800      	cmp	r0, #0
10001452:	d004      	beq.n	1000145e <atm_gpio_clear_input+0x16>
10001454:	22d9      	movs	r2, #217	; 0xd9
10001456:	4908      	ldr	r1, [pc, #32]	; (10001478 <atm_gpio_clear_input+0x30>)
10001458:	4808      	ldr	r0, [pc, #32]	; (1000147c <atm_gpio_clear_input+0x34>)
1000145a:	4b09      	ldr	r3, [pc, #36]	; (10001480 <atm_gpio_clear_input+0x38>)
1000145c:	4798      	blx	r3
1000145e:	2c0f      	cmp	r4, #15
10001460:	d906      	bls.n	10001470 <atm_gpio_clear_input+0x28>
10001462:	3c10      	subs	r4, #16
10001464:	4a07      	ldr	r2, [pc, #28]	; (10001484 <atm_gpio_clear_input+0x3c>)
10001466:	b2e4      	uxtb	r4, r4
10001468:	2301      	movs	r3, #1
1000146a:	40a3      	lsls	r3, r4
1000146c:	6153      	str	r3, [r2, #20]
1000146e:	bd10      	pop	{r4, pc}
10001470:	4a05      	ldr	r2, [pc, #20]	; (10001488 <atm_gpio_clear_input+0x40>)
10001472:	e7f9      	b.n	10001468 <atm_gpio_clear_input+0x20>
10001474:	20014269 	.word	0x20014269
10001478:	10005949 	.word	0x10005949
1000147c:	10005954 	.word	0x10005954
10001480:	00006609 	.word	0x00006609
10001484:	40011000 	.word	0x40011000
10001488:	40010000 	.word	0x40010000

1000148c <atm_gpio_set_pullup>:
1000148c:	b510      	push	{r4, lr}
1000148e:	4b0b      	ldr	r3, [pc, #44]	; (100014bc <atm_gpio_set_pullup+0x30>)
10001490:	0004      	movs	r4, r0
10001492:	4798      	blx	r3
10001494:	2800      	cmp	r0, #0
10001496:	d005      	beq.n	100014a4 <atm_gpio_set_pullup+0x18>
10001498:	2202      	movs	r2, #2
1000149a:	4909      	ldr	r1, [pc, #36]	; (100014c0 <atm_gpio_set_pullup+0x34>)
1000149c:	4809      	ldr	r0, [pc, #36]	; (100014c4 <atm_gpio_set_pullup+0x38>)
1000149e:	4b0a      	ldr	r3, [pc, #40]	; (100014c8 <atm_gpio_set_pullup+0x3c>)
100014a0:	32ff      	adds	r2, #255	; 0xff
100014a2:	4798      	blx	r3
100014a4:	2c0f      	cmp	r4, #15
100014a6:	d906      	bls.n	100014b6 <atm_gpio_set_pullup+0x2a>
100014a8:	3c10      	subs	r4, #16
100014aa:	4a08      	ldr	r2, [pc, #32]	; (100014cc <atm_gpio_set_pullup+0x40>)
100014ac:	b2e4      	uxtb	r4, r4
100014ae:	2301      	movs	r3, #1
100014b0:	40a3      	lsls	r3, r4
100014b2:	6093      	str	r3, [r2, #8]
100014b4:	bd10      	pop	{r4, pc}
100014b6:	4a06      	ldr	r2, [pc, #24]	; (100014d0 <atm_gpio_set_pullup+0x44>)
100014b8:	e7f9      	b.n	100014ae <atm_gpio_set_pullup+0x22>
100014ba:	46c0      	nop			; (mov r8, r8)
100014bc:	20014269 	.word	0x20014269
100014c0:	10005949 	.word	0x10005949
100014c4:	10005954 	.word	0x10005954
100014c8:	00006609 	.word	0x00006609
100014cc:	40011000 	.word	0x40011000
100014d0:	40010000 	.word	0x40010000

100014d4 <atm_gpio_clear_pullup>:
100014d4:	b510      	push	{r4, lr}
100014d6:	4b0b      	ldr	r3, [pc, #44]	; (10001504 <atm_gpio_clear_pullup+0x30>)
100014d8:	0004      	movs	r4, r0
100014da:	4798      	blx	r3
100014dc:	2800      	cmp	r0, #0
100014de:	d005      	beq.n	100014ec <atm_gpio_clear_pullup+0x18>
100014e0:	2287      	movs	r2, #135	; 0x87
100014e2:	4909      	ldr	r1, [pc, #36]	; (10001508 <atm_gpio_clear_pullup+0x34>)
100014e4:	4809      	ldr	r0, [pc, #36]	; (1000150c <atm_gpio_clear_pullup+0x38>)
100014e6:	4b0a      	ldr	r3, [pc, #40]	; (10001510 <atm_gpio_clear_pullup+0x3c>)
100014e8:	0052      	lsls	r2, r2, #1
100014ea:	4798      	blx	r3
100014ec:	2c0f      	cmp	r4, #15
100014ee:	d906      	bls.n	100014fe <atm_gpio_clear_pullup+0x2a>
100014f0:	3c10      	subs	r4, #16
100014f2:	4a08      	ldr	r2, [pc, #32]	; (10001514 <atm_gpio_clear_pullup+0x40>)
100014f4:	b2e4      	uxtb	r4, r4
100014f6:	2301      	movs	r3, #1
100014f8:	40a3      	lsls	r3, r4
100014fa:	60d3      	str	r3, [r2, #12]
100014fc:	bd10      	pop	{r4, pc}
100014fe:	4a06      	ldr	r2, [pc, #24]	; (10001518 <atm_gpio_clear_pullup+0x44>)
10001500:	e7f9      	b.n	100014f6 <atm_gpio_clear_pullup+0x22>
10001502:	46c0      	nop			; (mov r8, r8)
10001504:	20014269 	.word	0x20014269
10001508:	10005949 	.word	0x10005949
1000150c:	10005954 	.word	0x10005954
10001510:	00006609 	.word	0x00006609
10001514:	40011000 	.word	0x40011000
10001518:	40010000 	.word	0x40010000

1000151c <atm_gpio_read_gpio>:
1000151c:	b510      	push	{r4, lr}
1000151e:	4b10      	ldr	r3, [pc, #64]	; (10001560 <atm_gpio_read_gpio+0x44>)
10001520:	0004      	movs	r4, r0
10001522:	4798      	blx	r3
10001524:	2800      	cmp	r0, #0
10001526:	d005      	beq.n	10001534 <atm_gpio_read_gpio+0x18>
10001528:	22ba      	movs	r2, #186	; 0xba
1000152a:	490e      	ldr	r1, [pc, #56]	; (10001564 <atm_gpio_read_gpio+0x48>)
1000152c:	480e      	ldr	r0, [pc, #56]	; (10001568 <atm_gpio_read_gpio+0x4c>)
1000152e:	4b0f      	ldr	r3, [pc, #60]	; (1000156c <atm_gpio_read_gpio+0x50>)
10001530:	32ff      	adds	r2, #255	; 0xff
10001532:	4798      	blx	r3
10001534:	2c0f      	cmp	r4, #15
10001536:	d90f      	bls.n	10001558 <atm_gpio_read_gpio+0x3c>
10001538:	3c10      	subs	r4, #16
1000153a:	4a0d      	ldr	r2, [pc, #52]	; (10001570 <atm_gpio_read_gpio+0x54>)
1000153c:	b2e4      	uxtb	r4, r4
1000153e:	2080      	movs	r0, #128	; 0x80
10001540:	0240      	lsls	r0, r0, #9
10001542:	40a0      	lsls	r0, r4
10001544:	6991      	ldr	r1, [r2, #24]
10001546:	0c03      	lsrs	r3, r0, #16
10001548:	420b      	tst	r3, r1
1000154a:	d007      	beq.n	1000155c <atm_gpio_read_gpio+0x40>
1000154c:	6850      	ldr	r0, [r2, #4]
1000154e:	4018      	ands	r0, r3
10001550:	1e43      	subs	r3, r0, #1
10001552:	4198      	sbcs	r0, r3
10001554:	b2c0      	uxtb	r0, r0
10001556:	bd10      	pop	{r4, pc}
10001558:	4a06      	ldr	r2, [pc, #24]	; (10001574 <atm_gpio_read_gpio+0x58>)
1000155a:	e7f0      	b.n	1000153e <atm_gpio_read_gpio+0x22>
1000155c:	6810      	ldr	r0, [r2, #0]
1000155e:	e7f6      	b.n	1000154e <atm_gpio_read_gpio+0x32>
10001560:	20014269 	.word	0x20014269
10001564:	10005949 	.word	0x10005949
10001568:	10005954 	.word	0x10005954
1000156c:	00006609 	.word	0x00006609
10001570:	40011000 	.word	0x40011000
10001574:	40010000 	.word	0x40010000

10001578 <matches_bd_vendor>:
10001578:	7942      	ldrb	r2, [r0, #5]
1000157a:	0003      	movs	r3, r0
1000157c:	2000      	movs	r0, #0
1000157e:	2a7c      	cmp	r2, #124	; 0x7c
10001580:	d106      	bne.n	10001590 <matches_bd_vendor+0x18>
10001582:	791a      	ldrb	r2, [r3, #4]
10001584:	2a69      	cmp	r2, #105	; 0x69
10001586:	d103      	bne.n	10001590 <matches_bd_vendor+0x18>
10001588:	78d8      	ldrb	r0, [r3, #3]
1000158a:	386b      	subs	r0, #107	; 0x6b
1000158c:	4243      	negs	r3, r0
1000158e:	4158      	adcs	r0, r3
10001590:	4770      	bx	lr
	...

10001594 <hw_cfg_pseq_init>:
10001594:	2380      	movs	r3, #128	; 0x80
10001596:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10001598:	4c2d      	ldr	r4, [pc, #180]	; (10001650 <hw_cfg_pseq_init+0xbc>)
1000159a:	045b      	lsls	r3, r3, #17
1000159c:	6ea2      	ldr	r2, [r4, #104]	; 0x68
1000159e:	4313      	orrs	r3, r2
100015a0:	66a3      	str	r3, [r4, #104]	; 0x68
100015a2:	4b2c      	ldr	r3, [pc, #176]	; (10001654 <hw_cfg_pseq_init+0xc0>)
100015a4:	4798      	blx	r3
100015a6:	2800      	cmp	r0, #0
100015a8:	d007      	beq.n	100015ba <hw_cfg_pseq_init+0x26>
100015aa:	4b2b      	ldr	r3, [pc, #172]	; (10001658 <hw_cfg_pseq_init+0xc4>)
100015ac:	4798      	blx	r3
100015ae:	2800      	cmp	r0, #0
100015b0:	d003      	beq.n	100015ba <hw_cfg_pseq_init+0x26>
100015b2:	2301      	movs	r3, #1
100015b4:	6ea2      	ldr	r2, [r4, #104]	; 0x68
100015b6:	4313      	orrs	r3, r2
100015b8:	66a3      	str	r3, [r4, #104]	; 0x68
100015ba:	4b28      	ldr	r3, [pc, #160]	; (1000165c <hw_cfg_pseq_init+0xc8>)
100015bc:	681a      	ldr	r2, [r3, #0]
100015be:	0412      	lsls	r2, r2, #16
100015c0:	d405      	bmi.n	100015ce <hw_cfg_pseq_init+0x3a>
100015c2:	220c      	movs	r2, #12
100015c4:	4b26      	ldr	r3, [pc, #152]	; (10001660 <hw_cfg_pseq_init+0xcc>)
100015c6:	601a      	str	r2, [r3, #0]
100015c8:	2200      	movs	r2, #0
100015ca:	601a      	str	r2, [r3, #0]
100015cc:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100015ce:	2110      	movs	r1, #16
100015d0:	681a      	ldr	r2, [r3, #0]
100015d2:	4d24      	ldr	r5, [pc, #144]	; (10001664 <hw_cfg_pseq_init+0xd0>)
100015d4:	430a      	orrs	r2, r1
100015d6:	601a      	str	r2, [r3, #0]
100015d8:	682b      	ldr	r3, [r5, #0]
100015da:	9300      	str	r3, [sp, #0]
100015dc:	2301      	movs	r3, #1
100015de:	602b      	str	r3, [r5, #0]
100015e0:	f3ef 8710 	mrs	r7, PRIMASK
100015e4:	b672      	cpsid	i
100015e6:	4c20      	ldr	r4, [pc, #128]	; (10001668 <hw_cfg_pseq_init+0xd4>)
100015e8:	6823      	ldr	r3, [r4, #0]
100015ea:	6826      	ldr	r6, [r4, #0]
100015ec:	42b3      	cmp	r3, r6
100015ee:	d00a      	beq.n	10001606 <hw_cfg_pseq_init+0x72>
100015f0:	6823      	ldr	r3, [r4, #0]
100015f2:	429e      	cmp	r6, r3
100015f4:	d007      	beq.n	10001606 <hw_cfg_pseq_init+0x72>
100015f6:	6826      	ldr	r6, [r4, #0]
100015f8:	42b3      	cmp	r3, r6
100015fa:	d004      	beq.n	10001606 <hw_cfg_pseq_init+0x72>
100015fc:	229e      	movs	r2, #158	; 0x9e
100015fe:	491b      	ldr	r1, [pc, #108]	; (1000166c <hw_cfg_pseq_init+0xd8>)
10001600:	481b      	ldr	r0, [pc, #108]	; (10001670 <hw_cfg_pseq_init+0xdc>)
10001602:	4b1c      	ldr	r3, [pc, #112]	; (10001674 <hw_cfg_pseq_init+0xe0>)
10001604:	4798      	blx	r3
10001606:	f387 8810 	msr	PRIMASK, r7
1000160a:	9b00      	ldr	r3, [sp, #0]
1000160c:	602b      	str	r3, [r5, #0]
1000160e:	682b      	ldr	r3, [r5, #0]
10001610:	9300      	str	r3, [sp, #0]
10001612:	2301      	movs	r3, #1
10001614:	602b      	str	r3, [r5, #0]
10001616:	f3ef 8310 	mrs	r3, PRIMASK
1000161a:	9301      	str	r3, [sp, #4]
1000161c:	b672      	cpsid	i
1000161e:	6823      	ldr	r3, [r4, #0]
10001620:	6827      	ldr	r7, [r4, #0]
10001622:	42bb      	cmp	r3, r7
10001624:	d00a      	beq.n	1000163c <hw_cfg_pseq_init+0xa8>
10001626:	6823      	ldr	r3, [r4, #0]
10001628:	429f      	cmp	r7, r3
1000162a:	d007      	beq.n	1000163c <hw_cfg_pseq_init+0xa8>
1000162c:	6827      	ldr	r7, [r4, #0]
1000162e:	42bb      	cmp	r3, r7
10001630:	d004      	beq.n	1000163c <hw_cfg_pseq_init+0xa8>
10001632:	229e      	movs	r2, #158	; 0x9e
10001634:	490d      	ldr	r1, [pc, #52]	; (1000166c <hw_cfg_pseq_init+0xd8>)
10001636:	480e      	ldr	r0, [pc, #56]	; (10001670 <hw_cfg_pseq_init+0xdc>)
10001638:	4b0e      	ldr	r3, [pc, #56]	; (10001674 <hw_cfg_pseq_init+0xe0>)
1000163a:	4798      	blx	r3
1000163c:	9b01      	ldr	r3, [sp, #4]
1000163e:	f383 8810 	msr	PRIMASK, r3
10001642:	9b00      	ldr	r3, [sp, #0]
10001644:	1bbf      	subs	r7, r7, r6
10001646:	602b      	str	r3, [r5, #0]
10001648:	2f02      	cmp	r7, #2
1000164a:	d8ba      	bhi.n	100015c2 <hw_cfg_pseq_init+0x2e>
1000164c:	bf10      	yield
1000164e:	e7de      	b.n	1000160e <hw_cfg_pseq_init+0x7a>
10001650:	40003000 	.word	0x40003000
10001654:	000075f5 	.word	0x000075f5
10001658:	00007605 	.word	0x00007605
1000165c:	30000030 	.word	0x30000030
10001660:	50008090 	.word	0x50008090
10001664:	50003020 	.word	0x50003020
10001668:	500080e0 	.word	0x500080e0
1000166c:	10005984 	.word	0x10005984
10001670:	1000598d 	.word	0x1000598d
10001674:	00006609 	.word	0x00006609

10001678 <hw_cfg_pmu_init>:
10001678:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000167a:	4b1c      	ldr	r3, [pc, #112]	; (100016ec <hw_cfg_pmu_init+0x74>)
1000167c:	681b      	ldr	r3, [r3, #0]
1000167e:	2b00      	cmp	r3, #0
10001680:	da1a      	bge.n	100016b8 <hw_cfg_pmu_init+0x40>
10001682:	4d1b      	ldr	r5, [pc, #108]	; (100016f0 <hw_cfg_pmu_init+0x78>)
10001684:	2230      	movs	r2, #48	; 0x30
10001686:	2109      	movs	r1, #9
10001688:	4f1a      	ldr	r7, [pc, #104]	; (100016f4 <hw_cfg_pmu_init+0x7c>)
1000168a:	0028      	movs	r0, r5
1000168c:	2480      	movs	r4, #128	; 0x80
1000168e:	47b8      	blx	r7
10001690:	0424      	lsls	r4, r4, #16
10001692:	4304      	orrs	r4, r0
10001694:	0023      	movs	r3, r4
10001696:	2230      	movs	r2, #48	; 0x30
10001698:	2109      	movs	r1, #9
1000169a:	0028      	movs	r0, r5
1000169c:	4e16      	ldr	r6, [pc, #88]	; (100016f8 <hw_cfg_pmu_init+0x80>)
1000169e:	47b0      	blx	r6
100016a0:	2109      	movs	r1, #9
100016a2:	2230      	movs	r2, #48	; 0x30
100016a4:	0028      	movs	r0, r5
100016a6:	47b8      	blx	r7
100016a8:	0001      	movs	r1, r0
100016aa:	4284      	cmp	r4, r0
100016ac:	d004      	beq.n	100016b8 <hw_cfg_pmu_init+0x40>
100016ae:	0020      	movs	r0, r4
100016b0:	2352      	movs	r3, #82	; 0x52
100016b2:	4a12      	ldr	r2, [pc, #72]	; (100016fc <hw_cfg_pmu_init+0x84>)
100016b4:	4c12      	ldr	r4, [pc, #72]	; (10001700 <hw_cfg_pmu_init+0x88>)
100016b6:	47a0      	blx	r4
100016b8:	4b0c      	ldr	r3, [pc, #48]	; (100016ec <hw_cfg_pmu_init+0x74>)
100016ba:	681b      	ldr	r3, [r3, #0]
100016bc:	049b      	lsls	r3, r3, #18
100016be:	d514      	bpl.n	100016ea <hw_cfg_pmu_init+0x72>
100016c0:	4d0b      	ldr	r5, [pc, #44]	; (100016f0 <hw_cfg_pmu_init+0x78>)
100016c2:	4c10      	ldr	r4, [pc, #64]	; (10001704 <hw_cfg_pmu_init+0x8c>)
100016c4:	2218      	movs	r2, #24
100016c6:	0023      	movs	r3, r4
100016c8:	210c      	movs	r1, #12
100016ca:	0028      	movs	r0, r5
100016cc:	4e0a      	ldr	r6, [pc, #40]	; (100016f8 <hw_cfg_pmu_init+0x80>)
100016ce:	47b0      	blx	r6
100016d0:	210c      	movs	r1, #12
100016d2:	2218      	movs	r2, #24
100016d4:	0028      	movs	r0, r5
100016d6:	4b07      	ldr	r3, [pc, #28]	; (100016f4 <hw_cfg_pmu_init+0x7c>)
100016d8:	4798      	blx	r3
100016da:	0001      	movs	r1, r0
100016dc:	42a0      	cmp	r0, r4
100016de:	d004      	beq.n	100016ea <hw_cfg_pmu_init+0x72>
100016e0:	0020      	movs	r0, r4
100016e2:	235d      	movs	r3, #93	; 0x5d
100016e4:	4a05      	ldr	r2, [pc, #20]	; (100016fc <hw_cfg_pmu_init+0x84>)
100016e6:	4c06      	ldr	r4, [pc, #24]	; (10001700 <hw_cfg_pmu_init+0x88>)
100016e8:	47a0      	blx	r4
100016ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100016ec:	200012c4 	.word	0x200012c4
100016f0:	0003cd78 	.word	0x0003cd78
100016f4:	0000777f 	.word	0x0000777f
100016f8:	0000779f 	.word	0x0000779f
100016fc:	10005984 	.word	0x10005984
10001700:	00006641 	.word	0x00006641
10001704:	0e8c0a74 	.word	0x0e8c0a74

10001708 <hw_cfg_rif_init>:
10001708:	4b0f      	ldr	r3, [pc, #60]	; (10001748 <hw_cfg_rif_init+0x40>)
1000170a:	681b      	ldr	r3, [r3, #0]
1000170c:	06db      	lsls	r3, r3, #27
1000170e:	d50b      	bpl.n	10001728 <hw_cfg_rif_init+0x20>
10001710:	490e      	ldr	r1, [pc, #56]	; (1000174c <hw_cfg_rif_init+0x44>)
10001712:	6e0b      	ldr	r3, [r1, #96]	; 0x60
10001714:	0bda      	lsrs	r2, r3, #15
10001716:	b2d2      	uxtb	r2, r2
10001718:	2a7f      	cmp	r2, #127	; 0x7f
1000171a:	d10e      	bne.n	1000173a <hw_cfg_rif_init+0x32>
1000171c:	4a0c      	ldr	r2, [pc, #48]	; (10001750 <hw_cfg_rif_init+0x48>)
1000171e:	4013      	ands	r3, r2
10001720:	2280      	movs	r2, #128	; 0x80
10001722:	03d2      	lsls	r2, r2, #15
10001724:	4313      	orrs	r3, r2
10001726:	660b      	str	r3, [r1, #96]	; 0x60
10001728:	490a      	ldr	r1, [pc, #40]	; (10001754 <hw_cfg_rif_init+0x4c>)
1000172a:	4a0b      	ldr	r2, [pc, #44]	; (10001758 <hw_cfg_rif_init+0x50>)
1000172c:	680b      	ldr	r3, [r1, #0]
1000172e:	401a      	ands	r2, r3
10001730:	2398      	movs	r3, #152	; 0x98
10001732:	011b      	lsls	r3, r3, #4
10001734:	4313      	orrs	r3, r2
10001736:	600b      	str	r3, [r1, #0]
10001738:	4770      	bx	lr
1000173a:	2a80      	cmp	r2, #128	; 0x80
1000173c:	d1f3      	bne.n	10001726 <hw_cfg_rif_init+0x1e>
1000173e:	3a41      	subs	r2, #65	; 0x41
10001740:	4393      	bics	r3, r2
10001742:	3a32      	subs	r2, #50	; 0x32
10001744:	e7ee      	b.n	10001724 <hw_cfg_rif_init+0x1c>
10001746:	46c0      	nop			; (mov r8, r8)
10001748:	200012c4 	.word	0x200012c4
1000174c:	50004000 	.word	0x50004000
10001750:	ff807fff 	.word	0xff807fff
10001754:	500040ac 	.word	0x500040ac
10001758:	fffff01f 	.word	0xfffff01f

1000175c <hw_cfg_mdm_init>:
1000175c:	4b02      	ldr	r3, [pc, #8]	; (10001768 <hw_cfg_mdm_init+0xc>)
1000175e:	4a03      	ldr	r2, [pc, #12]	; (1000176c <hw_cfg_mdm_init+0x10>)
10001760:	631a      	str	r2, [r3, #48]	; 0x30
10001762:	4a03      	ldr	r2, [pc, #12]	; (10001770 <hw_cfg_mdm_init+0x14>)
10001764:	63da      	str	r2, [r3, #60]	; 0x3c
10001766:	4770      	bx	lr
10001768:	50006000 	.word	0x50006000
1000176c:	233828a4 	.word	0x233828a4
10001770:	96328080 	.word	0x96328080

10001774 <hw_cfg_ble_rf_init>:
10001774:	4904      	ldr	r1, [pc, #16]	; (10001788 <hw_cfg_ble_rf_init+0x14>)
10001776:	4a05      	ldr	r2, [pc, #20]	; (1000178c <hw_cfg_ble_rf_init+0x18>)
10001778:	680b      	ldr	r3, [r1, #0]
1000177a:	401a      	ands	r2, r3
1000177c:	23f8      	movs	r3, #248	; 0xf8
1000177e:	03db      	lsls	r3, r3, #15
10001780:	4313      	orrs	r3, r2
10001782:	600b      	str	r3, [r1, #0]
10001784:	4770      	bx	lr
10001786:	46c0      	nop			; (mov r8, r8)
10001788:	30000088 	.word	0x30000088
1000178c:	ff00ffff 	.word	0xff00ffff

10001790 <hw_cfg_optimize_scan_params>:
10001790:	2301      	movs	r3, #1
10001792:	b530      	push	{r4, r5, lr}
10001794:	4d0d      	ldr	r5, [pc, #52]	; (100017cc <hw_cfg_optimize_scan_params+0x3c>)
10001796:	4c0e      	ldr	r4, [pc, #56]	; (100017d0 <hw_cfg_optimize_scan_params+0x40>)
10001798:	602b      	str	r3, [r5, #0]
1000179a:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
1000179c:	6a23      	ldr	r3, [r4, #32]
1000179e:	2900      	cmp	r1, #0
100017a0:	d000      	beq.n	100017a4 <hw_cfg_optimize_scan_params+0x14>
100017a2:	c10c      	stmia	r1!, {r2, r3}
100017a4:	1e41      	subs	r1, r0, #1
100017a6:	4188      	sbcs	r0, r1
100017a8:	490a      	ldr	r1, [pc, #40]	; (100017d4 <hw_cfg_optimize_scan_params+0x44>)
100017aa:	4240      	negs	r0, r0
100017ac:	4008      	ands	r0, r1
100017ae:	490a      	ldr	r1, [pc, #40]	; (100017d8 <hw_cfg_optimize_scan_params+0x48>)
100017b0:	0cd2      	lsrs	r2, r2, #19
100017b2:	04d2      	lsls	r2, r2, #19
100017b4:	1840      	adds	r0, r0, r1
100017b6:	4310      	orrs	r0, r2
100017b8:	227c      	movs	r2, #124	; 0x7c
100017ba:	4393      	bics	r3, r2
100017bc:	3a58      	subs	r2, #88	; 0x58
100017be:	4313      	orrs	r3, r2
100017c0:	62e0      	str	r0, [r4, #44]	; 0x2c
100017c2:	6223      	str	r3, [r4, #32]
100017c4:	2300      	movs	r3, #0
100017c6:	602b      	str	r3, [r5, #0]
100017c8:	bd30      	pop	{r4, r5, pc}
100017ca:	46c0      	nop			; (mov r8, r8)
100017cc:	50003018 	.word	0x50003018
100017d0:	50006000 	.word	0x50006000
100017d4:	fffffec0 	.word	0xfffffec0
100017d8:	00000736 	.word	0x00000736

100017dc <hw_cfg_dynamic_rf_mode_ctrl_reg>:
100017dc:	4b01      	ldr	r3, [pc, #4]	; (100017e4 <hw_cfg_dynamic_rf_mode_ctrl_reg+0x8>)
100017de:	6018      	str	r0, [r3, #0]
100017e0:	4770      	bx	lr
100017e2:	46c0      	nop			; (mov r8, r8)
100017e4:	20014dac 	.word	0x20014dac

100017e8 <hw_cfg_restore_scan_params>:
100017e8:	2201      	movs	r2, #1
100017ea:	4b05      	ldr	r3, [pc, #20]	; (10001800 <hw_cfg_restore_scan_params+0x18>)
100017ec:	601a      	str	r2, [r3, #0]
100017ee:	6801      	ldr	r1, [r0, #0]
100017f0:	4a04      	ldr	r2, [pc, #16]	; (10001804 <hw_cfg_restore_scan_params+0x1c>)
100017f2:	62d1      	str	r1, [r2, #44]	; 0x2c
100017f4:	6841      	ldr	r1, [r0, #4]
100017f6:	6211      	str	r1, [r2, #32]
100017f8:	2200      	movs	r2, #0
100017fa:	601a      	str	r2, [r3, #0]
100017fc:	4770      	bx	lr
100017fe:	46c0      	nop			; (mov r8, r8)
10001800:	50003018 	.word	0x50003018
10001804:	50006000 	.word	0x50006000

10001808 <hw_cfg_init>:
10001808:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000180a:	2501      	movs	r5, #1
1000180c:	2400      	movs	r4, #0
1000180e:	4e24      	ldr	r6, [pc, #144]	; (100018a0 <hw_cfg_init+0x98>)
10001810:	4b24      	ldr	r3, [pc, #144]	; (100018a4 <hw_cfg_init+0x9c>)
10001812:	6035      	str	r5, [r6, #0]
10001814:	4798      	blx	r3
10001816:	6034      	str	r4, [r6, #0]
10001818:	4e23      	ldr	r6, [pc, #140]	; (100018a8 <hw_cfg_init+0xa0>)
1000181a:	4b24      	ldr	r3, [pc, #144]	; (100018ac <hw_cfg_init+0xa4>)
1000181c:	6035      	str	r5, [r6, #0]
1000181e:	4798      	blx	r3
10001820:	6034      	str	r4, [r6, #0]
10001822:	4e23      	ldr	r6, [pc, #140]	; (100018b0 <hw_cfg_init+0xa8>)
10001824:	4f23      	ldr	r7, [pc, #140]	; (100018b4 <hw_cfg_init+0xac>)
10001826:	4b24      	ldr	r3, [pc, #144]	; (100018b8 <hw_cfg_init+0xb0>)
10001828:	6035      	str	r5, [r6, #0]
1000182a:	4798      	blx	r3
1000182c:	4b23      	ldr	r3, [pc, #140]	; (100018bc <hw_cfg_init+0xb4>)
1000182e:	6034      	str	r4, [r6, #0]
10001830:	603d      	str	r5, [r7, #0]
10001832:	4798      	blx	r3
10001834:	4b22      	ldr	r3, [pc, #136]	; (100018c0 <hw_cfg_init+0xb8>)
10001836:	4798      	blx	r3
10001838:	42a0      	cmp	r0, r4
1000183a:	d01d      	beq.n	10001878 <hw_cfg_init+0x70>
1000183c:	4b21      	ldr	r3, [pc, #132]	; (100018c4 <hw_cfg_init+0xbc>)
1000183e:	681b      	ldr	r3, [r3, #0]
10001840:	b2db      	uxtb	r3, r3
10001842:	2b13      	cmp	r3, #19
10001844:	d918      	bls.n	10001878 <hw_cfg_init+0x70>
10001846:	4b20      	ldr	r3, [pc, #128]	; (100018c8 <hw_cfg_init+0xc0>)
10001848:	2214      	movs	r2, #20
1000184a:	601d      	str	r5, [r3, #0]
1000184c:	4d1f      	ldr	r5, [pc, #124]	; (100018cc <hw_cfg_init+0xc4>)
1000184e:	0021      	movs	r1, r4
10001850:	002b      	movs	r3, r5
10001852:	481f      	ldr	r0, [pc, #124]	; (100018d0 <hw_cfg_init+0xc8>)
10001854:	4e1f      	ldr	r6, [pc, #124]	; (100018d4 <hw_cfg_init+0xcc>)
10001856:	47b0      	blx	r6
10001858:	0021      	movs	r1, r4
1000185a:	2214      	movs	r2, #20
1000185c:	481c      	ldr	r0, [pc, #112]	; (100018d0 <hw_cfg_init+0xc8>)
1000185e:	4b1e      	ldr	r3, [pc, #120]	; (100018d8 <hw_cfg_init+0xd0>)
10001860:	4798      	blx	r3
10001862:	0001      	movs	r1, r0
10001864:	42a8      	cmp	r0, r5
10001866:	d004      	beq.n	10001872 <hw_cfg_init+0x6a>
10001868:	2383      	movs	r3, #131	; 0x83
1000186a:	0028      	movs	r0, r5
1000186c:	4a1b      	ldr	r2, [pc, #108]	; (100018dc <hw_cfg_init+0xd4>)
1000186e:	4c1c      	ldr	r4, [pc, #112]	; (100018e0 <hw_cfg_init+0xd8>)
10001870:	47a0      	blx	r4
10001872:	2300      	movs	r3, #0
10001874:	4a14      	ldr	r2, [pc, #80]	; (100018c8 <hw_cfg_init+0xc0>)
10001876:	6013      	str	r3, [r2, #0]
10001878:	2300      	movs	r3, #0
1000187a:	4a1a      	ldr	r2, [pc, #104]	; (100018e4 <hw_cfg_init+0xdc>)
1000187c:	603b      	str	r3, [r7, #0]
1000187e:	8013      	strh	r3, [r2, #0]
10001880:	4a19      	ldr	r2, [pc, #100]	; (100018e8 <hw_cfg_init+0xe0>)
10001882:	8013      	strh	r3, [r2, #0]
10001884:	4a19      	ldr	r2, [pc, #100]	; (100018ec <hw_cfg_init+0xe4>)
10001886:	8013      	strh	r3, [r2, #0]
10001888:	4a19      	ldr	r2, [pc, #100]	; (100018f0 <hw_cfg_init+0xe8>)
1000188a:	8013      	strh	r3, [r2, #0]
1000188c:	4a19      	ldr	r2, [pc, #100]	; (100018f4 <hw_cfg_init+0xec>)
1000188e:	8013      	strh	r3, [r2, #0]
10001890:	4a19      	ldr	r2, [pc, #100]	; (100018f8 <hw_cfg_init+0xf0>)
10001892:	8013      	strh	r3, [r2, #0]
10001894:	4a19      	ldr	r2, [pc, #100]	; (100018fc <hw_cfg_init+0xf4>)
10001896:	8013      	strh	r3, [r2, #0]
10001898:	4a19      	ldr	r2, [pc, #100]	; (10001900 <hw_cfg_init+0xf8>)
1000189a:	8013      	strh	r3, [r2, #0]
1000189c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000189e:	46c0      	nop			; (mov r8, r8)
100018a0:	50003020 	.word	0x50003020
100018a4:	10001595 	.word	0x10001595
100018a8:	5000301c 	.word	0x5000301c
100018ac:	10001679 	.word	0x10001679
100018b0:	50003010 	.word	0x50003010
100018b4:	50003018 	.word	0x50003018
100018b8:	10001709 	.word	0x10001709
100018bc:	1000175d 	.word	0x1000175d
100018c0:	00005dbd 	.word	0x00005dbd
100018c4:	50006000 	.word	0x50006000
100018c8:	50003014 	.word	0x50003014
100018cc:	073c9e1f 	.word	0x073c9e1f
100018d0:	0003cd80 	.word	0x0003cd80
100018d4:	0000779f 	.word	0x0000779f
100018d8:	0000777f 	.word	0x0000777f
100018dc:	10005984 	.word	0x10005984
100018e0:	00006641 	.word	0x00006641
100018e4:	30008162 	.word	0x30008162
100018e8:	300081bc 	.word	0x300081bc
100018ec:	30008216 	.word	0x30008216
100018f0:	30008270 	.word	0x30008270
100018f4:	300082ca 	.word	0x300082ca
100018f8:	30008324 	.word	0x30008324
100018fc:	3000837e 	.word	0x3000837e
10001900:	300083d8 	.word	0x300083d8

10001904 <hw_cfg_optimize_rx_scan>:
10001904:	0002      	movs	r2, r0
10001906:	b510      	push	{r4, lr}
10001908:	281f      	cmp	r0, #31
1000190a:	d904      	bls.n	10001916 <hw_cfg_optimize_rx_scan+0x12>
1000190c:	490f      	ldr	r1, [pc, #60]	; (1000194c <hw_cfg_optimize_rx_scan+0x48>)
1000190e:	4810      	ldr	r0, [pc, #64]	; (10001950 <hw_cfg_optimize_rx_scan+0x4c>)
10001910:	4b10      	ldr	r3, [pc, #64]	; (10001954 <hw_cfg_optimize_rx_scan+0x50>)
10001912:	4798      	blx	r3
10001914:	bd10      	pop	{r4, pc}
10001916:	2001      	movs	r0, #1
10001918:	4090      	lsls	r0, r2
1000191a:	490f      	ldr	r1, [pc, #60]	; (10001958 <hw_cfg_optimize_rx_scan+0x54>)
1000191c:	680b      	ldr	r3, [r1, #0]
1000191e:	4318      	orrs	r0, r3
10001920:	6008      	str	r0, [r1, #0]
10001922:	4298      	cmp	r0, r3
10001924:	d0f6      	beq.n	10001914 <hw_cfg_optimize_rx_scan+0x10>
10001926:	3801      	subs	r0, #1
10001928:	1e42      	subs	r2, r0, #1
1000192a:	4190      	sbcs	r0, r2
1000192c:	4a0b      	ldr	r2, [pc, #44]	; (1000195c <hw_cfg_optimize_rx_scan+0x58>)
1000192e:	b2c0      	uxtb	r0, r0
10001930:	2b00      	cmp	r3, #0
10001932:	d002      	beq.n	1000193a <hw_cfg_optimize_rx_scan+0x36>
10001934:	7811      	ldrb	r1, [r2, #0]
10001936:	4281      	cmp	r1, r0
10001938:	d0ec      	beq.n	10001914 <hw_cfg_optimize_rx_scan+0x10>
1000193a:	7010      	strb	r0, [r2, #0]
1000193c:	425a      	negs	r2, r3
1000193e:	4153      	adcs	r3, r2
10001940:	4907      	ldr	r1, [pc, #28]	; (10001960 <hw_cfg_optimize_rx_scan+0x5c>)
10001942:	425b      	negs	r3, r3
10001944:	4019      	ands	r1, r3
10001946:	4b07      	ldr	r3, [pc, #28]	; (10001964 <hw_cfg_optimize_rx_scan+0x60>)
10001948:	4798      	blx	r3
1000194a:	e7e3      	b.n	10001914 <hw_cfg_optimize_rx_scan+0x10>
1000194c:	100059c1 	.word	0x100059c1
10001950:	10005997 	.word	0x10005997
10001954:	000066b1 	.word	0x000066b1
10001958:	20014dbc 	.word	0x20014dbc
1000195c:	20014da8 	.word	0x20014da8
10001960:	20014db4 	.word	0x20014db4
10001964:	10001791 	.word	0x10001791

10001968 <hw_cfg_restore_rx_scan>:
10001968:	b510      	push	{r4, lr}
1000196a:	281f      	cmp	r0, #31
1000196c:	d904      	bls.n	10001978 <hw_cfg_restore_rx_scan+0x10>
1000196e:	4910      	ldr	r1, [pc, #64]	; (100019b0 <hw_cfg_restore_rx_scan+0x48>)
10001970:	4810      	ldr	r0, [pc, #64]	; (100019b4 <hw_cfg_restore_rx_scan+0x4c>)
10001972:	4b11      	ldr	r3, [pc, #68]	; (100019b8 <hw_cfg_restore_rx_scan+0x50>)
10001974:	4798      	blx	r3
10001976:	bd10      	pop	{r4, pc}
10001978:	2301      	movs	r3, #1
1000197a:	4910      	ldr	r1, [pc, #64]	; (100019bc <hw_cfg_restore_rx_scan+0x54>)
1000197c:	4083      	lsls	r3, r0
1000197e:	680a      	ldr	r2, [r1, #0]
10001980:	0010      	movs	r0, r2
10001982:	4398      	bics	r0, r3
10001984:	6008      	str	r0, [r1, #0]
10001986:	4290      	cmp	r0, r2
10001988:	d0f5      	beq.n	10001976 <hw_cfg_restore_rx_scan+0xe>
1000198a:	2800      	cmp	r0, #0
1000198c:	d103      	bne.n	10001996 <hw_cfg_restore_rx_scan+0x2e>
1000198e:	480c      	ldr	r0, [pc, #48]	; (100019c0 <hw_cfg_restore_rx_scan+0x58>)
10001990:	4b0c      	ldr	r3, [pc, #48]	; (100019c4 <hw_cfg_restore_rx_scan+0x5c>)
10001992:	4798      	blx	r3
10001994:	e7ef      	b.n	10001976 <hw_cfg_restore_rx_scan+0xe>
10001996:	2801      	cmp	r0, #1
10001998:	d1ed      	bne.n	10001976 <hw_cfg_restore_rx_scan+0xe>
1000199a:	4b0b      	ldr	r3, [pc, #44]	; (100019c8 <hw_cfg_restore_rx_scan+0x60>)
1000199c:	781a      	ldrb	r2, [r3, #0]
1000199e:	2a00      	cmp	r2, #0
100019a0:	d0e9      	beq.n	10001976 <hw_cfg_restore_rx_scan+0xe>
100019a2:	2000      	movs	r0, #0
100019a4:	7018      	strb	r0, [r3, #0]
100019a6:	0001      	movs	r1, r0
100019a8:	4b08      	ldr	r3, [pc, #32]	; (100019cc <hw_cfg_restore_rx_scan+0x64>)
100019aa:	4798      	blx	r3
100019ac:	e7e3      	b.n	10001976 <hw_cfg_restore_rx_scan+0xe>
100019ae:	46c0      	nop			; (mov r8, r8)
100019b0:	100059aa 	.word	0x100059aa
100019b4:	10005997 	.word	0x10005997
100019b8:	000066b1 	.word	0x000066b1
100019bc:	20014dbc 	.word	0x20014dbc
100019c0:	20014db4 	.word	0x20014db4
100019c4:	100017e9 	.word	0x100017e9
100019c8:	20014da8 	.word	0x20014da8
100019cc:	10001791 	.word	0x10001791

100019d0 <pinmux_init>:
100019d0:	22ff      	movs	r2, #255	; 0xff
100019d2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100019d4:	4b43      	ldr	r3, [pc, #268]	; (10001ae4 <pinmux_init+0x114>)
100019d6:	0112      	lsls	r2, r2, #4
100019d8:	5899      	ldr	r1, [r3, r2]
100019da:	4a43      	ldr	r2, [pc, #268]	; (10001ae8 <pinmux_init+0x118>)
100019dc:	2400      	movs	r4, #0
100019de:	589a      	ldr	r2, [r3, r2]
100019e0:	4b42      	ldr	r3, [pc, #264]	; (10001aec <pinmux_init+0x11c>)
100019e2:	4299      	cmp	r1, r3
100019e4:	d104      	bne.n	100019f0 <pinmux_init+0x20>
100019e6:	4b42      	ldr	r3, [pc, #264]	; (10001af0 <pinmux_init+0x120>)
100019e8:	18d4      	adds	r4, r2, r3
100019ea:	4263      	negs	r3, r4
100019ec:	415c      	adcs	r4, r3
100019ee:	0264      	lsls	r4, r4, #9
100019f0:	4e40      	ldr	r6, [pc, #256]	; (10001af4 <pinmux_init+0x124>)
100019f2:	2101      	movs	r1, #1
100019f4:	6833      	ldr	r3, [r6, #0]
100019f6:	091b      	lsrs	r3, r3, #4
100019f8:	001d      	movs	r5, r3
100019fa:	400d      	ands	r5, r1
100019fc:	420b      	tst	r3, r1
100019fe:	d027      	beq.n	10001a50 <pinmux_init+0x80>
10001a00:	2280      	movs	r2, #128	; 0x80
10001a02:	000d      	movs	r5, r1
10001a04:	01d2      	lsls	r2, r2, #7
10001a06:	4314      	orrs	r4, r2
10001a08:	2201      	movs	r2, #1
10001a0a:	6833      	ldr	r3, [r6, #0]
10001a0c:	08d9      	lsrs	r1, r3, #3
10001a0e:	4211      	tst	r1, r2
10001a10:	d028      	beq.n	10001a64 <pinmux_init+0x94>
10001a12:	0b5b      	lsrs	r3, r3, #13
10001a14:	4213      	tst	r3, r2
10001a16:	d022      	beq.n	10001a5e <pinmux_init+0x8e>
10001a18:	4837      	ldr	r0, [pc, #220]	; (10001af8 <pinmux_init+0x128>)
10001a1a:	4b38      	ldr	r3, [pc, #224]	; (10001afc <pinmux_init+0x12c>)
10001a1c:	4798      	blx	r3
10001a1e:	2211      	movs	r2, #17
10001a20:	2500      	movs	r5, #0
10001a22:	4314      	orrs	r4, r2
10001a24:	6833      	ldr	r3, [r6, #0]
10001a26:	05db      	lsls	r3, r3, #23
10001a28:	d529      	bpl.n	10001a7e <pinmux_init+0xae>
10001a2a:	2d00      	cmp	r5, #0
10001a2c:	d13a      	bne.n	10001aa4 <pinmux_init+0xd4>
10001a2e:	2240      	movs	r2, #64	; 0x40
10001a30:	4b33      	ldr	r3, [pc, #204]	; (10001b00 <pinmux_init+0x130>)
10001a32:	4322      	orrs	r2, r4
10001a34:	429a      	cmp	r2, r3
10001a36:	d838      	bhi.n	10001aaa <pinmux_init+0xda>
10001a38:	4b32      	ldr	r3, [pc, #200]	; (10001b04 <pinmux_init+0x134>)
10001a3a:	18d0      	adds	r0, r2, r3
10001a3c:	280a      	cmp	r0, #10
10001a3e:	d843      	bhi.n	10001ac8 <pinmux_init+0xf8>
10001a40:	f003 fb0e 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10001a44:	42424249 	.word	0x42424249
10001a48:	42424242 	.word	0x42424242
10001a4c:	314b      	.short	0x314b
10001a4e:	47          	.byte	0x47
10001a4f:	00          	.byte	0x00
10001a50:	482d      	ldr	r0, [pc, #180]	; (10001b08 <pinmux_init+0x138>)
10001a52:	4b2a      	ldr	r3, [pc, #168]	; (10001afc <pinmux_init+0x12c>)
10001a54:	4798      	blx	r3
10001a56:	2280      	movs	r2, #128	; 0x80
10001a58:	0192      	lsls	r2, r2, #6
10001a5a:	4314      	orrs	r4, r2
10001a5c:	e7d4      	b.n	10001a08 <pinmux_init+0x38>
10001a5e:	2219      	movs	r2, #25
10001a60:	4314      	orrs	r4, r2
10001a62:	e7df      	b.n	10001a24 <pinmux_init+0x54>
10001a64:	0b9b      	lsrs	r3, r3, #14
10001a66:	001d      	movs	r5, r3
10001a68:	4924      	ldr	r1, [pc, #144]	; (10001afc <pinmux_init+0x12c>)
10001a6a:	4828      	ldr	r0, [pc, #160]	; (10001b0c <pinmux_init+0x13c>)
10001a6c:	4015      	ands	r5, r2
10001a6e:	4213      	tst	r3, r2
10001a70:	d002      	beq.n	10001a78 <pinmux_init+0xa8>
10001a72:	4788      	blx	r1
10001a74:	221b      	movs	r2, #27
10001a76:	e7d3      	b.n	10001a20 <pinmux_init+0x50>
10001a78:	4788      	blx	r1
10001a7a:	221a      	movs	r2, #26
10001a7c:	e7f0      	b.n	10001a60 <pinmux_init+0x90>
10001a7e:	4b1f      	ldr	r3, [pc, #124]	; (10001afc <pinmux_init+0x12c>)
10001a80:	4823      	ldr	r0, [pc, #140]	; (10001b10 <pinmux_init+0x140>)
10001a82:	4798      	blx	r3
10001a84:	2280      	movs	r2, #128	; 0x80
10001a86:	491e      	ldr	r1, [pc, #120]	; (10001b00 <pinmux_init+0x130>)
10001a88:	4b22      	ldr	r3, [pc, #136]	; (10001b14 <pinmux_init+0x144>)
10001a8a:	4322      	orrs	r2, r4
10001a8c:	428a      	cmp	r2, r1
10001a8e:	d126      	bne.n	10001ade <pinmux_init+0x10e>
10001a90:	4921      	ldr	r1, [pc, #132]	; (10001b18 <pinmux_init+0x148>)
10001a92:	4822      	ldr	r0, [pc, #136]	; (10001b1c <pinmux_init+0x14c>)
10001a94:	4c19      	ldr	r4, [pc, #100]	; (10001afc <pinmux_init+0x12c>)
10001a96:	47a0      	blx	r4
10001a98:	2299      	movs	r2, #153	; 0x99
10001a9a:	4921      	ldr	r1, [pc, #132]	; (10001b20 <pinmux_init+0x150>)
10001a9c:	4821      	ldr	r0, [pc, #132]	; (10001b24 <pinmux_init+0x154>)
10001a9e:	4b22      	ldr	r3, [pc, #136]	; (10001b28 <pinmux_init+0x158>)
10001aa0:	0052      	lsls	r2, r2, #1
10001aa2:	4798      	blx	r3
10001aa4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10001aa6:	4b21      	ldr	r3, [pc, #132]	; (10001b2c <pinmux_init+0x15c>)
10001aa8:	e7f2      	b.n	10001a90 <pinmux_init+0xc0>
10001aaa:	4921      	ldr	r1, [pc, #132]	; (10001b30 <pinmux_init+0x160>)
10001aac:	4b21      	ldr	r3, [pc, #132]	; (10001b34 <pinmux_init+0x164>)
10001aae:	428a      	cmp	r2, r1
10001ab0:	d0ee      	beq.n	10001a90 <pinmux_init+0xc0>
10001ab2:	4b1f      	ldr	r3, [pc, #124]	; (10001b30 <pinmux_init+0x160>)
10001ab4:	429a      	cmp	r2, r3
10001ab6:	d809      	bhi.n	10001acc <pinmux_init+0xfc>
10001ab8:	491f      	ldr	r1, [pc, #124]	; (10001b38 <pinmux_init+0x168>)
10001aba:	4b20      	ldr	r3, [pc, #128]	; (10001b3c <pinmux_init+0x16c>)
10001abc:	428a      	cmp	r2, r1
10001abe:	d0e7      	beq.n	10001a90 <pinmux_init+0xc0>
10001ac0:	491f      	ldr	r1, [pc, #124]	; (10001b40 <pinmux_init+0x170>)
10001ac2:	4b20      	ldr	r3, [pc, #128]	; (10001b44 <pinmux_init+0x174>)
10001ac4:	428a      	cmp	r2, r1
10001ac6:	d0e3      	beq.n	10001a90 <pinmux_init+0xc0>
10001ac8:	4b1f      	ldr	r3, [pc, #124]	; (10001b48 <pinmux_init+0x178>)
10001aca:	e7e1      	b.n	10001a90 <pinmux_init+0xc0>
10001acc:	491f      	ldr	r1, [pc, #124]	; (10001b4c <pinmux_init+0x17c>)
10001ace:	4b20      	ldr	r3, [pc, #128]	; (10001b50 <pinmux_init+0x180>)
10001ad0:	e7f8      	b.n	10001ac4 <pinmux_init+0xf4>
10001ad2:	4b20      	ldr	r3, [pc, #128]	; (10001b54 <pinmux_init+0x184>)
10001ad4:	e7dc      	b.n	10001a90 <pinmux_init+0xc0>
10001ad6:	4b20      	ldr	r3, [pc, #128]	; (10001b58 <pinmux_init+0x188>)
10001ad8:	e7da      	b.n	10001a90 <pinmux_init+0xc0>
10001ada:	4b20      	ldr	r3, [pc, #128]	; (10001b5c <pinmux_init+0x18c>)
10001adc:	e7d8      	b.n	10001a90 <pinmux_init+0xc0>
10001ade:	428a      	cmp	r2, r1
10001ae0:	d8e7      	bhi.n	10001ab2 <pinmux_init+0xe2>
10001ae2:	e7a9      	b.n	10001a38 <pinmux_init+0x68>
10001ae4:	40003000 	.word	0x40003000
10001ae8:	00000ff4 	.word	0x00000ff4
10001aec:	5379646e 	.word	0x5379646e
10001af0:	9a870000 	.word	0x9a870000
10001af4:	200012c4 	.word	0x200012c4
10001af8:	10005a37 	.word	0x10005a37
10001afc:	000066b1 	.word	0x000066b1
10001b00:	00002299 	.word	0x00002299
10001b04:	ffffddaf 	.word	0xffffddaf
10001b08:	10005a21 	.word	0x10005a21
10001b0c:	10005a4f 	.word	0x10005a4f
10001b10:	10005a6a 	.word	0x10005a6a
10001b14:	100059f1 	.word	0x100059f1
10001b18:	10005a88 	.word	0x10005a88
10001b1c:	10005ad8 	.word	0x10005ad8
10001b20:	10005b9e 	.word	0x10005b9e
10001b24:	100050ec 	.word	0x100050ec
10001b28:	00006609 	.word	0x00006609
10001b2c:	10005a0f 	.word	0x10005a0f
10001b30:	00004259 	.word	0x00004259
10001b34:	10005a15 	.word	0x10005a15
10001b38:	0000229a 	.word	0x0000229a
10001b3c:	10005a09 	.word	0x10005a09
10001b40:	0000229b 	.word	0x0000229b
10001b44:	10005a03 	.word	0x10005a03
10001b48:	100059d9 	.word	0x100059d9
10001b4c:	00004299 	.word	0x00004299
10001b50:	10005a1b 	.word	0x10005a1b
10001b54:	100059f7 	.word	0x100059f7
10001b58:	100059fd 	.word	0x100059fd
10001b5c:	100059eb 	.word	0x100059eb

10001b60 <pinmux_get_platform_info>:
10001b60:	2010      	movs	r0, #16
10001b62:	4770      	bx	lr

10001b64 <watchdog_init_constructor>:
10001b64:	2202      	movs	r2, #2
10001b66:	4b06      	ldr	r3, [pc, #24]	; (10001b80 <watchdog_init_constructor+0x1c>)
10001b68:	6919      	ldr	r1, [r3, #16]
10001b6a:	4211      	tst	r1, r2
10001b6c:	d003      	beq.n	10001b76 <watchdog_init_constructor+0x12>
10001b6e:	2001      	movs	r0, #1
10001b70:	4904      	ldr	r1, [pc, #16]	; (10001b84 <watchdog_init_constructor+0x20>)
10001b72:	7008      	strb	r0, [r1, #0]
10001b74:	611a      	str	r2, [r3, #16]
10001b76:	4b04      	ldr	r3, [pc, #16]	; (10001b88 <watchdog_init_constructor+0x24>)
10001b78:	4a04      	ldr	r2, [pc, #16]	; (10001b8c <watchdog_init_constructor+0x28>)
10001b7a:	601a      	str	r2, [r3, #0]
10001b7c:	4770      	bx	lr
10001b7e:	46c0      	nop			; (mov r8, r8)
10001b80:	4001f000 	.word	0x4001f000
10001b84:	20014dc0 	.word	0x20014dc0
10001b88:	20000000 	.word	0x20000000
10001b8c:	20014351 	.word	0x20014351

10001b90 <ext_flash_identify>:
10001b90:	4b15      	ldr	r3, [pc, #84]	; (10001be8 <ext_flash_identify+0x58>)
10001b92:	6819      	ldr	r1, [r3, #0]
10001b94:	b2ca      	uxtb	r2, r1
10001b96:	0c09      	lsrs	r1, r1, #16
10001b98:	2918      	cmp	r1, #24
10001b9a:	d900      	bls.n	10001b9e <ext_flash_identify+0xe>
10001b9c:	2118      	movs	r1, #24
10001b9e:	4b13      	ldr	r3, [pc, #76]	; (10001bec <ext_flash_identify+0x5c>)
10001ba0:	2a20      	cmp	r2, #32
10001ba2:	d108      	bne.n	10001bb6 <ext_flash_identify+0x26>
10001ba4:	3a1c      	subs	r2, #28
10001ba6:	721a      	strb	r2, [r3, #8]
10001ba8:	2201      	movs	r2, #1
10001baa:	408a      	lsls	r2, r1
10001bac:	605a      	str	r2, [r3, #4]
10001bae:	7a1b      	ldrb	r3, [r3, #8]
10001bb0:	7003      	strb	r3, [r0, #0]
10001bb2:	2000      	movs	r0, #0
10001bb4:	4770      	bx	lr
10001bb6:	2ac2      	cmp	r2, #194	; 0xc2
10001bb8:	d101      	bne.n	10001bbe <ext_flash_identify+0x2e>
10001bba:	3abd      	subs	r2, #189	; 0xbd
10001bbc:	e7f3      	b.n	10001ba6 <ext_flash_identify+0x16>
10001bbe:	2ac8      	cmp	r2, #200	; 0xc8
10001bc0:	d101      	bne.n	10001bc6 <ext_flash_identify+0x36>
10001bc2:	3ac1      	subs	r2, #193	; 0xc1
10001bc4:	e7ef      	b.n	10001ba6 <ext_flash_identify+0x16>
10001bc6:	2aef      	cmp	r2, #239	; 0xef
10001bc8:	d101      	bne.n	10001bce <ext_flash_identify+0x3e>
10001bca:	3ae9      	subs	r2, #233	; 0xe9
10001bcc:	e7eb      	b.n	10001ba6 <ext_flash_identify+0x16>
10001bce:	2aa1      	cmp	r2, #161	; 0xa1
10001bd0:	d101      	bne.n	10001bd6 <ext_flash_identify+0x46>
10001bd2:	3a99      	subs	r2, #153	; 0x99
10001bd4:	e7e7      	b.n	10001ba6 <ext_flash_identify+0x16>
10001bd6:	2a85      	cmp	r2, #133	; 0x85
10001bd8:	d101      	bne.n	10001bde <ext_flash_identify+0x4e>
10001bda:	3a7c      	subs	r2, #124	; 0x7c
10001bdc:	e7e3      	b.n	10001ba6 <ext_flash_identify+0x16>
10001bde:	2ac4      	cmp	r2, #196	; 0xc4
10001be0:	d1e2      	bne.n	10001ba8 <ext_flash_identify+0x18>
10001be2:	3aba      	subs	r2, #186	; 0xba
10001be4:	e7df      	b.n	10001ba6 <ext_flash_identify+0x16>
10001be6:	46c0      	nop			; (mov r8, r8)
10001be8:	200012b4 	.word	0x200012b4
10001bec:	20014dc4 	.word	0x20014dc4

10001bf0 <ext_flash_enable_AHB_writes>:
10001bf0:	2302      	movs	r3, #2
10001bf2:	2804      	cmp	r0, #4
10001bf4:	d009      	beq.n	10001c0a <ext_flash_enable_AHB_writes+0x1a>
10001bf6:	4b08      	ldr	r3, [pc, #32]	; (10001c18 <ext_flash_enable_AHB_writes+0x28>)
10001bf8:	7a5a      	ldrb	r2, [r3, #9]
10001bfa:	2302      	movs	r3, #2
10001bfc:	429a      	cmp	r2, r3
10001bfe:	d104      	bne.n	10001c0a <ext_flash_enable_AHB_writes+0x1a>
10001c00:	3806      	subs	r0, #6
10001c02:	3330      	adds	r3, #48	; 0x30
10001c04:	2804      	cmp	r0, #4
10001c06:	d900      	bls.n	10001c0a <ext_flash_enable_AHB_writes+0x1a>
10001c08:	3306      	adds	r3, #6
10001c0a:	4a04      	ldr	r2, [pc, #16]	; (10001c1c <ext_flash_enable_AHB_writes+0x2c>)
10001c0c:	021b      	lsls	r3, r3, #8
10001c0e:	4313      	orrs	r3, r2
10001c10:	4a03      	ldr	r2, [pc, #12]	; (10001c20 <ext_flash_enable_AHB_writes+0x30>)
10001c12:	6153      	str	r3, [r2, #20]
10001c14:	4770      	bx	lr
10001c16:	46c0      	nop			; (mov r8, r8)
10001c18:	20014dc4 	.word	0x20014dc4
10001c1c:	00050006 	.word	0x00050006
10001c20:	4000f000 	.word	0x4000f000

10001c24 <ext_flash_inval_cache>:
10001c24:	2280      	movs	r2, #128	; 0x80
10001c26:	4b03      	ldr	r3, [pc, #12]	; (10001c34 <ext_flash_inval_cache+0x10>)
10001c28:	04d2      	lsls	r2, r2, #19
10001c2a:	6919      	ldr	r1, [r3, #16]
10001c2c:	430a      	orrs	r2, r1
10001c2e:	611a      	str	r2, [r3, #16]
10001c30:	6119      	str	r1, [r3, #16]
10001c32:	4770      	bx	lr
10001c34:	4000f000 	.word	0x4000f000

10001c38 <ext_flash_erase>:
10001c38:	b570      	push	{r4, r5, r6, lr}
10001c3a:	4c12      	ldr	r4, [pc, #72]	; (10001c84 <ext_flash_erase+0x4c>)
10001c3c:	2312      	movs	r3, #18
10001c3e:	7a25      	ldrb	r5, [r4, #8]
10001c40:	4285      	cmp	r5, r0
10001c42:	d114      	bne.n	10001c6e <ext_flash_erase+0x36>
10001c44:	6865      	ldr	r5, [r4, #4]
10001c46:	1888      	adds	r0, r1, r2
10001c48:	42a8      	cmp	r0, r5
10001c4a:	d810      	bhi.n	10001c6e <ext_flash_erase+0x36>
10001c4c:	430a      	orrs	r2, r1
10001c4e:	0512      	lsls	r2, r2, #20
10001c50:	d10d      	bne.n	10001c6e <ext_flash_erase+0x36>
10001c52:	4d0d      	ldr	r5, [pc, #52]	; (10001c88 <ext_flash_erase+0x50>)
10001c54:	3b11      	subs	r3, #17
10001c56:	602b      	str	r3, [r5, #0]
10001c58:	4a0c      	ldr	r2, [pc, #48]	; (10001c8c <ext_flash_erase+0x54>)
10001c5a:	4b0d      	ldr	r3, [pc, #52]	; (10001c90 <ext_flash_erase+0x58>)
10001c5c:	6153      	str	r3, [r2, #20]
10001c5e:	4288      	cmp	r0, r1
10001c60:	d807      	bhi.n	10001c72 <ext_flash_erase+0x3a>
10001c62:	4b0c      	ldr	r3, [pc, #48]	; (10001c94 <ext_flash_erase+0x5c>)
10001c64:	6153      	str	r3, [r2, #20]
10001c66:	4b0c      	ldr	r3, [pc, #48]	; (10001c98 <ext_flash_erase+0x60>)
10001c68:	4798      	blx	r3
10001c6a:	2300      	movs	r3, #0
10001c6c:	602b      	str	r3, [r5, #0]
10001c6e:	0018      	movs	r0, r3
10001c70:	bd70      	pop	{r4, r5, r6, pc}
10001c72:	6823      	ldr	r3, [r4, #0]
10001c74:	4e09      	ldr	r6, [pc, #36]	; (10001c9c <ext_flash_erase+0x64>)
10001c76:	199b      	adds	r3, r3, r6
10001c78:	6019      	str	r1, [r3, #0]
10001c7a:	2380      	movs	r3, #128	; 0x80
10001c7c:	015b      	lsls	r3, r3, #5
10001c7e:	18c9      	adds	r1, r1, r3
10001c80:	e7ed      	b.n	10001c5e <ext_flash_erase+0x26>
10001c82:	46c0      	nop			; (mov r8, r8)
10001c84:	20014dc4 	.word	0x20014dc4
10001c88:	4000303c 	.word	0x4000303c
10001c8c:	4000f000 	.word	0x4000f000
10001c90:	20050006 	.word	0x20050006
10001c94:	00050004 	.word	0x00050004
10001c98:	10001c25 	.word	0x10001c25
10001c9c:	00fffffc 	.word	0x00fffffc

10001ca0 <ext_flash_cmp>:
10001ca0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10001ca2:	001c      	movs	r4, r3
10001ca4:	4b2b      	ldr	r3, [pc, #172]	; (10001d54 <ext_flash_cmp+0xb4>)
10001ca6:	9001      	str	r0, [sp, #4]
10001ca8:	000d      	movs	r5, r1
10001caa:	9e01      	ldr	r6, [sp, #4]
10001cac:	0011      	movs	r1, r2
10001cae:	7a1a      	ldrb	r2, [r3, #8]
10001cb0:	2012      	movs	r0, #18
10001cb2:	42b2      	cmp	r2, r6
10001cb4:	d11d      	bne.n	10001cf2 <ext_flash_cmp+0x52>
10001cb6:	685e      	ldr	r6, [r3, #4]
10001cb8:	190a      	adds	r2, r1, r4
10001cba:	42b2      	cmp	r2, r6
10001cbc:	d819      	bhi.n	10001cf2 <ext_flash_cmp+0x52>
10001cbe:	681b      	ldr	r3, [r3, #0]
10001cc0:	18cb      	adds	r3, r1, r3
10001cc2:	9300      	str	r3, [sp, #0]
10001cc4:	2300      	movs	r3, #0
10001cc6:	0018      	movs	r0, r3
10001cc8:	429c      	cmp	r4, r3
10001cca:	d103      	bne.n	10001cd4 <ext_flash_cmp+0x34>
10001ccc:	2800      	cmp	r0, #0
10001cce:	d113      	bne.n	10001cf8 <ext_flash_cmp+0x58>
10001cd0:	6028      	str	r0, [r5, #0]
10001cd2:	e00e      	b.n	10001cf2 <ext_flash_cmp+0x52>
10001cd4:	9a08      	ldr	r2, [sp, #32]
10001cd6:	9e00      	ldr	r6, [sp, #0]
10001cd8:	5cd2      	ldrb	r2, [r2, r3]
10001cda:	5cf6      	ldrb	r6, [r6, r3]
10001cdc:	1b97      	subs	r7, r2, r6
10001cde:	42b2      	cmp	r2, r6
10001ce0:	d008      	beq.n	10001cf4 <ext_flash_cmp+0x54>
10001ce2:	2800      	cmp	r0, #0
10001ce4:	d100      	bne.n	10001ce8 <ext_flash_cmp+0x48>
10001ce6:	0038      	movs	r0, r7
10001ce8:	4332      	orrs	r2, r6
10001cea:	4296      	cmp	r6, r2
10001cec:	d002      	beq.n	10001cf4 <ext_flash_cmp+0x54>
10001cee:	6028      	str	r0, [r5, #0]
10001cf0:	2000      	movs	r0, #0
10001cf2:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
10001cf4:	3301      	adds	r3, #1
10001cf6:	e7e7      	b.n	10001cc8 <ext_flash_cmp+0x28>
10001cf8:	0022      	movs	r2, r4
10001cfa:	4817      	ldr	r0, [pc, #92]	; (10001d58 <ext_flash_cmp+0xb8>)
10001cfc:	4b17      	ldr	r3, [pc, #92]	; (10001d5c <ext_flash_cmp+0xbc>)
10001cfe:	4798      	blx	r3
10001d00:	0027      	movs	r7, r4
10001d02:	2c40      	cmp	r4, #64	; 0x40
10001d04:	d900      	bls.n	10001d08 <ext_flash_cmp+0x68>
10001d06:	2740      	movs	r7, #64	; 0x40
10001d08:	2600      	movs	r6, #0
10001d0a:	42b7      	cmp	r7, r6
10001d0c:	dc17      	bgt.n	10001d3e <ext_flash_cmp+0x9e>
10001d0e:	42bc      	cmp	r4, r7
10001d10:	d91c      	bls.n	10001d4c <ext_flash_cmp+0xac>
10001d12:	4813      	ldr	r0, [pc, #76]	; (10001d60 <ext_flash_cmp+0xc0>)
10001d14:	4b13      	ldr	r3, [pc, #76]	; (10001d64 <ext_flash_cmp+0xc4>)
10001d16:	4798      	blx	r3
10001d18:	2301      	movs	r3, #1
10001d1a:	4e13      	ldr	r6, [pc, #76]	; (10001d68 <ext_flash_cmp+0xc8>)
10001d1c:	6033      	str	r3, [r6, #0]
10001d1e:	9801      	ldr	r0, [sp, #4]
10001d20:	4b12      	ldr	r3, [pc, #72]	; (10001d6c <ext_flash_cmp+0xcc>)
10001d22:	4798      	blx	r3
10001d24:	0022      	movs	r2, r4
10001d26:	9908      	ldr	r1, [sp, #32]
10001d28:	4b11      	ldr	r3, [pc, #68]	; (10001d70 <ext_flash_cmp+0xd0>)
10001d2a:	9800      	ldr	r0, [sp, #0]
10001d2c:	4798      	blx	r3
10001d2e:	4b11      	ldr	r3, [pc, #68]	; (10001d74 <ext_flash_cmp+0xd4>)
10001d30:	4a11      	ldr	r2, [pc, #68]	; (10001d78 <ext_flash_cmp+0xd8>)
10001d32:	615a      	str	r2, [r3, #20]
10001d34:	4b11      	ldr	r3, [pc, #68]	; (10001d7c <ext_flash_cmp+0xdc>)
10001d36:	4798      	blx	r3
10001d38:	2000      	movs	r0, #0
10001d3a:	6030      	str	r0, [r6, #0]
10001d3c:	e7c8      	b.n	10001cd0 <ext_flash_cmp+0x30>
10001d3e:	9b08      	ldr	r3, [sp, #32]
10001d40:	480f      	ldr	r0, [pc, #60]	; (10001d80 <ext_flash_cmp+0xe0>)
10001d42:	5d99      	ldrb	r1, [r3, r6]
10001d44:	4b05      	ldr	r3, [pc, #20]	; (10001d5c <ext_flash_cmp+0xbc>)
10001d46:	4798      	blx	r3
10001d48:	3601      	adds	r6, #1
10001d4a:	e7de      	b.n	10001d0a <ext_flash_cmp+0x6a>
10001d4c:	200a      	movs	r0, #10
10001d4e:	4b0d      	ldr	r3, [pc, #52]	; (10001d84 <ext_flash_cmp+0xe4>)
10001d50:	e7e1      	b.n	10001d16 <ext_flash_cmp+0x76>
10001d52:	46c0      	nop			; (mov r8, r8)
10001d54:	20014dc4 	.word	0x20014dc4
10001d58:	10005ba7 	.word	0x10005ba7
10001d5c:	0002fccd 	.word	0x0002fccd
10001d60:	10005bce 	.word	0x10005bce
10001d64:	0002fdb1 	.word	0x0002fdb1
10001d68:	4000303c 	.word	0x4000303c
10001d6c:	10001bf1 	.word	0x10001bf1
10001d70:	00005821 	.word	0x00005821
10001d74:	4000f000 	.word	0x4000f000
10001d78:	00050004 	.word	0x00050004
10001d7c:	10001c25 	.word	0x10001c25
10001d80:	10005bc8 	.word	0x10005bc8
10001d84:	0002fcfd 	.word	0x0002fcfd

10001d88 <ext_flash_write>:
10001d88:	b5f0      	push	{r4, r5, r6, r7, lr}
10001d8a:	b089      	sub	sp, #36	; 0x24
10001d8c:	001e      	movs	r6, r3
10001d8e:	af02      	add	r7, sp, #8
10001d90:	4b4b      	ldr	r3, [pc, #300]	; (10001ec0 <ext_flash_write+0x138>)
10001d92:	617a      	str	r2, [r7, #20]
10001d94:	7a1d      	ldrb	r5, [r3, #8]
10001d96:	685a      	ldr	r2, [r3, #4]
10001d98:	4285      	cmp	r5, r0
10001d9a:	d103      	bne.n	10001da4 <ext_flash_write+0x1c>
10001d9c:	697c      	ldr	r4, [r7, #20]
10001d9e:	190c      	adds	r4, r1, r4
10001da0:	4294      	cmp	r4, r2
10001da2:	d90a      	bls.n	10001dba <ext_flash_write+0x32>
10001da4:	9201      	str	r2, [sp, #4]
10001da6:	9500      	str	r5, [sp, #0]
10001da8:	0003      	movs	r3, r0
10001daa:	697a      	ldr	r2, [r7, #20]
10001dac:	4845      	ldr	r0, [pc, #276]	; (10001ec4 <ext_flash_write+0x13c>)
10001dae:	4c46      	ldr	r4, [pc, #280]	; (10001ec8 <ext_flash_write+0x140>)
10001db0:	47a0      	blx	r4
10001db2:	2012      	movs	r0, #18
10001db4:	46bd      	mov	sp, r7
10001db6:	b007      	add	sp, #28
10001db8:	bdf0      	pop	{r4, r5, r6, r7, pc}
10001dba:	2000      	movs	r0, #0
10001dbc:	697a      	ldr	r2, [r7, #20]
10001dbe:	4282      	cmp	r2, r0
10001dc0:	d0f8      	beq.n	10001db4 <ext_flash_write+0x2c>
10001dc2:	2201      	movs	r2, #1
10001dc4:	681c      	ldr	r4, [r3, #0]
10001dc6:	4b41      	ldr	r3, [pc, #260]	; (10001ecc <ext_flash_write+0x144>)
10001dc8:	0028      	movs	r0, r5
10001dca:	601a      	str	r2, [r3, #0]
10001dcc:	4b40      	ldr	r3, [pc, #256]	; (10001ed0 <ext_flash_write+0x148>)
10001dce:	190c      	adds	r4, r1, r4
10001dd0:	4798      	blx	r3
10001dd2:	2d09      	cmp	r5, #9
10001dd4:	d13a      	bne.n	10001e4c <ext_flash_write+0xc4>
10001dd6:	466b      	mov	r3, sp
10001dd8:	60fb      	str	r3, [r7, #12]
10001dda:	0e23      	lsrs	r3, r4, #24
10001ddc:	60bb      	str	r3, [r7, #8]
10001dde:	0e33      	lsrs	r3, r6, #24
10001de0:	0e32      	lsrs	r2, r6, #24
10001de2:	607b      	str	r3, [r7, #4]
10001de4:	0e23      	lsrs	r3, r4, #24
10001de6:	1a9b      	subs	r3, r3, r2
10001de8:	425a      	negs	r2, r3
10001dea:	4153      	adcs	r3, r2
10001dec:	466a      	mov	r2, sp
10001dee:	021b      	lsls	r3, r3, #8
10001df0:	1ad3      	subs	r3, r2, r3
10001df2:	469d      	mov	sp, r3
10001df4:	ab02      	add	r3, sp, #8
10001df6:	613b      	str	r3, [r7, #16]
10001df8:	25ff      	movs	r5, #255	; 0xff
10001dfa:	2380      	movs	r3, #128	; 0x80
10001dfc:	4025      	ands	r5, r4
10001dfe:	005b      	lsls	r3, r3, #1
10001e00:	1b5d      	subs	r5, r3, r5
10001e02:	697b      	ldr	r3, [r7, #20]
10001e04:	429d      	cmp	r5, r3
10001e06:	d900      	bls.n	10001e0a <ext_flash_write+0x82>
10001e08:	001d      	movs	r5, r3
10001e0a:	68bb      	ldr	r3, [r7, #8]
10001e0c:	6879      	ldr	r1, [r7, #4]
10001e0e:	0032      	movs	r2, r6
10001e10:	428b      	cmp	r3, r1
10001e12:	d105      	bne.n	10001e20 <ext_flash_write+0x98>
10001e14:	002a      	movs	r2, r5
10001e16:	0031      	movs	r1, r6
10001e18:	6938      	ldr	r0, [r7, #16]
10001e1a:	4b2e      	ldr	r3, [pc, #184]	; (10001ed4 <ext_flash_write+0x14c>)
10001e1c:	4798      	blx	r3
10001e1e:	693a      	ldr	r2, [r7, #16]
10001e20:	0020      	movs	r0, r4
10001e22:	4b2d      	ldr	r3, [pc, #180]	; (10001ed8 <ext_flash_write+0x150>)
10001e24:	0029      	movs	r1, r5
10001e26:	4798      	blx	r3
10001e28:	697b      	ldr	r3, [r7, #20]
10001e2a:	1964      	adds	r4, r4, r5
10001e2c:	1b5b      	subs	r3, r3, r5
10001e2e:	1976      	adds	r6, r6, r5
10001e30:	617b      	str	r3, [r7, #20]
10001e32:	2b00      	cmp	r3, #0
10001e34:	d1e0      	bne.n	10001df8 <ext_flash_write+0x70>
10001e36:	68fb      	ldr	r3, [r7, #12]
10001e38:	469d      	mov	sp, r3
10001e3a:	4b28      	ldr	r3, [pc, #160]	; (10001edc <ext_flash_write+0x154>)
10001e3c:	4a28      	ldr	r2, [pc, #160]	; (10001ee0 <ext_flash_write+0x158>)
10001e3e:	615a      	str	r2, [r3, #20]
10001e40:	4b28      	ldr	r3, [pc, #160]	; (10001ee4 <ext_flash_write+0x15c>)
10001e42:	4798      	blx	r3
10001e44:	2000      	movs	r0, #0
10001e46:	4b21      	ldr	r3, [pc, #132]	; (10001ecc <ext_flash_write+0x144>)
10001e48:	6018      	str	r0, [r3, #0]
10001e4a:	e7b3      	b.n	10001db4 <ext_flash_write+0x2c>
10001e4c:	697b      	ldr	r3, [r7, #20]
10001e4e:	191a      	adds	r2, r3, r4
10001e50:	2301      	movs	r3, #1
10001e52:	421c      	tst	r4, r3
10001e54:	d003      	beq.n	10001e5e <ext_flash_write+0xd6>
10001e56:	7833      	ldrb	r3, [r6, #0]
10001e58:	3601      	adds	r6, #1
10001e5a:	7023      	strb	r3, [r4, #0]
10001e5c:	3401      	adds	r4, #1
10001e5e:	1e90      	subs	r0, r2, #2
10001e60:	42a0      	cmp	r0, r4
10001e62:	d319      	bcc.n	10001e98 <ext_flash_write+0x110>
10001e64:	07a3      	lsls	r3, r4, #30
10001e66:	d506      	bpl.n	10001e76 <ext_flash_write+0xee>
10001e68:	7873      	ldrb	r3, [r6, #1]
10001e6a:	7831      	ldrb	r1, [r6, #0]
10001e6c:	021b      	lsls	r3, r3, #8
10001e6e:	430b      	orrs	r3, r1
10001e70:	8023      	strh	r3, [r4, #0]
10001e72:	3602      	adds	r6, #2
10001e74:	3402      	adds	r4, #2
10001e76:	1b33      	subs	r3, r6, r4
10001e78:	469c      	mov	ip, r3
10001e7a:	1f15      	subs	r5, r2, #4
10001e7c:	4663      	mov	r3, ip
10001e7e:	191b      	adds	r3, r3, r4
10001e80:	42a5      	cmp	r5, r4
10001e82:	d210      	bcs.n	10001ea6 <ext_flash_write+0x11e>
10001e84:	001e      	movs	r6, r3
10001e86:	42a0      	cmp	r0, r4
10001e88:	d306      	bcc.n	10001e98 <ext_flash_write+0x110>
10001e8a:	7819      	ldrb	r1, [r3, #0]
10001e8c:	785b      	ldrb	r3, [r3, #1]
10001e8e:	3602      	adds	r6, #2
10001e90:	021b      	lsls	r3, r3, #8
10001e92:	430b      	orrs	r3, r1
10001e94:	8023      	strh	r3, [r4, #0]
10001e96:	3402      	adds	r4, #2
10001e98:	1b33      	subs	r3, r6, r4
10001e9a:	42a2      	cmp	r2, r4
10001e9c:	d9cd      	bls.n	10001e3a <ext_flash_write+0xb2>
10001e9e:	5d19      	ldrb	r1, [r3, r4]
10001ea0:	7021      	strb	r1, [r4, #0]
10001ea2:	3401      	adds	r4, #1
10001ea4:	e7f9      	b.n	10001e9a <ext_flash_write+0x112>
10001ea6:	785e      	ldrb	r6, [r3, #1]
10001ea8:	7819      	ldrb	r1, [r3, #0]
10001eaa:	0236      	lsls	r6, r6, #8
10001eac:	430e      	orrs	r6, r1
10001eae:	7899      	ldrb	r1, [r3, #2]
10001eb0:	0409      	lsls	r1, r1, #16
10001eb2:	430e      	orrs	r6, r1
10001eb4:	78d9      	ldrb	r1, [r3, #3]
10001eb6:	0609      	lsls	r1, r1, #24
10001eb8:	4331      	orrs	r1, r6
10001eba:	c402      	stmia	r4!, {r1}
10001ebc:	e7de      	b.n	10001e7c <ext_flash_write+0xf4>
10001ebe:	46c0      	nop			; (mov r8, r8)
10001ec0:	20014dc4 	.word	0x20014dc4
10001ec4:	10005bd3 	.word	0x10005bd3
10001ec8:	0002fccd 	.word	0x0002fccd
10001ecc:	4000303c 	.word	0x4000303c
10001ed0:	10001bf1 	.word	0x10001bf1
10001ed4:	00005821 	.word	0x00005821
10001ed8:	20014395 	.word	0x20014395
10001edc:	4000f000 	.word	0x4000f000
10001ee0:	00050004 	.word	0x00050004
10001ee4:	10001c25 	.word	0x10001c25

10001ee8 <ext_flash_read>:
10001ee8:	b570      	push	{r4, r5, r6, lr}
10001eea:	0004      	movs	r4, r0
10001eec:	0018      	movs	r0, r3
10001eee:	4b09      	ldr	r3, [pc, #36]	; (10001f14 <ext_flash_read+0x2c>)
10001ef0:	7a1d      	ldrb	r5, [r3, #8]
10001ef2:	42a5      	cmp	r5, r4
10001ef4:	d103      	bne.n	10001efe <ext_flash_read+0x16>
10001ef6:	685d      	ldr	r5, [r3, #4]
10001ef8:	188c      	adds	r4, r1, r2
10001efa:	42ac      	cmp	r4, r5
10001efc:	d904      	bls.n	10001f08 <ext_flash_read+0x20>
10001efe:	21ff      	movs	r1, #255	; 0xff
10001f00:	4b05      	ldr	r3, [pc, #20]	; (10001f18 <ext_flash_read+0x30>)
10001f02:	4798      	blx	r3
10001f04:	2012      	movs	r0, #18
10001f06:	bd70      	pop	{r4, r5, r6, pc}
10001f08:	681b      	ldr	r3, [r3, #0]
10001f0a:	18c9      	adds	r1, r1, r3
10001f0c:	4b03      	ldr	r3, [pc, #12]	; (10001f1c <ext_flash_read+0x34>)
10001f0e:	4798      	blx	r3
10001f10:	2000      	movs	r0, #0
10001f12:	e7f8      	b.n	10001f06 <ext_flash_read+0x1e>
10001f14:	20014dc4 	.word	0x20014dc4
10001f18:	00005859 	.word	0x00005859
10001f1c:	00005821 	.word	0x00005821

10001f20 <ext_flash_init>:
10001f20:	2380      	movs	r3, #128	; 0x80
10001f22:	b5f0      	push	{r4, r5, r6, r7, lr}
10001f24:	4c3c      	ldr	r4, [pc, #240]	; (10002018 <ext_flash_init+0xf8>)
10001f26:	2500      	movs	r5, #0
10001f28:	0020      	movs	r0, r4
10001f2a:	009b      	lsls	r3, r3, #2
10001f2c:	4a3b      	ldr	r2, [pc, #236]	; (1000201c <ext_flash_init+0xfc>)
10001f2e:	8123      	strh	r3, [r4, #8]
10001f30:	4b3b      	ldr	r3, [pc, #236]	; (10002020 <ext_flash_init+0x100>)
10001f32:	493c      	ldr	r1, [pc, #240]	; (10002024 <ext_flash_init+0x104>)
10001f34:	6013      	str	r3, [r2, #0]
10001f36:	4a3c      	ldr	r2, [pc, #240]	; (10002028 <ext_flash_init+0x108>)
10001f38:	4f3c      	ldr	r7, [pc, #240]	; (1000202c <ext_flash_init+0x10c>)
10001f3a:	6011      	str	r1, [r2, #0]
10001f3c:	4a3c      	ldr	r2, [pc, #240]	; (10002030 <ext_flash_init+0x110>)
10001f3e:	493d      	ldr	r1, [pc, #244]	; (10002034 <ext_flash_init+0x114>)
10001f40:	4e3d      	ldr	r6, [pc, #244]	; (10002038 <ext_flash_init+0x118>)
10001f42:	6011      	str	r1, [r2, #0]
10001f44:	4a3d      	ldr	r2, [pc, #244]	; (1000203c <ext_flash_init+0x11c>)
10001f46:	493e      	ldr	r1, [pc, #248]	; (10002040 <ext_flash_init+0x120>)
10001f48:	b087      	sub	sp, #28
10001f4a:	6011      	str	r1, [r2, #0]
10001f4c:	4a3d      	ldr	r2, [pc, #244]	; (10002044 <ext_flash_init+0x124>)
10001f4e:	0029      	movs	r1, r5
10001f50:	3008      	adds	r0, #8
10001f52:	6027      	str	r7, [r4, #0]
10001f54:	6065      	str	r5, [r4, #4]
10001f56:	6016      	str	r6, [r2, #0]
10001f58:	4798      	blx	r3
10001f5a:	7a23      	ldrb	r3, [r4, #8]
10001f5c:	2b05      	cmp	r3, #5
10001f5e:	d11d      	bne.n	10001f9c <ext_flash_init+0x7c>
10001f60:	4939      	ldr	r1, [pc, #228]	; (10002048 <ext_flash_init+0x128>)
10001f62:	483a      	ldr	r0, [pc, #232]	; (1000204c <ext_flash_init+0x12c>)
10001f64:	4b3a      	ldr	r3, [pc, #232]	; (10002050 <ext_flash_init+0x130>)
10001f66:	4798      	blx	r3
10001f68:	493a      	ldr	r1, [pc, #232]	; (10002054 <ext_flash_init+0x134>)
10001f6a:	4b3b      	ldr	r3, [pc, #236]	; (10002058 <ext_flash_init+0x138>)
10001f6c:	483b      	ldr	r0, [pc, #236]	; (1000205c <ext_flash_init+0x13c>)
10001f6e:	4798      	blx	r3
10001f70:	2201      	movs	r2, #1
10001f72:	4b3b      	ldr	r3, [pc, #236]	; (10002060 <ext_flash_init+0x140>)
10001f74:	493b      	ldr	r1, [pc, #236]	; (10002064 <ext_flash_init+0x144>)
10001f76:	601a      	str	r2, [r3, #0]
10001f78:	608a      	str	r2, [r1, #8]
10001f7a:	601d      	str	r5, [r3, #0]
10001f7c:	2300      	movs	r3, #0
10001f7e:	493a      	ldr	r1, [pc, #232]	; (10002068 <ext_flash_init+0x148>)
10001f80:	ad02      	add	r5, sp, #8
10001f82:	7a20      	ldrb	r0, [r4, #8]
10001f84:	1bc9      	subs	r1, r1, r7
10001f86:	9300      	str	r3, [sp, #0]
10001f88:	2210      	movs	r2, #16
10001f8a:	002b      	movs	r3, r5
10001f8c:	47b0      	blx	r6
10001f8e:	4c37      	ldr	r4, [pc, #220]	; (1000206c <ext_flash_init+0x14c>)
10001f90:	1e01      	subs	r1, r0, #0
10001f92:	d01b      	beq.n	10001fcc <ext_flash_init+0xac>
10001f94:	4836      	ldr	r0, [pc, #216]	; (10002070 <ext_flash_init+0x150>)
10001f96:	47a0      	blx	r4
10001f98:	b007      	add	sp, #28
10001f9a:	bdf0      	pop	{r4, r5, r6, r7, pc}
10001f9c:	1fda      	subs	r2, r3, #7
10001f9e:	2a03      	cmp	r2, #3
10001fa0:	d80e      	bhi.n	10001fc0 <ext_flash_init+0xa0>
10001fa2:	4929      	ldr	r1, [pc, #164]	; (10002048 <ext_flash_init+0x128>)
10001fa4:	4829      	ldr	r0, [pc, #164]	; (1000204c <ext_flash_init+0x12c>)
10001fa6:	4b2a      	ldr	r3, [pc, #168]	; (10002050 <ext_flash_init+0x130>)
10001fa8:	4798      	blx	r3
10001faa:	492a      	ldr	r1, [pc, #168]	; (10002054 <ext_flash_init+0x134>)
10001fac:	482b      	ldr	r0, [pc, #172]	; (1000205c <ext_flash_init+0x13c>)
10001fae:	4b2a      	ldr	r3, [pc, #168]	; (10002058 <ext_flash_init+0x138>)
10001fb0:	4798      	blx	r3
10001fb2:	2201      	movs	r2, #1
10001fb4:	4b2a      	ldr	r3, [pc, #168]	; (10002060 <ext_flash_init+0x140>)
10001fb6:	492f      	ldr	r1, [pc, #188]	; (10002074 <ext_flash_init+0x154>)
10001fb8:	601a      	str	r2, [r3, #0]
10001fba:	4a2a      	ldr	r2, [pc, #168]	; (10002064 <ext_flash_init+0x144>)
10001fbc:	6091      	str	r1, [r2, #8]
10001fbe:	e7dc      	b.n	10001f7a <ext_flash_init+0x5a>
10001fc0:	2b06      	cmp	r3, #6
10001fc2:	d1db      	bne.n	10001f7c <ext_flash_init+0x5c>
10001fc4:	492c      	ldr	r1, [pc, #176]	; (10002078 <ext_flash_init+0x158>)
10001fc6:	4821      	ldr	r0, [pc, #132]	; (1000204c <ext_flash_init+0x12c>)
10001fc8:	4b21      	ldr	r3, [pc, #132]	; (10002050 <ext_flash_init+0x130>)
10001fca:	e7f1      	b.n	10001fb0 <ext_flash_init+0x90>
10001fcc:	4b2b      	ldr	r3, [pc, #172]	; (1000207c <ext_flash_init+0x15c>)
10001fce:	4798      	blx	r3
10001fd0:	4b2b      	ldr	r3, [pc, #172]	; (10002080 <ext_flash_init+0x160>)
10001fd2:	2201      	movs	r2, #1
10001fd4:	681b      	ldr	r3, [r3, #0]
10001fd6:	2800      	cmp	r0, #0
10001fd8:	d018      	beq.n	1000200c <ext_flash_init+0xec>
10001fda:	0b5b      	lsrs	r3, r3, #13
10001fdc:	4829      	ldr	r0, [pc, #164]	; (10002084 <ext_flash_init+0x164>)
10001fde:	4213      	tst	r3, r2
10001fe0:	d100      	bne.n	10001fe4 <ext_flash_init+0xc4>
10001fe2:	4829      	ldr	r0, [pc, #164]	; (10002088 <ext_flash_init+0x168>)
10001fe4:	47a0      	blx	r4
10001fe6:	4b29      	ldr	r3, [pc, #164]	; (1000208c <ext_flash_init+0x16c>)
10001fe8:	4798      	blx	r3
10001fea:	4b29      	ldr	r3, [pc, #164]	; (10002090 <ext_flash_init+0x170>)
10001fec:	2800      	cmp	r0, #0
10001fee:	d100      	bne.n	10001ff2 <ext_flash_init+0xd2>
10001ff0:	4b28      	ldr	r3, [pc, #160]	; (10002094 <ext_flash_init+0x174>)
10001ff2:	0018      	movs	r0, r3
10001ff4:	47a0      	blx	r4
10001ff6:	2600      	movs	r6, #0
10001ff8:	5da9      	ldrb	r1, [r5, r6]
10001ffa:	4827      	ldr	r0, [pc, #156]	; (10002098 <ext_flash_init+0x178>)
10001ffc:	3601      	adds	r6, #1
10001ffe:	47a0      	blx	r4
10002000:	2e10      	cmp	r6, #16
10002002:	d1f9      	bne.n	10001ff8 <ext_flash_init+0xd8>
10002004:	4b25      	ldr	r3, [pc, #148]	; (1000209c <ext_flash_init+0x17c>)
10002006:	4826      	ldr	r0, [pc, #152]	; (100020a0 <ext_flash_init+0x180>)
10002008:	4798      	blx	r3
1000200a:	e7c5      	b.n	10001f98 <ext_flash_init+0x78>
1000200c:	0b9b      	lsrs	r3, r3, #14
1000200e:	4825      	ldr	r0, [pc, #148]	; (100020a4 <ext_flash_init+0x184>)
10002010:	4213      	tst	r3, r2
10002012:	d1e7      	bne.n	10001fe4 <ext_flash_init+0xc4>
10002014:	4824      	ldr	r0, [pc, #144]	; (100020a8 <ext_flash_init+0x188>)
10002016:	e7e5      	b.n	10001fe4 <ext_flash_init+0xc4>
10002018:	20014dc4 	.word	0x20014dc4
1000201c:	200012ac 	.word	0x200012ac
10002020:	10001b91 	.word	0x10001b91
10002024:	10001c39 	.word	0x10001c39
10002028:	200012a8 	.word	0x200012a8
1000202c:	10000000 	.word	0x10000000
10002030:	200012c0 	.word	0x200012c0
10002034:	10001d89 	.word	0x10001d89
10002038:	10001ee9 	.word	0x10001ee9
1000203c:	200012bc 	.word	0x200012bc
10002040:	10001ca1 	.word	0x10001ca1
10002044:	200012b8 	.word	0x200012b8
10002048:	200146d8 	.word	0x200146d8
1000204c:	20001278 	.word	0x20001278
10002050:	00006897 	.word	0x00006897
10002054:	200146d0 	.word	0x200146d0
10002058:	00006715 	.word	0x00006715
1000205c:	200012a4 	.word	0x200012a4
10002060:	50003020 	.word	0x50003020
10002064:	500080fc 	.word	0x500080fc
10002068:	10078000 	.word	0x10078000
1000206c:	0002fccd 	.word	0x0002fccd
10002070:	10005c2c 	.word	0x10005c2c
10002074:	00000ab3 	.word	0x00000ab3
10002078:	200146e0 	.word	0x200146e0
1000207c:	000075f5 	.word	0x000075f5
10002080:	200012c4 	.word	0x200012c4
10002084:	10005c00 	.word	0x10005c00
10002088:	10005c04 	.word	0x10005c04
1000208c:	00007605 	.word	0x00007605
10002090:	10005c10 	.word	0x10005c10
10002094:	10005c20 	.word	0x10005c20
10002098:	10005bc8 	.word	0x10005bc8
1000209c:	0002fdb1 	.word	0x0002fdb1
100020a0:	10005bce 	.word	0x10005bce
100020a4:	10005c08 	.word	0x10005c08
100020a8:	10005c0c 	.word	0x10005c0c

100020ac <pmu_init>:
100020ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100020ae:	2200      	movs	r2, #0
100020b0:	2301      	movs	r3, #1
100020b2:	492e      	ldr	r1, [pc, #184]	; (1000216c <pmu_init+0xc0>)
100020b4:	4c2e      	ldr	r4, [pc, #184]	; (10002170 <pmu_init+0xc4>)
100020b6:	600b      	str	r3, [r1, #0]
100020b8:	0020      	movs	r0, r4
100020ba:	600a      	str	r2, [r1, #0]
100020bc:	2580      	movs	r5, #128	; 0x80
100020be:	600b      	str	r3, [r1, #0]
100020c0:	3240      	adds	r2, #64	; 0x40
100020c2:	2109      	movs	r1, #9
100020c4:	4b2b      	ldr	r3, [pc, #172]	; (10002174 <pmu_init+0xc8>)
100020c6:	4798      	blx	r3
100020c8:	016d      	lsls	r5, r5, #5
100020ca:	4305      	orrs	r5, r0
100020cc:	002b      	movs	r3, r5
100020ce:	2240      	movs	r2, #64	; 0x40
100020d0:	2109      	movs	r1, #9
100020d2:	0007      	movs	r7, r0
100020d4:	4e28      	ldr	r6, [pc, #160]	; (10002178 <pmu_init+0xcc>)
100020d6:	0020      	movs	r0, r4
100020d8:	47b0      	blx	r6
100020da:	2109      	movs	r1, #9
100020dc:	2240      	movs	r2, #64	; 0x40
100020de:	0020      	movs	r0, r4
100020e0:	4b24      	ldr	r3, [pc, #144]	; (10002174 <pmu_init+0xc8>)
100020e2:	4798      	blx	r3
100020e4:	0001      	movs	r1, r0
100020e6:	4285      	cmp	r5, r0
100020e8:	d004      	beq.n	100020f4 <pmu_init+0x48>
100020ea:	0028      	movs	r0, r5
100020ec:	23dc      	movs	r3, #220	; 0xdc
100020ee:	4a23      	ldr	r2, [pc, #140]	; (1000217c <pmu_init+0xd0>)
100020f0:	4d23      	ldr	r5, [pc, #140]	; (10002180 <pmu_init+0xd4>)
100020f2:	47a8      	blx	r5
100020f4:	25c0      	movs	r5, #192	; 0xc0
100020f6:	4823      	ldr	r0, [pc, #140]	; (10002184 <pmu_init+0xd8>)
100020f8:	016d      	lsls	r5, r5, #5
100020fa:	4038      	ands	r0, r7
100020fc:	4305      	orrs	r5, r0
100020fe:	002b      	movs	r3, r5
10002100:	2240      	movs	r2, #64	; 0x40
10002102:	2109      	movs	r1, #9
10002104:	0020      	movs	r0, r4
10002106:	4f1c      	ldr	r7, [pc, #112]	; (10002178 <pmu_init+0xcc>)
10002108:	47b8      	blx	r7
1000210a:	2109      	movs	r1, #9
1000210c:	2240      	movs	r2, #64	; 0x40
1000210e:	0020      	movs	r0, r4
10002110:	4b18      	ldr	r3, [pc, #96]	; (10002174 <pmu_init+0xc8>)
10002112:	4798      	blx	r3
10002114:	0001      	movs	r1, r0
10002116:	4285      	cmp	r5, r0
10002118:	d004      	beq.n	10002124 <pmu_init+0x78>
1000211a:	0028      	movs	r0, r5
1000211c:	23df      	movs	r3, #223	; 0xdf
1000211e:	4a17      	ldr	r2, [pc, #92]	; (1000217c <pmu_init+0xd0>)
10002120:	4d17      	ldr	r5, [pc, #92]	; (10002180 <pmu_init+0xd4>)
10002122:	47a8      	blx	r5
10002124:	2218      	movs	r2, #24
10002126:	2109      	movs	r1, #9
10002128:	4f12      	ldr	r7, [pc, #72]	; (10002174 <pmu_init+0xc8>)
1000212a:	0020      	movs	r0, r4
1000212c:	47b8      	blx	r7
1000212e:	25f0      	movs	r5, #240	; 0xf0
10002130:	2301      	movs	r3, #1
10002132:	006d      	lsls	r5, r5, #1
10002134:	4398      	bics	r0, r3
10002136:	4305      	orrs	r5, r0
10002138:	002b      	movs	r3, r5
1000213a:	2218      	movs	r2, #24
1000213c:	2109      	movs	r1, #9
1000213e:	0020      	movs	r0, r4
10002140:	4e0d      	ldr	r6, [pc, #52]	; (10002178 <pmu_init+0xcc>)
10002142:	47b0      	blx	r6
10002144:	2109      	movs	r1, #9
10002146:	2218      	movs	r2, #24
10002148:	0020      	movs	r0, r4
1000214a:	47b8      	blx	r7
1000214c:	0001      	movs	r1, r0
1000214e:	4285      	cmp	r5, r0
10002150:	d004      	beq.n	1000215c <pmu_init+0xb0>
10002152:	23e5      	movs	r3, #229	; 0xe5
10002154:	0028      	movs	r0, r5
10002156:	4a09      	ldr	r2, [pc, #36]	; (1000217c <pmu_init+0xd0>)
10002158:	4c09      	ldr	r4, [pc, #36]	; (10002180 <pmu_init+0xd4>)
1000215a:	47a0      	blx	r4
1000215c:	2300      	movs	r3, #0
1000215e:	4a03      	ldr	r2, [pc, #12]	; (1000216c <pmu_init+0xc0>)
10002160:	4909      	ldr	r1, [pc, #36]	; (10002188 <pmu_init+0xdc>)
10002162:	6013      	str	r3, [r2, #0]
10002164:	4809      	ldr	r0, [pc, #36]	; (1000218c <pmu_init+0xe0>)
10002166:	4b0a      	ldr	r3, [pc, #40]	; (10002190 <pmu_init+0xe4>)
10002168:	4798      	blx	r3
1000216a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000216c:	5000301c 	.word	0x5000301c
10002170:	0003cd78 	.word	0x0003cd78
10002174:	0000777f 	.word	0x0000777f
10002178:	0000779f 	.word	0x0000779f
1000217c:	10005c48 	.word	0x10005c48
10002180:	00006641 	.word	0x00006641
10002184:	ffffbfff 	.word	0xffffbfff
10002188:	20014820 	.word	0x20014820
1000218c:	200012a0 	.word	0x200012a0
10002190:	00006897 	.word	0x00006897

10002194 <pmu_get_wkup_det>:
10002194:	4b01      	ldr	r3, [pc, #4]	; (1000219c <pmu_get_wkup_det+0x8>)
10002196:	7818      	ldrb	r0, [r3, #0]
10002198:	4770      	bx	lr
1000219a:	46c0      	nop			; (mov r8, r8)
1000219c:	20001234 	.word	0x20001234

100021a0 <pseq_get_boot_status>:
100021a0:	4b01      	ldr	r3, [pc, #4]	; (100021a8 <pseq_get_boot_status+0x8>)
100021a2:	6818      	ldr	r0, [r3, #0]
100021a4:	4770      	bx	lr
100021a6:	46c0      	nop			; (mov r8, r8)
100021a8:	2000117c 	.word	0x2000117c

100021ac <boot_status>:
100021ac:	b570      	push	{r4, r5, r6, lr}
100021ae:	4b30      	ldr	r3, [pc, #192]	; (10002270 <boot_status+0xc4>)
100021b0:	4798      	blx	r3
100021b2:	4b30      	ldr	r3, [pc, #192]	; (10002274 <boot_status+0xc8>)
100021b4:	0005      	movs	r5, r0
100021b6:	4798      	blx	r3
100021b8:	4b2f      	ldr	r3, [pc, #188]	; (10002278 <boot_status+0xcc>)
100021ba:	691a      	ldr	r2, [r3, #16]
100021bc:	07d2      	lsls	r2, r2, #31
100021be:	d502      	bpl.n	100021c6 <boot_status+0x1a>
100021c0:	22f7      	movs	r2, #247	; 0xf7
100021c2:	4215      	tst	r5, r2
100021c4:	d04a      	beq.n	1000225c <boot_status+0xb0>
100021c6:	2202      	movs	r2, #2
100021c8:	6919      	ldr	r1, [r3, #16]
100021ca:	4211      	tst	r1, r2
100021cc:	d148      	bne.n	10002260 <boot_status+0xb4>
100021ce:	691b      	ldr	r3, [r3, #16]
100021d0:	075b      	lsls	r3, r3, #29
100021d2:	d447      	bmi.n	10002264 <boot_status+0xb8>
100021d4:	2800      	cmp	r0, #0
100021d6:	d116      	bne.n	10002206 <boot_status+0x5a>
100021d8:	2d00      	cmp	r5, #0
100021da:	d045      	beq.n	10002268 <boot_status+0xbc>
100021dc:	2401      	movs	r4, #1
100021de:	4b27      	ldr	r3, [pc, #156]	; (1000227c <boot_status+0xd0>)
100021e0:	402c      	ands	r4, r5
100021e2:	3c01      	subs	r4, #1
100021e4:	401c      	ands	r4, r3
100021e6:	4b26      	ldr	r3, [pc, #152]	; (10002280 <boot_status+0xd4>)
100021e8:	18e4      	adds	r4, r4, r3
100021ea:	4215      	tst	r5, r2
100021ec:	d001      	beq.n	100021f2 <boot_status+0x46>
100021ee:	4b25      	ldr	r3, [pc, #148]	; (10002284 <boot_status+0xd8>)
100021f0:	431c      	orrs	r4, r3
100021f2:	076b      	lsls	r3, r5, #29
100021f4:	d502      	bpl.n	100021fc <boot_status+0x50>
100021f6:	4b24      	ldr	r3, [pc, #144]	; (10002288 <boot_status+0xdc>)
100021f8:	431c      	orrs	r4, r3
100021fa:	e002      	b.n	10002202 <boot_status+0x56>
100021fc:	2234      	movs	r2, #52	; 0x34
100021fe:	2c00      	cmp	r4, #0
10002200:	d027      	beq.n	10002252 <boot_status+0xa6>
10002202:	0020      	movs	r0, r4
10002204:	bd70      	pop	{r4, r5, r6, pc}
10002206:	2380      	movs	r3, #128	; 0x80
10002208:	0004      	movs	r4, r0
1000220a:	005b      	lsls	r3, r3, #1
1000220c:	401c      	ands	r4, r3
1000220e:	4218      	tst	r0, r3
10002210:	d000      	beq.n	10002214 <boot_status+0x68>
10002212:	4c1e      	ldr	r4, [pc, #120]	; (1000228c <boot_status+0xe0>)
10002214:	0583      	lsls	r3, r0, #22
10002216:	d501      	bpl.n	1000221c <boot_status+0x70>
10002218:	4b1d      	ldr	r3, [pc, #116]	; (10002290 <boot_status+0xe4>)
1000221a:	431c      	orrs	r4, r3
1000221c:	0543      	lsls	r3, r0, #21
1000221e:	d501      	bpl.n	10002224 <boot_status+0x78>
10002220:	4b1c      	ldr	r3, [pc, #112]	; (10002294 <boot_status+0xe8>)
10002222:	431c      	orrs	r4, r3
10002224:	0503      	lsls	r3, r0, #20
10002226:	d501      	bpl.n	1000222c <boot_status+0x80>
10002228:	4b1b      	ldr	r3, [pc, #108]	; (10002298 <boot_status+0xec>)
1000222a:	431c      	orrs	r4, r3
1000222c:	04c3      	lsls	r3, r0, #19
1000222e:	d501      	bpl.n	10002234 <boot_status+0x88>
10002230:	4b1a      	ldr	r3, [pc, #104]	; (1000229c <boot_status+0xf0>)
10002232:	431c      	orrs	r4, r3
10002234:	0483      	lsls	r3, r0, #18
10002236:	d501      	bpl.n	1000223c <boot_status+0x90>
10002238:	4b19      	ldr	r3, [pc, #100]	; (100022a0 <boot_status+0xf4>)
1000223a:	431c      	orrs	r4, r3
1000223c:	0443      	lsls	r3, r0, #17
1000223e:	d501      	bpl.n	10002244 <boot_status+0x98>
10002240:	4b18      	ldr	r3, [pc, #96]	; (100022a4 <boot_status+0xf8>)
10002242:	431c      	orrs	r4, r3
10002244:	0403      	lsls	r3, r0, #16
10002246:	d501      	bpl.n	1000224c <boot_status+0xa0>
10002248:	4b17      	ldr	r3, [pc, #92]	; (100022a8 <boot_status+0xfc>)
1000224a:	e7d5      	b.n	100021f8 <boot_status+0x4c>
1000224c:	2c00      	cmp	r4, #0
1000224e:	d1d8      	bne.n	10002202 <boot_status+0x56>
10002250:	2252      	movs	r2, #82	; 0x52
10002252:	4916      	ldr	r1, [pc, #88]	; (100022ac <boot_status+0x100>)
10002254:	4816      	ldr	r0, [pc, #88]	; (100022b0 <boot_status+0x104>)
10002256:	4b17      	ldr	r3, [pc, #92]	; (100022b4 <boot_status+0x108>)
10002258:	4798      	blx	r3
1000225a:	e7d2      	b.n	10002202 <boot_status+0x56>
1000225c:	4c16      	ldr	r4, [pc, #88]	; (100022b8 <boot_status+0x10c>)
1000225e:	e7d0      	b.n	10002202 <boot_status+0x56>
10002260:	4c16      	ldr	r4, [pc, #88]	; (100022bc <boot_status+0x110>)
10002262:	e7ce      	b.n	10002202 <boot_status+0x56>
10002264:	4c16      	ldr	r4, [pc, #88]	; (100022c0 <boot_status+0x114>)
10002266:	e7cc      	b.n	10002202 <boot_status+0x56>
10002268:	2480      	movs	r4, #128	; 0x80
1000226a:	0464      	lsls	r4, r4, #17
1000226c:	e7c9      	b.n	10002202 <boot_status+0x56>
1000226e:	46c0      	nop			; (mov r8, r8)
10002270:	10002195 	.word	0x10002195
10002274:	100021a1 	.word	0x100021a1
10002278:	4001f000 	.word	0x4001f000
1000227c:	fbffffff 	.word	0xfbffffff
10002280:	04000001 	.word	0x04000001
10002284:	04000002 	.word	0x04000002
10002288:	04000004 	.word	0x04000004
1000228c:	08000001 	.word	0x08000001
10002290:	08000002 	.word	0x08000002
10002294:	08000004 	.word	0x08000004
10002298:	08000008 	.word	0x08000008
1000229c:	08000010 	.word	0x08000010
100022a0:	08000020 	.word	0x08000020
100022a4:	08000040 	.word	0x08000040
100022a8:	08000080 	.word	0x08000080
100022ac:	10005c4e 	.word	0x10005c4e
100022b0:	10005c56 	.word	0x10005c56
100022b4:	00006609 	.word	0x00006609
100022b8:	02000001 	.word	0x02000001
100022bc:	02000002 	.word	0x02000002
100022c0:	02000004 	.word	0x02000004

100022c4 <reset_print>:
100022c4:	b570      	push	{r4, r5, r6, lr}
100022c6:	4d0d      	ldr	r5, [pc, #52]	; (100022fc <reset_print+0x38>)
100022c8:	47a8      	blx	r5
100022ca:	4c0d      	ldr	r4, [pc, #52]	; (10002300 <reset_print+0x3c>)
100022cc:	0001      	movs	r1, r0
100022ce:	480d      	ldr	r0, [pc, #52]	; (10002304 <reset_print+0x40>)
100022d0:	47a0      	blx	r4
100022d2:	47a8      	blx	r5
100022d4:	01c3      	lsls	r3, r0, #7
100022d6:	d501      	bpl.n	100022dc <reset_print+0x18>
100022d8:	480b      	ldr	r0, [pc, #44]	; (10002308 <reset_print+0x44>)
100022da:	47a0      	blx	r4
100022dc:	47a8      	blx	r5
100022de:	0183      	lsls	r3, r0, #6
100022e0:	d501      	bpl.n	100022e6 <reset_print+0x22>
100022e2:	480a      	ldr	r0, [pc, #40]	; (1000230c <reset_print+0x48>)
100022e4:	47a0      	blx	r4
100022e6:	47a8      	blx	r5
100022e8:	0103      	lsls	r3, r0, #4
100022ea:	d501      	bpl.n	100022f0 <reset_print+0x2c>
100022ec:	4808      	ldr	r0, [pc, #32]	; (10002310 <reset_print+0x4c>)
100022ee:	47a0      	blx	r4
100022f0:	47a8      	blx	r5
100022f2:	0143      	lsls	r3, r0, #5
100022f4:	d501      	bpl.n	100022fa <reset_print+0x36>
100022f6:	4807      	ldr	r0, [pc, #28]	; (10002314 <reset_print+0x50>)
100022f8:	47a0      	blx	r4
100022fa:	bd70      	pop	{r4, r5, r6, pc}
100022fc:	100021ad 	.word	0x100021ad
10002300:	000066b1 	.word	0x000066b1
10002304:	10005c5d 	.word	0x10005c5d
10002308:	10005c6e 	.word	0x10005c6e
1000230c:	10005c78 	.word	0x10005c78
10002310:	10005c85 	.word	0x10005c85
10002314:	10005c97 	.word	0x10005c97

10002318 <brwnout_init>:
10002318:	b510      	push	{r4, lr}
1000231a:	4904      	ldr	r1, [pc, #16]	; (1000232c <brwnout_init+0x14>)
1000231c:	4c04      	ldr	r4, [pc, #16]	; (10002330 <brwnout_init+0x18>)
1000231e:	4805      	ldr	r0, [pc, #20]	; (10002334 <brwnout_init+0x1c>)
10002320:	47a0      	blx	r4
10002322:	4905      	ldr	r1, [pc, #20]	; (10002338 <brwnout_init+0x20>)
10002324:	4805      	ldr	r0, [pc, #20]	; (1000233c <brwnout_init+0x24>)
10002326:	47a0      	blx	r4
10002328:	bd10      	pop	{r4, pc}
1000232a:	46c0      	nop			; (mov r8, r8)
1000232c:	20014a64 	.word	0x20014a64
10002330:	00006897 	.word	0x00006897
10002334:	20001278 	.word	0x20001278
10002338:	20014a5c 	.word	0x20014a5c
1000233c:	200012a0 	.word	0x200012a0

10002340 <swd_dbg_constructor>:
10002340:	b510      	push	{r4, lr}
10002342:	4904      	ldr	r1, [pc, #16]	; (10002354 <swd_dbg_constructor+0x14>)
10002344:	4c04      	ldr	r4, [pc, #16]	; (10002358 <swd_dbg_constructor+0x18>)
10002346:	4805      	ldr	r0, [pc, #20]	; (1000235c <swd_dbg_constructor+0x1c>)
10002348:	47a0      	blx	r4
1000234a:	4905      	ldr	r1, [pc, #20]	; (10002360 <swd_dbg_constructor+0x20>)
1000234c:	4805      	ldr	r0, [pc, #20]	; (10002364 <swd_dbg_constructor+0x24>)
1000234e:	47a0      	blx	r4
10002350:	bd10      	pop	{r4, pc}
10002352:	46c0      	nop			; (mov r8, r8)
10002354:	20014a9c 	.word	0x20014a9c
10002358:	00006805 	.word	0x00006805
1000235c:	20001284 	.word	0x20001284
10002360:	20014a94 	.word	0x20014a94
10002364:	20001260 	.word	0x20001260

10002368 <invalidate_reg_file>:
10002368:	2200      	movs	r2, #0
1000236a:	1d03      	adds	r3, r0, #4
1000236c:	306c      	adds	r0, #108	; 0x6c
1000236e:	701a      	strb	r2, [r3, #0]
10002370:	3308      	adds	r3, #8
10002372:	4283      	cmp	r3, r0
10002374:	d1fb      	bne.n	1000236e <invalidate_reg_file+0x6>
10002376:	2000      	movs	r0, #0
10002378:	4770      	bx	lr
	...

1000237c <traceback_reporter>:
1000237c:	b570      	push	{r4, r5, r6, lr}
1000237e:	7a01      	ldrb	r1, [r0, #8]
10002380:	0004      	movs	r4, r0
10002382:	2002      	movs	r0, #2
10002384:	290a      	cmp	r1, #10
10002386:	d81f      	bhi.n	100023c8 <traceback_reporter+0x4c>
10002388:	6822      	ldr	r2, [r4, #0]
1000238a:	2900      	cmp	r1, #0
1000238c:	d007      	beq.n	1000239e <traceback_reporter+0x22>
1000238e:	1c4b      	adds	r3, r1, #1
10002390:	4083      	lsls	r3, r0
10002392:	18e3      	adds	r3, r4, r3
10002394:	685b      	ldr	r3, [r3, #4]
10002396:	6f95      	ldr	r5, [r2, #120]	; 0x78
10002398:	3003      	adds	r0, #3
1000239a:	42ab      	cmp	r3, r5
1000239c:	d014      	beq.n	100023c8 <traceback_reporter+0x4c>
1000239e:	7a63      	ldrb	r3, [r4, #9]
100023a0:	428b      	cmp	r3, r1
100023a2:	d803      	bhi.n	100023ac <traceback_reporter+0x30>
100023a4:	6f92      	ldr	r2, [r2, #120]	; 0x78
100023a6:	4809      	ldr	r0, [pc, #36]	; (100023cc <traceback_reporter+0x50>)
100023a8:	4b09      	ldr	r3, [pc, #36]	; (100023d0 <traceback_reporter+0x54>)
100023aa:	4798      	blx	r3
100023ac:	200a      	movs	r0, #10
100023ae:	7a23      	ldrb	r3, [r4, #8]
100023b0:	6821      	ldr	r1, [r4, #0]
100023b2:	1c5a      	adds	r2, r3, #1
100023b4:	b2d2      	uxtb	r2, r2
100023b6:	4290      	cmp	r0, r2
100023b8:	4180      	sbcs	r0, r0
100023ba:	7222      	strb	r2, [r4, #8]
100023bc:	3302      	adds	r3, #2
100023be:	6f89      	ldr	r1, [r1, #120]	; 0x78
100023c0:	009b      	lsls	r3, r3, #2
100023c2:	18e4      	adds	r4, r4, r3
100023c4:	6061      	str	r1, [r4, #4]
100023c6:	4240      	negs	r0, r0
100023c8:	bd70      	pop	{r4, r5, r6, pc}
100023ca:	46c0      	nop			; (mov r8, r8)
100023cc:	10005cde 	.word	0x10005cde
100023d0:	0002fccd 	.word	0x0002fccd

100023d4 <execute_traceback>:
100023d4:	b5f0      	push	{r4, r5, r6, r7, lr}
100023d6:	b0b1      	sub	sp, #196	; 0xc4
100023d8:	0016      	movs	r6, r2
100023da:	aa02      	add	r2, sp, #8
100023dc:	7353      	strb	r3, [r2, #13]
100023de:	2300      	movs	r3, #0
100023e0:	7313      	strb	r3, [r2, #12]
100023e2:	4bbc      	ldr	r3, [pc, #752]	; (100026d4 <execute_traceback+0x300>)
100023e4:	0005      	movs	r5, r0
100023e6:	9304      	str	r3, [sp, #16]
100023e8:	a810      	add	r0, sp, #64	; 0x40
100023ea:	4bbb      	ldr	r3, [pc, #748]	; (100026d8 <execute_traceback+0x304>)
100023ec:	000c      	movs	r4, r1
100023ee:	9003      	str	r0, [sp, #12]
100023f0:	4798      	blx	r3
100023f2:	2800      	cmp	r0, #0
100023f4:	d000      	beq.n	100023f8 <execute_traceback+0x24>
100023f6:	e15b      	b.n	100026b0 <execute_traceback+0x2dc>
100023f8:	9b03      	ldr	r3, [sp, #12]
100023fa:	2202      	movs	r2, #2
100023fc:	0019      	movs	r1, r3
100023fe:	3168      	adds	r1, #104	; 0x68
10002400:	669e      	str	r6, [r3, #104]	; 0x68
10002402:	710a      	strb	r2, [r1, #4]
10002404:	3370      	adds	r3, #112	; 0x70
10002406:	609d      	str	r5, [r3, #8]
10002408:	750a      	strb	r2, [r1, #20]
1000240a:	a803      	add	r0, sp, #12
1000240c:	601c      	str	r4, [r3, #0]
1000240e:	711a      	strb	r2, [r3, #4]
10002410:	9b04      	ldr	r3, [sp, #16]
10002412:	4798      	blx	r3
10002414:	2800      	cmp	r0, #0
10002416:	d000      	beq.n	1000241a <execute_traceback+0x46>
10002418:	e14a      	b.n	100026b0 <execute_traceback+0x2dc>
1000241a:	23c8      	movs	r3, #200	; 0xc8
1000241c:	2401      	movs	r4, #1
1000241e:	005b      	lsls	r3, r3, #1
10002420:	9300      	str	r3, [sp, #0]
10002422:	9a03      	ldr	r2, [sp, #12]
10002424:	6f91      	ldr	r1, [r2, #120]	; 0x78
10002426:	000b      	movs	r3, r1
10002428:	43a3      	bics	r3, r4
1000242a:	881b      	ldrh	r3, [r3, #0]
1000242c:	0b58      	lsrs	r0, r3, #13
1000242e:	0347      	lsls	r7, r0, #13
10002430:	2800      	cmp	r0, #0
10002432:	d139      	bne.n	100024a8 <execute_traceback+0xd4>
10002434:	20c0      	movs	r0, #192	; 0xc0
10002436:	25c0      	movs	r5, #192	; 0xc0
10002438:	0140      	lsls	r0, r0, #5
1000243a:	4018      	ands	r0, r3
1000243c:	016d      	lsls	r5, r5, #5
1000243e:	42a8      	cmp	r0, r5
10002440:	d032      	beq.n	100024a8 <execute_traceback+0xd4>
10002442:	2007      	movs	r0, #7
10002444:	0adf      	lsrs	r7, r3, #11
10002446:	055d      	lsls	r5, r3, #21
10002448:	08d9      	lsrs	r1, r3, #3
1000244a:	4001      	ands	r1, r0
1000244c:	b2fe      	uxtb	r6, r7
1000244e:	0eed      	lsrs	r5, r5, #27
10002450:	4018      	ands	r0, r3
10002452:	2f01      	cmp	r7, #1
10002454:	d01e      	beq.n	10002494 <execute_traceback+0xc0>
10002456:	2e02      	cmp	r6, #2
10002458:	d021      	beq.n	1000249e <execute_traceback+0xca>
1000245a:	2e00      	cmp	r6, #0
1000245c:	d10b      	bne.n	10002476 <execute_traceback+0xa2>
1000245e:	00c9      	lsls	r1, r1, #3
10002460:	5853      	ldr	r3, [r2, r1]
10002462:	00c0      	lsls	r0, r0, #3
10002464:	40ab      	lsls	r3, r5
10002466:	5013      	str	r3, [r2, r0]
10002468:	2304      	movs	r3, #4
1000246a:	9a03      	ldr	r2, [sp, #12]
1000246c:	1851      	adds	r1, r2, r1
1000246e:	7909      	ldrb	r1, [r1, #4]
10002470:	1812      	adds	r2, r2, r0
10002472:	430b      	orrs	r3, r1
10002474:	7113      	strb	r3, [r2, #4]
10002476:	9a03      	ldr	r2, [sp, #12]
10002478:	6f93      	ldr	r3, [r2, #120]	; 0x78
1000247a:	3302      	adds	r3, #2
1000247c:	6793      	str	r3, [r2, #120]	; 0x78
1000247e:	2b01      	cmp	r3, #1
10002480:	d800      	bhi.n	10002484 <execute_traceback+0xb0>
10002482:	e19f      	b.n	100027c4 <execute_traceback+0x3f0>
10002484:	9b00      	ldr	r3, [sp, #0]
10002486:	3b01      	subs	r3, #1
10002488:	b29b      	uxth	r3, r3
1000248a:	9300      	str	r3, [sp, #0]
1000248c:	2b00      	cmp	r3, #0
1000248e:	d1c8      	bne.n	10002422 <execute_traceback+0x4e>
10002490:	2104      	movs	r1, #4
10002492:	e10a      	b.n	100026aa <execute_traceback+0x2d6>
10002494:	00c9      	lsls	r1, r1, #3
10002496:	5853      	ldr	r3, [r2, r1]
10002498:	00c0      	lsls	r0, r0, #3
1000249a:	40eb      	lsrs	r3, r5
1000249c:	e7e3      	b.n	10002466 <execute_traceback+0x92>
1000249e:	00c9      	lsls	r1, r1, #3
100024a0:	5853      	ldr	r3, [r2, r1]
100024a2:	00c0      	lsls	r0, r0, #3
100024a4:	412b      	asrs	r3, r5
100024a6:	e7de      	b.n	10002466 <execute_traceback+0x92>
100024a8:	26c0      	movs	r6, #192	; 0xc0
100024aa:	0add      	lsrs	r5, r3, #11
100024ac:	02e8      	lsls	r0, r5, #11
100024ae:	0176      	lsls	r6, r6, #5
100024b0:	42b0      	cmp	r0, r6
100024b2:	d127      	bne.n	10002504 <execute_traceback+0x130>
100024b4:	2180      	movs	r1, #128	; 0x80
100024b6:	2507      	movs	r5, #7
100024b8:	0089      	lsls	r1, r1, #2
100024ba:	4019      	ands	r1, r3
100024bc:	468c      	mov	ip, r1
100024be:	099e      	lsrs	r6, r3, #6
100024c0:	08d9      	lsrs	r1, r3, #3
100024c2:	4029      	ands	r1, r5
100024c4:	402e      	ands	r6, r5
100024c6:	401d      	ands	r5, r3
100024c8:	00c9      	lsls	r1, r1, #3
100024ca:	00ed      	lsls	r5, r5, #3
100024cc:	5850      	ldr	r0, [r2, r1]
100024ce:	1957      	adds	r7, r2, r5
100024d0:	055b      	lsls	r3, r3, #21
100024d2:	d50e      	bpl.n	100024f2 <execute_traceback+0x11e>
100024d4:	4663      	mov	r3, ip
100024d6:	2b00      	cmp	r3, #0
100024d8:	d109      	bne.n	100024ee <execute_traceback+0x11a>
100024da:	1980      	adds	r0, r0, r6
100024dc:	2204      	movs	r2, #4
100024de:	6038      	str	r0, [r7, #0]
100024e0:	9b03      	ldr	r3, [sp, #12]
100024e2:	1859      	adds	r1, r3, r1
100024e4:	7909      	ldrb	r1, [r1, #4]
100024e6:	195b      	adds	r3, r3, r5
100024e8:	430a      	orrs	r2, r1
100024ea:	711a      	strb	r2, [r3, #4]
100024ec:	e7c3      	b.n	10002476 <execute_traceback+0xa2>
100024ee:	1b80      	subs	r0, r0, r6
100024f0:	e7f4      	b.n	100024dc <execute_traceback+0x108>
100024f2:	00f6      	lsls	r6, r6, #3
100024f4:	58b3      	ldr	r3, [r6, r2]
100024f6:	4662      	mov	r2, ip
100024f8:	2a00      	cmp	r2, #0
100024fa:	d101      	bne.n	10002500 <execute_traceback+0x12c>
100024fc:	1818      	adds	r0, r3, r0
100024fe:	e7ed      	b.n	100024dc <execute_traceback+0x108>
10002500:	1ac0      	subs	r0, r0, r3
10002502:	e7eb      	b.n	100024dc <execute_traceback+0x108>
10002504:	2680      	movs	r6, #128	; 0x80
10002506:	01b6      	lsls	r6, r6, #6
10002508:	42b7      	cmp	r7, r6
1000250a:	d10a      	bne.n	10002522 <execute_traceback+0x14e>
1000250c:	07a9      	lsls	r1, r5, #30
1000250e:	d1b2      	bne.n	10002476 <execute_traceback+0xa2>
10002510:	0559      	lsls	r1, r3, #21
10002512:	0f49      	lsrs	r1, r1, #29
10002514:	00c9      	lsls	r1, r1, #3
10002516:	b2db      	uxtb	r3, r3
10002518:	5053      	str	r3, [r2, r1]
1000251a:	9b03      	ldr	r3, [sp, #12]
1000251c:	1859      	adds	r1, r3, r1
1000251e:	710c      	strb	r4, [r1, #4]
10002520:	e7a9      	b.n	10002476 <execute_traceback+0xa2>
10002522:	0a9d      	lsrs	r5, r3, #10
10002524:	02ae      	lsls	r6, r5, #10
10002526:	2d10      	cmp	r5, #16
10002528:	d156      	bne.n	100025d8 <execute_traceback+0x204>
1000252a:	2107      	movs	r1, #7
1000252c:	0998      	lsrs	r0, r3, #6
1000252e:	b2c0      	uxtb	r0, r0
10002530:	08dd      	lsrs	r5, r3, #3
10002532:	3801      	subs	r0, #1
10002534:	400d      	ands	r5, r1
10002536:	4019      	ands	r1, r3
10002538:	280e      	cmp	r0, #14
1000253a:	d89c      	bhi.n	10002476 <execute_traceback+0xa2>
1000253c:	f002 fd3a 	bl	10004fb4 <__gnu_thumb1_case_sqi>
10002540:	251d1608 	.word	0x251d1608
10002544:	9b9b9b9b 	.word	0x9b9b9b9b
10002548:	9b9b2c9b 	.word	0x9b9b2c9b
1000254c:	3932      	.short	0x3932
1000254e:	40          	.byte	0x40
1000254f:	00          	.byte	0x00
10002550:	00c8      	lsls	r0, r1, #3
10002552:	1811      	adds	r1, r2, r0
10002554:	00ed      	lsls	r5, r5, #3
10002556:	58ab      	ldr	r3, [r5, r2]
10002558:	680a      	ldr	r2, [r1, #0]
1000255a:	4013      	ands	r3, r2
1000255c:	600b      	str	r3, [r1, #0]
1000255e:	9903      	ldr	r1, [sp, #12]
10002560:	1809      	adds	r1, r1, r0
10002562:	2304      	movs	r3, #4
10002564:	790a      	ldrb	r2, [r1, #4]
10002566:	4313      	orrs	r3, r2
10002568:	710b      	strb	r3, [r1, #4]
1000256a:	e784      	b.n	10002476 <execute_traceback+0xa2>
1000256c:	00c8      	lsls	r0, r1, #3
1000256e:	1811      	adds	r1, r2, r0
10002570:	00ed      	lsls	r5, r5, #3
10002572:	58ab      	ldr	r3, [r5, r2]
10002574:	680a      	ldr	r2, [r1, #0]
10002576:	4053      	eors	r3, r2
10002578:	e7f0      	b.n	1000255c <execute_traceback+0x188>
1000257a:	00c8      	lsls	r0, r1, #3
1000257c:	1811      	adds	r1, r2, r0
1000257e:	00ed      	lsls	r5, r5, #3
10002580:	58ab      	ldr	r3, [r5, r2]
10002582:	680a      	ldr	r2, [r1, #0]
10002584:	409a      	lsls	r2, r3
10002586:	0013      	movs	r3, r2
10002588:	e7e8      	b.n	1000255c <execute_traceback+0x188>
1000258a:	00c8      	lsls	r0, r1, #3
1000258c:	1811      	adds	r1, r2, r0
1000258e:	00ed      	lsls	r5, r5, #3
10002590:	58ab      	ldr	r3, [r5, r2]
10002592:	680a      	ldr	r2, [r1, #0]
10002594:	40da      	lsrs	r2, r3
10002596:	e7f6      	b.n	10002586 <execute_traceback+0x1b2>
10002598:	00ed      	lsls	r5, r5, #3
1000259a:	58ab      	ldr	r3, [r5, r2]
1000259c:	00c8      	lsls	r0, r1, #3
1000259e:	425b      	negs	r3, r3
100025a0:	5013      	str	r3, [r2, r0]
100025a2:	e7dc      	b.n	1000255e <execute_traceback+0x18a>
100025a4:	00c8      	lsls	r0, r1, #3
100025a6:	1811      	adds	r1, r2, r0
100025a8:	00ed      	lsls	r5, r5, #3
100025aa:	58ab      	ldr	r3, [r5, r2]
100025ac:	680a      	ldr	r2, [r1, #0]
100025ae:	4313      	orrs	r3, r2
100025b0:	e7d4      	b.n	1000255c <execute_traceback+0x188>
100025b2:	00c8      	lsls	r0, r1, #3
100025b4:	1811      	adds	r1, r2, r0
100025b6:	00ed      	lsls	r5, r5, #3
100025b8:	58ab      	ldr	r3, [r5, r2]
100025ba:	680a      	ldr	r2, [r1, #0]
100025bc:	4353      	muls	r3, r2
100025be:	e7cd      	b.n	1000255c <execute_traceback+0x188>
100025c0:	00ed      	lsls	r5, r5, #3
100025c2:	58ab      	ldr	r3, [r5, r2]
100025c4:	00c9      	lsls	r1, r1, #3
100025c6:	1850      	adds	r0, r2, r1
100025c8:	425a      	negs	r2, r3
100025ca:	4153      	adcs	r3, r2
100025cc:	6802      	ldr	r2, [r0, #0]
100025ce:	4013      	ands	r3, r2
100025d0:	6003      	str	r3, [r0, #0]
100025d2:	9b03      	ldr	r3, [sp, #12]
100025d4:	1859      	adds	r1, r3, r1
100025d6:	e7c4      	b.n	10002562 <execute_traceback+0x18e>
100025d8:	2590      	movs	r5, #144	; 0x90
100025da:	01ed      	lsls	r5, r5, #7
100025dc:	42a8      	cmp	r0, r5
100025de:	d113      	bne.n	10002608 <execute_traceback+0x234>
100025e0:	2003      	movs	r0, #3
100025e2:	4381      	bics	r1, r0
100025e4:	b2d8      	uxtb	r0, r3
100025e6:	055b      	lsls	r3, r3, #21
100025e8:	3104      	adds	r1, #4
100025ea:	0080      	lsls	r0, r0, #2
100025ec:	0f5b      	lsrs	r3, r3, #29
100025ee:	00db      	lsls	r3, r3, #3
100025f0:	1809      	adds	r1, r1, r0
100025f2:	18d2      	adds	r2, r2, r3
100025f4:	2900      	cmp	r1, #0
100025f6:	d005      	beq.n	10002604 <execute_traceback+0x230>
100025f8:	6809      	ldr	r1, [r1, #0]
100025fa:	6011      	str	r1, [r2, #0]
100025fc:	9a03      	ldr	r2, [sp, #12]
100025fe:	18d3      	adds	r3, r2, r3
10002600:	2280      	movs	r2, #128	; 0x80
10002602:	e772      	b.n	100024ea <execute_traceback+0x116>
10002604:	7111      	strb	r1, [r2, #4]
10002606:	e736      	b.n	10002476 <execute_traceback+0xa2>
10002608:	27c0      	movs	r7, #192	; 0xc0
1000260a:	4d34      	ldr	r5, [pc, #208]	; (100026dc <execute_traceback+0x308>)
1000260c:	01ff      	lsls	r7, r7, #7
1000260e:	401d      	ands	r5, r3
10002610:	42bd      	cmp	r5, r7
10002612:	d117      	bne.n	10002644 <execute_traceback+0x270>
10002614:	0519      	lsls	r1, r3, #20
10002616:	d400      	bmi.n	1000261a <execute_traceback+0x246>
10002618:	e72d      	b.n	10002476 <execute_traceback+0xa2>
1000261a:	2007      	movs	r0, #7
1000261c:	2503      	movs	r5, #3
1000261e:	08d9      	lsrs	r1, r3, #3
10002620:	4001      	ands	r1, r0
10002622:	00c9      	lsls	r1, r1, #3
10002624:	588e      	ldr	r6, [r1, r2]
10002626:	0559      	lsls	r1, r3, #21
10002628:	4003      	ands	r3, r0
1000262a:	40ab      	lsls	r3, r5
1000262c:	0ec9      	lsrs	r1, r1, #27
1000262e:	43ae      	bics	r6, r5
10002630:	0089      	lsls	r1, r1, #2
10002632:	1871      	adds	r1, r6, r1
10002634:	18d2      	adds	r2, r2, r3
10002636:	2900      	cmp	r1, #0
10002638:	d002      	beq.n	10002640 <execute_traceback+0x26c>
1000263a:	7910      	ldrb	r0, [r2, #4]
1000263c:	2800      	cmp	r0, #0
1000263e:	d1db      	bne.n	100025f8 <execute_traceback+0x224>
10002640:	2300      	movs	r3, #0
10002642:	e717      	b.n	10002474 <execute_traceback+0xa0>
10002644:	25ff      	movs	r5, #255	; 0xff
10002646:	001f      	movs	r7, r3
10002648:	43af      	bics	r7, r5
1000264a:	25b0      	movs	r5, #176	; 0xb0
1000264c:	022d      	lsls	r5, r5, #8
1000264e:	42af      	cmp	r7, r5
10002650:	d111      	bne.n	10002676 <execute_traceback+0x2a2>
10002652:	21fe      	movs	r1, #254	; 0xfe
10002654:	0015      	movs	r5, r2
10002656:	2004      	movs	r0, #4
10002658:	0049      	lsls	r1, r1, #1
1000265a:	009e      	lsls	r6, r3, #2
1000265c:	3568      	adds	r5, #104	; 0x68
1000265e:	400e      	ands	r6, r1
10002660:	7929      	ldrb	r1, [r5, #4]
10002662:	4308      	orrs	r0, r1
10002664:	6e91      	ldr	r1, [r2, #104]	; 0x68
10002666:	061b      	lsls	r3, r3, #24
10002668:	d403      	bmi.n	10002672 <execute_traceback+0x29e>
1000266a:	1871      	adds	r1, r6, r1
1000266c:	6691      	str	r1, [r2, #104]	; 0x68
1000266e:	7128      	strb	r0, [r5, #4]
10002670:	e701      	b.n	10002476 <execute_traceback+0xa2>
10002672:	1b89      	subs	r1, r1, r6
10002674:	e7fa      	b.n	1000266c <execute_traceback+0x298>
10002676:	2588      	movs	r5, #136	; 0x88
10002678:	01ed      	lsls	r5, r5, #7
1000267a:	42ae      	cmp	r6, r5
1000267c:	d134      	bne.n	100026e8 <execute_traceback+0x314>
1000267e:	0599      	lsls	r1, r3, #22
10002680:	0f89      	lsrs	r1, r1, #30
10002682:	2903      	cmp	r1, #3
10002684:	d000      	beq.n	10002688 <execute_traceback+0x2b4>
10002686:	e6f6      	b.n	10002476 <execute_traceback+0xa2>
10002688:	0619      	lsls	r1, r3, #24
1000268a:	d507      	bpl.n	1000269c <execute_traceback+0x2c8>
1000268c:	0013      	movs	r3, r2
1000268e:	2100      	movs	r1, #0
10002690:	3370      	adds	r3, #112	; 0x70
10002692:	7119      	strb	r1, [r3, #4]
10002694:	0010      	movs	r0, r2
10002696:	4b10      	ldr	r3, [pc, #64]	; (100026d8 <execute_traceback+0x304>)
10002698:	4798      	blx	r3
1000269a:	e6ec      	b.n	10002476 <execute_traceback+0xa2>
1000269c:	2078      	movs	r0, #120	; 0x78
1000269e:	4003      	ands	r3, r0
100026a0:	18d3      	adds	r3, r2, r3
100026a2:	6819      	ldr	r1, [r3, #0]
100026a4:	4221      	tst	r1, r4
100026a6:	d105      	bne.n	100026b4 <execute_traceback+0x2e0>
100026a8:	2103      	movs	r1, #3
100026aa:	480d      	ldr	r0, [pc, #52]	; (100026e0 <execute_traceback+0x30c>)
100026ac:	4b0d      	ldr	r3, [pc, #52]	; (100026e4 <execute_traceback+0x310>)
100026ae:	4798      	blx	r3
100026b0:	b031      	add	sp, #196	; 0xc4
100026b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
100026b4:	791b      	ldrb	r3, [r3, #4]
100026b6:	2b02      	cmp	r3, #2
100026b8:	d002      	beq.n	100026c0 <execute_traceback+0x2ec>
100026ba:	2b80      	cmp	r3, #128	; 0x80
100026bc:	d000      	beq.n	100026c0 <execute_traceback+0x2ec>
100026be:	e07f      	b.n	100027c0 <execute_traceback+0x3ec>
100026c0:	3902      	subs	r1, #2
100026c2:	6791      	str	r1, [r2, #120]	; 0x78
100026c4:	9b04      	ldr	r3, [sp, #16]
100026c6:	a803      	add	r0, sp, #12
100026c8:	4798      	blx	r3
100026ca:	1e01      	subs	r1, r0, #0
100026cc:	d100      	bne.n	100026d0 <execute_traceback+0x2fc>
100026ce:	e6d2      	b.n	10002476 <execute_traceback+0xa2>
100026d0:	e7eb      	b.n	100026aa <execute_traceback+0x2d6>
100026d2:	46c0      	nop			; (mov r8, r8)
100026d4:	1000237d 	.word	0x1000237d
100026d8:	10002369 	.word	0x10002369
100026dc:	fffff200 	.word	0xfffff200
100026e0:	10005ceb 	.word	0x10005ceb
100026e4:	0002fccd 	.word	0x0002fccd
100026e8:	26b4      	movs	r6, #180	; 0xb4
100026ea:	4d37      	ldr	r5, [pc, #220]	; (100027c8 <execute_traceback+0x3f4>)
100026ec:	0236      	lsls	r6, r6, #8
100026ee:	401d      	ands	r5, r3
100026f0:	42b5      	cmp	r5, r6
100026f2:	d145      	bne.n	10002780 <execute_traceback+0x3ac>
100026f4:	2080      	movs	r0, #128	; 0x80
100026f6:	0040      	lsls	r0, r0, #1
100026f8:	4018      	ands	r0, r3
100026fa:	b2dd      	uxtb	r5, r3
100026fc:	051b      	lsls	r3, r3, #20
100026fe:	d52d      	bpl.n	1000275c <execute_traceback+0x388>
10002700:	2200      	movs	r2, #0
10002702:	2702      	movs	r7, #2
10002704:	002b      	movs	r3, r5
10002706:	4113      	asrs	r3, r2
10002708:	4223      	tst	r3, r4
1000270a:	d00a      	beq.n	10002722 <execute_traceback+0x34e>
1000270c:	9903      	ldr	r1, [sp, #12]
1000270e:	00d3      	lsls	r3, r2, #3
10002710:	6e8e      	ldr	r6, [r1, #104]	; 0x68
10002712:	6836      	ldr	r6, [r6, #0]
10002714:	50ce      	str	r6, [r1, r3]
10002716:	9903      	ldr	r1, [sp, #12]
10002718:	18cb      	adds	r3, r1, r3
1000271a:	711f      	strb	r7, [r3, #4]
1000271c:	6e8b      	ldr	r3, [r1, #104]	; 0x68
1000271e:	3304      	adds	r3, #4
10002720:	668b      	str	r3, [r1, #104]	; 0x68
10002722:	3201      	adds	r2, #1
10002724:	2a08      	cmp	r2, #8
10002726:	d1ed      	bne.n	10002704 <execute_traceback+0x330>
10002728:	2800      	cmp	r0, #0
1000272a:	d100      	bne.n	1000272e <execute_traceback+0x35a>
1000272c:	e6a3      	b.n	10002476 <execute_traceback+0xa2>
1000272e:	9b03      	ldr	r3, [sp, #12]
10002730:	2502      	movs	r5, #2
10002732:	0018      	movs	r0, r3
10002734:	6e9a      	ldr	r2, [r3, #104]	; 0x68
10002736:	3078      	adds	r0, #120	; 0x78
10002738:	6811      	ldr	r1, [r2, #0]
1000273a:	6799      	str	r1, [r3, #120]	; 0x78
1000273c:	7105      	strb	r5, [r0, #4]
1000273e:	4221      	tst	r1, r4
10002740:	d0b2      	beq.n	100026a8 <execute_traceback+0x2d4>
10002742:	3204      	adds	r2, #4
10002744:	669a      	str	r2, [r3, #104]	; 0x68
10002746:	9b04      	ldr	r3, [sp, #16]
10002748:	a803      	add	r0, sp, #12
1000274a:	9301      	str	r3, [sp, #4]
1000274c:	4798      	blx	r3
1000274e:	1e01      	subs	r1, r0, #0
10002750:	d1ab      	bne.n	100026aa <execute_traceback+0x2d6>
10002752:	9a03      	ldr	r2, [sp, #12]
10002754:	6f93      	ldr	r3, [r2, #120]	; 0x78
10002756:	3b02      	subs	r3, #2
10002758:	6793      	str	r3, [r2, #120]	; 0x78
1000275a:	e68c      	b.n	10002476 <execute_traceback+0xa2>
1000275c:	2800      	cmp	r0, #0
1000275e:	d004      	beq.n	1000276a <execute_traceback+0x396>
10002760:	4221      	tst	r1, r4
10002762:	d0a1      	beq.n	100026a8 <execute_traceback+0x2d4>
10002764:	6e93      	ldr	r3, [r2, #104]	; 0x68
10002766:	3b04      	subs	r3, #4
10002768:	6693      	str	r3, [r2, #104]	; 0x68
1000276a:	2307      	movs	r3, #7
1000276c:	0029      	movs	r1, r5
1000276e:	4119      	asrs	r1, r3
10002770:	4221      	tst	r1, r4
10002772:	d002      	beq.n	1000277a <execute_traceback+0x3a6>
10002774:	6e91      	ldr	r1, [r2, #104]	; 0x68
10002776:	3904      	subs	r1, #4
10002778:	6691      	str	r1, [r2, #104]	; 0x68
1000277a:	3b01      	subs	r3, #1
1000277c:	d2f6      	bcs.n	1000276c <execute_traceback+0x398>
1000277e:	e67a      	b.n	10002476 <execute_traceback+0xa2>
10002780:	25e0      	movs	r5, #224	; 0xe0
10002782:	022d      	lsls	r5, r5, #8
10002784:	42a8      	cmp	r0, r5
10002786:	d105      	bne.n	10002794 <execute_traceback+0x3c0>
10002788:	055b      	lsls	r3, r3, #21
1000278a:	151b      	asrs	r3, r3, #20
1000278c:	3102      	adds	r1, #2
1000278e:	1859      	adds	r1, r3, r1
10002790:	6791      	str	r1, [r2, #120]	; 0x78
10002792:	e670      	b.n	10002476 <execute_traceback+0xa2>
10002794:	21be      	movs	r1, #190	; 0xbe
10002796:	0209      	lsls	r1, r1, #8
10002798:	428f      	cmp	r7, r1
1000279a:	d100      	bne.n	1000279e <execute_traceback+0x3ca>
1000279c:	e66b      	b.n	10002476 <execute_traceback+0xa2>
1000279e:	490b      	ldr	r1, [pc, #44]	; (100027cc <execute_traceback+0x3f8>)
100027a0:	0b1b      	lsrs	r3, r3, #12
100027a2:	2b0f      	cmp	r3, #15
100027a4:	d109      	bne.n	100027ba <execute_traceback+0x3e6>
100027a6:	0013      	movs	r3, r2
100027a8:	2000      	movs	r0, #0
100027aa:	3370      	adds	r3, #112	; 0x70
100027ac:	7118      	strb	r0, [r3, #4]
100027ae:	0010      	movs	r0, r2
100027b0:	4788      	blx	r1
100027b2:	9a03      	ldr	r2, [sp, #12]
100027b4:	6f93      	ldr	r3, [r2, #120]	; 0x78
100027b6:	3302      	adds	r3, #2
100027b8:	e7ce      	b.n	10002758 <execute_traceback+0x384>
100027ba:	0010      	movs	r0, r2
100027bc:	4788      	blx	r1
100027be:	e65a      	b.n	10002476 <execute_traceback+0xa2>
100027c0:	2102      	movs	r1, #2
100027c2:	e772      	b.n	100026aa <execute_traceback+0x2d6>
100027c4:	2106      	movs	r1, #6
100027c6:	e770      	b.n	100026aa <execute_traceback+0x2d6>
100027c8:	fffff600 	.word	0xfffff600
100027cc:	10002369 	.word	0x10002369

100027d0 <atm_adv_cb>:
100027d0:	b510      	push	{r4, lr}
100027d2:	4b02      	ldr	r3, [pc, #8]	; (100027dc <atm_adv_cb+0xc>)
100027d4:	681b      	ldr	r3, [r3, #0]
100027d6:	4798      	blx	r3
100027d8:	bd10      	pop	{r4, pc}
100027da:	46c0      	nop			; (mov r8, r8)
100027dc:	20014dd4 	.word	0x20014dd4

100027e0 <atm_adv_find_by_actidx>:
100027e0:	4a05      	ldr	r2, [pc, #20]	; (100027f8 <atm_adv_find_by_actidx+0x18>)
100027e2:	0003      	movs	r3, r0
100027e4:	6810      	ldr	r0, [r2, #0]
100027e6:	2800      	cmp	r0, #0
100027e8:	d100      	bne.n	100027ec <atm_adv_find_by_actidx+0xc>
100027ea:	4770      	bx	lr
100027ec:	7902      	ldrb	r2, [r0, #4]
100027ee:	429a      	cmp	r2, r3
100027f0:	d0fb      	beq.n	100027ea <atm_adv_find_by_actidx+0xa>
100027f2:	6800      	ldr	r0, [r0, #0]
100027f4:	e7f7      	b.n	100027e6 <atm_adv_find_by_actidx+0x6>
100027f6:	46c0      	nop			; (mov r8, r8)
100027f8:	20014dd8 	.word	0x20014dd8

100027fc <atm_gapm_adv_print_status>:
100027fc:	b510      	push	{r4, lr}
100027fe:	0002      	movs	r2, r0
10002800:	000b      	movs	r3, r1
10002802:	4c02      	ldr	r4, [pc, #8]	; (1000280c <atm_gapm_adv_print_status+0x10>)
10002804:	4902      	ldr	r1, [pc, #8]	; (10002810 <atm_gapm_adv_print_status+0x14>)
10002806:	4803      	ldr	r0, [pc, #12]	; (10002814 <atm_gapm_adv_print_status+0x18>)
10002808:	47a0      	blx	r4
1000280a:	bd10      	pop	{r4, pc}
1000280c:	000066b1 	.word	0x000066b1
10002810:	1000604b 	.word	0x1000604b
10002814:	10005d04 	.word	0x10005d04

10002818 <atm_adv_sanity_err_return>:
10002818:	b51f      	push	{r0, r1, r2, r3, r4, lr}
1000281a:	88c3      	ldrh	r3, [r0, #6]
1000281c:	7902      	ldrb	r2, [r0, #4]
1000281e:	9102      	str	r1, [sp, #8]
10002820:	7941      	ldrb	r1, [r0, #5]
10002822:	4c07      	ldr	r4, [pc, #28]	; (10002840 <atm_adv_sanity_err_return+0x28>)
10002824:	9101      	str	r1, [sp, #4]
10002826:	7f41      	ldrb	r1, [r0, #29]
10002828:	4806      	ldr	r0, [pc, #24]	; (10002844 <atm_adv_sanity_err_return+0x2c>)
1000282a:	9100      	str	r1, [sp, #0]
1000282c:	4906      	ldr	r1, [pc, #24]	; (10002848 <atm_adv_sanity_err_return+0x30>)
1000282e:	47a0      	blx	r4
10002830:	22d4      	movs	r2, #212	; 0xd4
10002832:	4906      	ldr	r1, [pc, #24]	; (1000284c <atm_adv_sanity_err_return+0x34>)
10002834:	4806      	ldr	r0, [pc, #24]	; (10002850 <atm_adv_sanity_err_return+0x38>)
10002836:	4b07      	ldr	r3, [pc, #28]	; (10002854 <atm_adv_sanity_err_return+0x3c>)
10002838:	4798      	blx	r3
1000283a:	4807      	ldr	r0, [pc, #28]	; (10002858 <atm_adv_sanity_err_return+0x40>)
1000283c:	b004      	add	sp, #16
1000283e:	bd10      	pop	{r4, pc}
10002840:	000066b1 	.word	0x000066b1
10002844:	10005d2e 	.word	0x10005d2e
10002848:	1000604b 	.word	0x1000604b
1000284c:	10005d8d 	.word	0x10005d8d
10002850:	100050ec 	.word	0x100050ec
10002854:	00006609 	.word	0x00006609
10002858:	00000401 	.word	0x00000401

1000285c <atm_gapm_cmp_evt_set_adv_data_cmp>:
1000285c:	b570      	push	{r4, r5, r6, lr}
1000285e:	000c      	movs	r4, r1
10002860:	8841      	ldrh	r1, [r0, #2]
10002862:	0005      	movs	r5, r0
10002864:	2900      	cmp	r1, #0
10002866:	d00d      	beq.n	10002884 <atm_gapm_cmp_evt_set_adv_data_cmp+0x28>
10002868:	7920      	ldrb	r0, [r4, #4]
1000286a:	4b0c      	ldr	r3, [pc, #48]	; (1000289c <atm_gapm_cmp_evt_set_adv_data_cmp+0x40>)
1000286c:	4798      	blx	r3
1000286e:	480c      	ldr	r0, [pc, #48]	; (100028a0 <atm_gapm_cmp_evt_set_adv_data_cmp+0x44>)
10002870:	2283      	movs	r2, #131	; 0x83
10002872:	490c      	ldr	r1, [pc, #48]	; (100028a4 <atm_gapm_cmp_evt_set_adv_data_cmp+0x48>)
10002874:	4b0c      	ldr	r3, [pc, #48]	; (100028a8 <atm_gapm_cmp_evt_set_adv_data_cmp+0x4c>)
10002876:	4798      	blx	r3
10002878:	2003      	movs	r0, #3
1000287a:	886a      	ldrh	r2, [r5, #2]
1000287c:	7921      	ldrb	r1, [r4, #4]
1000287e:	4b0b      	ldr	r3, [pc, #44]	; (100028ac <atm_gapm_cmp_evt_set_adv_data_cmp+0x50>)
10002880:	4798      	blx	r3
10002882:	bd70      	pop	{r4, r5, r6, pc}
10002884:	7a23      	ldrb	r3, [r4, #8]
10002886:	2b07      	cmp	r3, #7
10002888:	d103      	bne.n	10002892 <atm_gapm_cmp_evt_set_adv_data_cmp+0x36>
1000288a:	2307      	movs	r3, #7
1000288c:	71e3      	strb	r3, [r4, #7]
1000288e:	2004      	movs	r0, #4
10002890:	e7f3      	b.n	1000287a <atm_gapm_cmp_evt_set_adv_data_cmp+0x1e>
10002892:	2b09      	cmp	r3, #9
10002894:	d0fa      	beq.n	1000288c <atm_gapm_cmp_evt_set_adv_data_cmp+0x30>
10002896:	2b02      	cmp	r3, #2
10002898:	d1f9      	bne.n	1000288e <atm_gapm_cmp_evt_set_adv_data_cmp+0x32>
1000289a:	e7f6      	b.n	1000288a <atm_gapm_cmp_evt_set_adv_data_cmp+0x2e>
1000289c:	100027fd 	.word	0x100027fd
100028a0:	100050ec 	.word	0x100050ec
100028a4:	10005d8d 	.word	0x10005d8d
100028a8:	00006609 	.word	0x00006609
100028ac:	100027d1 	.word	0x100027d1

100028b0 <atm_gapm_cmp_evt_adv_start_cfm>:
100028b0:	b570      	push	{r4, r5, r6, lr}
100028b2:	000c      	movs	r4, r1
100028b4:	8841      	ldrh	r1, [r0, #2]
100028b6:	0005      	movs	r5, r0
100028b8:	7922      	ldrb	r2, [r4, #4]
100028ba:	2900      	cmp	r1, #0
100028bc:	d00d      	beq.n	100028da <atm_gapm_cmp_evt_adv_start_cfm+0x2a>
100028be:	0010      	movs	r0, r2
100028c0:	4b09      	ldr	r3, [pc, #36]	; (100028e8 <atm_gapm_cmp_evt_adv_start_cfm+0x38>)
100028c2:	4798      	blx	r3
100028c4:	225d      	movs	r2, #93	; 0x5d
100028c6:	4909      	ldr	r1, [pc, #36]	; (100028ec <atm_gapm_cmp_evt_adv_start_cfm+0x3c>)
100028c8:	4809      	ldr	r0, [pc, #36]	; (100028f0 <atm_gapm_cmp_evt_adv_start_cfm+0x40>)
100028ca:	4b0a      	ldr	r3, [pc, #40]	; (100028f4 <atm_gapm_cmp_evt_adv_start_cfm+0x44>)
100028cc:	4798      	blx	r3
100028ce:	886a      	ldrh	r2, [r5, #2]
100028d0:	7921      	ldrb	r1, [r4, #4]
100028d2:	79e0      	ldrb	r0, [r4, #7]
100028d4:	4b08      	ldr	r3, [pc, #32]	; (100028f8 <atm_gapm_cmp_evt_adv_start_cfm+0x48>)
100028d6:	4798      	blx	r3
100028d8:	bd70      	pop	{r4, r5, r6, pc}
100028da:	4b08      	ldr	r3, [pc, #32]	; (100028fc <atm_gapm_cmp_evt_adv_start_cfm+0x4c>)
100028dc:	4908      	ldr	r1, [pc, #32]	; (10002900 <atm_gapm_cmp_evt_adv_start_cfm+0x50>)
100028de:	4809      	ldr	r0, [pc, #36]	; (10002904 <atm_gapm_cmp_evt_adv_start_cfm+0x54>)
100028e0:	4798      	blx	r3
100028e2:	2309      	movs	r3, #9
100028e4:	71e3      	strb	r3, [r4, #7]
100028e6:	e7f2      	b.n	100028ce <atm_gapm_cmp_evt_adv_start_cfm+0x1e>
100028e8:	100027fd 	.word	0x100027fd
100028ec:	10005d8d 	.word	0x10005d8d
100028f0:	100050ec 	.word	0x100050ec
100028f4:	00006609 	.word	0x00006609
100028f8:	100027d1 	.word	0x100027d1
100028fc:	000066b1 	.word	0x000066b1
10002900:	1000604b 	.word	0x1000604b
10002904:	10005d97 	.word	0x10005d97

10002908 <atm_gapm_cmp_evt_create_adv>:
10002908:	b570      	push	{r4, r5, r6, lr}
1000290a:	7902      	ldrb	r2, [r0, #4]
1000290c:	000c      	movs	r4, r1
1000290e:	710a      	strb	r2, [r1, #4]
10002910:	8841      	ldrh	r1, [r0, #2]
10002912:	0005      	movs	r5, r0
10002914:	2900      	cmp	r1, #0
10002916:	d013      	beq.n	10002940 <atm_gapm_cmp_evt_create_adv+0x38>
10002918:	0010      	movs	r0, r2
1000291a:	4b0d      	ldr	r3, [pc, #52]	; (10002950 <atm_gapm_cmp_evt_create_adv+0x48>)
1000291c:	4798      	blx	r3
1000291e:	2298      	movs	r2, #152	; 0x98
10002920:	490c      	ldr	r1, [pc, #48]	; (10002954 <atm_gapm_cmp_evt_create_adv+0x4c>)
10002922:	480d      	ldr	r0, [pc, #52]	; (10002958 <atm_gapm_cmp_evt_create_adv+0x50>)
10002924:	4b0d      	ldr	r3, [pc, #52]	; (1000295c <atm_gapm_cmp_evt_create_adv+0x54>)
10002926:	4798      	blx	r3
10002928:	4b0d      	ldr	r3, [pc, #52]	; (10002960 <atm_gapm_cmp_evt_create_adv+0x58>)
1000292a:	886a      	ldrh	r2, [r5, #2]
1000292c:	7921      	ldrb	r1, [r4, #4]
1000292e:	79e0      	ldrb	r0, [r4, #7]
10002930:	4798      	blx	r3
10002932:	886b      	ldrh	r3, [r5, #2]
10002934:	2b00      	cmp	r3, #0
10002936:	d002      	beq.n	1000293e <atm_gapm_cmp_evt_create_adv+0x36>
10002938:	0020      	movs	r0, r4
1000293a:	4b0a      	ldr	r3, [pc, #40]	; (10002964 <atm_gapm_cmp_evt_create_adv+0x5c>)
1000293c:	4798      	blx	r3
1000293e:	bd70      	pop	{r4, r5, r6, pc}
10002940:	4b09      	ldr	r3, [pc, #36]	; (10002968 <atm_gapm_cmp_evt_create_adv+0x60>)
10002942:	490a      	ldr	r1, [pc, #40]	; (1000296c <atm_gapm_cmp_evt_create_adv+0x64>)
10002944:	480a      	ldr	r0, [pc, #40]	; (10002970 <atm_gapm_cmp_evt_create_adv+0x68>)
10002946:	4798      	blx	r3
10002948:	2302      	movs	r3, #2
1000294a:	71e3      	strb	r3, [r4, #7]
1000294c:	e7ec      	b.n	10002928 <atm_gapm_cmp_evt_create_adv+0x20>
1000294e:	46c0      	nop			; (mov r8, r8)
10002950:	100027fd 	.word	0x100027fd
10002954:	10005d8d 	.word	0x10005d8d
10002958:	100050ec 	.word	0x100050ec
1000295c:	00006609 	.word	0x00006609
10002960:	100027d1 	.word	0x100027d1
10002964:	000014ed 	.word	0x000014ed
10002968:	000066b1 	.word	0x000066b1
1000296c:	1000604b 	.word	0x1000604b
10002970:	10005db8 	.word	0x10005db8

10002974 <atm_gapm_cmp_evt_delete_adv>:
10002974:	b570      	push	{r4, r5, r6, lr}
10002976:	000c      	movs	r4, r1
10002978:	8841      	ldrh	r1, [r0, #2]
1000297a:	0005      	movs	r5, r0
1000297c:	2900      	cmp	r1, #0
1000297e:	d007      	beq.n	10002990 <atm_gapm_cmp_evt_delete_adv+0x1c>
10002980:	7920      	ldrb	r0, [r4, #4]
10002982:	4b0a      	ldr	r3, [pc, #40]	; (100029ac <atm_gapm_cmp_evt_delete_adv+0x38>)
10002984:	4798      	blx	r3
10002986:	22ab      	movs	r2, #171	; 0xab
10002988:	4909      	ldr	r1, [pc, #36]	; (100029b0 <atm_gapm_cmp_evt_delete_adv+0x3c>)
1000298a:	480a      	ldr	r0, [pc, #40]	; (100029b4 <atm_gapm_cmp_evt_delete_adv+0x40>)
1000298c:	4b0a      	ldr	r3, [pc, #40]	; (100029b8 <atm_gapm_cmp_evt_delete_adv+0x44>)
1000298e:	4798      	blx	r3
10002990:	0021      	movs	r1, r4
10002992:	4b0a      	ldr	r3, [pc, #40]	; (100029bc <atm_gapm_cmp_evt_delete_adv+0x48>)
10002994:	480a      	ldr	r0, [pc, #40]	; (100029c0 <atm_gapm_cmp_evt_delete_adv+0x4c>)
10002996:	4798      	blx	r3
10002998:	200c      	movs	r0, #12
1000299a:	71e0      	strb	r0, [r4, #7]
1000299c:	886a      	ldrh	r2, [r5, #2]
1000299e:	7921      	ldrb	r1, [r4, #4]
100029a0:	4b08      	ldr	r3, [pc, #32]	; (100029c4 <atm_gapm_cmp_evt_delete_adv+0x50>)
100029a2:	4798      	blx	r3
100029a4:	0020      	movs	r0, r4
100029a6:	4b08      	ldr	r3, [pc, #32]	; (100029c8 <atm_gapm_cmp_evt_delete_adv+0x54>)
100029a8:	4798      	blx	r3
100029aa:	bd70      	pop	{r4, r5, r6, pc}
100029ac:	100027fd 	.word	0x100027fd
100029b0:	10005d8d 	.word	0x10005d8d
100029b4:	100050ec 	.word	0x100050ec
100029b8:	00006609 	.word	0x00006609
100029bc:	00002737 	.word	0x00002737
100029c0:	20014dd8 	.word	0x20014dd8
100029c4:	100027d1 	.word	0x100027d1
100029c8:	000014ed 	.word	0x000014ed

100029cc <atm_adv_reg>:
100029cc:	b570      	push	{r4, r5, r6, lr}
100029ce:	4d05      	ldr	r5, [pc, #20]	; (100029e4 <atm_adv_reg+0x18>)
100029d0:	0004      	movs	r4, r0
100029d2:	682b      	ldr	r3, [r5, #0]
100029d4:	2b00      	cmp	r3, #0
100029d6:	d102      	bne.n	100029de <atm_adv_reg+0x12>
100029d8:	4803      	ldr	r0, [pc, #12]	; (100029e8 <atm_adv_reg+0x1c>)
100029da:	4b04      	ldr	r3, [pc, #16]	; (100029ec <atm_adv_reg+0x20>)
100029dc:	4798      	blx	r3
100029de:	602c      	str	r4, [r5, #0]
100029e0:	bd70      	pop	{r4, r5, r6, pc}
100029e2:	46c0      	nop			; (mov r8, r8)
100029e4:	20014dd4 	.word	0x20014dd4
100029e8:	20014dd8 	.word	0x20014dd8
100029ec:	00002657 	.word	0x00002657

100029f0 <atm_adv_create>:
100029f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100029f2:	4d40      	ldr	r5, [pc, #256]	; (10002af4 <atm_adv_create+0x104>)
100029f4:	0004      	movs	r4, r0
100029f6:	682b      	ldr	r3, [r5, #0]
100029f8:	2b00      	cmp	r3, #0
100029fa:	d10e      	bne.n	10002a1a <atm_adv_create+0x2a>
100029fc:	4b3e      	ldr	r3, [pc, #248]	; (10002af8 <atm_adv_create+0x108>)
100029fe:	493f      	ldr	r1, [pc, #252]	; (10002afc <atm_adv_create+0x10c>)
10002a00:	483f      	ldr	r0, [pc, #252]	; (10002b00 <atm_adv_create+0x110>)
10002a02:	4798      	blx	r3
10002a04:	682b      	ldr	r3, [r5, #0]
10002a06:	2b00      	cmp	r3, #0
10002a08:	d105      	bne.n	10002a16 <atm_adv_create+0x26>
10002a0a:	2295      	movs	r2, #149	; 0x95
10002a0c:	493d      	ldr	r1, [pc, #244]	; (10002b04 <atm_adv_create+0x114>)
10002a0e:	483e      	ldr	r0, [pc, #248]	; (10002b08 <atm_adv_create+0x118>)
10002a10:	4b3e      	ldr	r3, [pc, #248]	; (10002b0c <atm_adv_create+0x11c>)
10002a12:	0052      	lsls	r2, r2, #1
10002a14:	4798      	blx	r3
10002a16:	4d3e      	ldr	r5, [pc, #248]	; (10002b10 <atm_adv_create+0x120>)
10002a18:	e04d      	b.n	10002ab6 <atm_adv_create+0xc6>
10002a1a:	4e3e      	ldr	r6, [pc, #248]	; (10002b14 <atm_adv_create+0x124>)
10002a1c:	4b3e      	ldr	r3, [pc, #248]	; (10002b18 <atm_adv_create+0x128>)
10002a1e:	0030      	movs	r0, r6
10002a20:	4798      	blx	r3
10002a22:	1e05      	subs	r5, r0, #0
10002a24:	d163      	bne.n	10002aee <atm_adv_create+0xfe>
10002a26:	2c00      	cmp	r4, #0
10002a28:	d106      	bne.n	10002a38 <atm_adv_create+0x48>
10002a2a:	22dd      	movs	r2, #221	; 0xdd
10002a2c:	4935      	ldr	r1, [pc, #212]	; (10002b04 <atm_adv_create+0x114>)
10002a2e:	483b      	ldr	r0, [pc, #236]	; (10002b1c <atm_adv_create+0x12c>)
10002a30:	4b36      	ldr	r3, [pc, #216]	; (10002b0c <atm_adv_create+0x11c>)
10002a32:	4798      	blx	r3
10002a34:	4d3a      	ldr	r5, [pc, #232]	; (10002b20 <atm_adv_create+0x130>)
10002a36:	e03e      	b.n	10002ab6 <atm_adv_create+0xc6>
10002a38:	7922      	ldrb	r2, [r4, #4]
10002a3a:	2a01      	cmp	r2, #1
10002a3c:	d03d      	beq.n	10002aba <atm_adv_create+0xca>
10002a3e:	2a02      	cmp	r2, #2
10002a40:	d045      	beq.n	10002ace <atm_adv_create+0xde>
10002a42:	2a00      	cmp	r2, #0
10002a44:	d148      	bne.n	10002ad8 <atm_adv_create+0xe8>
10002a46:	7f61      	ldrb	r1, [r4, #29]
10002a48:	2901      	cmp	r1, #1
10002a4a:	d006      	beq.n	10002a5a <atm_adv_create+0x6a>
10002a4c:	0001      	movs	r1, r0
10002a4e:	0020      	movs	r0, r4
10002a50:	4b34      	ldr	r3, [pc, #208]	; (10002b24 <atm_adv_create+0x134>)
10002a52:	4798      	blx	r3
10002a54:	2800      	cmp	r0, #0
10002a56:	d1ed      	bne.n	10002a34 <atm_adv_create+0x44>
10002a58:	e012      	b.n	10002a80 <atm_adv_create+0x90>
10002a5a:	220c      	movs	r2, #12
10002a5c:	88e3      	ldrh	r3, [r4, #6]
10002a5e:	4213      	tst	r3, r2
10002a60:	d00e      	beq.n	10002a80 <atm_adv_create+0x90>
10002a62:	7962      	ldrb	r2, [r4, #5]
10002a64:	2a00      	cmp	r2, #0
10002a66:	d1f2      	bne.n	10002a4e <atm_adv_create+0x5e>
10002a68:	420b      	tst	r3, r1
10002a6a:	d101      	bne.n	10002a70 <atm_adv_create+0x80>
10002a6c:	2102      	movs	r1, #2
10002a6e:	e7ee      	b.n	10002a4e <atm_adv_create+0x5e>
10002a70:	0020      	movs	r0, r4
10002a72:	492d      	ldr	r1, [pc, #180]	; (10002b28 <atm_adv_create+0x138>)
10002a74:	4b2d      	ldr	r3, [pc, #180]	; (10002b2c <atm_adv_create+0x13c>)
10002a76:	300a      	adds	r0, #10
10002a78:	4798      	blx	r3
10002a7a:	2103      	movs	r1, #3
10002a7c:	2800      	cmp	r0, #0
10002a7e:	d1e6      	bne.n	10002a4e <atm_adv_create+0x5e>
10002a80:	2100      	movs	r1, #0
10002a82:	4b2b      	ldr	r3, [pc, #172]	; (10002b30 <atm_adv_create+0x140>)
10002a84:	200c      	movs	r0, #12
10002a86:	4798      	blx	r3
10002a88:	220c      	movs	r2, #12
10002a8a:	2100      	movs	r1, #0
10002a8c:	4b29      	ldr	r3, [pc, #164]	; (10002b34 <atm_adv_create+0x144>)
10002a8e:	4798      	blx	r3
10002a90:	7923      	ldrb	r3, [r4, #4]
10002a92:	0007      	movs	r7, r0
10002a94:	7143      	strb	r3, [r0, #5]
10002a96:	88e3      	ldrh	r3, [r4, #6]
10002a98:	0001      	movs	r1, r0
10002a9a:	7183      	strb	r3, [r0, #6]
10002a9c:	23ff      	movs	r3, #255	; 0xff
10002a9e:	7103      	strb	r3, [r0, #4]
10002aa0:	3bfe      	subs	r3, #254	; 0xfe
10002aa2:	71c3      	strb	r3, [r0, #7]
10002aa4:	0030      	movs	r0, r6
10002aa6:	4b24      	ldr	r3, [pc, #144]	; (10002b38 <atm_adv_create+0x148>)
10002aa8:	4798      	blx	r3
10002aaa:	7820      	ldrb	r0, [r4, #0]
10002aac:	1d21      	adds	r1, r4, #4
10002aae:	003a      	movs	r2, r7
10002ab0:	4b22      	ldr	r3, [pc, #136]	; (10002b3c <atm_adv_create+0x14c>)
10002ab2:	4c23      	ldr	r4, [pc, #140]	; (10002b40 <atm_adv_create+0x150>)
10002ab4:	47a0      	blx	r4
10002ab6:	0028      	movs	r0, r5
10002ab8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002aba:	7f63      	ldrb	r3, [r4, #29]
10002abc:	2104      	movs	r1, #4
10002abe:	2b02      	cmp	r3, #2
10002ac0:	d0c5      	beq.n	10002a4e <atm_adv_create+0x5e>
10002ac2:	88e3      	ldrh	r3, [r4, #6]
10002ac4:	2105      	movs	r1, #5
10002ac6:	43db      	mvns	r3, r3
10002ac8:	079b      	lsls	r3, r3, #30
10002aca:	d1d9      	bne.n	10002a80 <atm_adv_create+0x90>
10002acc:	e7bf      	b.n	10002a4e <atm_adv_create+0x5e>
10002ace:	88e3      	ldrh	r3, [r4, #6]
10002ad0:	079b      	lsls	r3, r3, #30
10002ad2:	d0d5      	beq.n	10002a80 <atm_adv_create+0x90>
10002ad4:	2106      	movs	r1, #6
10002ad6:	e7ba      	b.n	10002a4e <atm_adv_create+0x5e>
10002ad8:	4908      	ldr	r1, [pc, #32]	; (10002afc <atm_adv_create+0x10c>)
10002ada:	4b07      	ldr	r3, [pc, #28]	; (10002af8 <atm_adv_create+0x108>)
10002adc:	4819      	ldr	r0, [pc, #100]	; (10002b44 <atm_adv_create+0x154>)
10002ade:	4798      	blx	r3
10002ae0:	228a      	movs	r2, #138	; 0x8a
10002ae2:	4908      	ldr	r1, [pc, #32]	; (10002b04 <atm_adv_create+0x114>)
10002ae4:	480d      	ldr	r0, [pc, #52]	; (10002b1c <atm_adv_create+0x12c>)
10002ae6:	4b09      	ldr	r3, [pc, #36]	; (10002b0c <atm_adv_create+0x11c>)
10002ae8:	0052      	lsls	r2, r2, #1
10002aea:	4798      	blx	r3
10002aec:	e7c8      	b.n	10002a80 <atm_adv_create+0x90>
10002aee:	4d16      	ldr	r5, [pc, #88]	; (10002b48 <atm_adv_create+0x158>)
10002af0:	e7e1      	b.n	10002ab6 <atm_adv_create+0xc6>
10002af2:	46c0      	nop			; (mov r8, r8)
10002af4:	20014dd4 	.word	0x20014dd4
10002af8:	000066b1 	.word	0x000066b1
10002afc:	1000604b 	.word	0x1000604b
10002b00:	10005e07 	.word	0x10005e07
10002b04:	10005d8d 	.word	0x10005d8d
10002b08:	10005e2b 	.word	0x10005e2b
10002b0c:	00006609 	.word	0x00006609
10002b10:	00000409 	.word	0x00000409
10002b14:	20014dd8 	.word	0x20014dd8
10002b18:	000028ab 	.word	0x000028ab
10002b1c:	100050ec 	.word	0x100050ec
10002b20:	00000401 	.word	0x00000401
10002b24:	10002819 	.word	0x10002819
10002b28:	0003eeba 	.word	0x0003eeba
10002b2c:	000021c5 	.word	0x000021c5
10002b30:	000013b9 	.word	0x000013b9
10002b34:	00005859 	.word	0x00005859
10002b38:	0000268f 	.word	0x0000268f
10002b3c:	10002909 	.word	0x10002909
10002b40:	10004615 	.word	0x10004615
10002b44:	10005e32 	.word	0x10005e32
10002b48:	00000404 	.word	0x00000404

10002b4c <atm_adv_set_adv_data>:
10002b4c:	b5f0      	push	{r4, r5, r6, r7, lr}
10002b4e:	4b6e      	ldr	r3, [pc, #440]	; (10002d08 <atm_adv_set_adv_data+0x1bc>)
10002b50:	b08b      	sub	sp, #44	; 0x2c
10002b52:	9006      	str	r0, [sp, #24]
10002b54:	9104      	str	r1, [sp, #16]
10002b56:	4798      	blx	r3
10002b58:	4b6c      	ldr	r3, [pc, #432]	; (10002d0c <atm_adv_set_adv_data+0x1c0>)
10002b5a:	0007      	movs	r7, r0
10002b5c:	681a      	ldr	r2, [r3, #0]
10002b5e:	2a00      	cmp	r2, #0
10002b60:	d004      	beq.n	10002b6c <atm_adv_set_adv_data+0x20>
10002b62:	2800      	cmp	r0, #0
10002b64:	d002      	beq.n	10002b6c <atm_adv_set_adv_data+0x20>
10002b66:	9b04      	ldr	r3, [sp, #16]
10002b68:	2b00      	cmp	r3, #0
10002b6a:	d10f      	bne.n	10002b8c <atm_adv_set_adv_data+0x40>
10002b6c:	003b      	movs	r3, r7
10002b6e:	1e51      	subs	r1, r2, #1
10002b70:	418a      	sbcs	r2, r1
10002b72:	1e59      	subs	r1, r3, #1
10002b74:	418b      	sbcs	r3, r1
10002b76:	9904      	ldr	r1, [sp, #16]
10002b78:	4c65      	ldr	r4, [pc, #404]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002b7a:	1e48      	subs	r0, r1, #1
10002b7c:	4181      	sbcs	r1, r0
10002b7e:	4865      	ldr	r0, [pc, #404]	; (10002d14 <atm_adv_set_adv_data+0x1c8>)
10002b80:	9100      	str	r1, [sp, #0]
10002b82:	4965      	ldr	r1, [pc, #404]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002b84:	47a0      	blx	r4
10002b86:	4865      	ldr	r0, [pc, #404]	; (10002d1c <atm_adv_set_adv_data+0x1d0>)
10002b88:	b00b      	add	sp, #44	; 0x2c
10002b8a:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002b8c:	79c3      	ldrb	r3, [r0, #7]
10002b8e:	1e98      	subs	r0, r3, #2
10002b90:	2808      	cmp	r0, #8
10002b92:	d80a      	bhi.n	10002baa <atm_adv_set_adv_data+0x5e>
10002b94:	f002 fa64 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10002b98:	07090706 	.word	0x07090706
10002b9c:	062b0609 	.word	0x062b0609
10002ba0:	05          	.byte	0x05
10002ba1:	00          	.byte	0x00
10002ba2:	2307      	movs	r3, #7
10002ba4:	723b      	strb	r3, [r7, #8]
10002ba6:	2303      	movs	r3, #3
10002ba8:	71fb      	strb	r3, [r7, #7]
10002baa:	79fb      	ldrb	r3, [r7, #7]
10002bac:	2b03      	cmp	r3, #3
10002bae:	d000      	beq.n	10002bb2 <atm_adv_set_adv_data+0x66>
10002bb0:	e0a7      	b.n	10002d02 <atm_adv_set_adv_data+0x1b6>
10002bb2:	2500      	movs	r5, #0
10002bb4:	4b56      	ldr	r3, [pc, #344]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002bb6:	4958      	ldr	r1, [pc, #352]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002bb8:	4859      	ldr	r0, [pc, #356]	; (10002d20 <atm_adv_set_adv_data+0x1d4>)
10002bba:	4798      	blx	r3
10002bbc:	9b04      	ldr	r3, [sp, #16]
10002bbe:	881b      	ldrh	r3, [r3, #0]
10002bc0:	9303      	str	r3, [sp, #12]
10002bc2:	9b04      	ldr	r3, [sp, #16]
10002bc4:	685e      	ldr	r6, [r3, #4]
10002bc6:	9b03      	ldr	r3, [sp, #12]
10002bc8:	42ab      	cmp	r3, r5
10002bca:	d812      	bhi.n	10002bf2 <atm_adv_set_adv_data+0xa6>
10002bcc:	4952      	ldr	r1, [pc, #328]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002bce:	4855      	ldr	r0, [pc, #340]	; (10002d24 <atm_adv_set_adv_data+0x1d8>)
10002bd0:	4b4f      	ldr	r3, [pc, #316]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002bd2:	4798      	blx	r3
10002bd4:	9b04      	ldr	r3, [sp, #16]
10002bd6:	881a      	ldrh	r2, [r3, #0]
10002bd8:	4b53      	ldr	r3, [pc, #332]	; (10002d28 <atm_adv_set_adv_data+0x1dc>)
10002bda:	9700      	str	r7, [sp, #0]
10002bdc:	9301      	str	r3, [sp, #4]
10002bde:	9b04      	ldr	r3, [sp, #16]
10002be0:	685b      	ldr	r3, [r3, #4]
10002be2:	2000      	movs	r0, #0
10002be4:	9906      	ldr	r1, [sp, #24]
10002be6:	4c51      	ldr	r4, [pc, #324]	; (10002d2c <atm_adv_set_adv_data+0x1e0>)
10002be8:	47a0      	blx	r4
10002bea:	2000      	movs	r0, #0
10002bec:	e7cc      	b.n	10002b88 <atm_adv_set_adv_data+0x3c>
10002bee:	2309      	movs	r3, #9
10002bf0:	e7d8      	b.n	10002ba4 <atm_adv_set_adv_data+0x58>
10002bf2:	1973      	adds	r3, r6, r5
10002bf4:	9305      	str	r3, [sp, #20]
10002bf6:	5d72      	ldrb	r2, [r6, r5]
10002bf8:	002b      	movs	r3, r5
10002bfa:	4947      	ldr	r1, [pc, #284]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002bfc:	484c      	ldr	r0, [pc, #304]	; (10002d30 <atm_adv_set_adv_data+0x1e4>)
10002bfe:	4c44      	ldr	r4, [pc, #272]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002c00:	47a0      	blx	r4
10002c02:	1973      	adds	r3, r6, r5
10002c04:	785b      	ldrb	r3, [r3, #1]
10002c06:	9307      	str	r3, [sp, #28]
10002c08:	2bff      	cmp	r3, #255	; 0xff
10002c0a:	d13e      	bne.n	10002c8a <atm_adv_set_adv_data+0x13e>
10002c0c:	1973      	adds	r3, r6, r5
10002c0e:	789b      	ldrb	r3, [r3, #2]
10002c10:	9308      	str	r3, [sp, #32]
10002c12:	2b24      	cmp	r3, #36	; 0x24
10002c14:	d139      	bne.n	10002c8a <atm_adv_set_adv_data+0x13e>
10002c16:	1973      	adds	r3, r6, r5
10002c18:	78db      	ldrb	r3, [r3, #3]
10002c1a:	9309      	str	r3, [sp, #36]	; 0x24
10002c1c:	2b0a      	cmp	r3, #10
10002c1e:	d134      	bne.n	10002c8a <atm_adv_set_adv_data+0x13e>
10002c20:	466b      	mov	r3, sp
10002c22:	002a      	movs	r2, r5
10002c24:	7b1c      	ldrb	r4, [r3, #12]
10002c26:	493c      	ldr	r1, [pc, #240]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002c28:	4b39      	ldr	r3, [pc, #228]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002c2a:	4842      	ldr	r0, [pc, #264]	; (10002d34 <atm_adv_set_adv_data+0x1e8>)
10002c2c:	4798      	blx	r3
10002c2e:	1973      	adds	r3, r6, r5
10002c30:	791b      	ldrb	r3, [r3, #4]
10002c32:	2b00      	cmp	r3, #0
10002c34:	d008      	beq.n	10002c48 <atm_adv_set_adv_data+0xfc>
10002c36:	2b01      	cmp	r3, #1
10002c38:	d00d      	beq.n	10002c56 <atm_adv_set_adv_data+0x10a>
10002c3a:	231f      	movs	r3, #31
10002c3c:	1b1b      	subs	r3, r3, r4
10002c3e:	2b06      	cmp	r3, #6
10002c40:	dc29      	bgt.n	10002c96 <atm_adv_set_adv_data+0x14a>
10002c42:	4935      	ldr	r1, [pc, #212]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002c44:	483c      	ldr	r0, [pc, #240]	; (10002d38 <atm_adv_set_adv_data+0x1ec>)
10002c46:	e7c3      	b.n	10002bd0 <atm_adv_set_adv_data+0x84>
10002c48:	221f      	movs	r2, #31
10002c4a:	1b12      	subs	r2, r2, r4
10002c4c:	2a02      	cmp	r2, #2
10002c4e:	dc40      	bgt.n	10002cd2 <atm_adv_set_adv_data+0x186>
10002c50:	4931      	ldr	r1, [pc, #196]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002c52:	483a      	ldr	r0, [pc, #232]	; (10002d3c <atm_adv_set_adv_data+0x1f0>)
10002c54:	e7bc      	b.n	10002bd0 <atm_adv_set_adv_data+0x84>
10002c56:	1973      	adds	r3, r6, r5
10002c58:	781b      	ldrb	r3, [r3, #0]
10002c5a:	18ed      	adds	r5, r5, r3
10002c5c:	b2ed      	uxtb	r5, r5
10002c5e:	4b38      	ldr	r3, [pc, #224]	; (10002d40 <atm_adv_set_adv_data+0x1f4>)
10002c60:	4798      	blx	r3
10002c62:	492d      	ldr	r1, [pc, #180]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002c64:	0002      	movs	r2, r0
10002c66:	5570      	strb	r0, [r6, r5]
10002c68:	4b29      	ldr	r3, [pc, #164]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002c6a:	4836      	ldr	r0, [pc, #216]	; (10002d44 <atm_adv_set_adv_data+0x1f8>)
10002c6c:	4798      	blx	r3
10002c6e:	2400      	movs	r4, #0
10002c70:	9b03      	ldr	r3, [sp, #12]
10002c72:	429c      	cmp	r4, r3
10002c74:	db3d      	blt.n	10002cf2 <atm_adv_set_adv_data+0x1a6>
10002c76:	4b26      	ldr	r3, [pc, #152]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002c78:	4927      	ldr	r1, [pc, #156]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002c7a:	4833      	ldr	r0, [pc, #204]	; (10002d48 <atm_adv_set_adv_data+0x1fc>)
10002c7c:	4798      	blx	r3
10002c7e:	4b2a      	ldr	r3, [pc, #168]	; (10002d28 <atm_adv_set_adv_data+0x1dc>)
10002c80:	9a03      	ldr	r2, [sp, #12]
10002c82:	9301      	str	r3, [sp, #4]
10002c84:	9700      	str	r7, [sp, #0]
10002c86:	0033      	movs	r3, r6
10002c88:	e7ab      	b.n	10002be2 <atm_adv_set_adv_data+0x96>
10002c8a:	9b05      	ldr	r3, [sp, #20]
10002c8c:	781b      	ldrb	r3, [r3, #0]
10002c8e:	3301      	adds	r3, #1
10002c90:	18ed      	adds	r5, r5, r3
10002c92:	b2ed      	uxtb	r5, r5
10002c94:	e797      	b.n	10002bc6 <atm_adv_set_adv_data+0x7a>
10002c96:	2306      	movs	r3, #6
10002c98:	9a07      	ldr	r2, [sp, #28]
10002c9a:	5533      	strb	r3, [r6, r4]
10002c9c:	1c63      	adds	r3, r4, #1
10002c9e:	b2db      	uxtb	r3, r3
10002ca0:	54f2      	strb	r2, [r6, r3]
10002ca2:	9a08      	ldr	r2, [sp, #32]
10002ca4:	1ca3      	adds	r3, r4, #2
10002ca6:	b2db      	uxtb	r3, r3
10002ca8:	54f2      	strb	r2, [r6, r3]
10002caa:	9a09      	ldr	r2, [sp, #36]	; 0x24
10002cac:	1ce3      	adds	r3, r4, #3
10002cae:	b2db      	uxtb	r3, r3
10002cb0:	54f2      	strb	r2, [r6, r3]
10002cb2:	2201      	movs	r2, #1
10002cb4:	1d23      	adds	r3, r4, #4
10002cb6:	b2db      	uxtb	r3, r3
10002cb8:	54f2      	strb	r2, [r6, r3]
10002cba:	2300      	movs	r3, #0
10002cbc:	1da5      	adds	r5, r4, #6
10002cbe:	3405      	adds	r4, #5
10002cc0:	b2ed      	uxtb	r5, r5
10002cc2:	b2e4      	uxtb	r4, r4
10002cc4:	5533      	strb	r3, [r6, r4]
10002cc6:	5573      	strb	r3, [r6, r5]
10002cc8:	9b03      	ldr	r3, [sp, #12]
10002cca:	3307      	adds	r3, #7
10002ccc:	b29b      	uxth	r3, r3
10002cce:	9303      	str	r3, [sp, #12]
10002cd0:	e7c5      	b.n	10002c5e <atm_adv_set_adv_data+0x112>
10002cd2:	9a05      	ldr	r2, [sp, #20]
10002cd4:	9905      	ldr	r1, [sp, #20]
10002cd6:	7812      	ldrb	r2, [r2, #0]
10002cd8:	1ca5      	adds	r5, r4, #2
10002cda:	3203      	adds	r2, #3
10002cdc:	700a      	strb	r2, [r1, #0]
10002cde:	2201      	movs	r2, #1
10002ce0:	5532      	strb	r2, [r6, r4]
10002ce2:	18a4      	adds	r4, r4, r2
10002ce4:	b2ed      	uxtb	r5, r5
10002ce6:	b2e4      	uxtb	r4, r4
10002ce8:	5533      	strb	r3, [r6, r4]
10002cea:	5573      	strb	r3, [r6, r5]
10002cec:	9b03      	ldr	r3, [sp, #12]
10002cee:	3303      	adds	r3, #3
10002cf0:	e7ec      	b.n	10002ccc <atm_adv_set_adv_data+0x180>
10002cf2:	0022      	movs	r2, r4
10002cf4:	5d33      	ldrb	r3, [r6, r4]
10002cf6:	4908      	ldr	r1, [pc, #32]	; (10002d18 <atm_adv_set_adv_data+0x1cc>)
10002cf8:	4814      	ldr	r0, [pc, #80]	; (10002d4c <atm_adv_set_adv_data+0x200>)
10002cfa:	4d05      	ldr	r5, [pc, #20]	; (10002d10 <atm_adv_set_adv_data+0x1c4>)
10002cfc:	47a8      	blx	r5
10002cfe:	3401      	adds	r4, #1
10002d00:	e7b6      	b.n	10002c70 <atm_adv_set_adv_data+0x124>
10002d02:	4813      	ldr	r0, [pc, #76]	; (10002d50 <atm_adv_set_adv_data+0x204>)
10002d04:	e740      	b.n	10002b88 <atm_adv_set_adv_data+0x3c>
10002d06:	46c0      	nop			; (mov r8, r8)
10002d08:	100027e1 	.word	0x100027e1
10002d0c:	20014dd4 	.word	0x20014dd4
10002d10:	000066b1 	.word	0x000066b1
10002d14:	10005e5c 	.word	0x10005e5c
10002d18:	1000604b 	.word	0x1000604b
10002d1c:	00000409 	.word	0x00000409
10002d20:	10005e88 	.word	0x10005e88
10002d24:	10005f22 	.word	0x10005f22
10002d28:	1000285d 	.word	0x1000285d
10002d2c:	10004685 	.word	0x10004685
10002d30:	10005ebd 	.word	0x10005ebd
10002d34:	10005eee 	.word	0x10005eee
10002d38:	10005f50 	.word	0x10005f50
10002d3c:	10005f87 	.word	0x10005f87
10002d40:	10001b61 	.word	0x10001b61
10002d44:	10005fc1 	.word	0x10005fc1
10002d48:	10006017 	.word	0x10006017
10002d4c:	10005fed 	.word	0x10005fed
10002d50:	00000404 	.word	0x00000404

10002d54 <atm_adv_start>:
10002d54:	b573      	push	{r0, r1, r4, r5, r6, lr}
10002d56:	4b1e      	ldr	r3, [pc, #120]	; (10002dd0 <atm_adv_start+0x7c>)
10002d58:	0006      	movs	r6, r0
10002d5a:	000d      	movs	r5, r1
10002d5c:	4798      	blx	r3
10002d5e:	4b1d      	ldr	r3, [pc, #116]	; (10002dd4 <atm_adv_start+0x80>)
10002d60:	0004      	movs	r4, r0
10002d62:	681b      	ldr	r3, [r3, #0]
10002d64:	2b00      	cmp	r3, #0
10002d66:	d030      	beq.n	10002dca <atm_adv_start+0x76>
10002d68:	2800      	cmp	r0, #0
10002d6a:	d02e      	beq.n	10002dca <atm_adv_start+0x76>
10002d6c:	2d00      	cmp	r5, #0
10002d6e:	d02c      	beq.n	10002dca <atm_adv_start+0x76>
10002d70:	79c3      	ldrb	r3, [r0, #7]
10002d72:	001a      	movs	r2, r3
10002d74:	3a08      	subs	r2, #8
10002d76:	2a01      	cmp	r2, #1
10002d78:	d801      	bhi.n	10002d7e <atm_adv_start+0x2a>
10002d7a:	4817      	ldr	r0, [pc, #92]	; (10002dd8 <atm_adv_start+0x84>)
10002d7c:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10002d7e:	7982      	ldrb	r2, [r0, #6]
10002d80:	0752      	lsls	r2, r2, #29
10002d82:	d501      	bpl.n	10002d88 <atm_adv_start+0x34>
10002d84:	2b02      	cmp	r3, #2
10002d86:	d00e      	beq.n	10002da6 <atm_adv_start+0x52>
10002d88:	2b05      	cmp	r3, #5
10002d8a:	d003      	beq.n	10002d94 <atm_adv_start+0x40>
10002d8c:	2b07      	cmp	r3, #7
10002d8e:	d00a      	beq.n	10002da6 <atm_adv_start+0x52>
10002d90:	2b03      	cmp	r3, #3
10002d92:	d10a      	bne.n	10002daa <atm_adv_start+0x56>
10002d94:	7a23      	ldrb	r3, [r4, #8]
10002d96:	2b02      	cmp	r3, #2
10002d98:	d001      	beq.n	10002d9e <atm_adv_start+0x4a>
10002d9a:	2b07      	cmp	r3, #7
10002d9c:	d105      	bne.n	10002daa <atm_adv_start+0x56>
10002d9e:	2309      	movs	r3, #9
10002da0:	7223      	strb	r3, [r4, #8]
10002da2:	3b01      	subs	r3, #1
10002da4:	e000      	b.n	10002da8 <atm_adv_start+0x54>
10002da6:	2308      	movs	r3, #8
10002da8:	71e3      	strb	r3, [r4, #7]
10002daa:	79e3      	ldrb	r3, [r4, #7]
10002dac:	2b08      	cmp	r3, #8
10002dae:	d1e4      	bne.n	10002d7a <atm_adv_start+0x26>
10002db0:	2002      	movs	r0, #2
10002db2:	4b0a      	ldr	r3, [pc, #40]	; (10002ddc <atm_adv_start+0x88>)
10002db4:	4798      	blx	r3
10002db6:	4b0a      	ldr	r3, [pc, #40]	; (10002de0 <atm_adv_start+0x8c>)
10002db8:	0030      	movs	r0, r6
10002dba:	9300      	str	r3, [sp, #0]
10002dbc:	78aa      	ldrb	r2, [r5, #2]
10002dbe:	0023      	movs	r3, r4
10002dc0:	8829      	ldrh	r1, [r5, #0]
10002dc2:	4c08      	ldr	r4, [pc, #32]	; (10002de4 <atm_adv_start+0x90>)
10002dc4:	47a0      	blx	r4
10002dc6:	2000      	movs	r0, #0
10002dc8:	e7d8      	b.n	10002d7c <atm_adv_start+0x28>
10002dca:	4807      	ldr	r0, [pc, #28]	; (10002de8 <atm_adv_start+0x94>)
10002dcc:	e7d6      	b.n	10002d7c <atm_adv_start+0x28>
10002dce:	46c0      	nop			; (mov r8, r8)
10002dd0:	100027e1 	.word	0x100027e1
10002dd4:	20014dd4 	.word	0x20014dd4
10002dd8:	00000404 	.word	0x00000404
10002ddc:	10001905 	.word	0x10001905
10002de0:	100028b1 	.word	0x100028b1
10002de4:	1000470d 	.word	0x1000470d
10002de8:	00000409 	.word	0x00000409

10002dec <atm_adv_delete>:
10002dec:	b510      	push	{r4, lr}
10002dee:	4b0d      	ldr	r3, [pc, #52]	; (10002e24 <atm_adv_delete+0x38>)
10002df0:	0004      	movs	r4, r0
10002df2:	4798      	blx	r3
10002df4:	4b0c      	ldr	r3, [pc, #48]	; (10002e28 <atm_adv_delete+0x3c>)
10002df6:	0001      	movs	r1, r0
10002df8:	681b      	ldr	r3, [r3, #0]
10002dfa:	2b00      	cmp	r3, #0
10002dfc:	d00e      	beq.n	10002e1c <atm_adv_delete+0x30>
10002dfe:	2800      	cmp	r0, #0
10002e00:	d00c      	beq.n	10002e1c <atm_adv_delete+0x30>
10002e02:	79c3      	ldrb	r3, [r0, #7]
10002e04:	2b07      	cmp	r3, #7
10002e06:	d001      	beq.n	10002e0c <atm_adv_delete+0x20>
10002e08:	2b0a      	cmp	r3, #10
10002e0a:	d109      	bne.n	10002e20 <atm_adv_delete+0x34>
10002e0c:	230b      	movs	r3, #11
10002e0e:	0020      	movs	r0, r4
10002e10:	71cb      	strb	r3, [r1, #7]
10002e12:	4a06      	ldr	r2, [pc, #24]	; (10002e2c <atm_adv_delete+0x40>)
10002e14:	4b06      	ldr	r3, [pc, #24]	; (10002e30 <atm_adv_delete+0x44>)
10002e16:	4798      	blx	r3
10002e18:	2000      	movs	r0, #0
10002e1a:	bd10      	pop	{r4, pc}
10002e1c:	4805      	ldr	r0, [pc, #20]	; (10002e34 <atm_adv_delete+0x48>)
10002e1e:	e7fc      	b.n	10002e1a <atm_adv_delete+0x2e>
10002e20:	4805      	ldr	r0, [pc, #20]	; (10002e38 <atm_adv_delete+0x4c>)
10002e22:	e7fa      	b.n	10002e1a <atm_adv_delete+0x2e>
10002e24:	100027e1 	.word	0x100027e1
10002e28:	20014dd4 	.word	0x20014dd4
10002e2c:	10002975 	.word	0x10002975
10002e30:	100045d1 	.word	0x100045d1
10002e34:	00000409 	.word	0x00000409
10002e38:	00000404 	.word	0x00000404

10002e3c <atm_adv_stopped_ind>:
10002e3c:	b570      	push	{r4, r5, r6, lr}
10002e3e:	4b0f      	ldr	r3, [pc, #60]	; (10002e7c <atm_adv_stopped_ind+0x40>)
10002e40:	0005      	movs	r5, r0
10002e42:	7800      	ldrb	r0, [r0, #0]
10002e44:	4798      	blx	r3
10002e46:	1e04      	subs	r4, r0, #0
10002e48:	d105      	bne.n	10002e56 <atm_adv_stopped_ind+0x1a>
10002e4a:	4a0d      	ldr	r2, [pc, #52]	; (10002e80 <atm_adv_stopped_ind+0x44>)
10002e4c:	490d      	ldr	r1, [pc, #52]	; (10002e84 <atm_adv_stopped_ind+0x48>)
10002e4e:	480e      	ldr	r0, [pc, #56]	; (10002e88 <atm_adv_stopped_ind+0x4c>)
10002e50:	4b0e      	ldr	r3, [pc, #56]	; (10002e8c <atm_adv_stopped_ind+0x50>)
10002e52:	4798      	blx	r3
10002e54:	bd70      	pop	{r4, r5, r6, pc}
10002e56:	2002      	movs	r0, #2
10002e58:	4b0d      	ldr	r3, [pc, #52]	; (10002e90 <atm_adv_stopped_ind+0x54>)
10002e5a:	4798      	blx	r3
10002e5c:	2307      	movs	r3, #7
10002e5e:	7223      	strb	r3, [r4, #8]
10002e60:	71e3      	strb	r3, [r4, #7]
10002e62:	886b      	ldrh	r3, [r5, #2]
10002e64:	7922      	ldrb	r2, [r4, #4]
10002e66:	490b      	ldr	r1, [pc, #44]	; (10002e94 <atm_adv_stopped_ind+0x58>)
10002e68:	4e0b      	ldr	r6, [pc, #44]	; (10002e98 <atm_adv_stopped_ind+0x5c>)
10002e6a:	480c      	ldr	r0, [pc, #48]	; (10002e9c <atm_adv_stopped_ind+0x60>)
10002e6c:	47b0      	blx	r6
10002e6e:	886a      	ldrh	r2, [r5, #2]
10002e70:	7921      	ldrb	r1, [r4, #4]
10002e72:	79e0      	ldrb	r0, [r4, #7]
10002e74:	4b0a      	ldr	r3, [pc, #40]	; (10002ea0 <atm_adv_stopped_ind+0x64>)
10002e76:	4798      	blx	r3
10002e78:	e7ec      	b.n	10002e54 <atm_adv_stopped_ind+0x18>
10002e7a:	46c0      	nop			; (mov r8, r8)
10002e7c:	100027e1 	.word	0x100027e1
10002e80:	000003ab 	.word	0x000003ab
10002e84:	10005d8d 	.word	0x10005d8d
10002e88:	100050ec 	.word	0x100050ec
10002e8c:	00006609 	.word	0x00006609
10002e90:	10001969 	.word	0x10001969
10002e94:	1000604b 	.word	0x1000604b
10002e98:	000066b1 	.word	0x000066b1
10002e9c:	10005ddf 	.word	0x10005ddf
10002ea0:	100027d1 	.word	0x100027d1

10002ea4 <atm_adv_create_param_get>:
10002ea4:	2328      	movs	r3, #40	; 0x28
10002ea6:	4343      	muls	r3, r0
10002ea8:	4801      	ldr	r0, [pc, #4]	; (10002eb0 <atm_adv_create_param_get+0xc>)
10002eaa:	18c0      	adds	r0, r0, r3
10002eac:	4770      	bx	lr
10002eae:	46c0      	nop			; (mov r8, r8)
10002eb0:	20014ab4 	.word	0x20014ab4

10002eb4 <atm_adv_start_param_get>:
10002eb4:	0083      	lsls	r3, r0, #2
10002eb6:	4801      	ldr	r0, [pc, #4]	; (10002ebc <atm_adv_start_param_get+0x8>)
10002eb8:	18c0      	adds	r0, r0, r3
10002eba:	4770      	bx	lr
10002ebc:	20014af6 	.word	0x20014af6

10002ec0 <atm_adv_advdata_param_get>:
10002ec0:	4b01      	ldr	r3, [pc, #4]	; (10002ec8 <atm_adv_advdata_param_get+0x8>)
10002ec2:	00c0      	lsls	r0, r0, #3
10002ec4:	58c0      	ldr	r0, [r0, r3]
10002ec6:	4770      	bx	lr
10002ec8:	20014b04 	.word	0x20014b04

10002ecc <atm_asm_init_table>:
10002ecc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002ece:	0004      	movs	r4, r0
10002ed0:	000e      	movs	r6, r1
10002ed2:	0015      	movs	r5, r2
10002ed4:	2800      	cmp	r0, #0
10002ed6:	d005      	beq.n	10002ee4 <atm_asm_init_table+0x18>
10002ed8:	0001      	movs	r1, r0
10002eda:	2332      	movs	r3, #50	; 0x32
10002edc:	2001      	movs	r0, #1
10002ede:	4a05      	ldr	r2, [pc, #20]	; (10002ef4 <atm_asm_init_table+0x28>)
10002ee0:	4f05      	ldr	r7, [pc, #20]	; (10002ef8 <atm_asm_init_table+0x2c>)
10002ee2:	47b8      	blx	r7
10002ee4:	200c      	movs	r0, #12
10002ee6:	4344      	muls	r4, r0
10002ee8:	4b04      	ldr	r3, [pc, #16]	; (10002efc <atm_asm_init_table+0x30>)
10002eea:	50e6      	str	r6, [r4, r3]
10002eec:	191b      	adds	r3, r3, r4
10002eee:	711d      	strb	r5, [r3, #4]
10002ef0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002ef2:	46c0      	nop			; (mov r8, r8)
10002ef4:	10006053 	.word	0x10006053
10002ef8:	00006641 	.word	0x00006641
10002efc:	20014dec 	.word	0x20014dec

10002f00 <atm_asm_set_state_op>:
10002f00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002f02:	0007      	movs	r7, r0
10002f04:	000e      	movs	r6, r1
10002f06:	0015      	movs	r5, r2
10002f08:	2800      	cmp	r0, #0
10002f0a:	d005      	beq.n	10002f18 <atm_asm_set_state_op+0x18>
10002f0c:	0001      	movs	r1, r0
10002f0e:	233c      	movs	r3, #60	; 0x3c
10002f10:	2001      	movs	r0, #1
10002f12:	4a0b      	ldr	r2, [pc, #44]	; (10002f40 <atm_asm_set_state_op+0x40>)
10002f14:	4c0b      	ldr	r4, [pc, #44]	; (10002f44 <atm_asm_set_state_op+0x44>)
10002f16:	47a0      	blx	r4
10002f18:	220c      	movs	r2, #12
10002f1a:	437a      	muls	r2, r7
10002f1c:	4c0a      	ldr	r4, [pc, #40]	; (10002f48 <atm_asm_set_state_op+0x48>)
10002f1e:	18a2      	adds	r2, r4, r2
10002f20:	6893      	ldr	r3, [r2, #8]
10002f22:	2b00      	cmp	r3, #0
10002f24:	d003      	beq.n	10002f2e <atm_asm_set_state_op+0x2e>
10002f26:	7990      	ldrb	r0, [r2, #6]
10002f28:	0029      	movs	r1, r5
10002f2a:	0032      	movs	r2, r6
10002f2c:	4798      	blx	r3
10002f2e:	200c      	movs	r0, #12
10002f30:	4378      	muls	r0, r7
10002f32:	1820      	adds	r0, r4, r0
10002f34:	7983      	ldrb	r3, [r0, #6]
10002f36:	7145      	strb	r5, [r0, #5]
10002f38:	7186      	strb	r6, [r0, #6]
10002f3a:	71c3      	strb	r3, [r0, #7]
10002f3c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002f3e:	46c0      	nop			; (mov r8, r8)
10002f40:	10006053 	.word	0x10006053
10002f44:	00006641 	.word	0x00006641
10002f48:	20014dec 	.word	0x20014dec

10002f4c <atm_asm_move>:
10002f4c:	b570      	push	{r4, r5, r6, lr}
10002f4e:	0005      	movs	r5, r0
10002f50:	000e      	movs	r6, r1
10002f52:	2800      	cmp	r0, #0
10002f54:	d005      	beq.n	10002f62 <atm_asm_move+0x16>
10002f56:	0001      	movs	r1, r0
10002f58:	2368      	movs	r3, #104	; 0x68
10002f5a:	2001      	movs	r0, #1
10002f5c:	4a12      	ldr	r2, [pc, #72]	; (10002fa8 <atm_asm_move+0x5c>)
10002f5e:	4c13      	ldr	r4, [pc, #76]	; (10002fac <atm_asm_move+0x60>)
10002f60:	47a0      	blx	r4
10002f62:	230c      	movs	r3, #12
10002f64:	436b      	muls	r3, r5
10002f66:	4a12      	ldr	r2, [pc, #72]	; (10002fb0 <atm_asm_move+0x64>)
10002f68:	589c      	ldr	r4, [r3, r2]
10002f6a:	18d2      	adds	r2, r2, r3
10002f6c:	7913      	ldrb	r3, [r2, #4]
10002f6e:	7990      	ldrb	r0, [r2, #6]
10002f70:	00db      	lsls	r3, r3, #3
10002f72:	191b      	adds	r3, r3, r4
10002f74:	429c      	cmp	r4, r3
10002f76:	d105      	bne.n	10002f84 <atm_asm_move+0x38>
10002f78:	237a      	movs	r3, #122	; 0x7a
10002f7a:	0031      	movs	r1, r6
10002f7c:	4a0a      	ldr	r2, [pc, #40]	; (10002fa8 <atm_asm_move+0x5c>)
10002f7e:	4c0b      	ldr	r4, [pc, #44]	; (10002fac <atm_asm_move+0x60>)
10002f80:	47a0      	blx	r4
10002f82:	e00e      	b.n	10002fa2 <atm_asm_move+0x56>
10002f84:	7822      	ldrb	r2, [r4, #0]
10002f86:	4282      	cmp	r2, r0
10002f88:	d10c      	bne.n	10002fa4 <atm_asm_move+0x58>
10002f8a:	7862      	ldrb	r2, [r4, #1]
10002f8c:	42b2      	cmp	r2, r6
10002f8e:	d109      	bne.n	10002fa4 <atm_asm_move+0x58>
10002f90:	4b08      	ldr	r3, [pc, #32]	; (10002fb4 <atm_asm_move+0x68>)
10002f92:	0032      	movs	r2, r6
10002f94:	0028      	movs	r0, r5
10002f96:	78a1      	ldrb	r1, [r4, #2]
10002f98:	4798      	blx	r3
10002f9a:	6863      	ldr	r3, [r4, #4]
10002f9c:	2b00      	cmp	r3, #0
10002f9e:	d000      	beq.n	10002fa2 <atm_asm_move+0x56>
10002fa0:	4798      	blx	r3
10002fa2:	bd70      	pop	{r4, r5, r6, pc}
10002fa4:	3408      	adds	r4, #8
10002fa6:	e7e5      	b.n	10002f74 <atm_asm_move+0x28>
10002fa8:	10006053 	.word	0x10006053
10002fac:	00006641 	.word	0x00006641
10002fb0:	20014dec 	.word	0x20014dec
10002fb4:	10002f01 	.word	0x10002f01

10002fb8 <atm_gapc_cmp_evt_disconnect>:
10002fb8:	b510      	push	{r4, lr}
10002fba:	0014      	movs	r4, r2
10002fbc:	4b05      	ldr	r3, [pc, #20]	; (10002fd4 <atm_gapc_cmp_evt_disconnect+0x1c>)
10002fbe:	884a      	ldrh	r2, [r1, #2]
10002fc0:	4805      	ldr	r0, [pc, #20]	; (10002fd8 <atm_gapc_cmp_evt_disconnect+0x20>)
10002fc2:	4906      	ldr	r1, [pc, #24]	; (10002fdc <atm_gapc_cmp_evt_disconnect+0x24>)
10002fc4:	4798      	blx	r3
10002fc6:	7823      	ldrb	r3, [r4, #0]
10002fc8:	2b00      	cmp	r3, #0
10002fca:	d001      	beq.n	10002fd0 <atm_gapc_cmp_evt_disconnect+0x18>
10002fcc:	2303      	movs	r3, #3
10002fce:	7023      	strb	r3, [r4, #0]
10002fd0:	bd10      	pop	{r4, pc}
10002fd2:	46c0      	nop			; (mov r8, r8)
10002fd4:	000066b1 	.word	0x000066b1
10002fd8:	1000605d 	.word	0x1000605d
10002fdc:	100062a1 	.word	0x100062a1

10002fe0 <proc_gapc_ind>:
10002fe0:	b570      	push	{r4, r5, r6, lr}
10002fe2:	0004      	movs	r4, r0
10002fe4:	0015      	movs	r5, r2
10002fe6:	2900      	cmp	r1, #0
10002fe8:	d004      	beq.n	10002ff4 <proc_gapc_ind+0x14>
10002fea:	4a06      	ldr	r2, [pc, #24]	; (10003004 <proc_gapc_ind+0x24>)
10002fec:	4906      	ldr	r1, [pc, #24]	; (10003008 <proc_gapc_ind+0x28>)
10002fee:	4807      	ldr	r0, [pc, #28]	; (1000300c <proc_gapc_ind+0x2c>)
10002ff0:	4b07      	ldr	r3, [pc, #28]	; (10003010 <proc_gapc_ind+0x30>)
10002ff2:	4798      	blx	r3
10002ff4:	2d00      	cmp	r5, #0
10002ff6:	d104      	bne.n	10003002 <proc_gapc_ind+0x22>
10002ff8:	0022      	movs	r2, r4
10002ffa:	4906      	ldr	r1, [pc, #24]	; (10003014 <proc_gapc_ind+0x34>)
10002ffc:	4806      	ldr	r0, [pc, #24]	; (10003018 <proc_gapc_ind+0x38>)
10002ffe:	4b07      	ldr	r3, [pc, #28]	; (1000301c <proc_gapc_ind+0x3c>)
10003000:	4798      	blx	r3
10003002:	bd70      	pop	{r4, r5, r6, pc}
10003004:	0000022e 	.word	0x0000022e
10003008:	10006087 	.word	0x10006087
1000300c:	100050ec 	.word	0x100050ec
10003010:	00006609 	.word	0x00006609
10003014:	100062a1 	.word	0x100062a1
10003018:	10006091 	.word	0x10006091
1000301c:	000066b1 	.word	0x000066b1

10003020 <atm_gapm_cmp_evt_set_device>:
10003020:	b570      	push	{r4, r5, r6, lr}
10003022:	000c      	movs	r4, r1
10003024:	8841      	ldrh	r1, [r0, #2]
10003026:	2900      	cmp	r1, #0
10003028:	d005      	beq.n	10003036 <atm_gapm_cmp_evt_set_device+0x16>
1000302a:	23e4      	movs	r3, #228	; 0xe4
1000302c:	7800      	ldrb	r0, [r0, #0]
1000302e:	4a0f      	ldr	r2, [pc, #60]	; (1000306c <atm_gapm_cmp_evt_set_device+0x4c>)
10003030:	4d0f      	ldr	r5, [pc, #60]	; (10003070 <atm_gapm_cmp_evt_set_device+0x50>)
10003032:	005b      	lsls	r3, r3, #1
10003034:	47a8      	blx	r5
10003036:	2300      	movs	r3, #0
10003038:	7a61      	ldrb	r1, [r4, #9]
1000303a:	72a3      	strb	r3, [r4, #10]
1000303c:	7aa3      	ldrb	r3, [r4, #10]
1000303e:	428b      	cmp	r3, r1
10003040:	d20c      	bcs.n	1000305c <atm_gapm_cmp_evt_set_device+0x3c>
10003042:	6860      	ldr	r0, [r4, #4]
10003044:	009a      	lsls	r2, r3, #2
10003046:	5812      	ldr	r2, [r2, r0]
10003048:	6852      	ldr	r2, [r2, #4]
1000304a:	2a00      	cmp	r2, #0
1000304c:	d003      	beq.n	10003056 <atm_gapm_cmp_evt_set_device+0x36>
1000304e:	0021      	movs	r1, r4
10003050:	4808      	ldr	r0, [pc, #32]	; (10003074 <atm_gapm_cmp_evt_set_device+0x54>)
10003052:	4790      	blx	r2
10003054:	e009      	b.n	1000306a <atm_gapm_cmp_evt_set_device+0x4a>
10003056:	3301      	adds	r3, #1
10003058:	72a3      	strb	r3, [r4, #10]
1000305a:	e7ef      	b.n	1000303c <atm_gapm_cmp_evt_set_device+0x1c>
1000305c:	4b06      	ldr	r3, [pc, #24]	; (10003078 <atm_gapm_cmp_evt_set_device+0x58>)
1000305e:	681b      	ldr	r3, [r3, #0]
10003060:	691b      	ldr	r3, [r3, #16]
10003062:	2b00      	cmp	r3, #0
10003064:	d001      	beq.n	1000306a <atm_gapm_cmp_evt_set_device+0x4a>
10003066:	2000      	movs	r0, #0
10003068:	4798      	blx	r3
1000306a:	bd70      	pop	{r4, r5, r6, pc}
1000306c:	10006087 	.word	0x10006087
10003070:	00006641 	.word	0x00006641
10003074:	1000307d 	.word	0x1000307d
10003078:	20014df8 	.word	0x20014df8

1000307c <atm_gap_mod_start_cfm>:
1000307c:	b570      	push	{r4, r5, r6, lr}
1000307e:	8840      	ldrh	r0, [r0, #2]
10003080:	000c      	movs	r4, r1
10003082:	2800      	cmp	r0, #0
10003084:	d005      	beq.n	10003092 <atm_gap_mod_start_cfm+0x16>
10003086:	2358      	movs	r3, #88	; 0x58
10003088:	2100      	movs	r1, #0
1000308a:	4a13      	ldr	r2, [pc, #76]	; (100030d8 <atm_gap_mod_start_cfm+0x5c>)
1000308c:	4d13      	ldr	r5, [pc, #76]	; (100030dc <atm_gap_mod_start_cfm+0x60>)
1000308e:	33ff      	adds	r3, #255	; 0xff
10003090:	47a8      	blx	r5
10003092:	7aa3      	ldrb	r3, [r4, #10]
10003094:	7a62      	ldrb	r2, [r4, #9]
10003096:	4293      	cmp	r3, r2
10003098:	d30a      	bcc.n	100030b0 <atm_gap_mod_start_cfm+0x34>
1000309a:	7aa3      	ldrb	r3, [r4, #10]
1000309c:	429a      	cmp	r2, r3
1000309e:	d813      	bhi.n	100030c8 <atm_gap_mod_start_cfm+0x4c>
100030a0:	4b0f      	ldr	r3, [pc, #60]	; (100030e0 <atm_gap_mod_start_cfm+0x64>)
100030a2:	681b      	ldr	r3, [r3, #0]
100030a4:	691b      	ldr	r3, [r3, #16]
100030a6:	2b00      	cmp	r3, #0
100030a8:	d015      	beq.n	100030d6 <atm_gap_mod_start_cfm+0x5a>
100030aa:	2000      	movs	r0, #0
100030ac:	4798      	blx	r3
100030ae:	e012      	b.n	100030d6 <atm_gap_mod_start_cfm+0x5a>
100030b0:	3301      	adds	r3, #1
100030b2:	72a3      	strb	r3, [r4, #10]
100030b4:	7aa3      	ldrb	r3, [r4, #10]
100030b6:	429a      	cmp	r2, r3
100030b8:	d9ef      	bls.n	1000309a <atm_gap_mod_start_cfm+0x1e>
100030ba:	6860      	ldr	r0, [r4, #4]
100030bc:	0099      	lsls	r1, r3, #2
100030be:	5809      	ldr	r1, [r1, r0]
100030c0:	6849      	ldr	r1, [r1, #4]
100030c2:	2900      	cmp	r1, #0
100030c4:	d0f4      	beq.n	100030b0 <atm_gap_mod_start_cfm+0x34>
100030c6:	e7e8      	b.n	1000309a <atm_gap_mod_start_cfm+0x1e>
100030c8:	6862      	ldr	r2, [r4, #4]
100030ca:	009b      	lsls	r3, r3, #2
100030cc:	589b      	ldr	r3, [r3, r2]
100030ce:	0021      	movs	r1, r4
100030d0:	685b      	ldr	r3, [r3, #4]
100030d2:	4804      	ldr	r0, [pc, #16]	; (100030e4 <atm_gap_mod_start_cfm+0x68>)
100030d4:	4798      	blx	r3
100030d6:	bd70      	pop	{r4, r5, r6, pc}
100030d8:	10006087 	.word	0x10006087
100030dc:	00006641 	.word	0x00006641
100030e0:	20014df8 	.word	0x20014df8
100030e4:	1000307d 	.word	0x1000307d

100030e8 <atm_continue_init>:
100030e8:	b5f0      	push	{r4, r5, r6, r7, lr}
100030ea:	2506      	movs	r5, #6
100030ec:	b09b      	sub	sp, #108	; 0x6c
100030ee:	6807      	ldr	r7, [r0, #0]
100030f0:	ac0d      	add	r4, sp, #52	; 0x34
100030f2:	4e2f      	ldr	r6, [pc, #188]	; (100031b0 <atm_continue_init+0xc8>)
100030f4:	2232      	movs	r2, #50	; 0x32
100030f6:	6979      	ldr	r1, [r7, #20]
100030f8:	9000      	str	r0, [sp, #0]
100030fa:	0020      	movs	r0, r4
100030fc:	47b0      	blx	r6
100030fe:	002a      	movs	r2, r5
10003100:	492c      	ldr	r1, [pc, #176]	; (100031b4 <atm_continue_init+0xcc>)
10003102:	a803      	add	r0, sp, #12
10003104:	47b0      	blx	r6
10003106:	003b      	movs	r3, r7
10003108:	3318      	adds	r3, #24
1000310a:	0018      	movs	r0, r3
1000310c:	9301      	str	r3, [sp, #4]
1000310e:	002a      	movs	r2, r5
10003110:	4b29      	ldr	r3, [pc, #164]	; (100031b8 <atm_continue_init+0xd0>)
10003112:	a903      	add	r1, sp, #12
10003114:	4798      	blx	r3
10003116:	ae0e      	add	r6, sp, #56	; 0x38
10003118:	2800      	cmp	r0, #0
1000311a:	d143      	bne.n	100031a4 <atm_continue_init+0xbc>
1000311c:	a905      	add	r1, sp, #20
1000311e:	0032      	movs	r2, r6
10003120:	4b26      	ldr	r3, [pc, #152]	; (100031bc <atm_continue_init+0xd4>)
10003122:	800d      	strh	r5, [r1, #0]
10003124:	3001      	adds	r0, #1
10003126:	4798      	blx	r3
10003128:	7ea3      	ldrb	r3, [r4, #26]
1000312a:	07db      	lsls	r3, r3, #31
1000312c:	d523      	bpl.n	10003176 <atm_continue_init+0x8e>
1000312e:	223f      	movs	r2, #63	; 0x3f
10003130:	7a63      	ldrb	r3, [r4, #9]
10003132:	4393      	bics	r3, r2
10003134:	2bc0      	cmp	r3, #192	; 0xc0
10003136:	d005      	beq.n	10003144 <atm_continue_init+0x5c>
10003138:	22e2      	movs	r2, #226	; 0xe2
1000313a:	4921      	ldr	r1, [pc, #132]	; (100031c0 <atm_continue_init+0xd8>)
1000313c:	4821      	ldr	r0, [pc, #132]	; (100031c4 <atm_continue_init+0xdc>)
1000313e:	4b22      	ldr	r3, [pc, #136]	; (100031c8 <atm_continue_init+0xe0>)
10003140:	32ff      	adds	r2, #255	; 0xff
10003142:	4798      	blx	r3
10003144:	0030      	movs	r0, r6
10003146:	4b21      	ldr	r3, [pc, #132]	; (100031cc <atm_continue_init+0xe4>)
10003148:	4798      	blx	r3
1000314a:	ab02      	add	r3, sp, #8
1000314c:	1c99      	adds	r1, r3, #2
1000314e:	2320      	movs	r3, #32
10003150:	2080      	movs	r0, #128	; 0x80
10003152:	800b      	strh	r3, [r1, #0]
10003154:	aa05      	add	r2, sp, #20
10003156:	4b19      	ldr	r3, [pc, #100]	; (100031bc <atm_continue_init+0xd4>)
10003158:	4798      	blx	r3
1000315a:	2800      	cmp	r0, #0
1000315c:	d00b      	beq.n	10003176 <atm_continue_init+0x8e>
1000315e:	2302      	movs	r3, #2
10003160:	2204      	movs	r2, #4
10003162:	2108      	movs	r1, #8
10003164:	481a      	ldr	r0, [pc, #104]	; (100031d0 <atm_continue_init+0xe8>)
10003166:	4e1b      	ldr	r6, [pc, #108]	; (100031d4 <atm_continue_init+0xec>)
10003168:	47b0      	blx	r6
1000316a:	232f      	movs	r3, #47	; 0x2f
1000316c:	7003      	strb	r3, [r0, #0]
1000316e:	3b2e      	subs	r3, #46	; 0x2e
10003170:	7043      	strb	r3, [r0, #1]
10003172:	4b19      	ldr	r3, [pc, #100]	; (100031d8 <atm_continue_init+0xf0>)
10003174:	4798      	blx	r3
10003176:	2036      	movs	r0, #54	; 0x36
10003178:	ab02      	add	r3, sp, #8
1000317a:	2210      	movs	r2, #16
1000317c:	2100      	movs	r1, #0
1000317e:	18c0      	adds	r0, r0, r3
10003180:	4b16      	ldr	r3, [pc, #88]	; (100031dc <atm_continue_init+0xf4>)
10003182:	4798      	blx	r3
10003184:	2204      	movs	r2, #4
10003186:	7ea3      	ldrb	r3, [r4, #26]
10003188:	0020      	movs	r0, r4
1000318a:	4393      	bics	r3, r2
1000318c:	76a3      	strb	r3, [r4, #26]
1000318e:	2356      	movs	r3, #86	; 0x56
10003190:	aa02      	add	r2, sp, #8
10003192:	189b      	adds	r3, r3, r2
10003194:	2201      	movs	r2, #1
10003196:	4912      	ldr	r1, [pc, #72]	; (100031e0 <atm_continue_init+0xf8>)
10003198:	701a      	strb	r2, [r3, #0]
1000319a:	9a00      	ldr	r2, [sp, #0]
1000319c:	4b11      	ldr	r3, [pc, #68]	; (100031e4 <atm_continue_init+0xfc>)
1000319e:	4798      	blx	r3
100031a0:	b01b      	add	sp, #108	; 0x6c
100031a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
100031a4:	69bb      	ldr	r3, [r7, #24]
100031a6:	930e      	str	r3, [sp, #56]	; 0x38
100031a8:	9b01      	ldr	r3, [sp, #4]
100031aa:	889b      	ldrh	r3, [r3, #4]
100031ac:	80b3      	strh	r3, [r6, #4]
100031ae:	e7bb      	b.n	10003128 <atm_continue_init+0x40>
100031b0:	00005821 	.word	0x00005821
100031b4:	1000629b 	.word	0x1000629b
100031b8:	0002fba5 	.word	0x0002fba5
100031bc:	00002f55 	.word	0x00002f55
100031c0:	10006087 	.word	0x10006087
100031c4:	100050ec 	.word	0x100050ec
100031c8:	00006609 	.word	0x00006609
100031cc:	10004f9d 	.word	0x10004f9d
100031d0:	00000d2b 	.word	0x00000d2b
100031d4:	00001171 	.word	0x00001171
100031d8:	000011a9 	.word	0x000011a9
100031dc:	00005859 	.word	0x00005859
100031e0:	10003021 	.word	0x10003021
100031e4:	100044d5 	.word	0x100044d5

100031e8 <atm_gap_conidx_state_sanity>:
100031e8:	000a      	movs	r2, r1
100031ea:	b510      	push	{r4, lr}
100031ec:	2800      	cmp	r0, #0
100031ee:	d104      	bne.n	100031fa <atm_gap_conidx_state_sanity+0x12>
100031f0:	4b05      	ldr	r3, [pc, #20]	; (10003208 <atm_gap_conidx_state_sanity+0x20>)
100031f2:	3001      	adds	r0, #1
100031f4:	781b      	ldrb	r3, [r3, #0]
100031f6:	2b00      	cmp	r3, #0
100031f8:	d104      	bne.n	10003204 <atm_gap_conidx_state_sanity+0x1c>
100031fa:	4904      	ldr	r1, [pc, #16]	; (1000320c <atm_gap_conidx_state_sanity+0x24>)
100031fc:	4804      	ldr	r0, [pc, #16]	; (10003210 <atm_gap_conidx_state_sanity+0x28>)
100031fe:	4b05      	ldr	r3, [pc, #20]	; (10003214 <atm_gap_conidx_state_sanity+0x2c>)
10003200:	4798      	blx	r3
10003202:	2000      	movs	r0, #0
10003204:	bd10      	pop	{r4, pc}
10003206:	46c0      	nop			; (mov r8, r8)
10003208:	20014e08 	.word	0x20014e08
1000320c:	100062a1 	.word	0x100062a1
10003210:	100060bf 	.word	0x100060bf
10003214:	000066b1 	.word	0x000066b1

10003218 <atm_gap_conidx_sanity>:
10003218:	2301      	movs	r3, #1
1000321a:	b510      	push	{r4, lr}
1000321c:	2800      	cmp	r0, #0
1000321e:	d005      	beq.n	1000322c <atm_gap_conidx_sanity+0x14>
10003220:	4b03      	ldr	r3, [pc, #12]	; (10003230 <atm_gap_conidx_sanity+0x18>)
10003222:	22c5      	movs	r2, #197	; 0xc5
10003224:	4903      	ldr	r1, [pc, #12]	; (10003234 <atm_gap_conidx_sanity+0x1c>)
10003226:	4804      	ldr	r0, [pc, #16]	; (10003238 <atm_gap_conidx_sanity+0x20>)
10003228:	4798      	blx	r3
1000322a:	2300      	movs	r3, #0
1000322c:	0018      	movs	r0, r3
1000322e:	bd10      	pop	{r4, pc}
10003230:	00006609 	.word	0x00006609
10003234:	10006087 	.word	0x10006087
10003238:	100050ec 	.word	0x100050ec

1000323c <atm_gapm_cmp_evt_bt_reset>:
1000323c:	b510      	push	{r4, lr}
1000323e:	8843      	ldrh	r3, [r0, #2]
10003240:	2b00      	cmp	r3, #0
10003242:	d103      	bne.n	1000324c <atm_gapm_cmp_evt_bt_reset+0x10>
10003244:	0008      	movs	r0, r1
10003246:	4b04      	ldr	r3, [pc, #16]	; (10003258 <atm_gapm_cmp_evt_bt_reset+0x1c>)
10003248:	4798      	blx	r3
1000324a:	bd10      	pop	{r4, pc}
1000324c:	4a03      	ldr	r2, [pc, #12]	; (1000325c <atm_gapm_cmp_evt_bt_reset+0x20>)
1000324e:	4904      	ldr	r1, [pc, #16]	; (10003260 <atm_gapm_cmp_evt_bt_reset+0x24>)
10003250:	4804      	ldr	r0, [pc, #16]	; (10003264 <atm_gapm_cmp_evt_bt_reset+0x28>)
10003252:	4b05      	ldr	r3, [pc, #20]	; (10003268 <atm_gapm_cmp_evt_bt_reset+0x2c>)
10003254:	4798      	blx	r3
10003256:	e7f8      	b.n	1000324a <atm_gapm_cmp_evt_bt_reset+0xe>
10003258:	100030e9 	.word	0x100030e9
1000325c:	00000225 	.word	0x00000225
10003260:	10006087 	.word	0x10006087
10003264:	100050ec 	.word	0x100050ec
10003268:	00006609 	.word	0x00006609

1000326c <atm_gap_start>:
1000326c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000326e:	4f18      	ldr	r7, [pc, #96]	; (100032d0 <atm_gap_start+0x64>)
10003270:	0006      	movs	r6, r0
10003272:	683b      	ldr	r3, [r7, #0]
10003274:	000c      	movs	r4, r1
10003276:	2b00      	cmp	r3, #0
10003278:	d005      	beq.n	10003286 <atm_gap_start+0x1a>
1000327a:	2285      	movs	r2, #133	; 0x85
1000327c:	4915      	ldr	r1, [pc, #84]	; (100032d4 <atm_gap_start+0x68>)
1000327e:	4816      	ldr	r0, [pc, #88]	; (100032d8 <atm_gap_start+0x6c>)
10003280:	4b16      	ldr	r3, [pc, #88]	; (100032dc <atm_gap_start+0x70>)
10003282:	00d2      	lsls	r2, r2, #3
10003284:	4798      	blx	r3
10003286:	4d16      	ldr	r5, [pc, #88]	; (100032e0 <atm_gap_start+0x74>)
10003288:	4b16      	ldr	r3, [pc, #88]	; (100032e4 <atm_gap_start+0x78>)
1000328a:	603c      	str	r4, [r7, #0]
1000328c:	602e      	str	r6, [r5, #0]
1000328e:	4798      	blx	r3
10003290:	4b15      	ldr	r3, [pc, #84]	; (100032e8 <atm_gap_start+0x7c>)
10003292:	4798      	blx	r3
10003294:	4815      	ldr	r0, [pc, #84]	; (100032ec <atm_gap_start+0x80>)
10003296:	4b16      	ldr	r3, [pc, #88]	; (100032f0 <atm_gap_start+0x84>)
10003298:	4798      	blx	r3
1000329a:	2100      	movs	r1, #0
1000329c:	2002      	movs	r0, #2
1000329e:	4a15      	ldr	r2, [pc, #84]	; (100032f4 <atm_gap_start+0x88>)
100032a0:	4b15      	ldr	r3, [pc, #84]	; (100032f8 <atm_gap_start+0x8c>)
100032a2:	4798      	blx	r3
100032a4:	0029      	movs	r1, r5
100032a6:	4815      	ldr	r0, [pc, #84]	; (100032fc <atm_gap_start+0x90>)
100032a8:	4b15      	ldr	r3, [pc, #84]	; (10003300 <atm_gap_start+0x94>)
100032aa:	4798      	blx	r3
100032ac:	2400      	movs	r4, #0
100032ae:	7a6b      	ldrb	r3, [r5, #9]
100032b0:	429c      	cmp	r4, r3
100032b2:	db04      	blt.n	100032be <atm_gap_start+0x52>
100032b4:	4b13      	ldr	r3, [pc, #76]	; (10003304 <atm_gap_start+0x98>)
100032b6:	4798      	blx	r3
100032b8:	4b13      	ldr	r3, [pc, #76]	; (10003308 <atm_gap_start+0x9c>)
100032ba:	4798      	blx	r3
100032bc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100032be:	686a      	ldr	r2, [r5, #4]
100032c0:	00a3      	lsls	r3, r4, #2
100032c2:	589b      	ldr	r3, [r3, r2]
100032c4:	681b      	ldr	r3, [r3, #0]
100032c6:	2b00      	cmp	r3, #0
100032c8:	d000      	beq.n	100032cc <atm_gap_start+0x60>
100032ca:	4798      	blx	r3
100032cc:	3401      	adds	r4, #1
100032ce:	e7ee      	b.n	100032ae <atm_gap_start+0x42>
100032d0:	20014df8 	.word	0x20014df8
100032d4:	10006087 	.word	0x10006087
100032d8:	100050ec 	.word	0x100050ec
100032dc:	00006609 	.word	0x00006609
100032e0:	20014dfc 	.word	0x20014dfc
100032e4:	100048b1 	.word	0x100048b1
100032e8:	1000478d 	.word	0x1000478d
100032ec:	10002fe1 	.word	0x10002fe1
100032f0:	10004781 	.word	0x10004781
100032f4:	1000337d 	.word	0x1000337d
100032f8:	100042e5 	.word	0x100042e5
100032fc:	1000323d 	.word	0x1000323d
10003300:	10004479 	.word	0x10004479
10003304:	10004925 	.word	0x10004925
10003308:	20014295 	.word	0x20014295

1000330c <atm_gap_disconnect>:
1000330c:	b570      	push	{r4, r5, r6, lr}
1000330e:	0a0b      	lsrs	r3, r1, #8
10003310:	0004      	movs	r4, r0
10003312:	000d      	movs	r5, r1
10003314:	2b00      	cmp	r3, #0
10003316:	d005      	beq.n	10003324 <atm_gap_disconnect+0x18>
10003318:	2b03      	cmp	r3, #3
1000331a:	d003      	beq.n	10003324 <atm_gap_disconnect+0x18>
1000331c:	4b08      	ldr	r3, [pc, #32]	; (10003340 <atm_gap_disconnect+0x34>)
1000331e:	4a09      	ldr	r2, [pc, #36]	; (10003344 <atm_gap_disconnect+0x38>)
10003320:	4e09      	ldr	r6, [pc, #36]	; (10003348 <atm_gap_disconnect+0x3c>)
10003322:	47b0      	blx	r6
10003324:	0020      	movs	r0, r4
10003326:	4909      	ldr	r1, [pc, #36]	; (1000334c <atm_gap_disconnect+0x40>)
10003328:	4b09      	ldr	r3, [pc, #36]	; (10003350 <atm_gap_disconnect+0x44>)
1000332a:	4798      	blx	r3
1000332c:	2800      	cmp	r0, #0
1000332e:	d005      	beq.n	1000333c <atm_gap_disconnect+0x30>
10003330:	0020      	movs	r0, r4
10003332:	0029      	movs	r1, r5
10003334:	4b07      	ldr	r3, [pc, #28]	; (10003354 <atm_gap_disconnect+0x48>)
10003336:	4a08      	ldr	r2, [pc, #32]	; (10003358 <atm_gap_disconnect+0x4c>)
10003338:	4c08      	ldr	r4, [pc, #32]	; (1000335c <atm_gap_disconnect+0x50>)
1000333a:	47a0      	blx	r4
1000333c:	bd70      	pop	{r4, r5, r6, pc}
1000333e:	46c0      	nop			; (mov r8, r8)
10003340:	0000044a 	.word	0x0000044a
10003344:	10006087 	.word	0x10006087
10003348:	00006641 	.word	0x00006641
1000334c:	10006111 	.word	0x10006111
10003350:	100031e9 	.word	0x100031e9
10003354:	20014e08 	.word	0x20014e08
10003358:	10002fb9 	.word	0x10002fb9
1000335c:	10004329 	.word	0x10004329

10003360 <atm_gap_get_local_name>:
10003360:	4a05      	ldr	r2, [pc, #20]	; (10003378 <atm_gap_get_local_name+0x18>)
10003362:	0003      	movs	r3, r0
10003364:	6810      	ldr	r0, [r2, #0]
10003366:	2800      	cmp	r0, #0
10003368:	d004      	beq.n	10003374 <atm_gap_get_local_name+0x14>
1000336a:	7901      	ldrb	r1, [r0, #4]
1000336c:	7019      	strb	r1, [r3, #0]
1000336e:	6813      	ldr	r3, [r2, #0]
10003370:	6818      	ldr	r0, [r3, #0]
10003372:	4770      	bx	lr
10003374:	7018      	strb	r0, [r3, #0]
10003376:	e7fc      	b.n	10003372 <atm_gap_get_local_name+0x12>
10003378:	20014dfc 	.word	0x20014dfc

1000337c <evt_handler>:
1000337c:	b5f0      	push	{r4, r5, r6, r7, lr}
1000337e:	7802      	ldrb	r2, [r0, #0]
10003380:	0004      	movs	r4, r0
10003382:	b08f      	sub	sp, #60	; 0x3c
10003384:	2a1a      	cmp	r2, #26
10003386:	d900      	bls.n	1000338a <evt_handler+0xe>
10003388:	e14c      	b.n	10003624 <evt_handler+0x2a8>
1000338a:	0010      	movs	r0, r2
1000338c:	f001 fe58 	bl	10005040 <____gnu_thumb1_case_uhi_veneer>
10003390:	0020001b 	.word	0x0020001b
10003394:	001e001e 	.word	0x001e001e
10003398:	002f0023 	.word	0x002f0023
1000339c:	014a005a 	.word	0x014a005a
100033a0:	007e014a 	.word	0x007e014a
100033a4:	001e001e 	.word	0x001e001e
100033a8:	00b4009e 	.word	0x00b4009e
100033ac:	00c1014a 	.word	0x00c1014a
100033b0:	001e00d5 	.word	0x001e00d5
100033b4:	014a014a 	.word	0x014a014a
100033b8:	014a014a 	.word	0x014a014a
100033bc:	001e014a 	.word	0x001e014a
100033c0:	001e001e 	.word	0x001e001e
100033c4:	001e      	.short	0x001e
100033c6:	4b9a      	ldr	r3, [pc, #616]	; (10003630 <evt_handler+0x2b4>)
100033c8:	1d20      	adds	r0, r4, #4
100033ca:	4798      	blx	r3
100033cc:	2501      	movs	r5, #1
100033ce:	e07a      	b.n	100034c6 <evt_handler+0x14a>
100033d0:	4b98      	ldr	r3, [pc, #608]	; (10003634 <evt_handler+0x2b8>)
100033d2:	1d20      	adds	r0, r4, #4
100033d4:	e7f9      	b.n	100033ca <evt_handler+0x4e>
100033d6:	4b98      	ldr	r3, [pc, #608]	; (10003638 <evt_handler+0x2bc>)
100033d8:	1d20      	adds	r0, r4, #4
100033da:	681b      	ldr	r3, [r3, #0]
100033dc:	681b      	ldr	r3, [r3, #0]
100033de:	2b00      	cmp	r3, #0
100033e0:	d1f3      	bne.n	100033ca <evt_handler+0x4e>
100033e2:	4a96      	ldr	r2, [pc, #600]	; (1000363c <evt_handler+0x2c0>)
100033e4:	4996      	ldr	r1, [pc, #600]	; (10003640 <evt_handler+0x2c4>)
100033e6:	4897      	ldr	r0, [pc, #604]	; (10003644 <evt_handler+0x2c8>)
100033e8:	4b97      	ldr	r3, [pc, #604]	; (10003648 <evt_handler+0x2cc>)
100033ea:	4798      	blx	r3
100033ec:	e7ee      	b.n	100033cc <evt_handler+0x50>
100033ee:	4d97      	ldr	r5, [pc, #604]	; (1000364c <evt_handler+0x2d0>)
100033f0:	7926      	ldrb	r6, [r4, #4]
100033f2:	782b      	ldrb	r3, [r5, #0]
100033f4:	431e      	orrs	r6, r3
100033f6:	d1e9      	bne.n	100033cc <evt_handler+0x50>
100033f8:	1caf      	adds	r7, r5, #2
100033fa:	4b95      	ldr	r3, [pc, #596]	; (10003650 <evt_handler+0x2d4>)
100033fc:	2212      	movs	r2, #18
100033fe:	0038      	movs	r0, r7
10003400:	1da1      	adds	r1, r4, #6
10003402:	4798      	blx	r3
10003404:	2301      	movs	r3, #1
10003406:	702b      	strb	r3, [r5, #0]
10003408:	4b8b      	ldr	r3, [pc, #556]	; (10003638 <evt_handler+0x2bc>)
1000340a:	681b      	ldr	r3, [r3, #0]
1000340c:	685b      	ldr	r3, [r3, #4]
1000340e:	2b00      	cmp	r3, #0
10003410:	d002      	beq.n	10003418 <evt_handler+0x9c>
10003412:	0039      	movs	r1, r7
10003414:	0030      	movs	r0, r6
10003416:	4798      	blx	r3
10003418:	7caa      	ldrb	r2, [r5, #18]
1000341a:	4b8e      	ldr	r3, [pc, #568]	; (10003654 <evt_handler+0x2d8>)
1000341c:	2a00      	cmp	r2, #0
1000341e:	d100      	bne.n	10003422 <evt_handler+0xa6>
10003420:	4b8d      	ldr	r3, [pc, #564]	; (10003658 <evt_handler+0x2dc>)
10003422:	2200      	movs	r2, #0
10003424:	4986      	ldr	r1, [pc, #536]	; (10003640 <evt_handler+0x2c4>)
10003426:	488d      	ldr	r0, [pc, #564]	; (1000365c <evt_handler+0x2e0>)
10003428:	4d87      	ldr	r5, [pc, #540]	; (10003648 <evt_handler+0x2cc>)
1000342a:	47a8      	blx	r5
1000342c:	0020      	movs	r0, r4
1000342e:	2206      	movs	r2, #6
10003430:	498b      	ldr	r1, [pc, #556]	; (10003660 <evt_handler+0x2e4>)
10003432:	4b8c      	ldr	r3, [pc, #560]	; (10003664 <evt_handler+0x2e8>)
10003434:	3010      	adds	r0, #16
10003436:	4798      	blx	r3
10003438:	2800      	cmp	r0, #0
1000343a:	d1c7      	bne.n	100033cc <evt_handler+0x50>
1000343c:	2144      	movs	r1, #68	; 0x44
1000343e:	4b8a      	ldr	r3, [pc, #552]	; (10003668 <evt_handler+0x2ec>)
10003440:	4798      	blx	r3
10003442:	e7c3      	b.n	100033cc <evt_handler+0x50>
10003444:	7927      	ldrb	r7, [r4, #4]
10003446:	4b89      	ldr	r3, [pc, #548]	; (1000366c <evt_handler+0x2f0>)
10003448:	0038      	movs	r0, r7
1000344a:	4798      	blx	r3
1000344c:	1e05      	subs	r5, r0, #0
1000344e:	d0bd      	beq.n	100033cc <evt_handler+0x50>
10003450:	2200      	movs	r2, #0
10003452:	4e7e      	ldr	r6, [pc, #504]	; (1000364c <evt_handler+0x2d0>)
10003454:	017b      	lsls	r3, r7, #5
10003456:	559a      	strb	r2, [r3, r6]
10003458:	18f6      	adds	r6, r6, r3
1000345a:	6973      	ldr	r3, [r6, #20]
1000345c:	4293      	cmp	r3, r2
1000345e:	d007      	beq.n	10003470 <evt_handler+0xf4>
10003460:	7f30      	ldrb	r0, [r6, #28]
10003462:	4b83      	ldr	r3, [pc, #524]	; (10003670 <evt_handler+0x2f4>)
10003464:	4798      	blx	r3
10003466:	7f30      	ldrb	r0, [r6, #28]
10003468:	4b82      	ldr	r3, [pc, #520]	; (10003674 <evt_handler+0x2f8>)
1000346a:	4798      	blx	r3
1000346c:	2200      	movs	r2, #0
1000346e:	6172      	str	r2, [r6, #20]
10003470:	4b71      	ldr	r3, [pc, #452]	; (10003638 <evt_handler+0x2bc>)
10003472:	681b      	ldr	r3, [r3, #0]
10003474:	689b      	ldr	r3, [r3, #8]
10003476:	2b00      	cmp	r3, #0
10003478:	d002      	beq.n	10003480 <evt_handler+0x104>
1000347a:	0038      	movs	r0, r7
1000347c:	1da1      	adds	r1, r4, #6
1000347e:	4798      	blx	r3
10003480:	8922      	ldrh	r2, [r4, #8]
10003482:	496f      	ldr	r1, [pc, #444]	; (10003640 <evt_handler+0x2c4>)
10003484:	487c      	ldr	r0, [pc, #496]	; (10003678 <evt_handler+0x2fc>)
10003486:	4b70      	ldr	r3, [pc, #448]	; (10003648 <evt_handler+0x2cc>)
10003488:	4798      	blx	r3
1000348a:	e01c      	b.n	100034c6 <evt_handler+0x14a>
1000348c:	7926      	ldrb	r6, [r4, #4]
1000348e:	4b77      	ldr	r3, [pc, #476]	; (1000366c <evt_handler+0x2f0>)
10003490:	0030      	movs	r0, r6
10003492:	4798      	blx	r3
10003494:	2800      	cmp	r0, #0
10003496:	d099      	beq.n	100033cc <evt_handler+0x50>
10003498:	0030      	movs	r0, r6
1000349a:	4978      	ldr	r1, [pc, #480]	; (1000367c <evt_handler+0x300>)
1000349c:	4b78      	ldr	r3, [pc, #480]	; (10003680 <evt_handler+0x304>)
1000349e:	4798      	blx	r3
100034a0:	1e05      	subs	r5, r0, #0
100034a2:	d093      	beq.n	100033cc <evt_handler+0x50>
100034a4:	4b69      	ldr	r3, [pc, #420]	; (1000364c <evt_handler+0x2d0>)
100034a6:	88e2      	ldrh	r2, [r4, #6]
100034a8:	0171      	lsls	r1, r6, #5
100034aa:	185b      	adds	r3, r3, r1
100034ac:	809a      	strh	r2, [r3, #4]
100034ae:	8922      	ldrh	r2, [r4, #8]
100034b0:	80da      	strh	r2, [r3, #6]
100034b2:	8962      	ldrh	r2, [r4, #10]
100034b4:	811a      	strh	r2, [r3, #8]
100034b6:	4b60      	ldr	r3, [pc, #384]	; (10003638 <evt_handler+0x2bc>)
100034b8:	681b      	ldr	r3, [r3, #0]
100034ba:	68db      	ldr	r3, [r3, #12]
100034bc:	2b00      	cmp	r3, #0
100034be:	d100      	bne.n	100034c2 <evt_handler+0x146>
100034c0:	e784      	b.n	100033cc <evt_handler+0x50>
100034c2:	0030      	movs	r0, r6
100034c4:	4798      	blx	r3
100034c6:	0028      	movs	r0, r5
100034c8:	b00f      	add	sp, #60	; 0x3c
100034ca:	bdf0      	pop	{r4, r5, r6, r7, pc}
100034cc:	7926      	ldrb	r6, [r4, #4]
100034ce:	4b67      	ldr	r3, [pc, #412]	; (1000366c <evt_handler+0x2f0>)
100034d0:	0030      	movs	r0, r6
100034d2:	4798      	blx	r3
100034d4:	1e05      	subs	r5, r0, #0
100034d6:	d100      	bne.n	100034da <evt_handler+0x15e>
100034d8:	e778      	b.n	100033cc <evt_handler+0x50>
100034da:	0030      	movs	r0, r6
100034dc:	4969      	ldr	r1, [pc, #420]	; (10003684 <evt_handler+0x308>)
100034de:	4b6a      	ldr	r3, [pc, #424]	; (10003688 <evt_handler+0x30c>)
100034e0:	4798      	blx	r3
100034e2:	89a1      	ldrh	r1, [r4, #12]
100034e4:	8923      	ldrh	r3, [r4, #8]
100034e6:	88e2      	ldrh	r2, [r4, #6]
100034e8:	9101      	str	r1, [sp, #4]
100034ea:	8961      	ldrh	r1, [r4, #10]
100034ec:	4867      	ldr	r0, [pc, #412]	; (1000368c <evt_handler+0x310>)
100034ee:	9100      	str	r1, [sp, #0]
100034f0:	4c55      	ldr	r4, [pc, #340]	; (10003648 <evt_handler+0x2cc>)
100034f2:	4953      	ldr	r1, [pc, #332]	; (10003640 <evt_handler+0x2c4>)
100034f4:	47a0      	blx	r4
100034f6:	e7e6      	b.n	100034c6 <evt_handler+0x14a>
100034f8:	4b4f      	ldr	r3, [pc, #316]	; (10003638 <evt_handler+0x2bc>)
100034fa:	681b      	ldr	r3, [r3, #0]
100034fc:	695b      	ldr	r3, [r3, #20]
100034fe:	2b00      	cmp	r3, #0
10003500:	d103      	bne.n	1000350a <evt_handler+0x18e>
10003502:	4a63      	ldr	r2, [pc, #396]	; (10003690 <evt_handler+0x314>)
10003504:	494e      	ldr	r1, [pc, #312]	; (10003640 <evt_handler+0x2c4>)
10003506:	4863      	ldr	r0, [pc, #396]	; (10003694 <evt_handler+0x318>)
10003508:	e76e      	b.n	100033e8 <evt_handler+0x6c>
1000350a:	7920      	ldrb	r0, [r4, #4]
1000350c:	1d61      	adds	r1, r4, #5
1000350e:	4798      	blx	r3
10003510:	e75c      	b.n	100033cc <evt_handler+0x50>
10003512:	7926      	ldrb	r6, [r4, #4]
10003514:	4b55      	ldr	r3, [pc, #340]	; (1000366c <evt_handler+0x2f0>)
10003516:	0030      	movs	r0, r6
10003518:	4798      	blx	r3
1000351a:	1e05      	subs	r5, r0, #0
1000351c:	d100      	bne.n	10003520 <evt_handler+0x1a4>
1000351e:	e755      	b.n	100033cc <evt_handler+0x50>
10003520:	4b45      	ldr	r3, [pc, #276]	; (10003638 <evt_handler+0x2bc>)
10003522:	681b      	ldr	r3, [r3, #0]
10003524:	6a1b      	ldr	r3, [r3, #32]
10003526:	2b00      	cmp	r3, #0
10003528:	d103      	bne.n	10003532 <evt_handler+0x1b6>
1000352a:	4a5b      	ldr	r2, [pc, #364]	; (10003698 <evt_handler+0x31c>)
1000352c:	4944      	ldr	r1, [pc, #272]	; (10003640 <evt_handler+0x2c4>)
1000352e:	4859      	ldr	r0, [pc, #356]	; (10003694 <evt_handler+0x318>)
10003530:	e7a9      	b.n	10003486 <evt_handler+0x10a>
10003532:	0030      	movs	r0, r6
10003534:	1da1      	adds	r1, r4, #6
10003536:	4798      	blx	r3
10003538:	e7c5      	b.n	100034c6 <evt_handler+0x14a>
1000353a:	79a5      	ldrb	r5, [r4, #6]
1000353c:	4e57      	ldr	r6, [pc, #348]	; (1000369c <evt_handler+0x320>)
1000353e:	2d00      	cmp	r5, #0
10003540:	d14e      	bne.n	100035e0 <evt_handler+0x264>
10003542:	230f      	movs	r3, #15
10003544:	aa04      	add	r2, sp, #16
10003546:	189b      	adds	r3, r3, r2
10003548:	0018      	movs	r0, r3
1000354a:	4b55      	ldr	r3, [pc, #340]	; (100036a0 <evt_handler+0x324>)
1000354c:	4798      	blx	r3
1000354e:	a904      	add	r1, sp, #16
10003550:	7bc9      	ldrb	r1, [r1, #15]
10003552:	9002      	str	r0, [sp, #8]
10003554:	89a3      	ldrh	r3, [r4, #12]
10003556:	8962      	ldrh	r2, [r4, #10]
10003558:	4f3b      	ldr	r7, [pc, #236]	; (10003648 <evt_handler+0x2cc>)
1000355a:	9100      	str	r1, [sp, #0]
1000355c:	4851      	ldr	r0, [pc, #324]	; (100036a4 <evt_handler+0x328>)
1000355e:	4938      	ldr	r1, [pc, #224]	; (10003640 <evt_handler+0x2c4>)
10003560:	47b8      	blx	r7
10003562:	ab04      	add	r3, sp, #16
10003564:	7bdb      	ldrb	r3, [r3, #15]
10003566:	8967      	ldrh	r7, [r4, #10]
10003568:	b29a      	uxth	r2, r3
1000356a:	9203      	str	r2, [sp, #12]
1000356c:	429f      	cmp	r7, r3
1000356e:	d90e      	bls.n	1000358e <evt_handler+0x212>
10003570:	af08      	add	r7, sp, #32
10003572:	2218      	movs	r2, #24
10003574:	0029      	movs	r1, r5
10003576:	0038      	movs	r0, r7
10003578:	47b0      	blx	r6
1000357a:	79a3      	ldrb	r3, [r4, #6]
1000357c:	703b      	strb	r3, [r7, #0]
1000357e:	4b4a      	ldr	r3, [pc, #296]	; (100036a8 <evt_handler+0x32c>)
10003580:	807b      	strh	r3, [r7, #2]
10003582:	8923      	ldrh	r3, [r4, #8]
10003584:	80bb      	strh	r3, [r7, #4]
10003586:	0039      	movs	r1, r7
10003588:	7920      	ldrb	r0, [r4, #4]
1000358a:	4b48      	ldr	r3, [pc, #288]	; (100036ac <evt_handler+0x330>)
1000358c:	e7bf      	b.n	1000350e <evt_handler+0x192>
1000358e:	1bdb      	subs	r3, r3, r7
10003590:	89a2      	ldrh	r2, [r4, #12]
10003592:	b2de      	uxtb	r6, r3
10003594:	4296      	cmp	r6, r2
10003596:	d900      	bls.n	1000359a <evt_handler+0x21e>
10003598:	0016      	movs	r6, r2
1000359a:	0030      	movs	r0, r6
1000359c:	4b44      	ldr	r3, [pc, #272]	; (100036b0 <evt_handler+0x334>)
1000359e:	3018      	adds	r0, #24
100035a0:	4798      	blx	r3
100035a2:	0005      	movs	r5, r0
100035a4:	79a3      	ldrb	r3, [r4, #6]
100035a6:	2218      	movs	r2, #24
100035a8:	9304      	str	r3, [sp, #16]
100035aa:	8923      	ldrh	r3, [r4, #8]
100035ac:	2100      	movs	r1, #0
100035ae:	9305      	str	r3, [sp, #20]
100035b0:	4b3a      	ldr	r3, [pc, #232]	; (1000369c <evt_handler+0x320>)
100035b2:	4798      	blx	r3
100035b4:	0028      	movs	r0, r5
100035b6:	9b04      	ldr	r3, [sp, #16]
100035b8:	0032      	movs	r2, r6
100035ba:	702b      	strb	r3, [r5, #0]
100035bc:	9b05      	ldr	r3, [sp, #20]
100035be:	300a      	adds	r0, #10
100035c0:	80ab      	strh	r3, [r5, #4]
100035c2:	9b03      	ldr	r3, [sp, #12]
100035c4:	80eb      	strh	r3, [r5, #6]
100035c6:	9b02      	ldr	r3, [sp, #8]
100035c8:	19d9      	adds	r1, r3, r7
100035ca:	4b21      	ldr	r3, [pc, #132]	; (10003650 <evt_handler+0x2d4>)
100035cc:	4798      	blx	r3
100035ce:	7920      	ldrb	r0, [r4, #4]
100035d0:	0029      	movs	r1, r5
100035d2:	4b36      	ldr	r3, [pc, #216]	; (100036ac <evt_handler+0x330>)
100035d4:	812e      	strh	r6, [r5, #8]
100035d6:	4798      	blx	r3
100035d8:	0028      	movs	r0, r5
100035da:	4b36      	ldr	r3, [pc, #216]	; (100036b4 <evt_handler+0x338>)
100035dc:	4798      	blx	r3
100035de:	e6f5      	b.n	100033cc <evt_handler+0x50>
100035e0:	af08      	add	r7, sp, #32
100035e2:	2218      	movs	r2, #24
100035e4:	2100      	movs	r1, #0
100035e6:	0038      	movs	r0, r7
100035e8:	47b0      	blx	r6
100035ea:	703d      	strb	r5, [r7, #0]
100035ec:	8923      	ldrh	r3, [r4, #8]
100035ee:	80bb      	strh	r3, [r7, #4]
100035f0:	2d01      	cmp	r5, #1
100035f2:	d007      	beq.n	10003604 <evt_handler+0x288>
100035f4:	2d02      	cmp	r5, #2
100035f6:	d00c      	beq.n	10003612 <evt_handler+0x296>
100035f8:	002a      	movs	r2, r5
100035fa:	4911      	ldr	r1, [pc, #68]	; (10003640 <evt_handler+0x2c4>)
100035fc:	4b12      	ldr	r3, [pc, #72]	; (10003648 <evt_handler+0x2cc>)
100035fe:	482e      	ldr	r0, [pc, #184]	; (100036b8 <evt_handler+0x33c>)
10003600:	4798      	blx	r3
10003602:	e7c0      	b.n	10003586 <evt_handler+0x20a>
10003604:	2302      	movs	r3, #2
10003606:	80fb      	strh	r3, [r7, #6]
10003608:	4b2c      	ldr	r3, [pc, #176]	; (100036bc <evt_handler+0x340>)
1000360a:	681b      	ldr	r3, [r3, #0]
1000360c:	88db      	ldrh	r3, [r3, #6]
1000360e:	813b      	strh	r3, [r7, #8]
10003610:	e7b9      	b.n	10003586 <evt_handler+0x20a>
10003612:	2308      	movs	r3, #8
10003614:	80fb      	strh	r3, [r7, #6]
10003616:	4b29      	ldr	r3, [pc, #164]	; (100036bc <evt_handler+0x340>)
10003618:	aa0a      	add	r2, sp, #40	; 0x28
1000361a:	681b      	ldr	r3, [r3, #0]
1000361c:	3308      	adds	r3, #8
1000361e:	cb03      	ldmia	r3!, {r0, r1}
10003620:	c203      	stmia	r2!, {r0, r1}
10003622:	e7b0      	b.n	10003586 <evt_handler+0x20a>
10003624:	4906      	ldr	r1, [pc, #24]	; (10003640 <evt_handler+0x2c4>)
10003626:	4826      	ldr	r0, [pc, #152]	; (100036c0 <evt_handler+0x344>)
10003628:	4b07      	ldr	r3, [pc, #28]	; (10003648 <evt_handler+0x2cc>)
1000362a:	4798      	blx	r3
1000362c:	2500      	movs	r5, #0
1000362e:	e74a      	b.n	100034c6 <evt_handler+0x14a>
10003630:	10002e3d 	.word	0x10002e3d
10003634:	100038f9 	.word	0x100038f9
10003638:	20014df8 	.word	0x20014df8
1000363c:	1000611c 	.word	0x1000611c
10003640:	100062a1 	.word	0x100062a1
10003644:	100060ef 	.word	0x100060ef
10003648:	000066b1 	.word	0x000066b1
1000364c:	20014e08 	.word	0x20014e08
10003650:	00005821 	.word	0x00005821
10003654:	10006118 	.word	0x10006118
10003658:	1000611a 	.word	0x1000611a
1000365c:	10006124 	.word	0x10006124
10003660:	100062b0 	.word	0x100062b0
10003664:	0002fba5 	.word	0x0002fba5
10003668:	1000330d 	.word	0x1000330d
1000366c:	10003219 	.word	0x10003219
10003670:	1000115d 	.word	0x1000115d
10003674:	100010b1 	.word	0x100010b1
10003678:	10006152 	.word	0x10006152
1000367c:	10006178 	.word	0x10006178
10003680:	100031e9 	.word	0x100031e9
10003684:	100062aa 	.word	0x100062aa
10003688:	1000437d 	.word	0x1000437d
1000368c:	10006183 	.word	0x10006183
10003690:	100061d7 	.word	0x100061d7
10003694:	100061db 	.word	0x100061db
10003698:	100061fd 	.word	0x100061fd
1000369c:	00005859 	.word	0x00005859
100036a0:	10003361 	.word	0x10003361
100036a4:	10006209 	.word	0x10006209
100036a8:	00000207 	.word	0x00000207
100036ac:	100043b1 	.word	0x100043b1
100036b0:	0002f615 	.word	0x0002f615
100036b4:	0002f629 	.word	0x0002f629
100036b8:	1000624a 	.word	0x1000624a
100036bc:	20014dfc 	.word	0x20014dfc
100036c0:	10006272 	.word	0x10006272

100036c4 <atm_gap_param_get>:
100036c4:	4800      	ldr	r0, [pc, #0]	; (100036c8 <atm_gap_param_get+0x4>)
100036c6:	4770      	bx	lr
100036c8:	100062b8 	.word	0x100062b8

100036cc <scan_find_by_actidx>:
100036cc:	4a05      	ldr	r2, [pc, #20]	; (100036e4 <scan_find_by_actidx+0x18>)
100036ce:	2300      	movs	r3, #0
100036d0:	7811      	ldrb	r1, [r2, #0]
100036d2:	4281      	cmp	r1, r0
100036d4:	d103      	bne.n	100036de <scan_find_by_actidx+0x12>
100036d6:	7891      	ldrb	r1, [r2, #2]
100036d8:	4299      	cmp	r1, r3
100036da:	d000      	beq.n	100036de <scan_find_by_actidx+0x12>
100036dc:	0013      	movs	r3, r2
100036de:	0018      	movs	r0, r3
100036e0:	4770      	bx	lr
100036e2:	46c0      	nop			; (mov r8, r8)
100036e4:	20014e28 	.word	0x20014e28

100036e8 <gapm_cmp_evt_scan_start>:
100036e8:	b570      	push	{r4, r5, r6, lr}
100036ea:	0005      	movs	r5, r0
100036ec:	1e0c      	subs	r4, r1, #0
100036ee:	d002      	beq.n	100036f6 <gapm_cmp_evt_scan_start+0xe>
100036f0:	788b      	ldrb	r3, [r1, #2]
100036f2:	2b03      	cmp	r3, #3
100036f4:	d005      	beq.n	10003702 <gapm_cmp_evt_scan_start+0x1a>
100036f6:	4a0e      	ldr	r2, [pc, #56]	; (10003730 <gapm_cmp_evt_scan_start+0x48>)
100036f8:	490e      	ldr	r1, [pc, #56]	; (10003734 <gapm_cmp_evt_scan_start+0x4c>)
100036fa:	480f      	ldr	r0, [pc, #60]	; (10003738 <gapm_cmp_evt_scan_start+0x50>)
100036fc:	4b0f      	ldr	r3, [pc, #60]	; (1000373c <gapm_cmp_evt_scan_start+0x54>)
100036fe:	4798      	blx	r3
10003700:	bd70      	pop	{r4, r5, r6, pc}
10003702:	8843      	ldrh	r3, [r0, #2]
10003704:	2b00      	cmp	r3, #0
10003706:	d109      	bne.n	1000371c <gapm_cmp_evt_scan_start+0x34>
10003708:	3304      	adds	r3, #4
1000370a:	708b      	strb	r3, [r1, #2]
1000370c:	6863      	ldr	r3, [r4, #4]
1000370e:	689b      	ldr	r3, [r3, #8]
10003710:	2b00      	cmp	r3, #0
10003712:	d0f5      	beq.n	10003700 <gapm_cmp_evt_scan_start+0x18>
10003714:	8869      	ldrh	r1, [r5, #2]
10003716:	7820      	ldrb	r0, [r4, #0]
10003718:	4798      	blx	r3
1000371a:	e7f1      	b.n	10003700 <gapm_cmp_evt_scan_start+0x18>
1000371c:	2302      	movs	r3, #2
1000371e:	708b      	strb	r3, [r1, #2]
10003720:	8843      	ldrh	r3, [r0, #2]
10003722:	780a      	ldrb	r2, [r1, #0]
10003724:	4e05      	ldr	r6, [pc, #20]	; (1000373c <gapm_cmp_evt_scan_start+0x54>)
10003726:	4903      	ldr	r1, [pc, #12]	; (10003734 <gapm_cmp_evt_scan_start+0x4c>)
10003728:	4805      	ldr	r0, [pc, #20]	; (10003740 <gapm_cmp_evt_scan_start+0x58>)
1000372a:	47b0      	blx	r6
1000372c:	e7ee      	b.n	1000370c <gapm_cmp_evt_scan_start+0x24>
1000372e:	46c0      	nop			; (mov r8, r8)
10003730:	100064a8 	.word	0x100064a8
10003734:	1000648a 	.word	0x1000648a
10003738:	1000631c 	.word	0x1000631c
1000373c:	000066b1 	.word	0x000066b1
10003740:	1000634f 	.word	0x1000634f

10003744 <atm_scan_create>:
10003744:	b510      	push	{r4, lr}
10003746:	000b      	movs	r3, r1
10003748:	490a      	ldr	r1, [pc, #40]	; (10003774 <atm_scan_create+0x30>)
1000374a:	788c      	ldrb	r4, [r1, #2]
1000374c:	2c00      	cmp	r4, #0
1000374e:	d10a      	bne.n	10003766 <atm_scan_create+0x22>
10003750:	22ff      	movs	r2, #255	; 0xff
10003752:	700a      	strb	r2, [r1, #0]
10003754:	3afe      	subs	r2, #254	; 0xfe
10003756:	708a      	strb	r2, [r1, #2]
10003758:	604b      	str	r3, [r1, #4]
1000375a:	4a07      	ldr	r2, [pc, #28]	; (10003778 <atm_scan_create+0x34>)
1000375c:	4b07      	ldr	r3, [pc, #28]	; (1000377c <atm_scan_create+0x38>)
1000375e:	7048      	strb	r0, [r1, #1]
10003760:	4798      	blx	r3
10003762:	0020      	movs	r0, r4
10003764:	bd10      	pop	{r4, pc}
10003766:	4a06      	ldr	r2, [pc, #24]	; (10003780 <atm_scan_create+0x3c>)
10003768:	4906      	ldr	r1, [pc, #24]	; (10003784 <atm_scan_create+0x40>)
1000376a:	4807      	ldr	r0, [pc, #28]	; (10003788 <atm_scan_create+0x44>)
1000376c:	4b07      	ldr	r3, [pc, #28]	; (1000378c <atm_scan_create+0x48>)
1000376e:	4798      	blx	r3
10003770:	2402      	movs	r4, #2
10003772:	e7f6      	b.n	10003762 <atm_scan_create+0x1e>
10003774:	20014e28 	.word	0x20014e28
10003778:	10003879 	.word	0x10003879
1000377c:	10004671 	.word	0x10004671
10003780:	100064e8 	.word	0x100064e8
10003784:	1000648a 	.word	0x1000648a
10003788:	10006380 	.word	0x10006380
1000378c:	000066b1 	.word	0x000066b1

10003790 <atm_scan_create_and_start>:
10003790:	b570      	push	{r4, r5, r6, lr}
10003792:	4b11      	ldr	r3, [pc, #68]	; (100037d8 <atm_scan_create_and_start+0x48>)
10003794:	000e      	movs	r6, r1
10003796:	0011      	movs	r1, r2
10003798:	4798      	blx	r3
1000379a:	1e04      	subs	r4, r0, #0
1000379c:	d006      	beq.n	100037ac <atm_scan_create_and_start+0x1c>
1000379e:	0003      	movs	r3, r0
100037a0:	4a0e      	ldr	r2, [pc, #56]	; (100037dc <atm_scan_create_and_start+0x4c>)
100037a2:	490f      	ldr	r1, [pc, #60]	; (100037e0 <atm_scan_create_and_start+0x50>)
100037a4:	4d0f      	ldr	r5, [pc, #60]	; (100037e4 <atm_scan_create_and_start+0x54>)
100037a6:	4810      	ldr	r0, [pc, #64]	; (100037e8 <atm_scan_create_and_start+0x58>)
100037a8:	47a8      	blx	r5
100037aa:	e013      	b.n	100037d4 <atm_scan_create_and_start+0x44>
100037ac:	4d0f      	ldr	r5, [pc, #60]	; (100037ec <atm_scan_create_and_start+0x5c>)
100037ae:	78ab      	ldrb	r3, [r5, #2]
100037b0:	2b01      	cmp	r3, #1
100037b2:	d10f      	bne.n	100037d4 <atm_scan_create_and_start+0x44>
100037b4:	68ab      	ldr	r3, [r5, #8]
100037b6:	2b00      	cmp	r3, #0
100037b8:	d004      	beq.n	100037c4 <atm_scan_create_and_start+0x34>
100037ba:	22af      	movs	r2, #175	; 0xaf
100037bc:	490c      	ldr	r1, [pc, #48]	; (100037f0 <atm_scan_create_and_start+0x60>)
100037be:	480d      	ldr	r0, [pc, #52]	; (100037f4 <atm_scan_create_and_start+0x64>)
100037c0:	4b0d      	ldr	r3, [pc, #52]	; (100037f8 <atm_scan_create_and_start+0x68>)
100037c2:	4798      	blx	r3
100037c4:	4b0d      	ldr	r3, [pc, #52]	; (100037fc <atm_scan_create_and_start+0x6c>)
100037c6:	2010      	movs	r0, #16
100037c8:	4798      	blx	r3
100037ca:	2210      	movs	r2, #16
100037cc:	0031      	movs	r1, r6
100037ce:	4b0c      	ldr	r3, [pc, #48]	; (10003800 <atm_scan_create_and_start+0x70>)
100037d0:	60a8      	str	r0, [r5, #8]
100037d2:	4798      	blx	r3
100037d4:	0020      	movs	r0, r4
100037d6:	bd70      	pop	{r4, r5, r6, pc}
100037d8:	10003745 	.word	0x10003745
100037dc:	100064f8 	.word	0x100064f8
100037e0:	1000648a 	.word	0x1000648a
100037e4:	000066b1 	.word	0x000066b1
100037e8:	100063c4 	.word	0x100063c4
100037ec:	20014e28 	.word	0x20014e28
100037f0:	100063a5 	.word	0x100063a5
100037f4:	100063b0 	.word	0x100063b0
100037f8:	00006609 	.word	0x00006609
100037fc:	0002f615 	.word	0x0002f615
10003800:	00005821 	.word	0x00005821

10003804 <atm_scan_start>:
10003804:	b570      	push	{r4, r5, r6, lr}
10003806:	4b13      	ldr	r3, [pc, #76]	; (10003854 <atm_scan_start+0x50>)
10003808:	0006      	movs	r6, r0
1000380a:	000d      	movs	r5, r1
1000380c:	4798      	blx	r3
1000380e:	1e04      	subs	r4, r0, #0
10003810:	d004      	beq.n	1000381c <atm_scan_start+0x18>
10003812:	7883      	ldrb	r3, [r0, #2]
10003814:	2b02      	cmp	r3, #2
10003816:	d101      	bne.n	1000381c <atm_scan_start+0x18>
10003818:	2d00      	cmp	r5, #0
1000381a:	d107      	bne.n	1000382c <atm_scan_start+0x28>
1000381c:	0033      	movs	r3, r6
1000381e:	4a0e      	ldr	r2, [pc, #56]	; (10003858 <atm_scan_start+0x54>)
10003820:	490e      	ldr	r1, [pc, #56]	; (1000385c <atm_scan_start+0x58>)
10003822:	480f      	ldr	r0, [pc, #60]	; (10003860 <atm_scan_start+0x5c>)
10003824:	4c0f      	ldr	r4, [pc, #60]	; (10003864 <atm_scan_start+0x60>)
10003826:	47a0      	blx	r4
10003828:	2001      	movs	r0, #1
1000382a:	bd70      	pop	{r4, r5, r6, pc}
1000382c:	2303      	movs	r3, #3
1000382e:	7083      	strb	r3, [r0, #2]
10003830:	7868      	ldrb	r0, [r5, #1]
10003832:	3309      	adds	r3, #9
10003834:	4018      	ands	r0, r3
10003836:	1e42      	subs	r2, r0, #1
10003838:	4190      	sbcs	r0, r2
1000383a:	4b0b      	ldr	r3, [pc, #44]	; (10003868 <atm_scan_start+0x64>)
1000383c:	b2c0      	uxtb	r0, r0
1000383e:	7018      	strb	r0, [r3, #0]
10003840:	4b0a      	ldr	r3, [pc, #40]	; (1000386c <atm_scan_start+0x68>)
10003842:	4798      	blx	r3
10003844:	7820      	ldrb	r0, [r4, #0]
10003846:	0022      	movs	r2, r4
10003848:	0029      	movs	r1, r5
1000384a:	4b09      	ldr	r3, [pc, #36]	; (10003870 <atm_scan_start+0x6c>)
1000384c:	4c09      	ldr	r4, [pc, #36]	; (10003874 <atm_scan_start+0x70>)
1000384e:	47a0      	blx	r4
10003850:	2000      	movs	r0, #0
10003852:	e7ea      	b.n	1000382a <atm_scan_start+0x26>
10003854:	100036cd 	.word	0x100036cd
10003858:	100064c0 	.word	0x100064c0
1000385c:	1000648a 	.word	0x1000648a
10003860:	100063e9 	.word	0x100063e9
10003864:	000066b1 	.word	0x000066b1
10003868:	20014e34 	.word	0x20014e34
1000386c:	10001905 	.word	0x10001905
10003870:	100036e9 	.word	0x100036e9
10003874:	10004741 	.word	0x10004741

10003878 <gapm_cmp_evt_create_scan>:
10003878:	b570      	push	{r4, r5, r6, lr}
1000387a:	0005      	movs	r5, r0
1000387c:	1e0c      	subs	r4, r1, #0
1000387e:	d002      	beq.n	10003886 <gapm_cmp_evt_create_scan+0xe>
10003880:	788b      	ldrb	r3, [r1, #2]
10003882:	2b01      	cmp	r3, #1
10003884:	d005      	beq.n	10003892 <gapm_cmp_evt_create_scan+0x1a>
10003886:	4a15      	ldr	r2, [pc, #84]	; (100038dc <gapm_cmp_evt_create_scan+0x64>)
10003888:	4915      	ldr	r1, [pc, #84]	; (100038e0 <gapm_cmp_evt_create_scan+0x68>)
1000388a:	4816      	ldr	r0, [pc, #88]	; (100038e4 <gapm_cmp_evt_create_scan+0x6c>)
1000388c:	4b16      	ldr	r3, [pc, #88]	; (100038e8 <gapm_cmp_evt_create_scan+0x70>)
1000388e:	4798      	blx	r3
10003890:	bd70      	pop	{r4, r5, r6, pc}
10003892:	8843      	ldrh	r3, [r0, #2]
10003894:	2b00      	cmp	r3, #0
10003896:	d117      	bne.n	100038c8 <gapm_cmp_evt_create_scan+0x50>
10003898:	3302      	adds	r3, #2
1000389a:	708b      	strb	r3, [r1, #2]
1000389c:	7900      	ldrb	r0, [r0, #4]
1000389e:	7008      	strb	r0, [r1, #0]
100038a0:	6889      	ldr	r1, [r1, #8]
100038a2:	2900      	cmp	r1, #0
100038a4:	d001      	beq.n	100038aa <gapm_cmp_evt_create_scan+0x32>
100038a6:	4b11      	ldr	r3, [pc, #68]	; (100038ec <gapm_cmp_evt_create_scan+0x74>)
100038a8:	4798      	blx	r3
100038aa:	68a0      	ldr	r0, [r4, #8]
100038ac:	2800      	cmp	r0, #0
100038ae:	d003      	beq.n	100038b8 <gapm_cmp_evt_create_scan+0x40>
100038b0:	4b0f      	ldr	r3, [pc, #60]	; (100038f0 <gapm_cmp_evt_create_scan+0x78>)
100038b2:	4798      	blx	r3
100038b4:	2300      	movs	r3, #0
100038b6:	60a3      	str	r3, [r4, #8]
100038b8:	6863      	ldr	r3, [r4, #4]
100038ba:	681b      	ldr	r3, [r3, #0]
100038bc:	2b00      	cmp	r3, #0
100038be:	d0e7      	beq.n	10003890 <gapm_cmp_evt_create_scan+0x18>
100038c0:	8869      	ldrh	r1, [r5, #2]
100038c2:	7820      	ldrb	r0, [r4, #0]
100038c4:	4798      	blx	r3
100038c6:	e7e3      	b.n	10003890 <gapm_cmp_evt_create_scan+0x18>
100038c8:	2300      	movs	r3, #0
100038ca:	708b      	strb	r3, [r1, #2]
100038cc:	8843      	ldrh	r3, [r0, #2]
100038ce:	780a      	ldrb	r2, [r1, #0]
100038d0:	4e05      	ldr	r6, [pc, #20]	; (100038e8 <gapm_cmp_evt_create_scan+0x70>)
100038d2:	4903      	ldr	r1, [pc, #12]	; (100038e0 <gapm_cmp_evt_create_scan+0x68>)
100038d4:	4807      	ldr	r0, [pc, #28]	; (100038f4 <gapm_cmp_evt_create_scan+0x7c>)
100038d6:	47b0      	blx	r6
100038d8:	e7e7      	b.n	100038aa <gapm_cmp_evt_create_scan+0x32>
100038da:	46c0      	nop			; (mov r8, r8)
100038dc:	100064cf 	.word	0x100064cf
100038e0:	1000648a 	.word	0x1000648a
100038e4:	1000631c 	.word	0x1000631c
100038e8:	000066b1 	.word	0x000066b1
100038ec:	10003805 	.word	0x10003805
100038f0:	0002f629 	.word	0x0002f629
100038f4:	1000641f 	.word	0x1000641f

100038f8 <atm_scan_stopped_ind>:
100038f8:	b570      	push	{r4, r5, r6, lr}
100038fa:	7806      	ldrb	r6, [r0, #0]
100038fc:	0005      	movs	r5, r0
100038fe:	4b0f      	ldr	r3, [pc, #60]	; (1000393c <atm_scan_stopped_ind+0x44>)
10003900:	0030      	movs	r0, r6
10003902:	4798      	blx	r3
10003904:	1e04      	subs	r4, r0, #0
10003906:	d003      	beq.n	10003910 <atm_scan_stopped_ind+0x18>
10003908:	7883      	ldrb	r3, [r0, #2]
1000390a:	3b04      	subs	r3, #4
1000390c:	2b01      	cmp	r3, #1
1000390e:	d906      	bls.n	1000391e <atm_scan_stopped_ind+0x26>
10003910:	0033      	movs	r3, r6
10003912:	4a0b      	ldr	r2, [pc, #44]	; (10003940 <atm_scan_stopped_ind+0x48>)
10003914:	490b      	ldr	r1, [pc, #44]	; (10003944 <atm_scan_stopped_ind+0x4c>)
10003916:	480c      	ldr	r0, [pc, #48]	; (10003948 <atm_scan_stopped_ind+0x50>)
10003918:	4c0c      	ldr	r4, [pc, #48]	; (1000394c <atm_scan_stopped_ind+0x54>)
1000391a:	47a0      	blx	r4
1000391c:	bd70      	pop	{r4, r5, r6, pc}
1000391e:	4b0c      	ldr	r3, [pc, #48]	; (10003950 <atm_scan_stopped_ind+0x58>)
10003920:	7818      	ldrb	r0, [r3, #0]
10003922:	4b0c      	ldr	r3, [pc, #48]	; (10003954 <atm_scan_stopped_ind+0x5c>)
10003924:	4798      	blx	r3
10003926:	2302      	movs	r3, #2
10003928:	70a3      	strb	r3, [r4, #2]
1000392a:	6863      	ldr	r3, [r4, #4]
1000392c:	68db      	ldr	r3, [r3, #12]
1000392e:	2b00      	cmp	r3, #0
10003930:	d0f4      	beq.n	1000391c <atm_scan_stopped_ind+0x24>
10003932:	8869      	ldrh	r1, [r5, #2]
10003934:	7820      	ldrb	r0, [r4, #0]
10003936:	4798      	blx	r3
10003938:	e7f0      	b.n	1000391c <atm_scan_stopped_ind+0x24>
1000393a:	46c0      	nop			; (mov r8, r8)
1000393c:	100036cd 	.word	0x100036cd
10003940:	10006493 	.word	0x10006493
10003944:	1000648a 	.word	0x1000648a
10003948:	10006453 	.word	0x10006453
1000394c:	000066b1 	.word	0x000066b1
10003950:	20014e34 	.word	0x20014e34
10003954:	10001969 	.word	0x10001969

10003958 <atm_get_nvds_scan_params>:
10003958:	b530      	push	{r4, r5, lr}
1000395a:	490c      	ldr	r1, [pc, #48]	; (1000398c <atm_get_nvds_scan_params+0x34>)
1000395c:	b085      	sub	sp, #20
1000395e:	2210      	movs	r2, #16
10003960:	4b0b      	ldr	r3, [pc, #44]	; (10003990 <atm_get_nvds_scan_params+0x38>)
10003962:	0004      	movs	r4, r0
10003964:	4798      	blx	r3
10003966:	466b      	mov	r3, sp
10003968:	1d99      	adds	r1, r3, #6
1000396a:	2306      	movs	r3, #6
1000396c:	ad02      	add	r5, sp, #8
1000396e:	800b      	strh	r3, [r1, #0]
10003970:	002a      	movs	r2, r5
10003972:	20a4      	movs	r0, #164	; 0xa4
10003974:	4b07      	ldr	r3, [pc, #28]	; (10003994 <atm_get_nvds_scan_params+0x3c>)
10003976:	4798      	blx	r3
10003978:	2800      	cmp	r0, #0
1000397a:	d105      	bne.n	10003988 <atm_get_nvds_scan_params+0x30>
1000397c:	88ab      	ldrh	r3, [r5, #4]
1000397e:	81a3      	strh	r3, [r4, #12]
10003980:	882b      	ldrh	r3, [r5, #0]
10003982:	80a3      	strh	r3, [r4, #4]
10003984:	886b      	ldrh	r3, [r5, #2]
10003986:	80e3      	strh	r3, [r4, #6]
10003988:	b005      	add	sp, #20
1000398a:	bd30      	pop	{r4, r5, pc}
1000398c:	20014b0c 	.word	0x20014b0c
10003990:	00005821 	.word	0x00005821
10003994:	00002f55 	.word	0x00002f55

10003998 <ble_gapc_cmp_cb_list_pick>:
10003998:	0002      	movs	r2, r0
1000399a:	b510      	push	{r4, lr}
1000399c:	4b06      	ldr	r3, [pc, #24]	; (100039b8 <ble_gapc_cmp_cb_list_pick+0x20>)
1000399e:	681b      	ldr	r3, [r3, #0]
100039a0:	2b00      	cmp	r3, #0
100039a2:	d101      	bne.n	100039a8 <ble_gapc_cmp_cb_list_pick+0x10>
100039a4:	0018      	movs	r0, r3
100039a6:	e006      	b.n	100039b6 <ble_gapc_cmp_cb_list_pick+0x1e>
100039a8:	68d8      	ldr	r0, [r3, #12]
100039aa:	7804      	ldrb	r4, [r0, #0]
100039ac:	428c      	cmp	r4, r1
100039ae:	d1f6      	bne.n	1000399e <ble_gapc_cmp_cb_list_pick+0x6>
100039b0:	7904      	ldrb	r4, [r0, #4]
100039b2:	4294      	cmp	r4, r2
100039b4:	d1f3      	bne.n	1000399e <ble_gapc_cmp_cb_list_pick+0x6>
100039b6:	bd10      	pop	{r4, pc}
100039b8:	20014e4c 	.word	0x20014e4c

100039bc <ble_gapm_default_handler>:
100039bc:	2000      	movs	r0, #0
100039be:	4770      	bx	lr

100039c0 <ble_gapm_gen_cb_evt>:
100039c0:	b510      	push	{r4, lr}
100039c2:	2100      	movs	r1, #0
100039c4:	4b01      	ldr	r3, [pc, #4]	; (100039cc <ble_gapm_gen_cb_evt+0xc>)
100039c6:	3014      	adds	r0, #20
100039c8:	4798      	blx	r3
100039ca:	bd10      	pop	{r4, pc}
100039cc:	000013b9 	.word	0x000013b9

100039d0 <ble_gapm_push_cb>:
100039d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100039d2:	0007      	movs	r7, r0
100039d4:	000e      	movs	r6, r1
100039d6:	001c      	movs	r4, r3
100039d8:	2102      	movs	r1, #2
100039da:	4b06      	ldr	r3, [pc, #24]	; (100039f4 <ble_gapm_push_cb+0x24>)
100039dc:	2014      	movs	r0, #20
100039de:	0015      	movs	r5, r2
100039e0:	4798      	blx	r3
100039e2:	4b05      	ldr	r3, [pc, #20]	; (100039f8 <ble_gapm_push_cb+0x28>)
100039e4:	6047      	str	r7, [r0, #4]
100039e6:	7406      	strb	r6, [r0, #16]
100039e8:	6085      	str	r5, [r0, #8]
100039ea:	0001      	movs	r1, r0
100039ec:	60c4      	str	r4, [r0, #12]
100039ee:	4803      	ldr	r0, [pc, #12]	; (100039fc <ble_gapm_push_cb+0x2c>)
100039f0:	4798      	blx	r3
100039f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100039f4:	000013b9 	.word	0x000013b9
100039f8:	0000268f 	.word	0x0000268f
100039fc:	20014e60 	.word	0x20014e60

10003a00 <ble_gapm_create_activity>:
10003a00:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10003a02:	0017      	movs	r7, r2
10003a04:	2204      	movs	r2, #4
10003a06:	9001      	str	r0, [sp, #4]
10003a08:	20da      	movs	r0, #218	; 0xda
10003a0a:	000d      	movs	r5, r1
10003a0c:	001e      	movs	r6, r3
10003a0e:	2108      	movs	r1, #8
10003a10:	4090      	lsls	r0, r2
10003a12:	2302      	movs	r3, #2
10003a14:	4c09      	ldr	r4, [pc, #36]	; (10003a3c <ble_gapm_create_activity+0x3c>)
10003a16:	47a0      	blx	r4
10003a18:	9b01      	ldr	r3, [sp, #4]
10003a1a:	0004      	movs	r4, r0
10003a1c:	7005      	strb	r5, [r0, #0]
10003a1e:	7043      	strb	r3, [r0, #1]
10003a20:	4b07      	ldr	r3, [pc, #28]	; (10003a40 <ble_gapm_create_activity+0x40>)
10003a22:	2000      	movs	r0, #0
10003a24:	4798      	blx	r3
10003a26:	003a      	movs	r2, r7
10003a28:	0029      	movs	r1, r5
10003a2a:	0003      	movs	r3, r0
10003a2c:	4d05      	ldr	r5, [pc, #20]	; (10003a44 <ble_gapm_create_activity+0x44>)
10003a2e:	0030      	movs	r0, r6
10003a30:	47a8      	blx	r5
10003a32:	0020      	movs	r0, r4
10003a34:	4b04      	ldr	r3, [pc, #16]	; (10003a48 <ble_gapm_create_activity+0x48>)
10003a36:	4798      	blx	r3
10003a38:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10003a3a:	46c0      	nop			; (mov r8, r8)
10003a3c:	00001171 	.word	0x00001171
10003a40:	100039c1 	.word	0x100039c1
10003a44:	100039d1 	.word	0x100039d1
10003a48:	000011a9 	.word	0x000011a9

10003a4c <ble_gapm_start_activity>:
10003a4c:	b570      	push	{r4, r5, r6, lr}
10003a4e:	0004      	movs	r4, r0
10003a50:	000d      	movs	r5, r1
10003a52:	21a4      	movs	r1, #164	; 0xa4
10003a54:	1e18      	subs	r0, r3, #0
10003a56:	7021      	strb	r1, [r4, #0]
10003a58:	7065      	strb	r5, [r4, #1]
10003a5a:	d002      	beq.n	10003a62 <ble_gapm_start_activity+0x16>
10003a5c:	2300      	movs	r3, #0
10003a5e:	4d03      	ldr	r5, [pc, #12]	; (10003a6c <ble_gapm_start_activity+0x20>)
10003a60:	47a8      	blx	r5
10003a62:	0020      	movs	r0, r4
10003a64:	4b02      	ldr	r3, [pc, #8]	; (10003a70 <ble_gapm_start_activity+0x24>)
10003a66:	4798      	blx	r3
10003a68:	bd70      	pop	{r4, r5, r6, pc}
10003a6a:	46c0      	nop			; (mov r8, r8)
10003a6c:	100039d1 	.word	0x100039d1
10003a70:	000011a9 	.word	0x000011a9

10003a74 <ble_gapc_le_ping_to_val_ind_handler>:
10003a74:	b570      	push	{r4, r5, r6, lr}
10003a76:	0a1d      	lsrs	r5, r3, #8
10003a78:	000e      	movs	r6, r1
10003a7a:	0028      	movs	r0, r5
10003a7c:	2112      	movs	r1, #18
10003a7e:	4b07      	ldr	r3, [pc, #28]	; (10003a9c <ble_gapc_le_ping_to_val_ind_handler+0x28>)
10003a80:	4798      	blx	r3
10003a82:	1e04      	subs	r4, r0, #0
10003a84:	d104      	bne.n	10003a90 <ble_gapc_le_ping_to_val_ind_handler+0x1c>
10003a86:	4a06      	ldr	r2, [pc, #24]	; (10003aa0 <ble_gapc_le_ping_to_val_ind_handler+0x2c>)
10003a88:	4906      	ldr	r1, [pc, #24]	; (10003aa4 <ble_gapc_le_ping_to_val_ind_handler+0x30>)
10003a8a:	4807      	ldr	r0, [pc, #28]	; (10003aa8 <ble_gapc_le_ping_to_val_ind_handler+0x34>)
10003a8c:	4b07      	ldr	r3, [pc, #28]	; (10003aac <ble_gapc_le_ping_to_val_ind_handler+0x38>)
10003a8e:	4798      	blx	r3
10003a90:	7225      	strb	r5, [r4, #8]
10003a92:	8833      	ldrh	r3, [r6, #0]
10003a94:	2000      	movs	r0, #0
10003a96:	8163      	strh	r3, [r4, #10]
10003a98:	bd70      	pop	{r4, r5, r6, pc}
10003a9a:	46c0      	nop			; (mov r8, r8)
10003a9c:	10003999 	.word	0x10003999
10003aa0:	0000044c 	.word	0x0000044c
10003aa4:	10006512 	.word	0x10006512
10003aa8:	1000652a 	.word	0x1000652a
10003aac:	00006609 	.word	0x00006609

10003ab0 <ble_gapc_con_channel_map_ind_handler>:
10003ab0:	b570      	push	{r4, r5, r6, lr}
10003ab2:	0a1e      	lsrs	r6, r3, #8
10003ab4:	000d      	movs	r5, r1
10003ab6:	0030      	movs	r0, r6
10003ab8:	2108      	movs	r1, #8
10003aba:	4b09      	ldr	r3, [pc, #36]	; (10003ae0 <ble_gapc_con_channel_map_ind_handler+0x30>)
10003abc:	4798      	blx	r3
10003abe:	1e04      	subs	r4, r0, #0
10003ac0:	d105      	bne.n	10003ace <ble_gapc_con_channel_map_ind_handler+0x1e>
10003ac2:	2288      	movs	r2, #136	; 0x88
10003ac4:	4907      	ldr	r1, [pc, #28]	; (10003ae4 <ble_gapc_con_channel_map_ind_handler+0x34>)
10003ac6:	4808      	ldr	r0, [pc, #32]	; (10003ae8 <ble_gapc_con_channel_map_ind_handler+0x38>)
10003ac8:	4b08      	ldr	r3, [pc, #32]	; (10003aec <ble_gapc_con_channel_map_ind_handler+0x3c>)
10003aca:	00d2      	lsls	r2, r2, #3
10003acc:	4798      	blx	r3
10003ace:	0020      	movs	r0, r4
10003ad0:	0029      	movs	r1, r5
10003ad2:	7226      	strb	r6, [r4, #8]
10003ad4:	2205      	movs	r2, #5
10003ad6:	4b06      	ldr	r3, [pc, #24]	; (10003af0 <ble_gapc_con_channel_map_ind_handler+0x40>)
10003ad8:	3009      	adds	r0, #9
10003ada:	4798      	blx	r3
10003adc:	2000      	movs	r0, #0
10003ade:	bd70      	pop	{r4, r5, r6, pc}
10003ae0:	10003999 	.word	0x10003999
10003ae4:	10006512 	.word	0x10006512
10003ae8:	1000652a 	.word	0x1000652a
10003aec:	00006609 	.word	0x00006609
10003af0:	00005821 	.word	0x00005821

10003af4 <ble_gapc_con_rssi_ind_handler>:
10003af4:	b570      	push	{r4, r5, r6, lr}
10003af6:	0a1d      	lsrs	r5, r3, #8
10003af8:	000e      	movs	r6, r1
10003afa:	0028      	movs	r0, r5
10003afc:	2107      	movs	r1, #7
10003afe:	4b07      	ldr	r3, [pc, #28]	; (10003b1c <ble_gapc_con_rssi_ind_handler+0x28>)
10003b00:	4798      	blx	r3
10003b02:	1e04      	subs	r4, r0, #0
10003b04:	d104      	bne.n	10003b10 <ble_gapc_con_rssi_ind_handler+0x1c>
10003b06:	4a06      	ldr	r2, [pc, #24]	; (10003b20 <ble_gapc_con_rssi_ind_handler+0x2c>)
10003b08:	4906      	ldr	r1, [pc, #24]	; (10003b24 <ble_gapc_con_rssi_ind_handler+0x30>)
10003b0a:	4807      	ldr	r0, [pc, #28]	; (10003b28 <ble_gapc_con_rssi_ind_handler+0x34>)
10003b0c:	4b07      	ldr	r3, [pc, #28]	; (10003b2c <ble_gapc_con_rssi_ind_handler+0x38>)
10003b0e:	4798      	blx	r3
10003b10:	7225      	strb	r5, [r4, #8]
10003b12:	7833      	ldrb	r3, [r6, #0]
10003b14:	2000      	movs	r0, #0
10003b16:	7263      	strb	r3, [r4, #9]
10003b18:	bd70      	pop	{r4, r5, r6, pc}
10003b1a:	46c0      	nop			; (mov r8, r8)
10003b1c:	10003999 	.word	0x10003999
10003b20:	00000435 	.word	0x00000435
10003b24:	10006512 	.word	0x10006512
10003b28:	1000652a 	.word	0x1000652a
10003b2c:	00006609 	.word	0x00006609

10003b30 <ble_gapc_peer_features_ind_handler>:
10003b30:	b570      	push	{r4, r5, r6, lr}
10003b32:	0a1e      	lsrs	r6, r3, #8
10003b34:	000d      	movs	r5, r1
10003b36:	0030      	movs	r0, r6
10003b38:	2104      	movs	r1, #4
10003b3a:	4b09      	ldr	r3, [pc, #36]	; (10003b60 <ble_gapc_peer_features_ind_handler+0x30>)
10003b3c:	4798      	blx	r3
10003b3e:	1e04      	subs	r4, r0, #0
10003b40:	d104      	bne.n	10003b4c <ble_gapc_peer_features_ind_handler+0x1c>
10003b42:	4a08      	ldr	r2, [pc, #32]	; (10003b64 <ble_gapc_peer_features_ind_handler+0x34>)
10003b44:	4908      	ldr	r1, [pc, #32]	; (10003b68 <ble_gapc_peer_features_ind_handler+0x38>)
10003b46:	4809      	ldr	r0, [pc, #36]	; (10003b6c <ble_gapc_peer_features_ind_handler+0x3c>)
10003b48:	4b09      	ldr	r3, [pc, #36]	; (10003b70 <ble_gapc_peer_features_ind_handler+0x40>)
10003b4a:	4798      	blx	r3
10003b4c:	0020      	movs	r0, r4
10003b4e:	0029      	movs	r1, r5
10003b50:	7226      	strb	r6, [r4, #8]
10003b52:	2208      	movs	r2, #8
10003b54:	4b07      	ldr	r3, [pc, #28]	; (10003b74 <ble_gapc_peer_features_ind_handler+0x44>)
10003b56:	3009      	adds	r0, #9
10003b58:	4798      	blx	r3
10003b5a:	2000      	movs	r0, #0
10003b5c:	bd70      	pop	{r4, r5, r6, pc}
10003b5e:	46c0      	nop			; (mov r8, r8)
10003b60:	10003999 	.word	0x10003999
10003b64:	0000042a 	.word	0x0000042a
10003b68:	10006512 	.word	0x10006512
10003b6c:	1000652a 	.word	0x1000652a
10003b70:	00006609 	.word	0x00006609
10003b74:	00005821 	.word	0x00005821

10003b78 <ble_gapc_peer_version_ind_handler>:
10003b78:	b570      	push	{r4, r5, r6, lr}
10003b7a:	0a1e      	lsrs	r6, r3, #8
10003b7c:	000d      	movs	r5, r1
10003b7e:	0030      	movs	r0, r6
10003b80:	2103      	movs	r1, #3
10003b82:	4b09      	ldr	r3, [pc, #36]	; (10003ba8 <ble_gapc_peer_version_ind_handler+0x30>)
10003b84:	4798      	blx	r3
10003b86:	1e04      	subs	r4, r0, #0
10003b88:	d104      	bne.n	10003b94 <ble_gapc_peer_version_ind_handler+0x1c>
10003b8a:	4a08      	ldr	r2, [pc, #32]	; (10003bac <ble_gapc_peer_version_ind_handler+0x34>)
10003b8c:	4908      	ldr	r1, [pc, #32]	; (10003bb0 <ble_gapc_peer_version_ind_handler+0x38>)
10003b8e:	4809      	ldr	r0, [pc, #36]	; (10003bb4 <ble_gapc_peer_version_ind_handler+0x3c>)
10003b90:	4b09      	ldr	r3, [pc, #36]	; (10003bb8 <ble_gapc_peer_version_ind_handler+0x40>)
10003b92:	4798      	blx	r3
10003b94:	0020      	movs	r0, r4
10003b96:	0029      	movs	r1, r5
10003b98:	7226      	strb	r6, [r4, #8]
10003b9a:	2206      	movs	r2, #6
10003b9c:	4b07      	ldr	r3, [pc, #28]	; (10003bbc <ble_gapc_peer_version_ind_handler+0x44>)
10003b9e:	300a      	adds	r0, #10
10003ba0:	4798      	blx	r3
10003ba2:	2000      	movs	r0, #0
10003ba4:	bd70      	pop	{r4, r5, r6, pc}
10003ba6:	46c0      	nop			; (mov r8, r8)
10003ba8:	10003999 	.word	0x10003999
10003bac:	0000041f 	.word	0x0000041f
10003bb0:	10006512 	.word	0x10006512
10003bb4:	1000652a 	.word	0x1000652a
10003bb8:	00006609 	.word	0x00006609
10003bbc:	00005821 	.word	0x00005821

10003bc0 <ble_gapm_cmp_evt_handler>:
10003bc0:	b5f0      	push	{r4, r5, r6, r7, lr}
10003bc2:	4b1f      	ldr	r3, [pc, #124]	; (10003c40 <ble_gapm_cmp_evt_handler+0x80>)
10003bc4:	000f      	movs	r7, r1
10003bc6:	681c      	ldr	r4, [r3, #0]
10003bc8:	2300      	movs	r3, #0
10003bca:	b089      	sub	sp, #36	; 0x24
10003bcc:	9301      	str	r3, [sp, #4]
10003bce:	2c00      	cmp	r4, #0
10003bd0:	d103      	bne.n	10003bda <ble_gapm_cmp_evt_handler+0x1a>
10003bd2:	4b1c      	ldr	r3, [pc, #112]	; (10003c44 <ble_gapm_cmp_evt_handler+0x84>)
10003bd4:	481c      	ldr	r0, [pc, #112]	; (10003c48 <ble_gapm_cmp_evt_handler+0x88>)
10003bd6:	4798      	blx	r3
10003bd8:	e01a      	b.n	10003c10 <ble_gapm_cmp_evt_handler+0x50>
10003bda:	783b      	ldrb	r3, [r7, #0]
10003bdc:	7c26      	ldrb	r6, [r4, #16]
10003bde:	429e      	cmp	r6, r3
10003be0:	d12a      	bne.n	10003c38 <ble_gapm_cmp_evt_handler+0x78>
10003be2:	68e5      	ldr	r5, [r4, #12]
10003be4:	2d00      	cmp	r5, #0
10003be6:	d016      	beq.n	10003c16 <ble_gapm_cmp_evt_handler+0x56>
10003be8:	702e      	strb	r6, [r5, #0]
10003bea:	4b18      	ldr	r3, [pc, #96]	; (10003c4c <ble_gapm_cmp_evt_handler+0x8c>)
10003bec:	7878      	ldrb	r0, [r7, #1]
10003bee:	4798      	blx	r3
10003bf0:	8068      	strh	r0, [r5, #2]
10003bf2:	6863      	ldr	r3, [r4, #4]
10003bf4:	0028      	movs	r0, r5
10003bf6:	68a1      	ldr	r1, [r4, #8]
10003bf8:	4798      	blx	r3
10003bfa:	0028      	movs	r0, r5
10003bfc:	4b14      	ldr	r3, [pc, #80]	; (10003c50 <ble_gapm_cmp_evt_handler+0x90>)
10003bfe:	4798      	blx	r3
10003c00:	480f      	ldr	r0, [pc, #60]	; (10003c40 <ble_gapm_cmp_evt_handler+0x80>)
10003c02:	4b14      	ldr	r3, [pc, #80]	; (10003c54 <ble_gapm_cmp_evt_handler+0x94>)
10003c04:	0022      	movs	r2, r4
10003c06:	9901      	ldr	r1, [sp, #4]
10003c08:	4798      	blx	r3
10003c0a:	0020      	movs	r0, r4
10003c0c:	4b10      	ldr	r3, [pc, #64]	; (10003c50 <ble_gapm_cmp_evt_handler+0x90>)
10003c0e:	4798      	blx	r3
10003c10:	2000      	movs	r0, #0
10003c12:	b009      	add	sp, #36	; 0x24
10003c14:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003c16:	0029      	movs	r1, r5
10003c18:	2214      	movs	r2, #20
10003c1a:	4b0f      	ldr	r3, [pc, #60]	; (10003c58 <ble_gapm_cmp_evt_handler+0x98>)
10003c1c:	a803      	add	r0, sp, #12
10003c1e:	4798      	blx	r3
10003c20:	ab02      	add	r3, sp, #8
10003c22:	711e      	strb	r6, [r3, #4]
10003c24:	7878      	ldrb	r0, [r7, #1]
10003c26:	4b09      	ldr	r3, [pc, #36]	; (10003c4c <ble_gapm_cmp_evt_handler+0x8c>)
10003c28:	4798      	blx	r3
10003c2a:	ab02      	add	r3, sp, #8
10003c2c:	80d8      	strh	r0, [r3, #6]
10003c2e:	68a1      	ldr	r1, [r4, #8]
10003c30:	6863      	ldr	r3, [r4, #4]
10003c32:	a803      	add	r0, sp, #12
10003c34:	4798      	blx	r3
10003c36:	e7e3      	b.n	10003c00 <ble_gapm_cmp_evt_handler+0x40>
10003c38:	9401      	str	r4, [sp, #4]
10003c3a:	6824      	ldr	r4, [r4, #0]
10003c3c:	e7c7      	b.n	10003bce <ble_gapm_cmp_evt_handler+0xe>
10003c3e:	46c0      	nop			; (mov r8, r8)
10003c40:	20014e60 	.word	0x20014e60
10003c44:	000066b1 	.word	0x000066b1
10003c48:	1000651c 	.word	0x1000651c
10003c4c:	1000496d 	.word	0x1000496d
10003c50:	000014ed 	.word	0x000014ed
10003c54:	00002789 	.word	0x00002789
10003c58:	00005859 	.word	0x00005859

10003c5c <ble_gapm_ind_handler>:
10003c5c:	b5f0      	push	{r4, r5, r6, r7, lr}
10003c5e:	0006      	movs	r6, r0
10003c60:	000d      	movs	r5, r1
10003c62:	4b35      	ldr	r3, [pc, #212]	; (10003d38 <ble_gapm_ind_handler+0xdc>)
10003c64:	b087      	sub	sp, #28
10003c66:	681f      	ldr	r7, [r3, #0]
10003c68:	2f00      	cmp	r7, #0
10003c6a:	d102      	bne.n	10003c72 <ble_gapm_ind_handler+0x16>
10003c6c:	0038      	movs	r0, r7
10003c6e:	b007      	add	sp, #28
10003c70:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003c72:	4b32      	ldr	r3, [pc, #200]	; (10003d3c <ble_gapm_ind_handler+0xe0>)
10003c74:	429e      	cmp	r6, r3
10003c76:	d010      	beq.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003c78:	4b31      	ldr	r3, [pc, #196]	; (10003d40 <ble_gapm_ind_handler+0xe4>)
10003c7a:	68fc      	ldr	r4, [r7, #12]
10003c7c:	429e      	cmp	r6, r3
10003c7e:	d10e      	bne.n	10003c9e <ble_gapm_ind_handler+0x42>
10003c80:	7c3b      	ldrb	r3, [r7, #16]
10003c82:	2b18      	cmp	r3, #24
10003c84:	d109      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003c86:	4b2f      	ldr	r3, [pc, #188]	; (10003d44 <ble_gapm_ind_handler+0xe8>)
10003c88:	2207      	movs	r2, #7
10003c8a:	0029      	movs	r1, r5
10003c8c:	a804      	add	r0, sp, #16
10003c8e:	4798      	blx	r3
10003c90:	9b04      	ldr	r3, [sp, #16]
10003c92:	6063      	str	r3, [r4, #4]
10003c94:	ab04      	add	r3, sp, #16
10003c96:	889b      	ldrh	r3, [r3, #4]
10003c98:	8123      	strh	r3, [r4, #8]
10003c9a:	683f      	ldr	r7, [r7, #0]
10003c9c:	e7e4      	b.n	10003c68 <ble_gapm_ind_handler+0xc>
10003c9e:	4b2a      	ldr	r3, [pc, #168]	; (10003d48 <ble_gapm_ind_handler+0xec>)
10003ca0:	429e      	cmp	r6, r3
10003ca2:	d11f      	bne.n	10003ce4 <ble_gapm_ind_handler+0x88>
10003ca4:	7c3b      	ldrb	r3, [r7, #16]
10003ca6:	2b17      	cmp	r3, #23
10003ca8:	d1f7      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003caa:	7963      	ldrb	r3, [r4, #5]
10003cac:	9302      	str	r3, [sp, #8]
10003cae:	0023      	movs	r3, r4
10003cb0:	3308      	adds	r3, #8
10003cb2:	9301      	str	r3, [sp, #4]
10003cb4:	2300      	movs	r3, #0
10003cb6:	9300      	str	r3, [sp, #0]
10003cb8:	1dab      	adds	r3, r5, #6
10003cba:	9303      	str	r3, [sp, #12]
10003cbc:	9b02      	ldr	r3, [sp, #8]
10003cbe:	9a00      	ldr	r2, [sp, #0]
10003cc0:	4293      	cmp	r3, r2
10003cc2:	ddea      	ble.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003cc4:	9801      	ldr	r0, [sp, #4]
10003cc6:	4b21      	ldr	r3, [pc, #132]	; (10003d4c <ble_gapm_ind_handler+0xf0>)
10003cc8:	2210      	movs	r2, #16
10003cca:	9903      	ldr	r1, [sp, #12]
10003ccc:	4798      	blx	r3
10003cce:	9b01      	ldr	r3, [sp, #4]
10003cd0:	331c      	adds	r3, #28
10003cd2:	9301      	str	r3, [sp, #4]
10003cd4:	9b00      	ldr	r3, [sp, #0]
10003cd6:	2800      	cmp	r0, #0
10003cd8:	d101      	bne.n	10003cde <ble_gapm_ind_handler+0x82>
10003cda:	7123      	strb	r3, [r4, #4]
10003cdc:	e7dd      	b.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003cde:	3301      	adds	r3, #1
10003ce0:	9300      	str	r3, [sp, #0]
10003ce2:	e7eb      	b.n	10003cbc <ble_gapm_ind_handler+0x60>
10003ce4:	4b1a      	ldr	r3, [pc, #104]	; (10003d50 <ble_gapm_ind_handler+0xf4>)
10003ce6:	429e      	cmp	r6, r3
10003ce8:	d105      	bne.n	10003cf6 <ble_gapm_ind_handler+0x9a>
10003cea:	7c3b      	ldrb	r3, [r7, #16]
10003cec:	2b2b      	cmp	r3, #43	; 0x2b
10003cee:	d1d4      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003cf0:	882b      	ldrh	r3, [r5, #0]
10003cf2:	80a3      	strh	r3, [r4, #4]
10003cf4:	e7d1      	b.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003cf6:	4b17      	ldr	r3, [pc, #92]	; (10003d54 <ble_gapm_ind_handler+0xf8>)
10003cf8:	429e      	cmp	r6, r3
10003cfa:	d118      	bne.n	10003d2e <ble_gapm_ind_handler+0xd2>
10003cfc:	7c3b      	ldrb	r3, [r7, #16]
10003cfe:	2ba2      	cmp	r3, #162	; 0xa2
10003d00:	d104      	bne.n	10003d0c <ble_gapm_ind_handler+0xb0>
10003d02:	786b      	ldrb	r3, [r5, #1]
10003d04:	2b02      	cmp	r3, #2
10003d06:	d1c8      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d08:	782b      	ldrb	r3, [r5, #0]
10003d0a:	e7e6      	b.n	10003cda <ble_gapm_ind_handler+0x7e>
10003d0c:	2ba1      	cmp	r3, #161	; 0xa1
10003d0e:	d103      	bne.n	10003d18 <ble_gapm_ind_handler+0xbc>
10003d10:	786b      	ldrb	r3, [r5, #1]
10003d12:	2b01      	cmp	r3, #1
10003d14:	d1c1      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d16:	e7f7      	b.n	10003d08 <ble_gapm_ind_handler+0xac>
10003d18:	2ba0      	cmp	r3, #160	; 0xa0
10003d1a:	d1be      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d1c:	786b      	ldrb	r3, [r5, #1]
10003d1e:	2b00      	cmp	r3, #0
10003d20:	d1bb      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d22:	782b      	ldrb	r3, [r5, #0]
10003d24:	7123      	strb	r3, [r4, #4]
10003d26:	2302      	movs	r3, #2
10003d28:	56eb      	ldrsb	r3, [r5, r3]
10003d2a:	7163      	strb	r3, [r4, #5]
10003d2c:	e7b5      	b.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d2e:	4b0a      	ldr	r3, [pc, #40]	; (10003d58 <ble_gapm_ind_handler+0xfc>)
10003d30:	429e      	cmp	r6, r3
10003d32:	d1b2      	bne.n	10003c9a <ble_gapm_ind_handler+0x3e>
10003d34:	88ab      	ldrh	r3, [r5, #4]
10003d36:	e7dc      	b.n	10003cf2 <ble_gapm_ind_handler+0x96>
10003d38:	20014e60 	.word	0x20014e60
10003d3c:	00000d1a 	.word	0x00000d1a
10003d40:	00000d08 	.word	0x00000d08
10003d44:	00005821 	.word	0x00005821
10003d48:	00000d15 	.word	0x00000d15
10003d4c:	0002fba5 	.word	0x0002fba5
10003d50:	00000d27 	.word	0x00000d27
10003d54:	00000da4 	.word	0x00000da4
10003d58:	00000d1c 	.word	0x00000d1c

10003d5c <ble_gapc_cmp_evt_handler>:
10003d5c:	b5f0      	push	{r4, r5, r6, r7, lr}
10003d5e:	2700      	movs	r7, #0
10003d60:	0a1e      	lsrs	r6, r3, #8
10003d62:	4b2f      	ldr	r3, [pc, #188]	; (10003e20 <ble_gapc_cmp_evt_handler+0xc4>)
10003d64:	b08b      	sub	sp, #44	; 0x2c
10003d66:	681c      	ldr	r4, [r3, #0]
10003d68:	780b      	ldrb	r3, [r1, #0]
10003d6a:	9100      	str	r1, [sp, #0]
10003d6c:	9301      	str	r3, [sp, #4]
10003d6e:	2c00      	cmp	r4, #0
10003d70:	d10a      	bne.n	10003d88 <ble_gapc_cmp_evt_handler+0x2c>
10003d72:	4f2c      	ldr	r7, [pc, #176]	; (10003e24 <ble_gapc_cmp_evt_handler+0xc8>)
10003d74:	683d      	ldr	r5, [r7, #0]
10003d76:	2d00      	cmp	r5, #0
10003d78:	d13f      	bne.n	10003dfa <ble_gapc_cmp_evt_handler+0x9e>
10003d7a:	9b00      	ldr	r3, [sp, #0]
10003d7c:	9901      	ldr	r1, [sp, #4]
10003d7e:	785a      	ldrb	r2, [r3, #1]
10003d80:	4829      	ldr	r0, [pc, #164]	; (10003e28 <ble_gapc_cmp_evt_handler+0xcc>)
10003d82:	4b2a      	ldr	r3, [pc, #168]	; (10003e2c <ble_gapc_cmp_evt_handler+0xd0>)
10003d84:	4798      	blx	r3
10003d86:	e01e      	b.n	10003dc6 <ble_gapc_cmp_evt_handler+0x6a>
10003d88:	7c23      	ldrb	r3, [r4, #16]
10003d8a:	9a01      	ldr	r2, [sp, #4]
10003d8c:	4293      	cmp	r3, r2
10003d8e:	d131      	bne.n	10003df4 <ble_gapc_cmp_evt_handler+0x98>
10003d90:	68e5      	ldr	r5, [r4, #12]
10003d92:	2d00      	cmp	r5, #0
10003d94:	d01a      	beq.n	10003dcc <ble_gapc_cmp_evt_handler+0x70>
10003d96:	792b      	ldrb	r3, [r5, #4]
10003d98:	42b3      	cmp	r3, r6
10003d9a:	d12c      	bne.n	10003df6 <ble_gapc_cmp_evt_handler+0x9a>
10003d9c:	9b00      	ldr	r3, [sp, #0]
10003d9e:	7858      	ldrb	r0, [r3, #1]
10003da0:	4b23      	ldr	r3, [pc, #140]	; (10003e30 <ble_gapc_cmp_evt_handler+0xd4>)
10003da2:	4798      	blx	r3
10003da4:	8068      	strh	r0, [r5, #2]
10003da6:	6863      	ldr	r3, [r4, #4]
10003da8:	0030      	movs	r0, r6
10003daa:	0029      	movs	r1, r5
10003dac:	68a2      	ldr	r2, [r4, #8]
10003dae:	4798      	blx	r3
10003db0:	0028      	movs	r0, r5
10003db2:	4b20      	ldr	r3, [pc, #128]	; (10003e34 <ble_gapc_cmp_evt_handler+0xd8>)
10003db4:	4798      	blx	r3
10003db6:	481a      	ldr	r0, [pc, #104]	; (10003e20 <ble_gapc_cmp_evt_handler+0xc4>)
10003db8:	0022      	movs	r2, r4
10003dba:	0039      	movs	r1, r7
10003dbc:	4b1e      	ldr	r3, [pc, #120]	; (10003e38 <ble_gapc_cmp_evt_handler+0xdc>)
10003dbe:	4798      	blx	r3
10003dc0:	0020      	movs	r0, r4
10003dc2:	4b1c      	ldr	r3, [pc, #112]	; (10003e34 <ble_gapc_cmp_evt_handler+0xd8>)
10003dc4:	4798      	blx	r3
10003dc6:	2000      	movs	r0, #0
10003dc8:	b00b      	add	sp, #44	; 0x2c
10003dca:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003dcc:	0029      	movs	r1, r5
10003dce:	221a      	movs	r2, #26
10003dd0:	4b1a      	ldr	r3, [pc, #104]	; (10003e3c <ble_gapc_cmp_evt_handler+0xe0>)
10003dd2:	a803      	add	r0, sp, #12
10003dd4:	4798      	blx	r3
10003dd6:	9a01      	ldr	r2, [sp, #4]
10003dd8:	ab02      	add	r3, sp, #8
10003dda:	711a      	strb	r2, [r3, #4]
10003ddc:	9b00      	ldr	r3, [sp, #0]
10003dde:	7858      	ldrb	r0, [r3, #1]
10003de0:	4b13      	ldr	r3, [pc, #76]	; (10003e30 <ble_gapc_cmp_evt_handler+0xd4>)
10003de2:	4798      	blx	r3
10003de4:	ab02      	add	r3, sp, #8
10003de6:	80d8      	strh	r0, [r3, #6]
10003de8:	68a2      	ldr	r2, [r4, #8]
10003dea:	0030      	movs	r0, r6
10003dec:	6863      	ldr	r3, [r4, #4]
10003dee:	a903      	add	r1, sp, #12
10003df0:	4798      	blx	r3
10003df2:	e7e0      	b.n	10003db6 <ble_gapc_cmp_evt_handler+0x5a>
10003df4:	0027      	movs	r7, r4
10003df6:	6824      	ldr	r4, [r4, #0]
10003df8:	e7b9      	b.n	10003d6e <ble_gapc_cmp_evt_handler+0x12>
10003dfa:	7b2b      	ldrb	r3, [r5, #12]
10003dfc:	9a01      	ldr	r2, [sp, #4]
10003dfe:	4293      	cmp	r3, r2
10003e00:	d10b      	bne.n	10003e1a <ble_gapc_cmp_evt_handler+0xbe>
10003e02:	0030      	movs	r0, r6
10003e04:	68aa      	ldr	r2, [r5, #8]
10003e06:	9900      	ldr	r1, [sp, #0]
10003e08:	686b      	ldr	r3, [r5, #4]
10003e0a:	4798      	blx	r3
10003e0c:	0038      	movs	r0, r7
10003e0e:	002a      	movs	r2, r5
10003e10:	0021      	movs	r1, r4
10003e12:	4b09      	ldr	r3, [pc, #36]	; (10003e38 <ble_gapc_cmp_evt_handler+0xdc>)
10003e14:	4798      	blx	r3
10003e16:	0028      	movs	r0, r5
10003e18:	e7d3      	b.n	10003dc2 <ble_gapc_cmp_evt_handler+0x66>
10003e1a:	002c      	movs	r4, r5
10003e1c:	682d      	ldr	r5, [r5, #0]
10003e1e:	e7aa      	b.n	10003d76 <ble_gapc_cmp_evt_handler+0x1a>
10003e20:	20014e4c 	.word	0x20014e4c
10003e24:	20014e74 	.word	0x20014e74
10003e28:	1000652e 	.word	0x1000652e
10003e2c:	000066b1 	.word	0x000066b1
10003e30:	1000496d 	.word	0x1000496d
10003e34:	000014ed 	.word	0x000014ed
10003e38:	00002789 	.word	0x00002789
10003e3c:	00005859 	.word	0x00005859

10003e40 <ble_gapc_bond_ind_handler>:
10003e40:	2000      	movs	r0, #0
10003e42:	4770      	bx	lr

10003e44 <ble_gapc_bond_req_ind_handler>:
10003e44:	2000      	movs	r0, #0
10003e46:	4770      	bx	lr

10003e48 <ble_gapc_push_cb>:
10003e48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003e4a:	0007      	movs	r7, r0
10003e4c:	000e      	movs	r6, r1
10003e4e:	001c      	movs	r4, r3
10003e50:	2102      	movs	r1, #2
10003e52:	4b06      	ldr	r3, [pc, #24]	; (10003e6c <ble_gapc_push_cb+0x24>)
10003e54:	2014      	movs	r0, #20
10003e56:	0015      	movs	r5, r2
10003e58:	4798      	blx	r3
10003e5a:	4b05      	ldr	r3, [pc, #20]	; (10003e70 <ble_gapc_push_cb+0x28>)
10003e5c:	6047      	str	r7, [r0, #4]
10003e5e:	7406      	strb	r6, [r0, #16]
10003e60:	6085      	str	r5, [r0, #8]
10003e62:	0001      	movs	r1, r0
10003e64:	60c4      	str	r4, [r0, #12]
10003e66:	4803      	ldr	r0, [pc, #12]	; (10003e74 <ble_gapc_push_cb+0x2c>)
10003e68:	4798      	blx	r3
10003e6a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003e6c:	000013b9 	.word	0x000013b9
10003e70:	0000268f 	.word	0x0000268f
10003e74:	20014e4c 	.word	0x20014e4c

10003e78 <ble_gap_evt_cb_call>:
10003e78:	b570      	push	{r4, r5, r6, lr}
10003e7a:	000d      	movs	r5, r1
10003e7c:	4b06      	ldr	r3, [pc, #24]	; (10003e98 <ble_gap_evt_cb_call+0x20>)
10003e7e:	7008      	strb	r0, [r1, #0]
10003e80:	681c      	ldr	r4, [r3, #0]
10003e82:	2c00      	cmp	r4, #0
10003e84:	d100      	bne.n	10003e88 <ble_gap_evt_cb_call+0x10>
10003e86:	bd70      	pop	{r4, r5, r6, pc}
10003e88:	0028      	movs	r0, r5
10003e8a:	6863      	ldr	r3, [r4, #4]
10003e8c:	4798      	blx	r3
10003e8e:	2800      	cmp	r0, #0
10003e90:	d1f9      	bne.n	10003e86 <ble_gap_evt_cb_call+0xe>
10003e92:	6824      	ldr	r4, [r4, #0]
10003e94:	e7f5      	b.n	10003e82 <ble_gap_evt_cb_call+0xa>
10003e96:	46c0      	nop			; (mov r8, r8)
10003e98:	20014e38 	.word	0x20014e38

10003e9c <ble_gapc_pkt_size_ind_handler>:
10003e9c:	200a      	movs	r0, #10
10003e9e:	b510      	push	{r4, lr}
10003ea0:	b08a      	sub	sp, #40	; 0x28
10003ea2:	ac01      	add	r4, sp, #4
10003ea4:	0a1b      	lsrs	r3, r3, #8
10003ea6:	2208      	movs	r2, #8
10003ea8:	7123      	strb	r3, [r4, #4]
10003eaa:	4468      	add	r0, sp
10003eac:	4b04      	ldr	r3, [pc, #16]	; (10003ec0 <ble_gapc_pkt_size_ind_handler+0x24>)
10003eae:	4798      	blx	r3
10003eb0:	0021      	movs	r1, r4
10003eb2:	200f      	movs	r0, #15
10003eb4:	4b03      	ldr	r3, [pc, #12]	; (10003ec4 <ble_gapc_pkt_size_ind_handler+0x28>)
10003eb6:	4798      	blx	r3
10003eb8:	2000      	movs	r0, #0
10003eba:	b00a      	add	sp, #40	; 0x28
10003ebc:	bd10      	pop	{r4, pc}
10003ebe:	46c0      	nop			; (mov r8, r8)
10003ec0:	00005821 	.word	0x00005821
10003ec4:	10003e79 	.word	0x10003e79

10003ec8 <ble_gapc_le_phy_ind_handler>:
10003ec8:	b5f0      	push	{r4, r5, r6, r7, lr}
10003eca:	0a1f      	lsrs	r7, r3, #8
10003ecc:	000e      	movs	r6, r1
10003ece:	0038      	movs	r0, r7
10003ed0:	2118      	movs	r1, #24
10003ed2:	4b28      	ldr	r3, [pc, #160]	; (10003f74 <ble_gapc_le_phy_ind_handler+0xac>)
10003ed4:	b08b      	sub	sp, #44	; 0x2c
10003ed6:	4798      	blx	r3
10003ed8:	1e04      	subs	r4, r0, #0
10003eda:	d023      	beq.n	10003f24 <ble_gapc_le_phy_ind_handler+0x5c>
10003edc:	7207      	strb	r7, [r0, #8]
10003ede:	7830      	ldrb	r0, [r6, #0]
10003ee0:	2802      	cmp	r0, #2
10003ee2:	d003      	beq.n	10003eec <ble_gapc_le_phy_ind_handler+0x24>
10003ee4:	2803      	cmp	r0, #3
10003ee6:	d001      	beq.n	10003eec <ble_gapc_le_phy_ind_handler+0x24>
10003ee8:	2801      	cmp	r0, #1
10003eea:	d10b      	bne.n	10003f04 <ble_gapc_le_phy_ind_handler+0x3c>
10003eec:	7260      	strb	r0, [r4, #9]
10003eee:	7870      	ldrb	r0, [r6, #1]
10003ef0:	2802      	cmp	r0, #2
10003ef2:	d003      	beq.n	10003efc <ble_gapc_le_phy_ind_handler+0x34>
10003ef4:	2803      	cmp	r0, #3
10003ef6:	d001      	beq.n	10003efc <ble_gapc_le_phy_ind_handler+0x34>
10003ef8:	2801      	cmp	r0, #1
10003efa:	d10b      	bne.n	10003f14 <ble_gapc_le_phy_ind_handler+0x4c>
10003efc:	72a0      	strb	r0, [r4, #10]
10003efe:	2000      	movs	r0, #0
10003f00:	b00b      	add	sp, #44	; 0x2c
10003f02:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003f04:	23e2      	movs	r3, #226	; 0xe2
10003f06:	2100      	movs	r1, #0
10003f08:	4a1b      	ldr	r2, [pc, #108]	; (10003f78 <ble_gapc_le_phy_ind_handler+0xb0>)
10003f0a:	4d1c      	ldr	r5, [pc, #112]	; (10003f7c <ble_gapc_le_phy_ind_handler+0xb4>)
10003f0c:	47a8      	blx	r5
10003f0e:	2301      	movs	r3, #1
10003f10:	7263      	strb	r3, [r4, #9]
10003f12:	e7ec      	b.n	10003eee <ble_gapc_le_phy_ind_handler+0x26>
10003f14:	23e2      	movs	r3, #226	; 0xe2
10003f16:	2100      	movs	r1, #0
10003f18:	4a17      	ldr	r2, [pc, #92]	; (10003f78 <ble_gapc_le_phy_ind_handler+0xb0>)
10003f1a:	4d18      	ldr	r5, [pc, #96]	; (10003f7c <ble_gapc_le_phy_ind_handler+0xb4>)
10003f1c:	47a8      	blx	r5
10003f1e:	2301      	movs	r3, #1
10003f20:	72a3      	strb	r3, [r4, #10]
10003f22:	e7ec      	b.n	10003efe <ble_gapc_le_phy_ind_handler+0x36>
10003f24:	7830      	ldrb	r0, [r6, #0]
10003f26:	ad01      	add	r5, sp, #4
10003f28:	712f      	strb	r7, [r5, #4]
10003f2a:	2802      	cmp	r0, #2
10003f2c:	d003      	beq.n	10003f36 <ble_gapc_le_phy_ind_handler+0x6e>
10003f2e:	2803      	cmp	r0, #3
10003f30:	d001      	beq.n	10003f36 <ble_gapc_le_phy_ind_handler+0x6e>
10003f32:	2801      	cmp	r0, #1
10003f34:	d10d      	bne.n	10003f52 <ble_gapc_le_phy_ind_handler+0x8a>
10003f36:	7168      	strb	r0, [r5, #5]
10003f38:	7870      	ldrb	r0, [r6, #1]
10003f3a:	2802      	cmp	r0, #2
10003f3c:	d003      	beq.n	10003f46 <ble_gapc_le_phy_ind_handler+0x7e>
10003f3e:	2803      	cmp	r0, #3
10003f40:	d001      	beq.n	10003f46 <ble_gapc_le_phy_ind_handler+0x7e>
10003f42:	2801      	cmp	r0, #1
10003f44:	d10d      	bne.n	10003f62 <ble_gapc_le_phy_ind_handler+0x9a>
10003f46:	71a8      	strb	r0, [r5, #6]
10003f48:	0029      	movs	r1, r5
10003f4a:	200d      	movs	r0, #13
10003f4c:	4b0c      	ldr	r3, [pc, #48]	; (10003f80 <ble_gapc_le_phy_ind_handler+0xb8>)
10003f4e:	4798      	blx	r3
10003f50:	e7d5      	b.n	10003efe <ble_gapc_le_phy_ind_handler+0x36>
10003f52:	23e2      	movs	r3, #226	; 0xe2
10003f54:	0021      	movs	r1, r4
10003f56:	4a08      	ldr	r2, [pc, #32]	; (10003f78 <ble_gapc_le_phy_ind_handler+0xb0>)
10003f58:	4c08      	ldr	r4, [pc, #32]	; (10003f7c <ble_gapc_le_phy_ind_handler+0xb4>)
10003f5a:	47a0      	blx	r4
10003f5c:	2301      	movs	r3, #1
10003f5e:	716b      	strb	r3, [r5, #5]
10003f60:	e7ea      	b.n	10003f38 <ble_gapc_le_phy_ind_handler+0x70>
10003f62:	23e2      	movs	r3, #226	; 0xe2
10003f64:	2100      	movs	r1, #0
10003f66:	4a04      	ldr	r2, [pc, #16]	; (10003f78 <ble_gapc_le_phy_ind_handler+0xb0>)
10003f68:	4c04      	ldr	r4, [pc, #16]	; (10003f7c <ble_gapc_le_phy_ind_handler+0xb4>)
10003f6a:	47a0      	blx	r4
10003f6c:	2301      	movs	r3, #1
10003f6e:	71ab      	strb	r3, [r5, #6]
10003f70:	e7ea      	b.n	10003f48 <ble_gapc_le_phy_ind_handler+0x80>
10003f72:	46c0      	nop			; (mov r8, r8)
10003f74:	10003999 	.word	0x10003999
10003f78:	10006512 	.word	0x10006512
10003f7c:	00006641 	.word	0x00006641
10003f80:	10003e79 	.word	0x10003e79

10003f84 <ble_gapc_param_update_req_ind_handler>:
10003f84:	b510      	push	{r4, lr}
10003f86:	0a1b      	lsrs	r3, r3, #8
10003f88:	b08a      	sub	sp, #40	; 0x28
10003f8a:	b2da      	uxtb	r2, r3
10003f8c:	2bff      	cmp	r3, #255	; 0xff
10003f8e:	d105      	bne.n	10003f9c <ble_gapc_param_update_req_ind_handler+0x18>
10003f90:	4808      	ldr	r0, [pc, #32]	; (10003fb4 <ble_gapc_param_update_req_ind_handler+0x30>)
10003f92:	4b09      	ldr	r3, [pc, #36]	; (10003fb8 <ble_gapc_param_update_req_ind_handler+0x34>)
10003f94:	4798      	blx	r3
10003f96:	2000      	movs	r0, #0
10003f98:	b00a      	add	sp, #40	; 0x28
10003f9a:	bd10      	pop	{r4, pc}
10003f9c:	200a      	movs	r0, #10
10003f9e:	ac01      	add	r4, sp, #4
10003fa0:	7122      	strb	r2, [r4, #4]
10003fa2:	4b06      	ldr	r3, [pc, #24]	; (10003fbc <ble_gapc_param_update_req_ind_handler+0x38>)
10003fa4:	2208      	movs	r2, #8
10003fa6:	4468      	add	r0, sp
10003fa8:	4798      	blx	r3
10003faa:	0021      	movs	r1, r4
10003fac:	200c      	movs	r0, #12
10003fae:	4b04      	ldr	r3, [pc, #16]	; (10003fc0 <ble_gapc_param_update_req_ind_handler+0x3c>)
10003fb0:	4798      	blx	r3
10003fb2:	e7f0      	b.n	10003f96 <ble_gapc_param_update_req_ind_handler+0x12>
10003fb4:	10006559 	.word	0x10006559
10003fb8:	000066b1 	.word	0x000066b1
10003fbc:	00005821 	.word	0x00005821
10003fc0:	10003e79 	.word	0x10003e79

10003fc4 <ble_gapc_default_handler>:
10003fc4:	b5f0      	push	{r4, r5, r6, r7, lr}
10003fc6:	b08d      	sub	sp, #52	; 0x34
10003fc8:	9201      	str	r2, [sp, #4]
10003fca:	0a1a      	lsrs	r2, r3, #8
10003fcc:	9200      	str	r2, [sp, #0]
10003fce:	466a      	mov	r2, sp
10003fd0:	7817      	ldrb	r7, [r2, #0]
10003fd2:	4a65      	ldr	r2, [pc, #404]	; (10004168 <ble_gapc_default_handler+0x1a4>)
10003fd4:	0006      	movs	r6, r0
10003fd6:	000c      	movs	r4, r1
10003fd8:	4290      	cmp	r0, r2
10003fda:	d11a      	bne.n	10004012 <ble_gapc_default_handler+0x4e>
10003fdc:	200a      	movs	r0, #10
10003fde:	ad03      	add	r5, sp, #12
10003fe0:	ab02      	add	r3, sp, #8
10003fe2:	18c0      	adds	r0, r0, r3
10003fe4:	2212      	movs	r2, #18
10003fe6:	4b61      	ldr	r3, [pc, #388]	; (1000416c <ble_gapc_default_handler+0x1a8>)
10003fe8:	712f      	strb	r7, [r5, #4]
10003fea:	4798      	blx	r3
10003fec:	0029      	movs	r1, r5
10003fee:	2005      	movs	r0, #5
10003ff0:	4b5f      	ldr	r3, [pc, #380]	; (10004170 <ble_gapc_default_handler+0x1ac>)
10003ff2:	4798      	blx	r3
10003ff4:	0023      	movs	r3, r4
10003ff6:	9a01      	ldr	r2, [sp, #4]
10003ff8:	3b0c      	subs	r3, #12
10003ffa:	80da      	strh	r2, [r3, #6]
10003ffc:	9a00      	ldr	r2, [sp, #0]
10003ffe:	0020      	movs	r0, r4
10004000:	0211      	lsls	r1, r2, #8
10004002:	22ff      	movs	r2, #255	; 0xff
10004004:	430a      	orrs	r2, r1
10004006:	809e      	strh	r6, [r3, #4]
10004008:	811a      	strh	r2, [r3, #8]
1000400a:	4b5a      	ldr	r3, [pc, #360]	; (10004174 <ble_gapc_default_handler+0x1b0>)
1000400c:	4798      	blx	r3
1000400e:	2001      	movs	r0, #1
10004010:	e0a7      	b.n	10004162 <ble_gapc_default_handler+0x19e>
10004012:	4a59      	ldr	r2, [pc, #356]	; (10004178 <ble_gapc_default_handler+0x1b4>)
10004014:	4290      	cmp	r0, r2
10004016:	d107      	bne.n	10004028 <ble_gapc_default_handler+0x64>
10004018:	8823      	ldrh	r3, [r4, #0]
1000401a:	a903      	add	r1, sp, #12
1000401c:	710f      	strb	r7, [r1, #4]
1000401e:	80cb      	strh	r3, [r1, #6]
10004020:	78a3      	ldrb	r3, [r4, #2]
10004022:	2006      	movs	r0, #6
10004024:	810b      	strh	r3, [r1, #8]
10004026:	e7e3      	b.n	10003ff0 <ble_gapc_default_handler+0x2c>
10004028:	4a54      	ldr	r2, [pc, #336]	; (1000417c <ble_gapc_default_handler+0x1b8>)
1000402a:	4290      	cmp	r0, r2
1000402c:	d10c      	bne.n	10004048 <ble_gapc_default_handler+0x84>
1000402e:	200a      	movs	r0, #10
10004030:	ad03      	add	r5, sp, #12
10004032:	ab02      	add	r3, sp, #8
10004034:	18c0      	adds	r0, r0, r3
10004036:	2206      	movs	r2, #6
10004038:	4b4c      	ldr	r3, [pc, #304]	; (1000416c <ble_gapc_default_handler+0x1a8>)
1000403a:	712f      	strb	r7, [r5, #4]
1000403c:	4798      	blx	r3
1000403e:	0029      	movs	r1, r5
10004040:	2009      	movs	r0, #9
10004042:	4b4b      	ldr	r3, [pc, #300]	; (10004170 <ble_gapc_default_handler+0x1ac>)
10004044:	4798      	blx	r3
10004046:	e03e      	b.n	100040c6 <ble_gapc_default_handler+0x102>
10004048:	4a4d      	ldr	r2, [pc, #308]	; (10004180 <ble_gapc_default_handler+0x1bc>)
1000404a:	4290      	cmp	r0, r2
1000404c:	d125      	bne.n	1000409a <ble_gapc_default_handler+0xd6>
1000404e:	ad03      	add	r5, sp, #12
10004050:	0038      	movs	r0, r7
10004052:	4b4c      	ldr	r3, [pc, #304]	; (10004184 <ble_gapc_default_handler+0x1c0>)
10004054:	712f      	strb	r7, [r5, #4]
10004056:	4798      	blx	r3
10004058:	0007      	movs	r7, r0
1000405a:	200a      	movs	r0, #10
1000405c:	ab02      	add	r3, sp, #8
1000405e:	18c0      	adds	r0, r0, r3
10004060:	2206      	movs	r2, #6
10004062:	2100      	movs	r1, #0
10004064:	4b48      	ldr	r3, [pc, #288]	; (10004188 <ble_gapc_default_handler+0x1c4>)
10004066:	4798      	blx	r3
10004068:	7820      	ldrb	r0, [r4, #0]
1000406a:	3f03      	subs	r7, #3
1000406c:	81af      	strh	r7, [r5, #12]
1000406e:	2803      	cmp	r0, #3
10004070:	d80c      	bhi.n	1000408c <ble_gapc_default_handler+0xc8>
10004072:	f000 fff5 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10004076:	0204      	.short	0x0204
10004078:	0907      	.short	0x0907
1000407a:	2301      	movs	r3, #1
1000407c:	71ab      	strb	r3, [r5, #6]
1000407e:	2010      	movs	r0, #16
10004080:	a903      	add	r1, sp, #12
10004082:	e7de      	b.n	10004042 <ble_gapc_default_handler+0x7e>
10004084:	2302      	movs	r3, #2
10004086:	e7f9      	b.n	1000407c <ble_gapc_default_handler+0xb8>
10004088:	2303      	movs	r3, #3
1000408a:	e7f7      	b.n	1000407c <ble_gapc_default_handler+0xb8>
1000408c:	4b3f      	ldr	r3, [pc, #252]	; (1000418c <ble_gapc_default_handler+0x1c8>)
1000408e:	2100      	movs	r1, #0
10004090:	4a3f      	ldr	r2, [pc, #252]	; (10004190 <ble_gapc_default_handler+0x1cc>)
10004092:	4f40      	ldr	r7, [pc, #256]	; (10004194 <ble_gapc_default_handler+0x1d0>)
10004094:	47b8      	blx	r7
10004096:	2300      	movs	r3, #0
10004098:	e7f0      	b.n	1000407c <ble_gapc_default_handler+0xb8>
1000409a:	4a3f      	ldr	r2, [pc, #252]	; (10004198 <ble_gapc_default_handler+0x1d4>)
1000409c:	4290      	cmp	r0, r2
1000409e:	d14b      	bne.n	10004138 <ble_gapc_default_handler+0x174>
100040a0:	210b      	movs	r1, #11
100040a2:	0038      	movs	r0, r7
100040a4:	4b3d      	ldr	r3, [pc, #244]	; (1000419c <ble_gapc_default_handler+0x1d8>)
100040a6:	4798      	blx	r3
100040a8:	1e05      	subs	r5, r0, #0
100040aa:	d023      	beq.n	100040f4 <ble_gapc_default_handler+0x130>
100040ac:	7187      	strb	r7, [r0, #6]
100040ae:	7820      	ldrb	r0, [r4, #0]
100040b0:	2809      	cmp	r0, #9
100040b2:	d818      	bhi.n	100040e6 <ble_gapc_default_handler+0x122>
100040b4:	f000 ffd4 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
100040b8:	1717051c 	.word	0x1717051c
100040bc:	1717110f 	.word	0x1717110f
100040c0:	1513      	.short	0x1513
100040c2:	2301      	movs	r3, #1
100040c4:	71eb      	strb	r3, [r5, #7]
100040c6:	2204      	movs	r2, #4
100040c8:	4b35      	ldr	r3, [pc, #212]	; (100041a0 <ble_gapc_default_handler+0x1dc>)
100040ca:	18f3      	adds	r3, r6, r3
100040cc:	4393      	bics	r3, r2
100040ce:	b29b      	uxth	r3, r3
100040d0:	2b00      	cmp	r3, #0
100040d2:	d145      	bne.n	10004160 <ble_gapc_default_handler+0x19c>
100040d4:	e78e      	b.n	10003ff4 <ble_gapc_default_handler+0x30>
100040d6:	2304      	movs	r3, #4
100040d8:	e7f4      	b.n	100040c4 <ble_gapc_default_handler+0x100>
100040da:	2305      	movs	r3, #5
100040dc:	e7f2      	b.n	100040c4 <ble_gapc_default_handler+0x100>
100040de:	230c      	movs	r3, #12
100040e0:	e7f0      	b.n	100040c4 <ble_gapc_default_handler+0x100>
100040e2:	230d      	movs	r3, #13
100040e4:	e7ee      	b.n	100040c4 <ble_gapc_default_handler+0x100>
100040e6:	2100      	movs	r1, #0
100040e8:	4b2e      	ldr	r3, [pc, #184]	; (100041a4 <ble_gapc_default_handler+0x1e0>)
100040ea:	4a29      	ldr	r2, [pc, #164]	; (10004190 <ble_gapc_default_handler+0x1cc>)
100040ec:	4f29      	ldr	r7, [pc, #164]	; (10004194 <ble_gapc_default_handler+0x1d0>)
100040ee:	47b8      	blx	r7
100040f0:	2300      	movs	r3, #0
100040f2:	e7e7      	b.n	100040c4 <ble_gapc_default_handler+0x100>
100040f4:	ab03      	add	r3, sp, #12
100040f6:	80d8      	strh	r0, [r3, #6]
100040f8:	7820      	ldrb	r0, [r4, #0]
100040fa:	711f      	strb	r7, [r3, #4]
100040fc:	2809      	cmp	r0, #9
100040fe:	d813      	bhi.n	10004128 <ble_gapc_default_handler+0x164>
10004100:	f000 ffae 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10004104:	12120518 	.word	0x12120518
10004108:	12120c0a 	.word	0x12120c0a
1000410c:	100e      	.short	0x100e
1000410e:	2201      	movs	r2, #1
10004110:	2011      	movs	r0, #17
10004112:	721a      	strb	r2, [r3, #8]
10004114:	a903      	add	r1, sp, #12
10004116:	e794      	b.n	10004042 <ble_gapc_default_handler+0x7e>
10004118:	2204      	movs	r2, #4
1000411a:	e7f9      	b.n	10004110 <ble_gapc_default_handler+0x14c>
1000411c:	2205      	movs	r2, #5
1000411e:	e7f7      	b.n	10004110 <ble_gapc_default_handler+0x14c>
10004120:	220c      	movs	r2, #12
10004122:	e7f5      	b.n	10004110 <ble_gapc_default_handler+0x14c>
10004124:	220d      	movs	r2, #13
10004126:	e7f3      	b.n	10004110 <ble_gapc_default_handler+0x14c>
10004128:	4b1e      	ldr	r3, [pc, #120]	; (100041a4 <ble_gapc_default_handler+0x1e0>)
1000412a:	2100      	movs	r1, #0
1000412c:	4a18      	ldr	r2, [pc, #96]	; (10004190 <ble_gapc_default_handler+0x1cc>)
1000412e:	4d19      	ldr	r5, [pc, #100]	; (10004194 <ble_gapc_default_handler+0x1d0>)
10004130:	47a8      	blx	r5
10004132:	ab03      	add	r3, sp, #12
10004134:	2200      	movs	r2, #0
10004136:	e7eb      	b.n	10004110 <ble_gapc_default_handler+0x14c>
10004138:	4a1b      	ldr	r2, [pc, #108]	; (100041a8 <ble_gapc_default_handler+0x1e4>)
1000413a:	6815      	ldr	r5, [r2, #0]
1000413c:	2d00      	cmp	r5, #0
1000413e:	d007      	beq.n	10004150 <ble_gapc_default_handler+0x18c>
10004140:	b2da      	uxtb	r2, r3
10004142:	3aff      	subs	r2, #255	; 0xff
10004144:	4253      	negs	r3, r2
10004146:	415a      	adcs	r2, r3
10004148:	000b      	movs	r3, r1
1000414a:	b2d2      	uxtb	r2, r2
1000414c:	0039      	movs	r1, r7
1000414e:	47a8      	blx	r5
10004150:	4b16      	ldr	r3, [pc, #88]	; (100041ac <ble_gapc_default_handler+0x1e8>)
10004152:	429e      	cmp	r6, r3
10004154:	d1b7      	bne.n	100040c6 <ble_gapc_default_handler+0x102>
10004156:	7823      	ldrb	r3, [r4, #0]
10004158:	3b02      	subs	r3, #2
1000415a:	2b01      	cmp	r3, #1
1000415c:	d800      	bhi.n	10004160 <ble_gapc_default_handler+0x19c>
1000415e:	e749      	b.n	10003ff4 <ble_gapc_default_handler+0x30>
10004160:	2000      	movs	r0, #0
10004162:	b00d      	add	sp, #52	; 0x34
10004164:	bdf0      	pop	{r4, r5, r6, r7, pc}
10004166:	46c0      	nop			; (mov r8, r8)
10004168:	00000e01 	.word	0x00000e01
1000416c:	00005821 	.word	0x00005821
10004170:	10003e79 	.word	0x10003e79
10004174:	000011a9 	.word	0x000011a9
10004178:	00000e03 	.word	0x00000e03
1000417c:	00000e11 	.word	0x00000e11
10004180:	00000e0a 	.word	0x00000e0a
10004184:	00020dfd 	.word	0x00020dfd
10004188:	00005859 	.word	0x00005859
1000418c:	00000297 	.word	0x00000297
10004190:	10006512 	.word	0x10006512
10004194:	00006641 	.word	0x00006641
10004198:	00000e19 	.word	0x00000e19
1000419c:	10003999 	.word	0x10003999
100041a0:	fffff1eb 	.word	0xfffff1eb
100041a4:	00000379 	.word	0x00000379
100041a8:	20014e88 	.word	0x20014e88
100041ac:	00000e15 	.word	0x00000e15

100041b0 <ble_gapm_ext_adv_report_ind_handler>:
100041b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100041b2:	8b0e      	ldrh	r6, [r1, #24]
100041b4:	4b18      	ldr	r3, [pc, #96]	; (10004218 <ble_gapm_ext_adv_report_ind_handler+0x68>)
100041b6:	0030      	movs	r0, r6
100041b8:	3024      	adds	r0, #36	; 0x24
100041ba:	000d      	movs	r5, r1
100041bc:	4798      	blx	r3
100041be:	2707      	movs	r7, #7
100041c0:	0004      	movs	r4, r0
100041c2:	786b      	ldrb	r3, [r5, #1]
100041c4:	003a      	movs	r2, r7
100041c6:	1ca9      	adds	r1, r5, #2
100041c8:	7103      	strb	r3, [r0, #4]
100041ca:	4b14      	ldr	r3, [pc, #80]	; (1000421c <ble_gapm_ext_adv_report_ind_handler+0x6c>)
100041cc:	3005      	adds	r0, #5
100041ce:	4798      	blx	r3
100041d0:	0029      	movs	r1, r5
100041d2:	0020      	movs	r0, r4
100041d4:	003a      	movs	r2, r7
100041d6:	4b11      	ldr	r3, [pc, #68]	; (1000421c <ble_gapm_ext_adv_report_ind_handler+0x6c>)
100041d8:	3109      	adds	r1, #9
100041da:	300c      	adds	r0, #12
100041dc:	4798      	blx	r3
100041de:	0029      	movs	r1, r5
100041e0:	0020      	movs	r0, r4
100041e2:	7c2b      	ldrb	r3, [r5, #16]
100041e4:	0032      	movs	r2, r6
100041e6:	74e3      	strb	r3, [r4, #19]
100041e8:	7c6b      	ldrb	r3, [r5, #17]
100041ea:	8366      	strh	r6, [r4, #26]
100041ec:	7523      	strb	r3, [r4, #20]
100041ee:	7cab      	ldrb	r3, [r5, #18]
100041f0:	311a      	adds	r1, #26
100041f2:	7563      	strb	r3, [r4, #21]
100041f4:	7ceb      	ldrb	r3, [r5, #19]
100041f6:	301c      	adds	r0, #28
100041f8:	75a3      	strb	r3, [r4, #22]
100041fa:	7d2b      	ldrb	r3, [r5, #20]
100041fc:	75e3      	strb	r3, [r4, #23]
100041fe:	8aeb      	ldrh	r3, [r5, #22]
10004200:	8323      	strh	r3, [r4, #24]
10004202:	4b06      	ldr	r3, [pc, #24]	; (1000421c <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10004204:	4798      	blx	r3
10004206:	0021      	movs	r1, r4
10004208:	2004      	movs	r0, #4
1000420a:	4b05      	ldr	r3, [pc, #20]	; (10004220 <ble_gapm_ext_adv_report_ind_handler+0x70>)
1000420c:	4798      	blx	r3
1000420e:	0020      	movs	r0, r4
10004210:	4b04      	ldr	r3, [pc, #16]	; (10004224 <ble_gapm_ext_adv_report_ind_handler+0x74>)
10004212:	4798      	blx	r3
10004214:	2000      	movs	r0, #0
10004216:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10004218:	0002f615 	.word	0x0002f615
1000421c:	00005821 	.word	0x00005821
10004220:	10003e79 	.word	0x10003e79
10004224:	0002f629 	.word	0x0002f629

10004228 <ble_gapm_activity_stopped_ind_handler>:
10004228:	b530      	push	{r4, r5, lr}
1000422a:	000c      	movs	r4, r1
1000422c:	4b25      	ldr	r3, [pc, #148]	; (100042c4 <ble_gapm_activity_stopped_ind_handler+0x9c>)
1000422e:	b08b      	sub	sp, #44	; 0x2c
10004230:	681b      	ldr	r3, [r3, #0]
10004232:	2b00      	cmp	r3, #0
10004234:	d106      	bne.n	10004244 <ble_gapm_activity_stopped_ind_handler+0x1c>
10004236:	7860      	ldrb	r0, [r4, #1]
10004238:	2803      	cmp	r0, #3
1000423a:	d83d      	bhi.n	100042b8 <ble_gapm_activity_stopped_ind_handler+0x90>
1000423c:	f000 ff10 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
10004240:	0a2b1a0d 	.word	0x0a2b1a0d
10004244:	7c1a      	ldrb	r2, [r3, #16]
10004246:	2aa5      	cmp	r2, #165	; 0xa5
10004248:	d1f2      	bne.n	10004230 <ble_gapm_activity_stopped_ind_handler+0x8>
1000424a:	68da      	ldr	r2, [r3, #12]
1000424c:	7911      	ldrb	r1, [r2, #4]
1000424e:	7822      	ldrb	r2, [r4, #0]
10004250:	4291      	cmp	r1, r2
10004252:	d1ed      	bne.n	10004230 <ble_gapm_activity_stopped_ind_handler+0x8>
10004254:	2000      	movs	r0, #0
10004256:	b00b      	add	sp, #44	; 0x2c
10004258:	bd30      	pop	{r4, r5, pc}
1000425a:	4b1b      	ldr	r3, [pc, #108]	; (100042c8 <ble_gapm_activity_stopped_ind_handler+0xa0>)
1000425c:	78a0      	ldrb	r0, [r4, #2]
1000425e:	7825      	ldrb	r5, [r4, #0]
10004260:	4798      	blx	r3
10004262:	a901      	add	r1, sp, #4
10004264:	78e3      	ldrb	r3, [r4, #3]
10004266:	80c8      	strh	r0, [r1, #6]
10004268:	2000      	movs	r0, #0
1000426a:	710d      	strb	r5, [r1, #4]
1000426c:	720b      	strb	r3, [r1, #8]
1000426e:	4b17      	ldr	r3, [pc, #92]	; (100042cc <ble_gapm_activity_stopped_ind_handler+0xa4>)
10004270:	4798      	blx	r3
10004272:	e7ef      	b.n	10004254 <ble_gapm_activity_stopped_ind_handler+0x2c>
10004274:	78a0      	ldrb	r0, [r4, #2]
10004276:	4b14      	ldr	r3, [pc, #80]	; (100042c8 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10004278:	7825      	ldrb	r5, [r4, #0]
1000427a:	4798      	blx	r3
1000427c:	0004      	movs	r4, r0
1000427e:	2009      	movs	r0, #9
10004280:	2100      	movs	r1, #0
10004282:	4b13      	ldr	r3, [pc, #76]	; (100042d0 <ble_gapm_activity_stopped_ind_handler+0xa8>)
10004284:	2205      	movs	r2, #5
10004286:	4468      	add	r0, sp
10004288:	4798      	blx	r3
1000428a:	466b      	mov	r3, sp
1000428c:	2001      	movs	r0, #1
1000428e:	721d      	strb	r5, [r3, #8]
10004290:	815c      	strh	r4, [r3, #10]
10004292:	a901      	add	r1, sp, #4
10004294:	e7eb      	b.n	1000426e <ble_gapm_activity_stopped_ind_handler+0x46>
10004296:	78a0      	ldrb	r0, [r4, #2]
10004298:	4b0b      	ldr	r3, [pc, #44]	; (100042c8 <ble_gapm_activity_stopped_ind_handler+0xa0>)
1000429a:	7825      	ldrb	r5, [r4, #0]
1000429c:	4798      	blx	r3
1000429e:	0004      	movs	r4, r0
100042a0:	2009      	movs	r0, #9
100042a2:	2100      	movs	r1, #0
100042a4:	4b0a      	ldr	r3, [pc, #40]	; (100042d0 <ble_gapm_activity_stopped_ind_handler+0xa8>)
100042a6:	2205      	movs	r2, #5
100042a8:	4468      	add	r0, sp
100042aa:	4798      	blx	r3
100042ac:	466b      	mov	r3, sp
100042ae:	2002      	movs	r0, #2
100042b0:	721d      	strb	r5, [r3, #8]
100042b2:	815c      	strh	r4, [r3, #10]
100042b4:	a901      	add	r1, sp, #4
100042b6:	e7da      	b.n	1000426e <ble_gapm_activity_stopped_ind_handler+0x46>
100042b8:	4a06      	ldr	r2, [pc, #24]	; (100042d4 <ble_gapm_activity_stopped_ind_handler+0xac>)
100042ba:	4907      	ldr	r1, [pc, #28]	; (100042d8 <ble_gapm_activity_stopped_ind_handler+0xb0>)
100042bc:	4807      	ldr	r0, [pc, #28]	; (100042dc <ble_gapm_activity_stopped_ind_handler+0xb4>)
100042be:	4b08      	ldr	r3, [pc, #32]	; (100042e0 <ble_gapm_activity_stopped_ind_handler+0xb8>)
100042c0:	4798      	blx	r3
100042c2:	e7c7      	b.n	10004254 <ble_gapm_activity_stopped_ind_handler+0x2c>
100042c4:	20014e60 	.word	0x20014e60
100042c8:	1000496d 	.word	0x1000496d
100042cc:	10003e79 	.word	0x10003e79
100042d0:	00005859 	.word	0x00005859
100042d4:	00000617 	.word	0x00000617
100042d8:	10006512 	.word	0x10006512
100042dc:	100050ec 	.word	0x100050ec
100042e0:	00006609 	.word	0x00006609

100042e4 <ble_gap_evt_func_reg>:
100042e4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100042e6:	0005      	movs	r5, r0
100042e8:	0016      	movs	r6, r2
100042ea:	4f0c      	ldr	r7, [pc, #48]	; (1000431c <ble_gap_evt_func_reg+0x38>)
100042ec:	9101      	str	r1, [sp, #4]
100042ee:	683c      	ldr	r4, [r7, #0]
100042f0:	2c00      	cmp	r4, #0
100042f2:	d10d      	bne.n	10004310 <ble_gap_evt_func_reg+0x2c>
100042f4:	2102      	movs	r1, #2
100042f6:	4b0a      	ldr	r3, [pc, #40]	; (10004320 <ble_gap_evt_func_reg+0x3c>)
100042f8:	200c      	movs	r0, #12
100042fa:	4798      	blx	r3
100042fc:	9b01      	ldr	r3, [sp, #4]
100042fe:	6046      	str	r6, [r0, #4]
10004300:	7245      	strb	r5, [r0, #9]
10004302:	0002      	movs	r2, r0
10004304:	7203      	strb	r3, [r0, #8]
10004306:	0021      	movs	r1, r4
10004308:	0038      	movs	r0, r7
1000430a:	4b06      	ldr	r3, [pc, #24]	; (10004324 <ble_gap_evt_func_reg+0x40>)
1000430c:	4798      	blx	r3
1000430e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10004310:	7a63      	ldrb	r3, [r4, #9]
10004312:	42ab      	cmp	r3, r5
10004314:	d2ee      	bcs.n	100042f4 <ble_gap_evt_func_reg+0x10>
10004316:	6824      	ldr	r4, [r4, #0]
10004318:	e7ea      	b.n	100042f0 <ble_gap_evt_func_reg+0xc>
1000431a:	46c0      	nop			; (mov r8, r8)
1000431c:	20014e38 	.word	0x20014e38
10004320:	000013b9 	.word	0x000013b9
10004324:	0000282d 	.word	0x0000282d

10004328 <ble_gapc_disconnect>:
10004328:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000432a:	000f      	movs	r7, r1
1000432c:	2109      	movs	r1, #9
1000432e:	0200      	lsls	r0, r0, #8
10004330:	4301      	orrs	r1, r0
10004332:	4c0d      	ldr	r4, [pc, #52]	; (10004368 <ble_gapc_disconnect+0x40>)
10004334:	9301      	str	r3, [sp, #4]
10004336:	0015      	movs	r5, r2
10004338:	2302      	movs	r3, #2
1000433a:	2204      	movs	r2, #4
1000433c:	480b      	ldr	r0, [pc, #44]	; (1000436c <ble_gapc_disconnect+0x44>)
1000433e:	47a0      	blx	r4
10004340:	2601      	movs	r6, #1
10004342:	0004      	movs	r4, r0
10004344:	7006      	strb	r6, [r0, #0]
10004346:	4b0a      	ldr	r3, [pc, #40]	; (10004370 <ble_gapc_disconnect+0x48>)
10004348:	0038      	movs	r0, r7
1000434a:	4798      	blx	r3
1000434c:	7060      	strb	r0, [r4, #1]
1000434e:	2d00      	cmp	r5, #0
10004350:	d005      	beq.n	1000435e <ble_gapc_disconnect+0x36>
10004352:	0028      	movs	r0, r5
10004354:	2300      	movs	r3, #0
10004356:	0031      	movs	r1, r6
10004358:	9a01      	ldr	r2, [sp, #4]
1000435a:	4d06      	ldr	r5, [pc, #24]	; (10004374 <ble_gapc_disconnect+0x4c>)
1000435c:	47a8      	blx	r5
1000435e:	0020      	movs	r0, r4
10004360:	4b05      	ldr	r3, [pc, #20]	; (10004378 <ble_gapc_disconnect+0x50>)
10004362:	4798      	blx	r3
10004364:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10004366:	46c0      	nop			; (mov r8, r8)
10004368:	00001171 	.word	0x00001171
1000436c:	00000e04 	.word	0x00000e04
10004370:	10004f51 	.word	0x10004f51
10004374:	10003e49 	.word	0x10003e49
10004378:	000011a9 	.word	0x000011a9

1000437c <ble_gapc_param_update_cfm>:
1000437c:	b570      	push	{r4, r5, r6, lr}
1000437e:	000d      	movs	r5, r1
10004380:	2109      	movs	r1, #9
10004382:	0200      	lsls	r0, r0, #8
10004384:	2204      	movs	r2, #4
10004386:	4301      	orrs	r1, r0
10004388:	20e1      	movs	r0, #225	; 0xe1
1000438a:	2306      	movs	r3, #6
1000438c:	4090      	lsls	r0, r2
1000438e:	4c05      	ldr	r4, [pc, #20]	; (100043a4 <ble_gapc_param_update_cfm+0x28>)
10004390:	47a0      	blx	r4
10004392:	0004      	movs	r4, r0
10004394:	0029      	movs	r1, r5
10004396:	2206      	movs	r2, #6
10004398:	4b03      	ldr	r3, [pc, #12]	; (100043a8 <ble_gapc_param_update_cfm+0x2c>)
1000439a:	4798      	blx	r3
1000439c:	0020      	movs	r0, r4
1000439e:	4b03      	ldr	r3, [pc, #12]	; (100043ac <ble_gapc_param_update_cfm+0x30>)
100043a0:	4798      	blx	r3
100043a2:	bd70      	pop	{r4, r5, r6, pc}
100043a4:	00001171 	.word	0x00001171
100043a8:	00005821 	.word	0x00005821
100043ac:	000011a9 	.word	0x000011a9

100043b0 <ble_gapc_get_dev_info_cfm>:
100043b0:	b570      	push	{r4, r5, r6, lr}
100043b2:	000d      	movs	r5, r1
100043b4:	2109      	movs	r1, #9
100043b6:	782b      	ldrb	r3, [r5, #0]
100043b8:	0200      	lsls	r0, r0, #8
100043ba:	4c25      	ldr	r4, [pc, #148]	; (10004450 <ble_gapc_get_dev_info_cfm+0xa0>)
100043bc:	4301      	orrs	r1, r0
100043be:	2b00      	cmp	r3, #0
100043c0:	d125      	bne.n	1000440e <ble_gapc_get_dev_info_cfm+0x5e>
100043c2:	892b      	ldrh	r3, [r5, #8]
100043c4:	2b00      	cmp	r3, #0
100043c6:	d022      	beq.n	1000440e <ble_gapc_get_dev_info_cfm+0x5e>
100043c8:	330a      	adds	r3, #10
100043ca:	b29b      	uxth	r3, r3
100043cc:	2204      	movs	r2, #4
100043ce:	4821      	ldr	r0, [pc, #132]	; (10004454 <ble_gapc_get_dev_info_cfm+0xa4>)
100043d0:	47a0      	blx	r4
100043d2:	0004      	movs	r4, r0
100043d4:	7828      	ldrb	r0, [r5, #0]
100043d6:	2801      	cmp	r0, #1
100043d8:	d010      	beq.n	100043fc <ble_gapc_get_dev_info_cfm+0x4c>
100043da:	2802      	cmp	r0, #2
100043dc:	d019      	beq.n	10004412 <ble_gapc_get_dev_info_cfm+0x62>
100043de:	2800      	cmp	r0, #0
100043e0:	d11d      	bne.n	1000441e <ble_gapc_get_dev_info_cfm+0x6e>
100043e2:	892a      	ldrh	r2, [r5, #8]
100043e4:	2a00      	cmp	r2, #0
100043e6:	d004      	beq.n	100043f2 <ble_gapc_get_dev_info_cfm+0x42>
100043e8:	0029      	movs	r1, r5
100043ea:	4b1b      	ldr	r3, [pc, #108]	; (10004458 <ble_gapc_get_dev_info_cfm+0xa8>)
100043ec:	1d20      	adds	r0, r4, #4
100043ee:	310a      	adds	r1, #10
100043f0:	4798      	blx	r3
100043f2:	892a      	ldrh	r2, [r5, #8]
100043f4:	4919      	ldr	r1, [pc, #100]	; (1000445c <ble_gapc_get_dev_info_cfm+0xac>)
100043f6:	481a      	ldr	r0, [pc, #104]	; (10004460 <ble_gapc_get_dev_info_cfm+0xb0>)
100043f8:	4b1a      	ldr	r3, [pc, #104]	; (10004464 <ble_gapc_get_dev_info_cfm+0xb4>)
100043fa:	4798      	blx	r3
100043fc:	892b      	ldrh	r3, [r5, #8]
100043fe:	8063      	strh	r3, [r4, #2]
10004400:	7828      	ldrb	r0, [r5, #0]
10004402:	2803      	cmp	r0, #3
10004404:	d81c      	bhi.n	10004440 <ble_gapc_get_dev_info_cfm+0x90>
10004406:	f000 fe2b 	bl	10005060 <____gnu_thumb1_case_uqi_veneer>
1000440a:	1120      	.short	0x1120
1000440c:	1917      	.short	0x1917
1000440e:	230a      	movs	r3, #10
10004410:	e7dc      	b.n	100043cc <ble_gapc_get_dev_info_cfm+0x1c>
10004412:	2208      	movs	r2, #8
10004414:	4b10      	ldr	r3, [pc, #64]	; (10004458 <ble_gapc_get_dev_info_cfm+0xa8>)
10004416:	1ca0      	adds	r0, r4, #2
10004418:	18a9      	adds	r1, r5, r2
1000441a:	4798      	blx	r3
1000441c:	e7f0      	b.n	10004400 <ble_gapc_get_dev_info_cfm+0x50>
1000441e:	2388      	movs	r3, #136	; 0x88
10004420:	2100      	movs	r1, #0
10004422:	4a11      	ldr	r2, [pc, #68]	; (10004468 <ble_gapc_get_dev_info_cfm+0xb8>)
10004424:	4e11      	ldr	r6, [pc, #68]	; (1000446c <ble_gapc_get_dev_info_cfm+0xbc>)
10004426:	00db      	lsls	r3, r3, #3
10004428:	47b0      	blx	r6
1000442a:	e7e9      	b.n	10004400 <ble_gapc_get_dev_info_cfm+0x50>
1000442c:	2301      	movs	r3, #1
1000442e:	7023      	strb	r3, [r4, #0]
10004430:	0020      	movs	r0, r4
10004432:	4b0f      	ldr	r3, [pc, #60]	; (10004470 <ble_gapc_get_dev_info_cfm+0xc0>)
10004434:	4798      	blx	r3
10004436:	bd70      	pop	{r4, r5, r6, pc}
10004438:	2302      	movs	r3, #2
1000443a:	e7f8      	b.n	1000442e <ble_gapc_get_dev_info_cfm+0x7e>
1000443c:	2303      	movs	r3, #3
1000443e:	e7f6      	b.n	1000442e <ble_gapc_get_dev_info_cfm+0x7e>
10004440:	2100      	movs	r1, #0
10004442:	4b0c      	ldr	r3, [pc, #48]	; (10004474 <ble_gapc_get_dev_info_cfm+0xc4>)
10004444:	4a08      	ldr	r2, [pc, #32]	; (10004468 <ble_gapc_get_dev_info_cfm+0xb8>)
10004446:	4d09      	ldr	r5, [pc, #36]	; (1000446c <ble_gapc_get_dev_info_cfm+0xbc>)
10004448:	47a8      	blx	r5
1000444a:	2300      	movs	r3, #0
1000444c:	e7ef      	b.n	1000442e <ble_gapc_get_dev_info_cfm+0x7e>
1000444e:	46c0      	nop			; (mov r8, r8)
10004450:	00001171 	.word	0x00001171
10004454:	00000e0b 	.word	0x00000e0b
10004458:	00005821 	.word	0x00005821
1000445c:	100065b8 	.word	0x100065b8
10004460:	1000656f 	.word	0x1000656f
10004464:	000066b1 	.word	0x000066b1
10004468:	10006512 	.word	0x10006512
1000446c:	00006641 	.word	0x00006641
10004470:	000011a9 	.word	0x000011a9
10004474:	000002b5 	.word	0x000002b5

10004478 <ble_gapm_reset_cmd>:
10004478:	2201      	movs	r2, #1
1000447a:	b570      	push	{r4, r5, r6, lr}
1000447c:	0014      	movs	r4, r2
1000447e:	4b0f      	ldr	r3, [pc, #60]	; (100044bc <ble_gapm_reset_cmd+0x44>)
10004480:	000e      	movs	r6, r1
10004482:	7819      	ldrb	r1, [r3, #0]
10004484:	0005      	movs	r5, r0
10004486:	480e      	ldr	r0, [pc, #56]	; (100044c0 <ble_gapm_reset_cmd+0x48>)
10004488:	404c      	eors	r4, r1
1000448a:	6004      	str	r4, [r0, #0]
1000448c:	2900      	cmp	r1, #0
1000448e:	d100      	bne.n	10004492 <ble_gapm_reset_cmd+0x1a>
10004490:	701a      	strb	r2, [r3, #0]
10004492:	2108      	movs	r1, #8
10004494:	4c0b      	ldr	r4, [pc, #44]	; (100044c4 <ble_gapm_reset_cmd+0x4c>)
10004496:	2301      	movs	r3, #1
10004498:	2204      	movs	r2, #4
1000449a:	480b      	ldr	r0, [pc, #44]	; (100044c8 <ble_gapm_reset_cmd+0x50>)
1000449c:	47a0      	blx	r4
1000449e:	2101      	movs	r1, #1
100044a0:	0004      	movs	r4, r0
100044a2:	7001      	strb	r1, [r0, #0]
100044a4:	2d00      	cmp	r5, #0
100044a6:	d004      	beq.n	100044b2 <ble_gapm_reset_cmd+0x3a>
100044a8:	0028      	movs	r0, r5
100044aa:	2300      	movs	r3, #0
100044ac:	0032      	movs	r2, r6
100044ae:	4d07      	ldr	r5, [pc, #28]	; (100044cc <ble_gapm_reset_cmd+0x54>)
100044b0:	47a8      	blx	r5
100044b2:	0020      	movs	r0, r4
100044b4:	4b06      	ldr	r3, [pc, #24]	; (100044d0 <ble_gapm_reset_cmd+0x58>)
100044b6:	4798      	blx	r3
100044b8:	bd70      	pop	{r4, r5, r6, pc}
100044ba:	46c0      	nop			; (mov r8, r8)
100044bc:	20014e8c 	.word	0x20014e8c
100044c0:	20000ff8 	.word	0x20000ff8
100044c4:	00001171 	.word	0x00001171
100044c8:	00000d02 	.word	0x00000d02
100044cc:	100039d1 	.word	0x100039d1
100044d0:	000011a9 	.word	0x000011a9

100044d4 <ble_gapm_set_device_config>:
100044d4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100044d6:	2334      	movs	r3, #52	; 0x34
100044d8:	0005      	movs	r5, r0
100044da:	4c32      	ldr	r4, [pc, #200]	; (100045a4 <ble_gapm_set_device_config+0xd0>)
100044dc:	9201      	str	r2, [sp, #4]
100044de:	000f      	movs	r7, r1
100044e0:	2204      	movs	r2, #4
100044e2:	2108      	movs	r1, #8
100044e4:	4830      	ldr	r0, [pc, #192]	; (100045a8 <ble_gapm_set_device_config+0xd4>)
100044e6:	47a0      	blx	r4
100044e8:	2303      	movs	r3, #3
100044ea:	0004      	movs	r4, r0
100044ec:	7003      	strb	r3, [r0, #0]
100044ee:	782b      	ldrb	r3, [r5, #0]
100044f0:	4e2e      	ldr	r6, [pc, #184]	; (100045ac <ble_gapm_set_device_config+0xd8>)
100044f2:	7043      	strb	r3, [r0, #1]
100044f4:	886b      	ldrh	r3, [r5, #2]
100044f6:	2206      	movs	r2, #6
100044f8:	8043      	strh	r3, [r0, #2]
100044fa:	1d29      	adds	r1, r5, #4
100044fc:	3004      	adds	r0, #4
100044fe:	47b0      	blx	r6
10004500:	0020      	movs	r0, r4
10004502:	0029      	movs	r1, r5
10004504:	2210      	movs	r2, #16
10004506:	300a      	adds	r0, #10
10004508:	310a      	adds	r1, #10
1000450a:	47b0      	blx	r6
1000450c:	22e0      	movs	r2, #224	; 0xe0
1000450e:	7eab      	ldrb	r3, [r5, #26]
10004510:	0112      	lsls	r2, r2, #4
10004512:	76a3      	strb	r3, [r4, #26]
10004514:	7eeb      	ldrb	r3, [r5, #27]
10004516:	76e3      	strb	r3, [r4, #27]
10004518:	8bab      	ldrh	r3, [r5, #28]
1000451a:	83a3      	strh	r3, [r4, #28]
1000451c:	8beb      	ldrh	r3, [r5, #30]
1000451e:	83e3      	strh	r3, [r4, #30]
10004520:	8c2e      	ldrh	r6, [r5, #32]
10004522:	4216      	tst	r6, r2
10004524:	d008      	beq.n	10004538 <ble_gapm_set_device_config+0x64>
10004526:	0031      	movs	r1, r6
10004528:	4b21      	ldr	r3, [pc, #132]	; (100045b0 <ble_gapm_set_device_config+0xdc>)
1000452a:	4822      	ldr	r0, [pc, #136]	; (100045b4 <ble_gapm_set_device_config+0xe0>)
1000452c:	4798      	blx	r3
1000452e:	4a22      	ldr	r2, [pc, #136]	; (100045b8 <ble_gapm_set_device_config+0xe4>)
10004530:	4922      	ldr	r1, [pc, #136]	; (100045bc <ble_gapm_set_device_config+0xe8>)
10004532:	4823      	ldr	r0, [pc, #140]	; (100045c0 <ble_gapm_set_device_config+0xec>)
10004534:	4b23      	ldr	r3, [pc, #140]	; (100045c4 <ble_gapm_set_device_config+0xf0>)
10004536:	4798      	blx	r3
10004538:	233f      	movs	r3, #63	; 0x3f
1000453a:	2240      	movs	r2, #64	; 0x40
1000453c:	4033      	ands	r3, r6
1000453e:	4216      	tst	r6, r2
10004540:	d000      	beq.n	10004544 <ble_gapm_set_device_config+0x70>
10004542:	4313      	orrs	r3, r2
10004544:	2280      	movs	r2, #128	; 0x80
10004546:	4216      	tst	r6, r2
10004548:	d000      	beq.n	1000454c <ble_gapm_set_device_config+0x78>
1000454a:	4313      	orrs	r3, r2
1000454c:	8423      	strh	r3, [r4, #32]
1000454e:	8c6b      	ldrh	r3, [r5, #34]	; 0x22
10004550:	8463      	strh	r3, [r4, #34]	; 0x22
10004552:	8cab      	ldrh	r3, [r5, #36]	; 0x24
10004554:	84a3      	strh	r3, [r4, #36]	; 0x24
10004556:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
10004558:	84e3      	strh	r3, [r4, #38]	; 0x26
1000455a:	8d2b      	ldrh	r3, [r5, #40]	; 0x28
1000455c:	8523      	strh	r3, [r4, #40]	; 0x28
1000455e:	002b      	movs	r3, r5
10004560:	332a      	adds	r3, #42	; 0x2a
10004562:	781a      	ldrb	r2, [r3, #0]
10004564:	0023      	movs	r3, r4
10004566:	332a      	adds	r3, #42	; 0x2a
10004568:	701a      	strb	r2, [r3, #0]
1000456a:	2300      	movs	r3, #0
1000456c:	002a      	movs	r2, r5
1000456e:	85a3      	strh	r3, [r4, #44]	; 0x2c
10004570:	322b      	adds	r2, #43	; 0x2b
10004572:	7811      	ldrb	r1, [r2, #0]
10004574:	0022      	movs	r2, r4
10004576:	322e      	adds	r2, #46	; 0x2e
10004578:	7011      	strb	r1, [r2, #0]
1000457a:	002a      	movs	r2, r5
1000457c:	322c      	adds	r2, #44	; 0x2c
1000457e:	7811      	ldrb	r1, [r2, #0]
10004580:	0022      	movs	r2, r4
10004582:	322f      	adds	r2, #47	; 0x2f
10004584:	7011      	strb	r1, [r2, #0]
10004586:	8dea      	ldrh	r2, [r5, #46]	; 0x2e
10004588:	8622      	strh	r2, [r4, #48]	; 0x30
1000458a:	8e2a      	ldrh	r2, [r5, #48]	; 0x30
1000458c:	8662      	strh	r2, [r4, #50]	; 0x32
1000458e:	429f      	cmp	r7, r3
10004590:	d004      	beq.n	1000459c <ble_gapm_set_device_config+0xc8>
10004592:	2103      	movs	r1, #3
10004594:	0038      	movs	r0, r7
10004596:	9a01      	ldr	r2, [sp, #4]
10004598:	4d0b      	ldr	r5, [pc, #44]	; (100045c8 <ble_gapm_set_device_config+0xf4>)
1000459a:	47a8      	blx	r5
1000459c:	0020      	movs	r0, r4
1000459e:	4b0b      	ldr	r3, [pc, #44]	; (100045cc <ble_gapm_set_device_config+0xf8>)
100045a0:	4798      	blx	r3
100045a2:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100045a4:	00001171 	.word	0x00001171
100045a8:	00000d04 	.word	0x00000d04
100045ac:	00005821 	.word	0x00005821
100045b0:	000066b1 	.word	0x000066b1
100045b4:	1000657f 	.word	0x1000657f
100045b8:	000004e1 	.word	0x000004e1
100045bc:	10006512 	.word	0x10006512
100045c0:	1000659d 	.word	0x1000659d
100045c4:	00006609 	.word	0x00006609
100045c8:	100039d1 	.word	0x100039d1
100045cc:	000011a9 	.word	0x000011a9

100045d0 <ble_gapm_delete_activity>:
100045d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100045d2:	0007      	movs	r7, r0
100045d4:	4c0b      	ldr	r4, [pc, #44]	; (10004604 <ble_gapm_delete_activity+0x34>)
100045d6:	000e      	movs	r6, r1
100045d8:	0015      	movs	r5, r2
100045da:	2108      	movs	r1, #8
100045dc:	2302      	movs	r3, #2
100045de:	2204      	movs	r2, #4
100045e0:	4809      	ldr	r0, [pc, #36]	; (10004608 <ble_gapm_delete_activity+0x38>)
100045e2:	47a0      	blx	r4
100045e4:	21a7      	movs	r1, #167	; 0xa7
100045e6:	0004      	movs	r4, r0
100045e8:	7001      	strb	r1, [r0, #0]
100045ea:	7047      	strb	r7, [r0, #1]
100045ec:	2d00      	cmp	r5, #0
100045ee:	d004      	beq.n	100045fa <ble_gapm_delete_activity+0x2a>
100045f0:	0028      	movs	r0, r5
100045f2:	2300      	movs	r3, #0
100045f4:	0032      	movs	r2, r6
100045f6:	4d05      	ldr	r5, [pc, #20]	; (1000460c <ble_gapm_delete_activity+0x3c>)
100045f8:	47a8      	blx	r5
100045fa:	0020      	movs	r0, r4
100045fc:	4b04      	ldr	r3, [pc, #16]	; (10004610 <ble_gapm_delete_activity+0x40>)
100045fe:	4798      	blx	r3
10004600:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10004602:	46c0      	nop			; (mov r8, r8)
10004604:	00001171 	.word	0x00001171
10004608:	00000da3 	.word	0x00000da3
1000460c:	100039d1 	.word	0x100039d1
10004610:	000011a9 	.word	0x000011a9

10004614 <ble_gapm_create_adv_activity>:
10004614:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10004616:	0005      	movs	r5, r0
10004618:	0016      	movs	r6, r2
1000461a:	20da      	movs	r0, #218	; 0xda
1000461c:	2204      	movs	r2, #4
1000461e:	9100      	str	r1, [sp, #0]
10004620:	4090      	lsls	r0, r2
10004622:	9301      	str	r3, [sp, #4]
10004624:	2108      	movs	r1, #8
10004626:	2328      	movs	r3, #40	; 0x28
10004628:	4c0d      	ldr	r4, [pc, #52]	; (10004660 <ble_gapm_create_adv_activity+0x4c>)
1000462a:	47a0      	blx	r4
1000462c:	27a0      	movs	r7, #160	; 0xa0
1000462e:	9900      	ldr	r1, [sp, #0]
10004630:	7007      	strb	r7, [r0, #0]
10004632:	7045      	strb	r5, [r0, #1]
10004634:	1d03      	adds	r3, r0, #4
10004636:	0004      	movs	r4, r0
10004638:	c925      	ldmia	r1!, {r0, r2, r5}
1000463a:	c325      	stmia	r3!, {r0, r2, r5}
1000463c:	c925      	ldmia	r1!, {r0, r2, r5}
1000463e:	c325      	stmia	r3!, {r0, r2, r5}
10004640:	c925      	ldmia	r1!, {r0, r2, r5}
10004642:	c325      	stmia	r3!, {r0, r2, r5}
10004644:	4b07      	ldr	r3, [pc, #28]	; (10004664 <ble_gapm_create_adv_activity+0x50>)
10004646:	2000      	movs	r0, #0
10004648:	4798      	blx	r3
1000464a:	0032      	movs	r2, r6
1000464c:	0039      	movs	r1, r7
1000464e:	0003      	movs	r3, r0
10004650:	4d05      	ldr	r5, [pc, #20]	; (10004668 <ble_gapm_create_adv_activity+0x54>)
10004652:	9801      	ldr	r0, [sp, #4]
10004654:	47a8      	blx	r5
10004656:	0020      	movs	r0, r4
10004658:	4b04      	ldr	r3, [pc, #16]	; (1000466c <ble_gapm_create_adv_activity+0x58>)
1000465a:	4798      	blx	r3
1000465c:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000465e:	46c0      	nop			; (mov r8, r8)
10004660:	00001171 	.word	0x00001171
10004664:	100039c1 	.word	0x100039c1
10004668:	100039d1 	.word	0x100039d1
1000466c:	000011a9 	.word	0x000011a9

10004670 <ble_gapm_create_scan_activity>:
10004670:	b510      	push	{r4, lr}
10004672:	0013      	movs	r3, r2
10004674:	000a      	movs	r2, r1
10004676:	4c02      	ldr	r4, [pc, #8]	; (10004680 <ble_gapm_create_scan_activity+0x10>)
10004678:	21a1      	movs	r1, #161	; 0xa1
1000467a:	47a0      	blx	r4
1000467c:	bd10      	pop	{r4, pc}
1000467e:	46c0      	nop			; (mov r8, r8)
10004680:	10003a01 	.word	0x10003a01

10004684 <ble_gapm_set_adv_data>:
10004684:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10004686:	0016      	movs	r6, r2
10004688:	9301      	str	r3, [sp, #4]
1000468a:	0004      	movs	r4, r0
1000468c:	4b16      	ldr	r3, [pc, #88]	; (100046e8 <ble_gapm_set_adv_data+0x64>)
1000468e:	4817      	ldr	r0, [pc, #92]	; (100046ec <ble_gapm_set_adv_data+0x68>)
10004690:	000f      	movs	r7, r1
10004692:	4798      	blx	r3
10004694:	1d33      	adds	r3, r6, #4
10004696:	2204      	movs	r2, #4
10004698:	2108      	movs	r1, #8
1000469a:	4d15      	ldr	r5, [pc, #84]	; (100046f0 <ble_gapm_set_adv_data+0x6c>)
1000469c:	b29b      	uxth	r3, r3
1000469e:	4815      	ldr	r0, [pc, #84]	; (100046f4 <ble_gapm_set_adv_data+0x70>)
100046a0:	47a8      	blx	r5
100046a2:	0005      	movs	r5, r0
100046a4:	0032      	movs	r2, r6
100046a6:	9901      	ldr	r1, [sp, #4]
100046a8:	4b13      	ldr	r3, [pc, #76]	; (100046f8 <ble_gapm_set_adv_data+0x74>)
100046aa:	3004      	adds	r0, #4
100046ac:	4798      	blx	r3
100046ae:	806e      	strh	r6, [r5, #2]
100046b0:	2c02      	cmp	r4, #2
100046b2:	d80f      	bhi.n	100046d4 <ble_gapm_set_adv_data+0x50>
100046b4:	3c57      	subs	r4, #87	; 0x57
100046b6:	b2e1      	uxtb	r1, r4
100046b8:	9b09      	ldr	r3, [sp, #36]	; 0x24
100046ba:	7029      	strb	r1, [r5, #0]
100046bc:	706f      	strb	r7, [r5, #1]
100046be:	2b00      	cmp	r3, #0
100046c0:	d004      	beq.n	100046cc <ble_gapm_set_adv_data+0x48>
100046c2:	2300      	movs	r3, #0
100046c4:	9a08      	ldr	r2, [sp, #32]
100046c6:	9809      	ldr	r0, [sp, #36]	; 0x24
100046c8:	4c0c      	ldr	r4, [pc, #48]	; (100046fc <ble_gapm_set_adv_data+0x78>)
100046ca:	47a0      	blx	r4
100046cc:	0028      	movs	r0, r5
100046ce:	4b0c      	ldr	r3, [pc, #48]	; (10004700 <ble_gapm_set_adv_data+0x7c>)
100046d0:	4798      	blx	r3
100046d2:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100046d4:	23da      	movs	r3, #218	; 0xda
100046d6:	2100      	movs	r1, #0
100046d8:	0020      	movs	r0, r4
100046da:	4a0a      	ldr	r2, [pc, #40]	; (10004704 <ble_gapm_set_adv_data+0x80>)
100046dc:	4c0a      	ldr	r4, [pc, #40]	; (10004708 <ble_gapm_set_adv_data+0x84>)
100046de:	33ff      	adds	r3, #255	; 0xff
100046e0:	47a0      	blx	r4
100046e2:	2100      	movs	r1, #0
100046e4:	e7e8      	b.n	100046b8 <ble_gapm_set_adv_data+0x34>
100046e6:	46c0      	nop			; (mov r8, r8)
100046e8:	000066b1 	.word	0x000066b1
100046ec:	100065a3 	.word	0x100065a3
100046f0:	00001171 	.word	0x00001171
100046f4:	00000da6 	.word	0x00000da6
100046f8:	00005821 	.word	0x00005821
100046fc:	100039d1 	.word	0x100039d1
10004700:	000011a9 	.word	0x000011a9
10004704:	10006512 	.word	0x10006512
10004708:	00006641 	.word	0x00006641

1000470c <ble_gapm_start_adv>:
1000470c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000470e:	000e      	movs	r6, r1
10004710:	001d      	movs	r5, r3
10004712:	0004      	movs	r4, r0
10004714:	4f07      	ldr	r7, [pc, #28]	; (10004734 <ble_gapm_start_adv+0x28>)
10004716:	9201      	str	r2, [sp, #4]
10004718:	233a      	movs	r3, #58	; 0x3a
1000471a:	2204      	movs	r2, #4
1000471c:	2108      	movs	r1, #8
1000471e:	4806      	ldr	r0, [pc, #24]	; (10004738 <ble_gapm_start_adv+0x2c>)
10004720:	47b8      	blx	r7
10004722:	9b01      	ldr	r3, [sp, #4]
10004724:	002a      	movs	r2, r5
10004726:	0021      	movs	r1, r4
10004728:	8046      	strh	r6, [r0, #2]
1000472a:	7103      	strb	r3, [r0, #4]
1000472c:	4c03      	ldr	r4, [pc, #12]	; (1000473c <ble_gapm_start_adv+0x30>)
1000472e:	9b08      	ldr	r3, [sp, #32]
10004730:	47a0      	blx	r4
10004732:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10004734:	00001171 	.word	0x00001171
10004738:	00000da1 	.word	0x00000da1
1000473c:	10003a4d 	.word	0x10003a4d

10004740 <ble_gapm_start_scan>:
10004740:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10004742:	000f      	movs	r7, r1
10004744:	0015      	movs	r5, r2
10004746:	001e      	movs	r6, r3
10004748:	9001      	str	r0, [sp, #4]
1000474a:	233a      	movs	r3, #58	; 0x3a
1000474c:	2204      	movs	r2, #4
1000474e:	2108      	movs	r1, #8
10004750:	4c07      	ldr	r4, [pc, #28]	; (10004770 <ble_gapm_start_scan+0x30>)
10004752:	4808      	ldr	r0, [pc, #32]	; (10004774 <ble_gapm_start_scan+0x34>)
10004754:	47a0      	blx	r4
10004756:	0004      	movs	r4, r0
10004758:	0039      	movs	r1, r7
1000475a:	2210      	movs	r2, #16
1000475c:	4b06      	ldr	r3, [pc, #24]	; (10004778 <ble_gapm_start_scan+0x38>)
1000475e:	3002      	adds	r0, #2
10004760:	4798      	blx	r3
10004762:	0033      	movs	r3, r6
10004764:	002a      	movs	r2, r5
10004766:	0020      	movs	r0, r4
10004768:	9901      	ldr	r1, [sp, #4]
1000476a:	4c04      	ldr	r4, [pc, #16]	; (1000477c <ble_gapm_start_scan+0x3c>)
1000476c:	47a0      	blx	r4
1000476e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10004770:	00001171 	.word	0x00001171
10004774:	00000da1 	.word	0x00000da1
10004778:	00005821 	.word	0x00005821
1000477c:	10003a4d 	.word	0x10003a4d

10004780 <ble_gapc_reg_ind>:
10004780:	4b01      	ldr	r3, [pc, #4]	; (10004788 <ble_gapc_reg_ind+0x8>)
10004782:	6018      	str	r0, [r3, #0]
10004784:	4770      	bx	lr
10004786:	46c0      	nop			; (mov r8, r8)
10004788:	20014e88 	.word	0x20014e88

1000478c <ble_gap_init>:
1000478c:	b510      	push	{r4, lr}
1000478e:	4807      	ldr	r0, [pc, #28]	; (100047ac <ble_gap_init+0x20>)
10004790:	4c07      	ldr	r4, [pc, #28]	; (100047b0 <ble_gap_init+0x24>)
10004792:	47a0      	blx	r4
10004794:	4807      	ldr	r0, [pc, #28]	; (100047b4 <ble_gap_init+0x28>)
10004796:	47a0      	blx	r4
10004798:	4807      	ldr	r0, [pc, #28]	; (100047b8 <ble_gap_init+0x2c>)
1000479a:	47a0      	blx	r4
1000479c:	4c07      	ldr	r4, [pc, #28]	; (100047bc <ble_gap_init+0x30>)
1000479e:	200d      	movs	r0, #13
100047a0:	4907      	ldr	r1, [pc, #28]	; (100047c0 <ble_gap_init+0x34>)
100047a2:	47a0      	blx	r4
100047a4:	200e      	movs	r0, #14
100047a6:	4907      	ldr	r1, [pc, #28]	; (100047c4 <ble_gap_init+0x38>)
100047a8:	47a0      	blx	r4
100047aa:	bd10      	pop	{r4, pc}
100047ac:	20014e74 	.word	0x20014e74
100047b0:	00002657 	.word	0x00002657
100047b4:	20014e60 	.word	0x20014e60
100047b8:	20014e4c 	.word	0x20014e4c
100047bc:	100048c5 	.word	0x100048c5
100047c0:	10006640 	.word	0x10006640
100047c4:	100065d8 	.word	0x100065d8

100047c8 <ble_msg_handler>:
100047c8:	b5f0      	push	{r4, r5, r6, r7, lr}
100047ca:	001d      	movs	r5, r3
100047cc:	b087      	sub	sp, #28
100047ce:	0a03      	lsrs	r3, r0, #8
100047d0:	9302      	str	r3, [sp, #8]
100047d2:	b2eb      	uxtb	r3, r5
100047d4:	9304      	str	r3, [sp, #16]
100047d6:	3bff      	subs	r3, #255	; 0xff
100047d8:	425a      	negs	r2, r3
100047da:	4153      	adcs	r3, r2
100047dc:	b2db      	uxtb	r3, r3
100047de:	9303      	str	r3, [sp, #12]
100047e0:	2300      	movs	r3, #0
100047e2:	0004      	movs	r4, r0
100047e4:	4f28      	ldr	r7, [pc, #160]	; (10004888 <ble_msg_handler+0xc0>)
100047e6:	9105      	str	r1, [sp, #20]
100047e8:	9300      	str	r3, [sp, #0]
100047ea:	4b28      	ldr	r3, [pc, #160]	; (1000488c <ble_msg_handler+0xc4>)
100047ec:	9a00      	ldr	r2, [sp, #0]
100047ee:	881b      	ldrh	r3, [r3, #0]
100047f0:	4293      	cmp	r3, r2
100047f2:	dc0a      	bgt.n	1000480a <ble_msg_handler+0x42>
100047f4:	9b04      	ldr	r3, [sp, #16]
100047f6:	2600      	movs	r6, #0
100047f8:	2bff      	cmp	r3, #255	; 0xff
100047fa:	d03f      	beq.n	1000487c <ble_msg_handler+0xb4>
100047fc:	0022      	movs	r2, r4
100047fe:	002b      	movs	r3, r5
10004800:	4923      	ldr	r1, [pc, #140]	; (10004890 <ble_msg_handler+0xc8>)
10004802:	4c24      	ldr	r4, [pc, #144]	; (10004894 <ble_msg_handler+0xcc>)
10004804:	4824      	ldr	r0, [pc, #144]	; (10004898 <ble_msg_handler+0xd0>)
10004806:	47a0      	blx	r4
10004808:	e038      	b.n	1000487c <ble_msg_handler+0xb4>
1000480a:	9a02      	ldr	r2, [sp, #8]
1000480c:	883b      	ldrh	r3, [r7, #0]
1000480e:	9301      	str	r3, [sp, #4]
10004810:	1a9b      	subs	r3, r3, r2
10004812:	425a      	negs	r2, r3
10004814:	4153      	adcs	r3, r2
10004816:	9a03      	ldr	r2, [sp, #12]
10004818:	4293      	cmp	r3, r2
1000481a:	d104      	bne.n	10004826 <ble_msg_handler+0x5e>
1000481c:	9b00      	ldr	r3, [sp, #0]
1000481e:	3708      	adds	r7, #8
10004820:	3301      	adds	r3, #1
10004822:	9300      	str	r3, [sp, #0]
10004824:	e7e1      	b.n	100047ea <ble_msg_handler+0x22>
10004826:	4a1d      	ldr	r2, [pc, #116]	; (1000489c <ble_msg_handler+0xd4>)
10004828:	6879      	ldr	r1, [r7, #4]
1000482a:	4694      	mov	ip, r2
1000482c:	888b      	ldrh	r3, [r1, #4]
1000482e:	3b01      	subs	r3, #1
10004830:	1c5a      	adds	r2, r3, #1
10004832:	d107      	bne.n	10004844 <ble_msg_handler+0x7c>
10004834:	4e17      	ldr	r6, [pc, #92]	; (10004894 <ble_msg_handler+0xcc>)
10004836:	002b      	movs	r3, r5
10004838:	0022      	movs	r2, r4
1000483a:	4919      	ldr	r1, [pc, #100]	; (100048a0 <ble_msg_handler+0xd8>)
1000483c:	4816      	ldr	r0, [pc, #88]	; (10004898 <ble_msg_handler+0xd0>)
1000483e:	47b0      	blx	r6
10004840:	2600      	movs	r6, #0
10004842:	e017      	b.n	10004874 <ble_msg_handler+0xac>
10004844:	680e      	ldr	r6, [r1, #0]
10004846:	6808      	ldr	r0, [r1, #0]
10004848:	00da      	lsls	r2, r3, #3
1000484a:	18b6      	adds	r6, r6, r2
1000484c:	5a82      	ldrh	r2, [r0, r2]
1000484e:	4294      	cmp	r4, r2
10004850:	d001      	beq.n	10004856 <ble_msg_handler+0x8e>
10004852:	4562      	cmp	r2, ip
10004854:	d115      	bne.n	10004882 <ble_msg_handler+0xba>
10004856:	6873      	ldr	r3, [r6, #4]
10004858:	2b00      	cmp	r3, #0
1000485a:	d104      	bne.n	10004866 <ble_msg_handler+0x9e>
1000485c:	2239      	movs	r2, #57	; 0x39
1000485e:	4911      	ldr	r1, [pc, #68]	; (100048a4 <ble_msg_handler+0xdc>)
10004860:	4811      	ldr	r0, [pc, #68]	; (100048a8 <ble_msg_handler+0xe0>)
10004862:	4b12      	ldr	r3, [pc, #72]	; (100048ac <ble_msg_handler+0xe4>)
10004864:	4798      	blx	r3
10004866:	6876      	ldr	r6, [r6, #4]
10004868:	002b      	movs	r3, r5
1000486a:	2204      	movs	r2, #4
1000486c:	0020      	movs	r0, r4
1000486e:	9905      	ldr	r1, [sp, #20]
10004870:	47b0      	blx	r6
10004872:	0006      	movs	r6, r0
10004874:	9b01      	ldr	r3, [sp, #4]
10004876:	9a02      	ldr	r2, [sp, #8]
10004878:	4293      	cmp	r3, r2
1000487a:	d1cf      	bne.n	1000481c <ble_msg_handler+0x54>
1000487c:	0030      	movs	r0, r6
1000487e:	b007      	add	sp, #28
10004880:	bdf0      	pop	{r4, r5, r6, r7, pc}
10004882:	3b01      	subs	r3, #1
10004884:	e7d4      	b.n	10004830 <ble_msg_handler+0x68>
10004886:	46c0      	nop			; (mov r8, r8)
10004888:	20014e94 	.word	0x20014e94
1000488c:	20014e8e 	.word	0x20014e8e
10004890:	100067cc 	.word	0x100067cc
10004894:	000066b1 	.word	0x000066b1
10004898:	100066a9 	.word	0x100066a9
1000489c:	0000ffff 	.word	0x0000ffff
100048a0:	100067bc 	.word	0x100067bc
100048a4:	10006690 	.word	0x10006690
100048a8:	1000669b 	.word	0x1000669b
100048ac:	00006609 	.word	0x00006609

100048b0 <ble_task_init>:
100048b0:	b510      	push	{r4, lr}
100048b2:	2004      	movs	r0, #4
100048b4:	4901      	ldr	r1, [pc, #4]	; (100048bc <ble_task_init+0xc>)
100048b6:	4b02      	ldr	r3, [pc, #8]	; (100048c0 <ble_task_init+0x10>)
100048b8:	4798      	blx	r3
100048ba:	bd10      	pop	{r4, pc}
100048bc:	100067b0 	.word	0x100067b0
100048c0:	00001775 	.word	0x00001775

100048c4 <ble_task_register_handler>:
100048c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100048c6:	4e11      	ldr	r6, [pc, #68]	; (1000490c <ble_task_register_handler+0x48>)
100048c8:	0005      	movs	r5, r0
100048ca:	8833      	ldrh	r3, [r6, #0]
100048cc:	000f      	movs	r7, r1
100048ce:	2b04      	cmp	r3, #4
100048d0:	d904      	bls.n	100048dc <ble_task_register_handler+0x18>
100048d2:	227a      	movs	r2, #122	; 0x7a
100048d4:	490e      	ldr	r1, [pc, #56]	; (10004910 <ble_task_register_handler+0x4c>)
100048d6:	480f      	ldr	r0, [pc, #60]	; (10004914 <ble_task_register_handler+0x50>)
100048d8:	4b0f      	ldr	r3, [pc, #60]	; (10004918 <ble_task_register_handler+0x54>)
100048da:	4798      	blx	r3
100048dc:	2400      	movs	r4, #0
100048de:	8833      	ldrh	r3, [r6, #0]
100048e0:	4a0e      	ldr	r2, [pc, #56]	; (1000491c <ble_task_register_handler+0x58>)
100048e2:	429c      	cmp	r4, r3
100048e4:	d306      	bcc.n	100048f4 <ble_task_register_handler+0x30>
100048e6:	00d9      	lsls	r1, r3, #3
100048e8:	1850      	adds	r0, r2, r1
100048ea:	3301      	adds	r3, #1
100048ec:	6047      	str	r7, [r0, #4]
100048ee:	5255      	strh	r5, [r2, r1]
100048f0:	8033      	strh	r3, [r6, #0]
100048f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100048f4:	00e3      	lsls	r3, r4, #3
100048f6:	5ad3      	ldrh	r3, [r2, r3]
100048f8:	42ab      	cmp	r3, r5
100048fa:	d104      	bne.n	10004906 <ble_task_register_handler+0x42>
100048fc:	227e      	movs	r2, #126	; 0x7e
100048fe:	4904      	ldr	r1, [pc, #16]	; (10004910 <ble_task_register_handler+0x4c>)
10004900:	4807      	ldr	r0, [pc, #28]	; (10004920 <ble_task_register_handler+0x5c>)
10004902:	4b05      	ldr	r3, [pc, #20]	; (10004918 <ble_task_register_handler+0x54>)
10004904:	4798      	blx	r3
10004906:	3401      	adds	r4, #1
10004908:	b2e4      	uxtb	r4, r4
1000490a:	e7e8      	b.n	100048de <ble_task_register_handler+0x1a>
1000490c:	20014e8e 	.word	0x20014e8e
10004910:	10006690 	.word	0x10006690
10004914:	100066cb 	.word	0x100066cb
10004918:	00006609 	.word	0x00006609
1000491c:	20014e94 	.word	0x20014e94
10004920:	100066f6 	.word	0x100066f6

10004924 <ble_task_msg_handler_validate>:
10004924:	b510      	push	{r4, lr}
10004926:	4b09      	ldr	r3, [pc, #36]	; (1000494c <ble_task_msg_handler_validate+0x28>)
10004928:	8819      	ldrh	r1, [r3, #0]
1000492a:	2905      	cmp	r1, #5
1000492c:	d90c      	bls.n	10004948 <ble_task_msg_handler_validate+0x24>
1000492e:	4c08      	ldr	r4, [pc, #32]	; (10004950 <ble_task_msg_handler_validate+0x2c>)
10004930:	4808      	ldr	r0, [pc, #32]	; (10004954 <ble_task_msg_handler_validate+0x30>)
10004932:	47a0      	blx	r4
10004934:	2105      	movs	r1, #5
10004936:	4808      	ldr	r0, [pc, #32]	; (10004958 <ble_task_msg_handler_validate+0x34>)
10004938:	47a0      	blx	r4
1000493a:	4808      	ldr	r0, [pc, #32]	; (1000495c <ble_task_msg_handler_validate+0x38>)
1000493c:	47a0      	blx	r4
1000493e:	228f      	movs	r2, #143	; 0x8f
10004940:	4907      	ldr	r1, [pc, #28]	; (10004960 <ble_task_msg_handler_validate+0x3c>)
10004942:	4808      	ldr	r0, [pc, #32]	; (10004964 <ble_task_msg_handler_validate+0x40>)
10004944:	4b08      	ldr	r3, [pc, #32]	; (10004968 <ble_task_msg_handler_validate+0x44>)
10004946:	4798      	blx	r3
10004948:	bd10      	pop	{r4, pc}
1000494a:	46c0      	nop			; (mov r8, r8)
1000494c:	20014e8e 	.word	0x20014e8e
10004950:	000066b1 	.word	0x000066b1
10004954:	1000671a 	.word	0x1000671a
10004958:	10006753 	.word	0x10006753
1000495c:	10006785 	.word	0x10006785
10004960:	10006690 	.word	0x10006690
10004964:	100050ec 	.word	0x100050ec
10004968:	00006609 	.word	0x00006609

1000496c <porting_ble_err_code_t>:
1000496c:	b510      	push	{r4, lr}
1000496e:	28ff      	cmp	r0, #255	; 0xff
10004970:	d900      	bls.n	10004974 <porting_ble_err_code_t+0x8>
10004972:	e2db      	b.n	10004f2c <porting_ble_err_code_t+0x5c0>
10004974:	f000 fb64 	bl	10005040 <____gnu_thumb1_case_uhi_veneer>
10004978:	019102e1 	.word	0x019102e1
1000497c:	01950193 	.word	0x01950193
10004980:	019a0197 	.word	0x019a0197
10004984:	019e019c 	.word	0x019e019c
10004988:	01a301a0 	.word	0x01a301a0
1000498c:	01a701a5 	.word	0x01a701a5
10004990:	01ac01a9 	.word	0x01ac01a9
10004994:	01b001ae 	.word	0x01b001ae
10004998:	01b501b2 	.word	0x01b501b2
1000499c:	02da02da 	.word	0x02da02da
100049a0:	02da02da 	.word	0x02da02da
100049a4:	02da02da 	.word	0x02da02da
100049a8:	02da02da 	.word	0x02da02da
100049ac:	02da02da 	.word	0x02da02da
100049b0:	02da02da 	.word	0x02da02da
100049b4:	02da02da 	.word	0x02da02da
100049b8:	01880186 	.word	0x01880186
100049bc:	018d018b 	.word	0x018d018b
100049c0:	02da018f 	.word	0x02da018f
100049c4:	02da02da 	.word	0x02da02da
100049c8:	02da02da 	.word	0x02da02da
100049cc:	02da02da 	.word	0x02da02da
100049d0:	02da02da 	.word	0x02da02da
100049d4:	02da02da 	.word	0x02da02da
100049d8:	011f011d 	.word	0x011f011d
100049dc:	01250122 	.word	0x01250122
100049e0:	012b0128 	.word	0x012b0128
100049e4:	0131012e 	.word	0x0131012e
100049e8:	01370134 	.word	0x01370134
100049ec:	013d013a 	.word	0x013d013a
100049f0:	0142013f 	.word	0x0142013f
100049f4:	013d0145 	.word	0x013d0145
100049f8:	01020100 	.word	0x01020100
100049fc:	01060104 	.word	0x01060104
10004a00:	010a0108 	.word	0x010a0108
10004a04:	010e010c 	.word	0x010e010c
10004a08:	01130111 	.word	0x01130111
10004a0c:	01170115 	.word	0x01170115
10004a10:	011b0119 	.word	0x011b0119
10004a14:	02da02da 	.word	0x02da02da
10004a18:	01b201ac 	.word	0x01b201ac
10004a1c:	01ba01ba 	.word	0x01ba01ba
10004a20:	01bc01bc 	.word	0x01bc01bc
10004a24:	02da01be 	.word	0x02da01be
10004a28:	02da02da 	.word	0x02da02da
10004a2c:	02da02da 	.word	0x02da02da
10004a30:	02da02da 	.word	0x02da02da
10004a34:	02da02da 	.word	0x02da02da
10004a38:	014802da 	.word	0x014802da
10004a3c:	014c014a 	.word	0x014c014a
10004a40:	0151014e 	.word	0x0151014e
10004a44:	01550153 	.word	0x01550153
10004a48:	015a0157 	.word	0x015a0157
10004a4c:	015e015c 	.word	0x015e015c
10004a50:	01630160 	.word	0x01630160
10004a54:	02da0165 	.word	0x02da0165
10004a58:	016702da 	.word	0x016702da
10004a5c:	016b0169 	.word	0x016b0169
10004a60:	0170016d 	.word	0x0170016d
10004a64:	01740172 	.word	0x01740172
10004a68:	01790176 	.word	0x01790176
10004a6c:	017d017b 	.word	0x017d017b
10004a70:	0182017f 	.word	0x0182017f
10004a74:	02da0184 	.word	0x02da0184
10004a78:	01c101b7 	.word	0x01c101b7
10004a7c:	01c501c3 	.word	0x01c501c3
10004a80:	01ca01c7 	.word	0x01ca01c7
10004a84:	01ce01cc 	.word	0x01ce01cc
10004a88:	01d301d0 	.word	0x01d301d0
10004a8c:	01d701d5 	.word	0x01d701d5
10004a90:	01dc01d9 	.word	0x01dc01d9
10004a94:	01e001de 	.word	0x01e001de
10004a98:	01e802da 	.word	0x01e802da
10004a9c:	01ec01ea 	.word	0x01ec01ea
10004aa0:	01f001ee 	.word	0x01f001ee
10004aa4:	01f401f2 	.word	0x01f401f2
10004aa8:	01f801f6 	.word	0x01f801f6
10004aac:	01fc01fa 	.word	0x01fc01fa
10004ab0:	020001fe 	.word	0x020001fe
10004ab4:	02040202 	.word	0x02040202
10004ab8:	02080206 	.word	0x02080206
10004abc:	020c020a 	.word	0x020c020a
10004ac0:	0210020e 	.word	0x0210020e
10004ac4:	02140212 	.word	0x02140212
10004ac8:	02180216 	.word	0x02180216
10004acc:	021c021a 	.word	0x021c021a
10004ad0:	0220021e 	.word	0x0220021e
10004ad4:	02240222 	.word	0x02240222
10004ad8:	02280226 	.word	0x02280226
10004adc:	022c022a 	.word	0x022c022a
10004ae0:	0230022e 	.word	0x0230022e
10004ae4:	02340232 	.word	0x02340232
10004ae8:	02380236 	.word	0x02380236
10004aec:	02da023a 	.word	0x02da023a
10004af0:	023e023c 	.word	0x023e023c
10004af4:	02420240 	.word	0x02420240
10004af8:	02da0244 	.word	0x02da0244
10004afc:	02da0246 	.word	0x02da0246
10004b00:	024a0248 	.word	0x024a0248
10004b04:	02c0024c 	.word	0x02c0024c
10004b08:	02da02c2 	.word	0x02da02c2
10004b0c:	02c602c4 	.word	0x02c602c4
10004b10:	02ca02c8 	.word	0x02ca02c8
10004b14:	02ce02cc 	.word	0x02ce02cc
10004b18:	02d202d0 	.word	0x02d202d0
10004b1c:	02d602d4 	.word	0x02d602d4
10004b20:	02da02d8 	.word	0x02da02d8
10004b24:	02da02da 	.word	0x02da02da
10004b28:	02da02da 	.word	0x02da02da
10004b2c:	02da02da 	.word	0x02da02da
10004b30:	02da02da 	.word	0x02da02da
10004b34:	02da02da 	.word	0x02da02da
10004b38:	02da02da 	.word	0x02da02da
10004b3c:	02da02da 	.word	0x02da02da
10004b40:	02da02da 	.word	0x02da02da
10004b44:	02da02da 	.word	0x02da02da
10004b48:	02da02da 	.word	0x02da02da
10004b4c:	02da02da 	.word	0x02da02da
10004b50:	02da02da 	.word	0x02da02da
10004b54:	02da02da 	.word	0x02da02da
10004b58:	02da02da 	.word	0x02da02da
10004b5c:	02da02da 	.word	0x02da02da
10004b60:	02da02da 	.word	0x02da02da
10004b64:	02da02da 	.word	0x02da02da
10004b68:	02da02da 	.word	0x02da02da
10004b6c:	02da02da 	.word	0x02da02da
10004b70:	01e202da 	.word	0x01e202da
10004b74:	01e601e4 	.word	0x01e601e4
10004b78:	48a6      	ldr	r0, [pc, #664]	; (10004e14 <porting_ble_err_code_t+0x4a8>)
10004b7a:	bd10      	pop	{r4, pc}
10004b7c:	48a6      	ldr	r0, [pc, #664]	; (10004e18 <porting_ble_err_code_t+0x4ac>)
10004b7e:	e7fc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b80:	48a6      	ldr	r0, [pc, #664]	; (10004e1c <porting_ble_err_code_t+0x4b0>)
10004b82:	e7fa      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b84:	48a6      	ldr	r0, [pc, #664]	; (10004e20 <porting_ble_err_code_t+0x4b4>)
10004b86:	e7f8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b88:	48a6      	ldr	r0, [pc, #664]	; (10004e24 <porting_ble_err_code_t+0x4b8>)
10004b8a:	e7f6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b8c:	48a6      	ldr	r0, [pc, #664]	; (10004e28 <porting_ble_err_code_t+0x4bc>)
10004b8e:	e7f4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b90:	48a6      	ldr	r0, [pc, #664]	; (10004e2c <porting_ble_err_code_t+0x4c0>)
10004b92:	e7f2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b94:	2081      	movs	r0, #129	; 0x81
10004b96:	00c0      	lsls	r0, r0, #3
10004b98:	e7ef      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b9a:	48a5      	ldr	r0, [pc, #660]	; (10004e30 <porting_ble_err_code_t+0x4c4>)
10004b9c:	e7ed      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004b9e:	48a5      	ldr	r0, [pc, #660]	; (10004e34 <porting_ble_err_code_t+0x4c8>)
10004ba0:	e7eb      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ba2:	48a5      	ldr	r0, [pc, #660]	; (10004e38 <porting_ble_err_code_t+0x4cc>)
10004ba4:	e7e9      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ba6:	48a5      	ldr	r0, [pc, #660]	; (10004e3c <porting_ble_err_code_t+0x4d0>)
10004ba8:	e7e7      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004baa:	48a5      	ldr	r0, [pc, #660]	; (10004e40 <porting_ble_err_code_t+0x4d4>)
10004bac:	e7e5      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bae:	48a5      	ldr	r0, [pc, #660]	; (10004e44 <porting_ble_err_code_t+0x4d8>)
10004bb0:	e7e3      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bb2:	48a5      	ldr	r0, [pc, #660]	; (10004e48 <porting_ble_err_code_t+0x4dc>)
10004bb4:	e7e1      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bb6:	2081      	movs	r0, #129	; 0x81
10004bb8:	0040      	lsls	r0, r0, #1
10004bba:	e7de      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bbc:	2012      	movs	r0, #18
10004bbe:	30ff      	adds	r0, #255	; 0xff
10004bc0:	e7db      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bc2:	2004      	movs	r0, #4
10004bc4:	30ff      	adds	r0, #255	; 0xff
10004bc6:	e7d8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bc8:	2089      	movs	r0, #137	; 0x89
10004bca:	0040      	lsls	r0, r0, #1
10004bcc:	e7d5      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bce:	2083      	movs	r0, #131	; 0x83
10004bd0:	0040      	lsls	r0, r0, #1
10004bd2:	e7d2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bd4:	2008      	movs	r0, #8
10004bd6:	30ff      	adds	r0, #255	; 0xff
10004bd8:	e7cf      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bda:	2084      	movs	r0, #132	; 0x84
10004bdc:	0040      	lsls	r0, r0, #1
10004bde:	e7cc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004be0:	200a      	movs	r0, #10
10004be2:	30ff      	adds	r0, #255	; 0xff
10004be4:	e7c9      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004be6:	2085      	movs	r0, #133	; 0x85
10004be8:	0040      	lsls	r0, r0, #1
10004bea:	e7c6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bec:	2006      	movs	r0, #6
10004bee:	30ff      	adds	r0, #255	; 0xff
10004bf0:	e7c3      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bf2:	4895      	ldr	r0, [pc, #596]	; (10004e48 <porting_ble_err_code_t+0x4dc>)
10004bf4:	e7c1      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bf6:	2002      	movs	r0, #2
10004bf8:	30ff      	adds	r0, #255	; 0xff
10004bfa:	e7be      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004bfc:	2014      	movs	r0, #20
10004bfe:	30ff      	adds	r0, #255	; 0xff
10004c00:	e7bb      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c02:	2086      	movs	r0, #134	; 0x86
10004c04:	0040      	lsls	r0, r0, #1
10004c06:	e7b8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c08:	4890      	ldr	r0, [pc, #576]	; (10004e4c <porting_ble_err_code_t+0x4e0>)
10004c0a:	e7b6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c0c:	4890      	ldr	r0, [pc, #576]	; (10004e50 <porting_ble_err_code_t+0x4e4>)
10004c0e:	e7b4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c10:	4890      	ldr	r0, [pc, #576]	; (10004e54 <porting_ble_err_code_t+0x4e8>)
10004c12:	e7b2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c14:	20c1      	movs	r0, #193	; 0xc1
10004c16:	0080      	lsls	r0, r0, #2
10004c18:	e7af      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c1a:	488f      	ldr	r0, [pc, #572]	; (10004e58 <porting_ble_err_code_t+0x4ec>)
10004c1c:	e7ad      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c1e:	488f      	ldr	r0, [pc, #572]	; (10004e5c <porting_ble_err_code_t+0x4f0>)
10004c20:	e7ab      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c22:	488f      	ldr	r0, [pc, #572]	; (10004e60 <porting_ble_err_code_t+0x4f4>)
10004c24:	e7a9      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c26:	20c2      	movs	r0, #194	; 0xc2
10004c28:	0080      	lsls	r0, r0, #2
10004c2a:	e7a6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c2c:	488d      	ldr	r0, [pc, #564]	; (10004e64 <porting_ble_err_code_t+0x4f8>)
10004c2e:	e7a4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c30:	488d      	ldr	r0, [pc, #564]	; (10004e68 <porting_ble_err_code_t+0x4fc>)
10004c32:	e7a2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c34:	488d      	ldr	r0, [pc, #564]	; (10004e6c <porting_ble_err_code_t+0x500>)
10004c36:	e7a0      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c38:	20c3      	movs	r0, #195	; 0xc3
10004c3a:	0080      	lsls	r0, r0, #2
10004c3c:	e79d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c3e:	488c      	ldr	r0, [pc, #560]	; (10004e70 <porting_ble_err_code_t+0x504>)
10004c40:	e79b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c42:	488c      	ldr	r0, [pc, #560]	; (10004e74 <porting_ble_err_code_t+0x508>)
10004c44:	e799      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c46:	4881      	ldr	r0, [pc, #516]	; (10004e4c <porting_ble_err_code_t+0x4e0>)
10004c48:	e797      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c4a:	4881      	ldr	r0, [pc, #516]	; (10004e50 <porting_ble_err_code_t+0x4e4>)
10004c4c:	e795      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c4e:	4881      	ldr	r0, [pc, #516]	; (10004e54 <porting_ble_err_code_t+0x4e8>)
10004c50:	e793      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c52:	20c1      	movs	r0, #193	; 0xc1
10004c54:	0080      	lsls	r0, r0, #2
10004c56:	e790      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c58:	487f      	ldr	r0, [pc, #508]	; (10004e58 <porting_ble_err_code_t+0x4ec>)
10004c5a:	e78e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c5c:	487f      	ldr	r0, [pc, #508]	; (10004e5c <porting_ble_err_code_t+0x4f0>)
10004c5e:	e78c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c60:	487f      	ldr	r0, [pc, #508]	; (10004e60 <porting_ble_err_code_t+0x4f4>)
10004c62:	e78a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c64:	20c2      	movs	r0, #194	; 0xc2
10004c66:	0080      	lsls	r0, r0, #2
10004c68:	e787      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c6a:	487e      	ldr	r0, [pc, #504]	; (10004e64 <porting_ble_err_code_t+0x4f8>)
10004c6c:	e785      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c6e:	487e      	ldr	r0, [pc, #504]	; (10004e68 <porting_ble_err_code_t+0x4fc>)
10004c70:	e783      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c72:	487e      	ldr	r0, [pc, #504]	; (10004e6c <porting_ble_err_code_t+0x500>)
10004c74:	e781      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c76:	20c3      	movs	r0, #195	; 0xc3
10004c78:	0080      	lsls	r0, r0, #2
10004c7a:	e77e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c7c:	487c      	ldr	r0, [pc, #496]	; (10004e70 <porting_ble_err_code_t+0x504>)
10004c7e:	e77c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c80:	487c      	ldr	r0, [pc, #496]	; (10004e74 <porting_ble_err_code_t+0x508>)
10004c82:	e77a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c84:	487c      	ldr	r0, [pc, #496]	; (10004e78 <porting_ble_err_code_t+0x50c>)
10004c86:	e778      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c88:	20c4      	movs	r0, #196	; 0xc4
10004c8a:	0080      	lsls	r0, r0, #2
10004c8c:	e775      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c8e:	487b      	ldr	r0, [pc, #492]	; (10004e7c <porting_ble_err_code_t+0x510>)
10004c90:	e773      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c92:	487b      	ldr	r0, [pc, #492]	; (10004e80 <porting_ble_err_code_t+0x514>)
10004c94:	e771      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c96:	487b      	ldr	r0, [pc, #492]	; (10004e84 <porting_ble_err_code_t+0x518>)
10004c98:	e76f      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c9a:	487b      	ldr	r0, [pc, #492]	; (10004e88 <porting_ble_err_code_t+0x51c>)
10004c9c:	e76d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004c9e:	487b      	ldr	r0, [pc, #492]	; (10004e8c <porting_ble_err_code_t+0x520>)
10004ca0:	e76b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ca2:	487b      	ldr	r0, [pc, #492]	; (10004e90 <porting_ble_err_code_t+0x524>)
10004ca4:	e769      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ca6:	2081      	movs	r0, #129	; 0x81
10004ca8:	0080      	lsls	r0, r0, #2
10004caa:	e766      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cac:	4879      	ldr	r0, [pc, #484]	; (10004e94 <porting_ble_err_code_t+0x528>)
10004cae:	e764      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cb0:	4879      	ldr	r0, [pc, #484]	; (10004e98 <porting_ble_err_code_t+0x52c>)
10004cb2:	e762      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cb4:	4879      	ldr	r0, [pc, #484]	; (10004e9c <porting_ble_err_code_t+0x530>)
10004cb6:	e760      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cb8:	2082      	movs	r0, #130	; 0x82
10004cba:	0080      	lsls	r0, r0, #2
10004cbc:	e75d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cbe:	4878      	ldr	r0, [pc, #480]	; (10004ea0 <porting_ble_err_code_t+0x534>)
10004cc0:	e75b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cc2:	4878      	ldr	r0, [pc, #480]	; (10004ea4 <porting_ble_err_code_t+0x538>)
10004cc4:	e759      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cc6:	4878      	ldr	r0, [pc, #480]	; (10004ea8 <porting_ble_err_code_t+0x53c>)
10004cc8:	e757      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cca:	2083      	movs	r0, #131	; 0x83
10004ccc:	0080      	lsls	r0, r0, #2
10004cce:	e754      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cd0:	4876      	ldr	r0, [pc, #472]	; (10004eac <porting_ble_err_code_t+0x540>)
10004cd2:	e752      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cd4:	4876      	ldr	r0, [pc, #472]	; (10004eb0 <porting_ble_err_code_t+0x544>)
10004cd6:	e750      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cd8:	4876      	ldr	r0, [pc, #472]	; (10004eb4 <porting_ble_err_code_t+0x548>)
10004cda:	e74e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cdc:	2084      	movs	r0, #132	; 0x84
10004cde:	0080      	lsls	r0, r0, #2
10004ce0:	e74b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ce2:	4875      	ldr	r0, [pc, #468]	; (10004eb8 <porting_ble_err_code_t+0x54c>)
10004ce4:	e749      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ce6:	20a0      	movs	r0, #160	; 0xa0
10004ce8:	0080      	lsls	r0, r0, #2
10004cea:	e746      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cec:	4868      	ldr	r0, [pc, #416]	; (10004e90 <porting_ble_err_code_t+0x524>)
10004cee:	e744      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cf0:	486c      	ldr	r0, [pc, #432]	; (10004ea4 <porting_ble_err_code_t+0x538>)
10004cf2:	e742      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cf4:	20a4      	movs	r0, #164	; 0xa4
10004cf6:	0080      	lsls	r0, r0, #2
10004cf8:	e73f      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cfa:	4870      	ldr	r0, [pc, #448]	; (10004ebc <porting_ble_err_code_t+0x550>)
10004cfc:	e73d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004cfe:	4870      	ldr	r0, [pc, #448]	; (10004ec0 <porting_ble_err_code_t+0x554>)
10004d00:	e73b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d02:	4870      	ldr	r0, [pc, #448]	; (10004ec4 <porting_ble_err_code_t+0x558>)
10004d04:	e739      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d06:	20a1      	movs	r0, #161	; 0xa1
10004d08:	0080      	lsls	r0, r0, #2
10004d0a:	e736      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d0c:	486e      	ldr	r0, [pc, #440]	; (10004ec8 <porting_ble_err_code_t+0x55c>)
10004d0e:	e734      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d10:	486e      	ldr	r0, [pc, #440]	; (10004ecc <porting_ble_err_code_t+0x560>)
10004d12:	e732      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d14:	486e      	ldr	r0, [pc, #440]	; (10004ed0 <porting_ble_err_code_t+0x564>)
10004d16:	e730      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d18:	20a2      	movs	r0, #162	; 0xa2
10004d1a:	0080      	lsls	r0, r0, #2
10004d1c:	e72d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d1e:	486d      	ldr	r0, [pc, #436]	; (10004ed4 <porting_ble_err_code_t+0x568>)
10004d20:	e72b      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d22:	486d      	ldr	r0, [pc, #436]	; (10004ed8 <porting_ble_err_code_t+0x56c>)
10004d24:	e729      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d26:	486d      	ldr	r0, [pc, #436]	; (10004edc <porting_ble_err_code_t+0x570>)
10004d28:	e727      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d2a:	20a3      	movs	r0, #163	; 0xa3
10004d2c:	0080      	lsls	r0, r0, #2
10004d2e:	e724      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d30:	486b      	ldr	r0, [pc, #428]	; (10004ee0 <porting_ble_err_code_t+0x574>)
10004d32:	e722      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d34:	486b      	ldr	r0, [pc, #428]	; (10004ee4 <porting_ble_err_code_t+0x578>)
10004d36:	e720      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d38:	486b      	ldr	r0, [pc, #428]	; (10004ee8 <porting_ble_err_code_t+0x57c>)
10004d3a:	e71e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d3c:	486b      	ldr	r0, [pc, #428]	; (10004eec <porting_ble_err_code_t+0x580>)
10004d3e:	e71c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d40:	486b      	ldr	r0, [pc, #428]	; (10004ef0 <porting_ble_err_code_t+0x584>)
10004d42:	e71a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d44:	486b      	ldr	r0, [pc, #428]	; (10004ef4 <porting_ble_err_code_t+0x588>)
10004d46:	e718      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d48:	2001      	movs	r0, #1
10004d4a:	e716      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d4c:	2002      	movs	r0, #2
10004d4e:	e714      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d50:	2003      	movs	r0, #3
10004d52:	e712      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d54:	2004      	movs	r0, #4
10004d56:	e710      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d58:	2005      	movs	r0, #5
10004d5a:	e70e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d5c:	2006      	movs	r0, #6
10004d5e:	e70c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d60:	2007      	movs	r0, #7
10004d62:	e70a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d64:	2008      	movs	r0, #8
10004d66:	e708      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d68:	2009      	movs	r0, #9
10004d6a:	e706      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d6c:	200a      	movs	r0, #10
10004d6e:	e704      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d70:	200b      	movs	r0, #11
10004d72:	e702      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d74:	200c      	movs	r0, #12
10004d76:	e700      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d78:	200d      	movs	r0, #13
10004d7a:	e6fe      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d7c:	200e      	movs	r0, #14
10004d7e:	e6fc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d80:	200f      	movs	r0, #15
10004d82:	e6fa      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d84:	2010      	movs	r0, #16
10004d86:	e6f8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d88:	2011      	movs	r0, #17
10004d8a:	e6f6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d8c:	2012      	movs	r0, #18
10004d8e:	e6f4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d90:	2013      	movs	r0, #19
10004d92:	e6f2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d94:	2014      	movs	r0, #20
10004d96:	e6f0      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d98:	2015      	movs	r0, #21
10004d9a:	e6ee      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004d9c:	2016      	movs	r0, #22
10004d9e:	e6ec      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004da0:	2017      	movs	r0, #23
10004da2:	e6ea      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004da4:	2018      	movs	r0, #24
10004da6:	e6e8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004da8:	2019      	movs	r0, #25
10004daa:	e6e6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dac:	201a      	movs	r0, #26
10004dae:	e6e4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004db0:	201b      	movs	r0, #27
10004db2:	e6e2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004db4:	201c      	movs	r0, #28
10004db6:	e6e0      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004db8:	201d      	movs	r0, #29
10004dba:	e6de      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dbc:	201e      	movs	r0, #30
10004dbe:	e6dc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dc0:	201f      	movs	r0, #31
10004dc2:	e6da      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dc4:	2020      	movs	r0, #32
10004dc6:	e6d8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dc8:	2021      	movs	r0, #33	; 0x21
10004dca:	e6d6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dcc:	2022      	movs	r0, #34	; 0x22
10004dce:	e6d4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dd0:	2023      	movs	r0, #35	; 0x23
10004dd2:	e6d2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dd4:	2024      	movs	r0, #36	; 0x24
10004dd6:	e6d0      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dd8:	2025      	movs	r0, #37	; 0x25
10004dda:	e6ce      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004ddc:	2026      	movs	r0, #38	; 0x26
10004dde:	e6cc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004de0:	2027      	movs	r0, #39	; 0x27
10004de2:	e6ca      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004de4:	2028      	movs	r0, #40	; 0x28
10004de6:	e6c8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004de8:	2029      	movs	r0, #41	; 0x29
10004dea:	e6c6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dec:	202a      	movs	r0, #42	; 0x2a
10004dee:	e6c4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004df0:	202c      	movs	r0, #44	; 0x2c
10004df2:	e6c2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004df4:	202d      	movs	r0, #45	; 0x2d
10004df6:	e6c0      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004df8:	202e      	movs	r0, #46	; 0x2e
10004dfa:	e6be      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004dfc:	202f      	movs	r0, #47	; 0x2f
10004dfe:	e6bc      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e00:	2030      	movs	r0, #48	; 0x30
10004e02:	e6ba      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e04:	2032      	movs	r0, #50	; 0x32
10004e06:	e6b8      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e08:	2034      	movs	r0, #52	; 0x34
10004e0a:	e6b6      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e0c:	2035      	movs	r0, #53	; 0x35
10004e0e:	e6b4      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e10:	2036      	movs	r0, #54	; 0x36
10004e12:	e6b2      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004e14:	00000401 	.word	0x00000401
10004e18:	00000402 	.word	0x00000402
10004e1c:	00000403 	.word	0x00000403
10004e20:	00000404 	.word	0x00000404
10004e24:	00000405 	.word	0x00000405
10004e28:	00000406 	.word	0x00000406
10004e2c:	00000407 	.word	0x00000407
10004e30:	00000409 	.word	0x00000409
10004e34:	0000040a 	.word	0x0000040a
10004e38:	0000040b 	.word	0x0000040b
10004e3c:	0000040c 	.word	0x0000040c
10004e40:	0000040d 	.word	0x0000040d
10004e44:	000004ff 	.word	0x000004ff
10004e48:	000001ff 	.word	0x000001ff
10004e4c:	00000301 	.word	0x00000301
10004e50:	00000302 	.word	0x00000302
10004e54:	00000303 	.word	0x00000303
10004e58:	00000305 	.word	0x00000305
10004e5c:	00000306 	.word	0x00000306
10004e60:	00000307 	.word	0x00000307
10004e64:	00000309 	.word	0x00000309
10004e68:	0000030a 	.word	0x0000030a
10004e6c:	0000030b 	.word	0x0000030b
10004e70:	0000030d 	.word	0x0000030d
10004e74:	0000030e 	.word	0x0000030e
10004e78:	000003ff 	.word	0x000003ff
10004e7c:	00000311 	.word	0x00000311
10004e80:	00000312 	.word	0x00000312
10004e84:	00000313 	.word	0x00000313
10004e88:	00000201 	.word	0x00000201
10004e8c:	00000202 	.word	0x00000202
10004e90:	00000203 	.word	0x00000203
10004e94:	00000205 	.word	0x00000205
10004e98:	00000206 	.word	0x00000206
10004e9c:	00000207 	.word	0x00000207
10004ea0:	00000209 	.word	0x00000209
10004ea4:	0000020a 	.word	0x0000020a
10004ea8:	0000020b 	.word	0x0000020b
10004eac:	0000020d 	.word	0x0000020d
10004eb0:	0000020e 	.word	0x0000020e
10004eb4:	0000020f 	.word	0x0000020f
10004eb8:	00000211 	.word	0x00000211
10004ebc:	00000281 	.word	0x00000281
10004ec0:	00000282 	.word	0x00000282
10004ec4:	00000283 	.word	0x00000283
10004ec8:	00000285 	.word	0x00000285
10004ecc:	00000286 	.word	0x00000286
10004ed0:	00000287 	.word	0x00000287
10004ed4:	00000289 	.word	0x00000289
10004ed8:	0000028a 	.word	0x0000028a
10004edc:	0000028b 	.word	0x0000028b
10004ee0:	0000028d 	.word	0x0000028d
10004ee4:	0000028e 	.word	0x0000028e
10004ee8:	0000028f 	.word	0x0000028f
10004eec:	000002fd 	.word	0x000002fd
10004ef0:	000002fe 	.word	0x000002fe
10004ef4:	000002ff 	.word	0x000002ff
10004ef8:	2037      	movs	r0, #55	; 0x37
10004efa:	e63e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004efc:	2038      	movs	r0, #56	; 0x38
10004efe:	e63c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f00:	203a      	movs	r0, #58	; 0x3a
10004f02:	e63a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f04:	203b      	movs	r0, #59	; 0x3b
10004f06:	e638      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f08:	203c      	movs	r0, #60	; 0x3c
10004f0a:	e636      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f0c:	203d      	movs	r0, #61	; 0x3d
10004f0e:	e634      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f10:	203e      	movs	r0, #62	; 0x3e
10004f12:	e632      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f14:	20ff      	movs	r0, #255	; 0xff
10004f16:	e630      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f18:	2040      	movs	r0, #64	; 0x40
10004f1a:	e62e      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f1c:	2041      	movs	r0, #65	; 0x41
10004f1e:	e62c      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f20:	2042      	movs	r0, #66	; 0x42
10004f22:	e62a      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f24:	2043      	movs	r0, #67	; 0x43
10004f26:	e628      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f28:	2044      	movs	r0, #68	; 0x44
10004f2a:	e626      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f2c:	2100      	movs	r1, #0
10004f2e:	4b04      	ldr	r3, [pc, #16]	; (10004f40 <porting_ble_err_code_t+0x5d4>)
10004f30:	4a04      	ldr	r2, [pc, #16]	; (10004f44 <porting_ble_err_code_t+0x5d8>)
10004f32:	4c05      	ldr	r4, [pc, #20]	; (10004f48 <porting_ble_err_code_t+0x5dc>)
10004f34:	47a0      	blx	r4
10004f36:	4805      	ldr	r0, [pc, #20]	; (10004f4c <porting_ble_err_code_t+0x5e0>)
10004f38:	e61f      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f3a:	2000      	movs	r0, #0
10004f3c:	e61d      	b.n	10004b7a <porting_ble_err_code_t+0x20e>
10004f3e:	46c0      	nop			; (mov r8, r8)
10004f40:	00000223 	.word	0x00000223
10004f44:	100067e4 	.word	0x100067e4
10004f48:	00006641 	.word	0x00006641
10004f4c:	000004ff 	.word	0x000004ff

10004f50 <porting_co_error>:
10004f50:	b570      	push	{r4, r5, r6, lr}
10004f52:	0a03      	lsrs	r3, r0, #8
10004f54:	0004      	movs	r4, r0
10004f56:	2b00      	cmp	r3, #0
10004f58:	d006      	beq.n	10004f68 <porting_co_error+0x18>
10004f5a:	2b03      	cmp	r3, #3
10004f5c:	d006      	beq.n	10004f6c <porting_co_error+0x1c>
10004f5e:	2100      	movs	r1, #0
10004f60:	4b09      	ldr	r3, [pc, #36]	; (10004f88 <porting_co_error+0x38>)
10004f62:	4a0a      	ldr	r2, [pc, #40]	; (10004f8c <porting_co_error+0x3c>)
10004f64:	4d0a      	ldr	r5, [pc, #40]	; (10004f90 <porting_co_error+0x40>)
10004f66:	47a8      	blx	r5
10004f68:	b2e0      	uxtb	r0, r4
10004f6a:	e00b      	b.n	10004f84 <porting_co_error+0x34>
10004f6c:	0001      	movs	r1, r0
10004f6e:	2202      	movs	r2, #2
10004f70:	4b08      	ldr	r3, [pc, #32]	; (10004f94 <porting_co_error+0x44>)
10004f72:	2011      	movs	r0, #17
10004f74:	4391      	bics	r1, r2
10004f76:	4299      	cmp	r1, r3
10004f78:	d004      	beq.n	10004f84 <porting_co_error+0x34>
10004f7a:	4b07      	ldr	r3, [pc, #28]	; (10004f98 <porting_co_error+0x48>)
10004f7c:	2011      	movs	r0, #17
10004f7e:	429c      	cmp	r4, r3
10004f80:	d000      	beq.n	10004f84 <porting_co_error+0x34>
10004f82:	380c      	subs	r0, #12
10004f84:	bd70      	pop	{r4, r5, r6, pc}
10004f86:	46c0      	nop			; (mov r8, r8)
10004f88:	00000422 	.word	0x00000422
10004f8c:	100067e4 	.word	0x100067e4
10004f90:	00006641 	.word	0x00006641
10004f94:	00000305 	.word	0x00000305
10004f98:	00000312 	.word	0x00000312

10004f9c <framework_set_llm_env_rand_addr>:
10004f9c:	b510      	push	{r4, lr}
10004f9e:	0001      	movs	r1, r0
10004fa0:	4803      	ldr	r0, [pc, #12]	; (10004fb0 <framework_set_llm_env_rand_addr+0x14>)
10004fa2:	2206      	movs	r2, #6
10004fa4:	308f      	adds	r0, #143	; 0x8f
10004fa6:	30ff      	adds	r0, #255	; 0xff
10004fa8:	f000 f852 	bl	10005050 <__memcpy_veneer>
10004fac:	bd10      	pop	{r4, pc}
10004fae:	46c0      	nop			; (mov r8, r8)
10004fb0:	200012cc 	.word	0x200012cc

10004fb4 <__gnu_thumb1_case_sqi>:
10004fb4:	b402      	push	{r1}
10004fb6:	4671      	mov	r1, lr
10004fb8:	0849      	lsrs	r1, r1, #1
10004fba:	0049      	lsls	r1, r1, #1
10004fbc:	5609      	ldrsb	r1, [r1, r0]
10004fbe:	0049      	lsls	r1, r1, #1
10004fc0:	448e      	add	lr, r1
10004fc2:	bc02      	pop	{r1}
10004fc4:	4770      	bx	lr
10004fc6:	46c0      	nop			; (mov r8, r8)

10004fc8 <__popcountsi2>:
10004fc8:	4a09      	ldr	r2, [pc, #36]	; (10004ff0 <__popcountsi2+0x28>)
10004fca:	0843      	lsrs	r3, r0, #1
10004fcc:	4013      	ands	r3, r2
10004fce:	1ac0      	subs	r0, r0, r3
10004fd0:	0003      	movs	r3, r0
10004fd2:	4a08      	ldr	r2, [pc, #32]	; (10004ff4 <__popcountsi2+0x2c>)
10004fd4:	0880      	lsrs	r0, r0, #2
10004fd6:	4010      	ands	r0, r2
10004fd8:	4013      	ands	r3, r2
10004fda:	181b      	adds	r3, r3, r0
10004fdc:	0918      	lsrs	r0, r3, #4
10004fde:	18c0      	adds	r0, r0, r3
10004fe0:	4b05      	ldr	r3, [pc, #20]	; (10004ff8 <__popcountsi2+0x30>)
10004fe2:	4003      	ands	r3, r0
10004fe4:	0218      	lsls	r0, r3, #8
10004fe6:	18c0      	adds	r0, r0, r3
10004fe8:	0403      	lsls	r3, r0, #16
10004fea:	18c0      	adds	r0, r0, r3
10004fec:	0e00      	lsrs	r0, r0, #24
10004fee:	4770      	bx	lr
10004ff0:	55555555 	.word	0x55555555
10004ff4:	33333333 	.word	0x33333333
10004ff8:	0f0f0f0f 	.word	0x0f0f0f0f

10004ffc <__libc_init_array>:
10004ffc:	b570      	push	{r4, r5, r6, lr}
10004ffe:	4d0c      	ldr	r5, [pc, #48]	; (10005030 <__libc_init_array+0x34>)
10005000:	4e0c      	ldr	r6, [pc, #48]	; (10005034 <__libc_init_array+0x38>)
10005002:	1b76      	subs	r6, r6, r5
10005004:	10b6      	asrs	r6, r6, #2
10005006:	d005      	beq.n	10005014 <__libc_init_array+0x18>
10005008:	2400      	movs	r4, #0
1000500a:	cd08      	ldmia	r5!, {r3}
1000500c:	3401      	adds	r4, #1
1000500e:	4798      	blx	r3
10005010:	42a6      	cmp	r6, r4
10005012:	d1fa      	bne.n	1000500a <__libc_init_array+0xe>
10005014:	f7fb f82c 	bl	10000070 <_init>
10005018:	4d07      	ldr	r5, [pc, #28]	; (10005038 <__libc_init_array+0x3c>)
1000501a:	4e08      	ldr	r6, [pc, #32]	; (1000503c <__libc_init_array+0x40>)
1000501c:	1b76      	subs	r6, r6, r5
1000501e:	10b6      	asrs	r6, r6, #2
10005020:	d005      	beq.n	1000502e <__libc_init_array+0x32>
10005022:	2400      	movs	r4, #0
10005024:	cd08      	ldmia	r5!, {r3}
10005026:	3401      	adds	r4, #1
10005028:	4798      	blx	r3
1000502a:	42a6      	cmp	r6, r4
1000502c:	d1fa      	bne.n	10005024 <__libc_init_array+0x28>
1000502e:	bd70      	pop	{r4, r5, r6, pc}
10005030:	20014b1c 	.word	0x20014b1c
10005034:	20014b1c 	.word	0x20014b1c
10005038:	20014b1c 	.word	0x20014b1c
1000503c:	20014b5c 	.word	0x20014b5c

10005040 <____gnu_thumb1_case_uhi_veneer>:
10005040:	b401      	push	{r0}
10005042:	4802      	ldr	r0, [pc, #8]	; (1000504c <____gnu_thumb1_case_uhi_veneer+0xc>)
10005044:	4684      	mov	ip, r0
10005046:	bc01      	pop	{r0}
10005048:	4760      	bx	ip
1000504a:	bf00      	nop
1000504c:	0002ed29 	.word	0x0002ed29

10005050 <__memcpy_veneer>:
10005050:	b401      	push	{r0}
10005052:	4802      	ldr	r0, [pc, #8]	; (1000505c <__memcpy_veneer+0xc>)
10005054:	4684      	mov	ip, r0
10005056:	bc01      	pop	{r0}
10005058:	4760      	bx	ip
1000505a:	bf00      	nop
1000505c:	00005821 	.word	0x00005821

10005060 <____gnu_thumb1_case_uqi_veneer>:
10005060:	b401      	push	{r0}
10005062:	4802      	ldr	r0, [pc, #8]	; (1000506c <____gnu_thumb1_case_uqi_veneer+0xc>)
10005064:	4684      	mov	ip, r0
10005066:	bc01      	pop	{r0}
10005068:	4760      	bx	ip
1000506a:	bf00      	nop
1000506c:	0002ed01 	.word	0x0002ed01

10005070 <app_version>:
10005070:	76655224 6f697369 41203a6e 56207070     $Revision: App V
10005080:	69737265 30206e6f 302e302e 2420392e     ersion 0.0.0.9 $
	...

10005091 <atmosic_sdk_ver>:
10005091:	76655224 6f697369 53203a6e 56204b44     $Revision: SDK V
100050a1:	69737265 35206e6f 302e332e 5b002420     ersion 5.3.0 $.[
100050b1:	2e303125 5d733031 395b1b5b 1b576d35     %10.10s][.[95mW.
100050c1:	5d6d305b 6e49203a 696c6176 61442064     [0m]: Invalid Da
100050d1:	50206174 656b6361                        ta Packet.

100050db <M_NAME>:
100050db:	636e756c 61705f68 72657372 332e3500     lunch_parser.5.3
100050eb:	5300302e 56204b44 69737265 203a6e6f     .0.SDK Version: 
100050fb:	30007325 302e302e 4100392e 56205050     %s.0.0.0.9.APP V
1000510b:	69737265 203a6e6f 5b007325 2e303125     ersion: %s.[%10.
1000511b:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
1000512b:	7325203a 74786500 65646e65 63002072     : %s.extender .c
1000513b:	62696c61 6f746172 255b0072 312e3031     alibrator.[%10.1
1000514b:	5b5d7330 32395b1b 5b1b446d 3a5d6d30     0s][.[92mD.[0m]:
1000515b:	696e4920 676e6974 206e6920 6d207325      Initing in %s m
1000516b:	0065646f 3031255b 7330312e 5b1b5b5d     ode.[%10.10s][.[
1000517b:	446d3239 6d305b1b 42203a5d 7220454c     92mD.[0m]: BLE r
1000518b:	61747365 64207472 74617275 206e6f69     estart duration 
1000519b:	29736d28 6c25203a 255b0075 312e3031     (ms): %lu.[%10.1
100051ab:	5b5d7330 32395b1b 5b1b446d 3a5d6d30     0s][.[92mD.[0m]:
100051bb:	56444120 61747320 63206574 676e6168      ADV state chang
100051cb:	25203a65 255b0064 312e3031 5b5d7330     e: %d.[%10.10s][
100051db:	32395b1b 5b1b446d 3a5d6d30 686e5520     .[92mD.[0m]: Unh
100051eb:	6c646e61 73206465 65746174 25203d20     andled state = %
100051fb:	255b0064 312e3031 5b5d7330 31395b1b     d.[%10.10s][.[91
1000520b:	5b1b456d 3a5d6d30 20732520 6c696146     mE.[0m]: %s Fail
1000521b:	206f7420 72617473 63732074 25206e61      to start scan %
1000522b:	255b0064 312e3031 5b5d7330 31395b1b     d.[%10.10s][.[91
1000523b:	5b1b456d 3a5d6d30 20732520 6c696146     mE.[0m]: %s Fail
1000524b:	206f7420 656c6564 61206574 25207664      to delete adv %
1000525b:	5b007823 2e303125 5d733031 395b1b5b     #x.[%10.10s][.[9
1000526b:	1b446d32 5d6d305b 7325203a 564e203a     2mD.[0m]: %s: NV
1000527b:	74205344 66206761 6120726f 73207664     DS tag for adv s
1000528b:	74726174 72617020 6e206d61 6620746f     tart param not f
1000529b:	646e756f 7355202e 20676e69 61666544     ound. Using Defa
100052ab:	00746c75 3031255b 7330312e 5b1b5b5d     ult.[%10.10s][.[
100052bb:	456d3139 6d305b1b 25203a5d 46203a73     91mE.[0m]: %s: F
100052cb:	656c6961 6f742064 61747320 61207472     ailed to start a
100052db:	77207664 20687469 74617473 25207375     dv with status %
100052eb:	5b007823 2e303125 5d733031 395b1b5b     #x.[%10.10s][.[9
100052fb:	1b446d32 5d6d305b 7325203a 564e203a     2mD.[0m]: %s: NV
1000530b:	74205344 66206761 6320726f 74616572     DS tag for creat
1000531b:	64612065 61702076 206d6172 20746f6e     e adv param not 
1000532b:	6e756f66 55202e64 676e6973 66654420     found. Using Def
1000533b:	746c7561 31255b00 30312e30 1b5b5d73     ault.[%10.10s][.
1000534b:	6d31395b 305b1b45 203a5d6d 203a7325     [91mE.[0m]: %s: 
1000535b:	6c696146 74206465 7263206f 65746165     Failed to create
1000536b:	76646120 78232520 31255b00 30312e30      adv %#x.[%10.10
1000537b:	1b5b5d73 6d31395b 305b1b45 203a5d6d     s][.[91mE.[0m]: 
1000538b:	46207325 206c6961 63206f74 74616572     %s Fail to creat
1000539b:	6e612065 74732064 20747261 6e616373     e and start scan
100053ab:	00642520 636e756c 63735f68 656e6e61      %d.lunch_scanne
100053bb:	65705f72 68706972 6c617265 5b00632e     r_peripheral.c.[
100053cb:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
100053db:	5d6d305b 6f4e203a 74616420 6e692061     [0m]: No data in
100053eb:	70616d20 31255b00 30312e30 1b5b5d73      map.[%10.10s][.
100053fb:	6d32395b 305b1b44 203a5d6d 657a6953     [92mD.[0m]: Size
1000540b:	7525203a 31255b00 30312e30 1b5b5d73     : %u.[%10.10s][.
1000541b:	6d32395b 305b1b44 203a5d6d 25207825     [92mD.[0m]: %x %
1000542b:	78252078 20782520 25207825 78252078     x %x %x %x %x %x
1000543b:	20782520 25207825 78252078 20782520      %x %x %x %x %x 
1000544b:	25207825 78252078 20782520 25207825     %x %x %x %x %x %
1000545b:	78252078 00782520 3031255b 7330312e     x %x %x.[%10.10s
1000546b:	5b1b5b5d 446d3239 6d305b1b 4f203a5d     ][.[92mD.[0m]: O
1000547b:	75707475 73252074 646e6120 20732520     utput %s and %s 
1000548b:	20646e61 61207325 2520646e 255b0073     and %s and %s.[%
1000549b:	312e3031 5b5d7330 31395b1b 5b1b456d     10.10s][.[91mE.[
100054ab:	3a5d6d30 3a732520 74655320 76646120     0m]: %s: Set adv
100054bb:	74616420 61662061 64656c69 2325203a      data failed: %#
100054cb:	73750078 6d5f7265 286e6961 6f642029     x.user_main() do
100054db:	ff00656e 01000000 45000000 5954504d     ne.........EMPTY
	...

100054ed <M_NAME>:
100054ed:	636e756c 65705f68 68706972               lunch_periph...

100054fc <__ac_prime_list>:
100054fc:	00000000 00000003 0000000b 00000017     ................
1000550c:	00000035 00000061 000000c1 00000185     5...a...........
1000551c:	00000301 00000607 00000c07 00001807     ................
1000552c:	00003001 00006011 0000c005 0001800d     .0...`..........
1000553c:	00030005 00060019 000c0001 00180005     ................
1000554c:	0030000b 0060000d 00c00005 01800013     ..0...`.........
1000555c:	03000005 06000017 0c000013 18000005     ................
1000556c:	30000059 60000005 c0000001 fffffffb     Y..0...`........

1000557c <__func__.1>:
1000557c:	69726570 735f6870 74726174 6163735f     periph_start_sca
1000558c:	                                         n.

1000558e <__func__.10>:
1000558e:	69726570 645f6870 74656c65 64615f65     periph_delete_ad
1000559e:	                                         v.

100055a0 <__func__.11>:
100055a0:	69726570 725f6870 61747365 735f7472     periph_restart_s
100055b0:	006e6163                                can.

100055b4 <__func__.3>:
100055b4:	69726570 735f6870 5f6e6163               periph_scan_on.

100055c3 <__func__.4>:
100055c3:	69726570 755f6870 636f6c6e 69685f6b     periph_unlock_hi
100055d3:	6e726562 6f697461                        bernation.

100055dd <__func__.5>:
100055dd:	69726570 635f6870 74616572 64615f65     periph_create_ad
100055ed:	                                         v.

100055ef <__func__.6>:
100055ef:	69726570 735f6870 615f7465 645f7664     periph_set_adv_d
100055ff:	00617461                                ata.

10005603 <__func__.8>:
10005603:	69726570 735f6870 74726174 7664615f     periph_start_adv
	...

10005614 <__func__.9>:
10005614:	69726570 615f6870 6f5f7664 0000006e     periph_adv_on...

10005624 <gap_callbacks.0>:
10005624:	10000849 00000000 00000000 00000000     I...............
10005634:	100003c5 00000000 00000000 00000000     ................
10005644:	00000000                                ....

10005648 <s_tbl.12>:
10005648:	00020000 1000055d 00030102 100004ed     ....]...........
10005658:	00040803 10000801 00010904 100007a9     ................
10005668:	00050a04 10000499 00060205 10000a99     ................
10005678:	00070306 10000449 00080507 100001f1     ....I...........
10005688:	00090608 10000415 00010709 100007a9     ................
10005698:	00030b01 100003d5                       ........

100056a0 <scan_callbacks.2>:
	...
100056a8:	1000052d 10000789 44524148 55414620     -.......HARD FAU
100056b8:	0021544c 3a307220 38302520 2020786c     LT!. r0: %08lx  
100056c8:	203a3172 6c383025 72202078 25203a32     r1: %08lx  r2: %
100056d8:	786c3830 20202020 203a3372 6c383025     08lx    r3: %08l
100056e8:	72000a78 203a3231 6c383025 6c202078     x..r12: %08lx  l
100056f8:	25203a72 786c3830 63702020 3025203a     r: %08lx  pc: %0
10005708:	20786c38 53507820 25203a52 786c3830     8lx  xPSR: %08lx
10005718:	4f52000a 72655f4d 61746172 2e30315f     ..ROM_errata_10.
10005728:	52410063 5f594152 284e454c 63746170     c.ARRAY_LEN(patc
10005738:	5f646568 5f636c6c 5f67736d 5f6c6468     hed_llc_msg_hdl_
10005748:	29626174 203d3d20 4b534154 5345445f     tab) == TASK_DES
10005758:	4c4c5f43 736d2e43 6e635f67 79640074     C_LLC.msg_cnt.dy
10005768:	696d616e 6f6d2063 25206564 70202c64     namic mode %d, p
10005778:	6f4d6572 25206564 4f520064 72655f4d     reMode %d.ROM_er
10005788:	61746172 2e36315f 52410063 5f594152     rata_16.c.ARRAY_
10005798:	284e454c 63746170 5f646568 5f6d6c6c     LEN(patched_llm_
100057a8:	5f67736d 5f6c6468 29626174 203d3d20     msg_hdl_tab) == 
100057b8:	4b534154 5345445f 4c4c5f43 736d2e4d     TASK_DESC_LLM.ms
100057c8:	6e635f67 77730074 6d69745f 203a7265     g_cnt.sw_timer: 
100057d8:	2067736d 75206f74 6f6e6b6e 69206e77     msg to unknown i
100057e8:	75252064 74736420 20752520 6d6f7266     d %u dst %u from
100057f8:	00752520 745f7773 72656d69 736d203a      %u.sw_timer: ms
10005808:	69772067 62206874 74206461 72656d69     g with bad timer
10005818:	2064695f 73007525 69745f77 3a72656d     _id %u.sw_timer:
10005828:	67736d20 74697720 72662068 74206565      msg with free t
10005838:	72656d69 2064695f 73007525 69745f77     imer_id %u.sw_ti
10005848:	2e72656d 77730063 6d69745f 665f7265     mer.c.sw_timer_f
10005858:	5f656572 64616568 203d3d20 4c4c554e     ree_head == NULL
10005868:	5f777300 656d6974 72665f72 685f6565     .sw_timer_free_h
10005878:	00646165 00727563 2d727563 6e61683e     ead.cur.cur->han
10005888:	72656c64 32444900 454d4954 69742852     dler.ID2TIMER(ti
10005898:	5f72656d 2d296469 6e61683e 72656c64     mer_id)->handler
100058a8:	00000000                                ....

100058ac <TASK_DESC_USER1>:
100058ac:	100058b8 20014d1c 00010001              .X...M. ....

100058b8 <sw_timer_msg_handler_tab>:
100058b8:	0000ffff 10000f91 5f6d7461 632e6d70     ........atm_pm.c
100058c8:	61282100 6c5f6d74 736b636f 6573755f     .!(atm_locks_use
100058d8:	79745b64 205d6570 69282026 64692e64     d[type] & (id.id
100058e8:	61002929 6c5f6d74 736b636f 6573755f     )).atm_locks_use
100058f8:	79745b64 205d6570 30203d21 66666678     d[type] != 0xfff
10005908:	66666666 64690066 7079742e 203c2065     fffff.id.type < 
10005918:	4c5f4d50 5f4b434f 45505954 58414d5f     PM_LOCK_TYPE_MAX
10005928:	6d746100 636f6c5f 755f736b 5b646573     .atm_locks_used[
10005938:	742e6469 5d657079 69202620 64692e64     id.type] & id.id
10005948:	6d746100 6970675f 00632e6f 5f6d7461     .atm_gpio.c.atm_
10005958:	6f697067 6c61765f 74616469 70675f65     gpio_validate_gp
10005968:	67286f69 296f6970 203d3d20 5f4d5441     io(gpio) == ATM_
10005978:	4f495047 5f4f4e5f 00525245 635f7768     GPIO_NO_ERR.hw_c
10005988:	632e6766 20747200 72203d3d 25003374     fg.c.rt == rt3.%
10005998:	49203a73 6c61766e 70206469 6d617261     s: Invalid param
100059a8:	                                         s.

100059aa <__func__.0>:
100059aa:	635f7768 725f6766 6f747365 725f6572     hw_cfg_restore_r
100059ba:	63735f78                                 x_scan.

100059c1 <__func__.1>:
100059c1:	635f7768 6f5f6766 6d697470 5f657a69     hw_cfg_optimize_
100059d1:	735f7872 006e6163 75736e55 726f7070     rx_scan.Unsuppor
100059e1:	20646574 72616f62 326d0064 00313032     ted board.m2201.
100059f1:	3032336d 326d0031 00313332 3532326d     m3201.m2231.m225
10005a01:	336d0031 00313332 3232336d 326d0031     1.m3231.m3221.m2
10005a11:	00313232 3032326d 336d0032 00323032     221.m2202.m3202.
10005a21:	78656e55 74636570 66206465 6873616c     Unexpected flash
10005a31:	70797420 6e550065 65707865 64657463      type.Unexpected
10005a41:	63617020 6567616b 70797420 6e550065      package type.Un
10005a51:	65707865 64657463 6e697020 72726120     expected pin arr
10005a61:	65676e61 746e656d 656e5500 63657078     angement.Unexpec
10005a71:	20646574 76726168 69747365 7320676e     ted harvesting s
10005a81:	6f707075 28007472 29302828 203c3c20     upport.(((0) << 
10005a91:	20293131 2828207c 3c202933 2933203c     11) | ((3) << 3)
10005aa1:	28207c20 20293128 30203c3c 207c2029      | ((1) << 0) | 
10005ab1:	29322828 203c3c20 7c202938 32282820     ((2) << 8) | ((2
10005ac1:	3c3c2029 29333120 28207c20 20293128     ) << 13) | ((1) 
10005ad1:	36203c3c 42002929 6472616f 6e6f6320     << 6)).Board con
10005ae1:	75676966 69746172 62206e6f 676e6965     figuration being
10005af1:	65737520 6e692064 65687420 4b445320      used in the SDK
10005b01:	73252820 6f642029 6e207365 6d20746f      (%s) does not m
10005b11:	68637461 65687420 6e6f6320 7463656e     atch the connect
10005b21:	62206465 6472616f 23252820 2e29786c     ed board (%#lx).
10005b31:	74655320 414f4220 253d4452 75642073      Set BOARD=%s du
10005b41:	676e6972 65687420 69756220 7020646c     ring the build p
10005b51:	65636f72 202e7373 65666552 6f742072     rocess. Refer to
10005b61:	6d746120 6369736f 6b64735f 6178652f      atmosic_sdk/exa
10005b71:	656c706d 45522f73 454d4441 726f6620     mples/README for
10005b81:	6c206120 20747369 7320666f 6f707075      a list of suppo
10005b91:	64657472 616f6220 2e736472 6e697000     rted boards..pin
10005ba1:	2e78756d 78650063 6c665f74 5f687361     mux.c.ext_flash_
10005bb1:	5f706d63 74697277 25402865 2c786c23     cmp_write(@%#lx,
10005bc1:	756c2520 20003a29 78323025 2e2e2000      %lu):. %02x. ..
10005bd1:	7865002e 6c665f74 5f687361 74697277     ..ext_flash_writ
10005be1:	25402865 2c786c23 756c2520 41462029     e(@%#lx, %lu) FA
10005bf1:	25204c49 75252075 6c232520 43000a78     IL %u %u %#lx..C
10005c01:	35005053 37003578 36003778 20003678     SP.5x5.7x7.6x6. 
10005c11:	63617453 2064656b 73616c66 20003a68     Stacked flash:. 
10005c21:	5f545845 53414c46 65003a48 665f7478     EXT_FLASH:.ext_f
10005c31:	6873616c 6165725f 20292864 4c494146     lash_read() FAIL
10005c41:	25204445 70000a75 632e756d 73657200     ED %u..pmu.c.res
10005c51:	632e7465 61747300 00737574 746f6f62     et.c.status.boot
10005c61:	6174735f 20737574 7825203d 6c6f4300     _status = %x.Col
10005c71:	6f622064 5300746f 65747379 6572206d     d boot.System re
10005c81:	00746573 65626948 69746172 77206e6f     set.Hiberation w
10005c91:	75656b61 4f530070 666f2043 61772066     akeup.SOC off wa
10005ca1:	7075656b 6f724200 756f6e77 6f432074     keup.Brownout Co
10005cb1:	7469646e 206e6f69 65746564 64657463     ndition detected
10005cc1:	6e45203a 69726574 5320676e 4f5f434f     : Entering SOC_O
10005cd1:	62004646 6f6e7772 632e7475 64252300     FF.brwnout.c.#%d
10005ce1:	25783020 786c3830 540a000a 65636172      0x%08lx...Trace
10005cf1:	6b636162 6d6f6320 74656c70 25203a65     back complete: %
10005d01:	5b000a64 2e303125 5d733031 395b1b5b     d..[%10.10s][.[9
10005d11:	1b456d31 5d6d305b 6469203a 75253a78     1mE.[0m]: idx:%u
10005d21:	7473203a 73757461 78232520 31255b00     : status %#x.[%1
10005d31:	30312e30 1b5b5d73 6d31395b 305b1b45     0.10s][.[91mE.[0
10005d41:	203a5d6d 20766461 696e6173 65207974     m]: adv sanity e
10005d51:	2d207272 70797420 23253d65 70202c78     rr - type=%#x, p
10005d61:	3d706f72 2c782325 79687020 7823253d     rop=%#x, phy=%#x
10005d71:	6964202c 6d5f6373 3d65646f 2c782325     , disc_mode=%#x,
10005d81:	61657220 3d6e6f73 00782325 5f6d7461      reason=%#x.atm_
10005d91:	2e766461 255b0063 312e3031 5b5d7330     adv.c.[%10.10s][
10005da1:	32395b1b 5b1b446d 3a5d6d30 76644120     .[92mD.[0m]: Adv
10005db1:	203a7525 5b004e4f 2e303125 5d733031     %u: ON.[%10.10s]
10005dc1:	395b1b5b 1b566d37 5d6d305b 6461203a     [.[97mV.[0m]: ad
10005dd1:	72632076 65746165 75252864 255b0029     v created(%u).[%
10005de1:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
10005df1:	3a5d6d30 76644120 203a7525 2046464f     0m]: Adv%u: OFF 
10005e01:	78232528 255b0029 312e3031 5b5d7330     (%#x).[%10.10s][
10005e11:	31395b1b 5b1b456d 3a5d6d30 6f725720     .[91mE.[0m]: Wro
10005e21:	6f20676e 72656472 64610021 62635f76     ng order!.adv_cb
10005e31:	31255b00 30312e30 1b5b5d73 6d31395b     .[%10.10s][.[91m
10005e41:	305b1b45 203a5d6d 61686e55 656c646e     E.[0m]: Unhandle
10005e51:	79742064 253d6570 5b007823 2e303125     d type=%#x.[%10.
10005e61:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
10005e71:	6263203a 202c6425 74736e69 202c6425     : cb%d, inst%d, 
10005e81:	61746164 5b006425 2e303125 5d733031     data%d.[%10.10s]
10005e91:	395b1b5b 1b4e6d34 5d6d305b 7075203a     [.[94mN.[0m]: up
10005ea1:	69746164 5620676e 20444941 74206f74     dating VAID to t
10005eb1:	61206568 64207664 00617461 3031255b     he adv data.[%10
10005ec1:	7330312e 5b1b5b5d 566d3739 6d305b1b     .10s][.[97mV.[0m
10005ed1:	65203a5d 656d656c 6c20746e 203a6e65     ]: element len: 
10005ee1:	58323025 20746120 5d64255b 31255b00     %02X at [%d].[%1
10005ef1:	30312e30 1b5b5d73 6d32395b 305b1b44     0.10s][.[92mD.[0
10005f01:	203a5d6d 6e756f66 616d2064 61642066     m]: found maf da
10005f11:	73206174 74726174 20746120 5d64255b     ta start at [%d]
10005f21:	31255b00 30312e30 1b5b5d73 6d32395b     .[%10.10s][.[92m
10005f31:	305b1b44 203a5d6d 70206f6e 20687461     D.[0m]: no path 
10005f41:	75206f74 74616470 61762065 5b006469     to update vaid.[
10005f51:	2e303125 5d733031 395b1b5b 1b446d32     %10.10s][.[92mD.
10005f61:	5d6d305b 6f6e203a 70616320 74696369     [0m]: no capicit
10005f71:	6f662079 41502072 495f4854 5245534e     y for PATH_INSER
10005f81:	454e5f54 255b0057 312e3031 5b5d7330     T_NEW.[%10.10s][
10005f91:	32395b1b 5b1b446d 3a5d6d30 206f6e20     .[92mD.[0m]: no 
10005fa1:	69706163 79746963 726f6620 54415020     capicity for PAT
10005fb1:	4e495f48 54524553 5050415f 00444e45     H_INSERT_APPEND.
10005fc1:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
10005fd1:	6d305b1b 63203a5d 676e6168 61762065     .[0m]: change va
10005fe1:	485f6469 3a6f7420 00642520 3031255b     id_H to: %d.[%10
10005ff1:	7330312e 5b1b5b5d 566d3739 6d305b1b     .10s][.[97mV.[0m
10006001:	61203a5d 64207664 5b617461 3a5d6425     ]: adv data[%d]:
10006011:	32302520 255b0058 312e3031 5b5d7330      %02X.[%10.10s][
10006021:	34395b1b 5b1b4e6d 3a5d6d30 64707520     .[94mN.[0m]: upd
10006031:	64657461 49415620 6f742044 65687420     ated VAID to the
10006041:	76646120 74616420                         adv data.

1000604b <M_NAME>:
1000604b:	5f6d7461 00766461 5f6d7461 2e6d7361     atm_adv.atm_asm.
1000605b:	255b0063 312e3031 5b5d7330 32395b1b     c.[%10.10s][.[92
1000606b:	5b1b446d 3a5d6d30 73696420 3a6e6f63     mD.[0m]: discon:
1000607b:	61747320 3d737574 00782325 5f6d7461      status=%#x.atm_
1000608b:	2e706167 255b0063 312e3031 5b5d7330     gap.c.[%10.10s][
1000609b:	35395b1b 5b1b576d 3a5d6d30 686e5520     .[95mW.[0m]: Unh
100060ab:	6c646e61 47206465 20435041 2067736d     andled GAPC msg 
100060bb:	00782325 3031255b 7330312e 5b1b5b5d     %#x.[%10.10s][.[
100060cb:	576d3539 6d305b1b 25203a5d 49203a73     95mW.[0m]: %s: I
100060db:	6c61766e 63206469 64696e6f 696c0078     nvalid conidx.li
100060eb:	006f666e 3031255b 7330312e 5b1b5b5d     nfo.[%10.10s][.[
100060fb:	456d3139 6d305b1b 6d203a5d 20737369     91mE.[0m]: miss 
1000610b:	25206263 69640073 6e6f6373 4d005300     cb %s.discon.S.M
1000611b:	74786500 7664615f 31255b00 30312e30     .ext_adv.[%10.10
1000612b:	1b5b5d73 6d32395b 305b1b44 203a5d6d     s][.[92mD.[0m]: 
1000613b:	6e6e6f43 20646e49 3d786469 72206425     ConnInd idx=%d r
1000614b:	3d656c6f 5b007325 2e303125 5d733031     ole=%s.[%10.10s]
1000615b:	395b1b5b 1b446d32 5d6d305b 6944203a     [.[92mD.[0m]: Di
1000616b:	6e6f6373 646e4920 5823253d 6e6f6300     scon Ind=%#X.con
1000617b:	6470755f 00657461 3031255b 7330312e     _update.[%10.10s
1000618b:	5b1b5b5d 446d3239 6d305b1b 55203a5d     ][.[92mD.[0m]: U
1000619b:	74616470 65722065 6d203a71 253d6e69     pdate req: min=%
100061ab:	2e312864 736d3532 616d2029 64253d78     d(1.25ms) max=%d
100061bb:	322e3128 29736d35 74616c20 2064253d     (1.25ms) lat=%d 
100061cb:	253d6f74 30312864 0029736d 00796870     to=%d(10ms).phy.
100061db:	3031255b 7330312e 5b1b5b5d 576d3539     [%10.10s][.[95mW
100061eb:	6d305b1b 6d203a5d 20737369 25206263     .[0m]: miss cb %
100061fb:	656c0073 746b705f 7a69735f 255b0065     s.le_pkt_size.[%
1000620b:	312e3031 5b5d7330 37395b1b 5b1b566d     10.10s][.[97mV.[
1000621b:	3a5d6d30 76656420 666e695f 7165725f     0m]: dev_inf_req
1000622b:	666f203a 74657366 2064253d 3d78616d     : offset=%d max=
1000623b:	6e206425 5f656d61 3a6e656c 5b006425     %d name_len:%d.[
1000624b:	2e303125 5d733031 395b1b5b 1b446d32     %10.10s][.[92mD.
1000625b:	5d6d305b 6564203a 6e695f76 203a6f66     [0m]: dev_info: 
1000626b:	3d716572 5b006425 2e303125 5d733031     req=%d.[%10.10s]
1000627b:	395b1b5b 1b456d31 5d6d305b 6e55203a     [.[91mE.[0m]: Un
1000628b:	646e6168 2064656c 3d444945 00782325     handled EID=%#x.
1000629b:	00000000                                 ......

100062a1 <M_NAME>:
100062a1:	5f6d7461 00706167                        atm_gap..

100062aa <cfm.0>:
100062aa:	00000001                                 ......

100062b0 <zero.1>:
	...

100062b8 <default_bt_init_param.2>:
100062b8:	1000630a 0000120b 00090009 01f4001d     .c..............
100062c8:	00000000 100062d8 00000000 00000000     .....b..........

100062d8 <default_dev_conf.1>:
100062d8:	0384000f 00000000 00000000 00000000     ................
	...
100062f0:	01000000 00000000 00fb0000 00a00848     ............H...
10006300:	00000017 00000000                        ..........

1000630a <dname.0>:
1000630a:	6f6d7441 20636973 00005442 00000000     Atmosic BT......
1000631a:	255b0000 312e3031 5b5d7330 31395b1b     ..[%10.10s][.[91
1000632a:	5b1b456d 3a5d6d30 3a732520 766e4920     mE.[0m]: %s: Inv
1000633a:	64696c61 72617020 20736d61 7320726f     alid params or s
1000634a:	65746174 31255b00 30312e30 1b5b5d73     tate.[%10.10s][.
1000635a:	6d31395b 305b1b45 203a5d6d 6e616353     [91mE.[0m]: Scan
1000636a:	61747320 66207472 656c6961 25203a64      start failed: %
1000637a:	25202c75 255b0075 312e3031 5b5d7330     u, %u.[%10.10s][
1000638a:	31395b1b 5b1b456d 3a5d6d30 3a732520     .[91mE.[0m]: %s:
1000639a:	206f4e20 6f6d656d 61007972 735f6d74      No memory.atm_s
100063aa:	2e6e6163 6e690063 3e2d7473 72617473     can.c.inst->star
100063ba:	3d3d2074 4c554e20 255b004c 312e3031     t == NULL.[%10.1
100063ca:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
100063da:	20732520 74617473 203a7375 5b006425      %s status: %d.[
100063ea:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
100063fa:	5d6d305b 7325203a 766e4920 64696c61     [0m]: %s Invalid
1000640a:	72617020 20736d61 7320726f 65746174      params or state
1000641a:	6425203a 31255b00 30312e30 1b5b5d73     : %d.[%10.10s][.
1000642a:	6d31395b 305b1b45 203a5d6d 6e616353     [91mE.[0m]: Scan
1000643a:	65726320 6f697461 6166206e 64656c69      creation failed
1000644a:	7525203a 7525202c 31255b00 30312e30     : %u, %u.[%10.10
1000645a:	1b5b5d73 6d31395b 305b1b45 203a5d6d     s][.[91mE.[0m]: 
1000646a:	203a7325 61766e49 2064696c 61726170     %s: Invalid para
1000647a:	6f20736d 74732072 3a657461 00642520     ms or state: %d.

1000648a <M_NAME>:
1000648a:	5f6d7461 6e616373                        atm_scan.

10006493 <__func__.0>:
10006493:	5f6d7461 6e616373 6f74735f 64657070     atm_scan_stopped
100064a3:	646e695f                                 _ind.

100064a8 <__func__.5>:
100064a8:	6d706167 706d635f 7476655f 6163735f     gapm_cmp_evt_sca
100064b8:	74735f6e 00747261                       n_start.

100064c0 <__func__.6>:
100064c0:	5f6d7461 6e616373 6174735f               atm_scan_start.

100064cf <__func__.7>:
100064cf:	6d706167 706d635f 7476655f 6572635f     gapm_cmp_evt_cre
100064df:	5f657461 6e616373                        ate_scan.

100064e8 <__func__.8>:
100064e8:	5f6d7461 6e616373 6572635f 00657461     atm_scan_create.

100064f8 <__func__.9>:
100064f8:	5f6d7461 6e616373 6572635f 5f657461     atm_scan_create_
10006508:	5f646e61 72617473 6c620074 61675f65     and_start.ble_ga
10006518:	00632e70 61686e55 656c646e 6d632064     p.c.Unhandled cm
10006528:	76652070 6e550074 646e6168 2064656c     p evt.Unhandled 
10006538:	63706167 706d635f 7476655f 28706f20     gapc_cmp_evt op(
10006548:	29782325 7473202c 73757461 29752528     %#x), status(%u)
10006558:	766e6900 64696c61 64707520 20657461     .invalid update 
10006568:	696e6f63 25007864 6e203a73 20656d61     conidx.%s: name 
10006578:	3d6e656c 46006425 75746165 6e206572     len=%d.Feature n
10006588:	7320746f 6f707075 202c7472 76206425     ot support, %d v
10006598:	64252073 6c616600 61006573 5f767463     s %d.false.actv_
100065a8:	3a786469 20752520 3a6e656c 00752520     idx: %u len: %u.

100065b8 <__func__.2>:
100065b8:	74726f70 5f676e69 63706167 7465675f     porting_gapc_get
100065c8:	7665645f 666e695f 66635f6f 0000006d     _dev_info_cfm...

100065d8 <ble_gapc_handlers>:
100065d8:	100065e0 0000000c                       .e......

100065e0 <ble_gapc_msg_handler_list>:
100065e0:	0000ffff 10003fc5 00000e0f 10003f85     .....?.......?..
100065f0:	00000e15 10003e41 00000e13 10003e45     ....A>......E>..
10006600:	00000e00 10003d5d 00000e07 10003b79     ....]=......y;..
10006610:	00000e08 10003b31 00000e09 10003af5     ....1;.......:..
10006620:	00000e1d 10003ab1 00000e29 10003a75     .....:..)...u:..
10006630:	00000e30 10003ec9 00000e2c 10003e9d     0....>..,....>..

10006640 <ble_gapm_handlers>:
10006640:	10006648 00000009                       Hf......

10006648 <ble_gapm_msg_handler_list>:
10006648:	0000ffff 100039bd 00000da4 10003c5d     .....9......]<..
10006658:	00000d00 10003bc1 00000d27 10003c5d     .....;..'...]<..
10006668:	00000d15 10003c5d 00000d08 10003c5d     ....]<......]<..
10006678:	00000d1c 10003c5d 00000da5 10004229     ....]<......)B..
10006688:	00000da7 100041b1 5f656c62 6b736174     .....A..ble_task
10006698:	6800632e 6c646e61 3e2d7265 636e7566     .c.handler->func
100066a8:	20732500 6e55202d 646e6168 2064656c     .%s - Unhandled 
100066b8:	6967736d 23252064 72662078 25206d6f     msgid %#x from %
100066c8:	62007823 745f656c 5f6b7361 6e756f63     #x.ble_task_coun
100066d8:	203c2074 5f454c42 5f47534d 444e4148     t < BLE_MSG_HAND
100066e8:	5f52454c 5453494c 5a49535f 62700045     LER_LIST_SIZE.pb
100066f8:	685f656c 6c646e61 5b737265 742e5d69     le_handlers[i].t
10006708:	5f6b7361 21206469 6174203d 695f6b73     ask_id != task_i
10006718:	70410064 63696c70 6f697461 7263206e     d.Application cr
10006728:	65746165 75252073 73656d20 65676173     eates %u message
10006738:	6e616820 72656c64 6f662073 4c422072      handlers for BL
10006748:	65732045 63697672 62007365 6f207475     E services.but o
10006758:	20796c6e 766f7270 73656469 20642520     nly provides %d 
10006768:	20726f66 6e697375 50202e67 7361656c     for using. Pleas
10006778:	6f6d2065 79666964 65687420 6c617600     e modify the.val
10006788:	64206575 6e696665 62206465 4c422079     ue defined by BL
10006798:	534d5f45 41485f47 454c444e 494c5f52     E_MSG_HANDLER_LI
100067a8:	535f5453 00455a49                       ST_SIZE.

100067b0 <TASK_DESC_APP>:
100067b0:	100067dc 20014e90 00010001              .g...N. ....

100067bc <__func__.0>:
100067bc:	5f656c62 5f746567 646e6168 0072656c     ble_get_handler.

100067cc <__func__.1>:
100067cc:	5f656c62 5f67736d 646e6168 0072656c     ble_msg_handler.

100067dc <ble_msg_handler_tab>:
100067dc:	0000ffff 100047c9 74726f70 5f676e69     .....G..porting_
100067ec:	2e656c62                                 ble.c.

Disassembly of section .data:

20014000 <user_rv_appm_init.0>:
20014000:	10000109 00000000                       ........

20014008 <user_rv_appm_init.13>:
20014008:	1000021d 00000000                       ........

20014010 <HFH_Stopper>:
20014010:	10000d71                                q...

20014014 <llc_stopped_ind_handler_hook>:
20014014:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20014016:	0005      	movs	r5, r0
20014018:	2081      	movs	r0, #129	; 0x81
2001401a:	000e      	movs	r6, r1
2001401c:	4f08      	ldr	r7, [pc, #32]	; (20014040 <llc_stopped_ind_handler_hook+0x2c>)
2001401e:	0011      	movs	r1, r2
20014020:	0040      	lsls	r0, r0, #1
20014022:	0014      	movs	r4, r2
20014024:	9301      	str	r3, [sp, #4]
20014026:	47b8      	blx	r7
20014028:	2004      	movs	r0, #4
2001402a:	0021      	movs	r1, r4
2001402c:	30ff      	adds	r0, #255	; 0xff
2001402e:	47b8      	blx	r7
20014030:	0022      	movs	r2, r4
20014032:	0031      	movs	r1, r6
20014034:	0028      	movs	r0, r5
20014036:	9b01      	ldr	r3, [sp, #4]
20014038:	4c02      	ldr	r4, [pc, #8]	; (20014044 <llc_stopped_ind_handler_hook+0x30>)
2001403a:	47a0      	blx	r4
2001403c:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
2001403e:	46c0      	nop			; (mov r8, r8)
20014040:	000010bd 	.word	0x000010bd
20014044:	0000de89 	.word	0x0000de89

20014048 <user_rv_appm_init.2>:
20014048:	10000e09 00000000                       ........

20014050 <patched_lld_con_sched>:
20014050:	b5f0      	push	{r4, r5, r6, r7, lr}
20014052:	4b43      	ldr	r3, [pc, #268]	; (20014160 <patched_lld_con_sched+0x110>)
20014054:	0004      	movs	r4, r0
20014056:	33d0      	adds	r3, #208	; 0xd0
20014058:	7818      	ldrb	r0, [r3, #0]
2001405a:	b085      	sub	sp, #20
2001405c:	4b41      	ldr	r3, [pc, #260]	; (20014164 <patched_lld_con_sched+0x114>)
2001405e:	000d      	movs	r5, r1
20014060:	3005      	adds	r0, #5
20014062:	2106      	movs	r1, #6
20014064:	0016      	movs	r6, r2
20014066:	4798      	blx	r3
20014068:	2314      	movs	r3, #20
2001406a:	434b      	muls	r3, r1
2001406c:	2100      	movs	r1, #0
2001406e:	4a3e      	ldr	r2, [pc, #248]	; (20014168 <patched_lld_con_sched+0x118>)
20014070:	189b      	adds	r3, r3, r2
20014072:	881b      	ldrh	r3, [r3, #0]
20014074:	b29b      	uxth	r3, r3
20014076:	9303      	str	r3, [sp, #12]
20014078:	428e      	cmp	r6, r1
2001407a:	d001      	beq.n	20014080 <patched_lld_con_sched+0x30>
2001407c:	4259      	negs	r1, r3
2001407e:	4159      	adcs	r1, r3
20014080:	4b3a      	ldr	r3, [pc, #232]	; (2001416c <patched_lld_con_sched+0x11c>)
20014082:	00a0      	lsls	r0, r4, #2
20014084:	58c3      	ldr	r3, [r0, r3]
20014086:	9102      	str	r1, [sp, #8]
20014088:	9301      	str	r3, [sp, #4]
2001408a:	3352      	adds	r3, #82	; 0x52
2001408c:	781b      	ldrb	r3, [r3, #0]
2001408e:	2b01      	cmp	r3, #1
20014090:	d142      	bne.n	20014118 <patched_lld_con_sched+0xc8>
20014092:	2900      	cmp	r1, #0
20014094:	d040      	beq.n	20014118 <patched_lld_con_sched+0xc8>
20014096:	9f01      	ldr	r7, [sp, #4]
20014098:	377e      	adds	r7, #126	; 0x7e
2001409a:	883e      	ldrh	r6, [r7, #0]
2001409c:	2e00      	cmp	r6, #0
2001409e:	d03b      	beq.n	20014118 <patched_lld_con_sched+0xc8>
200140a0:	9901      	ldr	r1, [sp, #4]
200140a2:	3150      	adds	r1, #80	; 0x50
200140a4:	8809      	ldrh	r1, [r1, #0]
200140a6:	468c      	mov	ip, r1
200140a8:	4660      	mov	r0, ip
200140aa:	9901      	ldr	r1, [sp, #4]
200140ac:	3184      	adds	r1, #132	; 0x84
200140ae:	8809      	ldrh	r1, [r1, #0]
200140b0:	1a40      	subs	r0, r0, r1
200140b2:	1e42      	subs	r2, r0, #1
200140b4:	4296      	cmp	r6, r2
200140b6:	db2f      	blt.n	20014118 <patched_lld_con_sched+0xc8>
200140b8:	2801      	cmp	r0, #1
200140ba:	dd2d      	ble.n	20014118 <patched_lld_con_sched+0xc8>
200140bc:	4662      	mov	r2, ip
200140be:	3a02      	subs	r2, #2
200140c0:	1a51      	subs	r1, r2, r1
200140c2:	8039      	strh	r1, [r7, #0]
200140c4:	001a      	movs	r2, r3
200140c6:	0029      	movs	r1, r5
200140c8:	0020      	movs	r0, r4
200140ca:	4b29      	ldr	r3, [pc, #164]	; (20014170 <patched_lld_con_sched+0x120>)
200140cc:	4798      	blx	r3
200140ce:	803e      	strh	r6, [r7, #0]
200140d0:	4e28      	ldr	r6, [pc, #160]	; (20014174 <patched_lld_con_sched+0x124>)
200140d2:	7833      	ldrb	r3, [r6, #0]
200140d4:	9302      	str	r3, [sp, #8]
200140d6:	2b00      	cmp	r3, #0
200140d8:	d01b      	beq.n	20014112 <patched_lld_con_sched+0xc2>
200140da:	4c27      	ldr	r4, [pc, #156]	; (20014178 <patched_lld_con_sched+0x128>)
200140dc:	9903      	ldr	r1, [sp, #12]
200140de:	6823      	ldr	r3, [r4, #0]
200140e0:	4d26      	ldr	r5, [pc, #152]	; (2001417c <patched_lld_con_sched+0x12c>)
200140e2:	005a      	lsls	r2, r3, #1
200140e4:	2301      	movs	r3, #1
200140e6:	6022      	str	r2, [r4, #0]
200140e8:	4219      	tst	r1, r3
200140ea:	d01b      	beq.n	20014124 <patched_lld_con_sched+0xd4>
200140ec:	4313      	orrs	r3, r2
200140ee:	6023      	str	r3, [r4, #0]
200140f0:	2300      	movs	r3, #0
200140f2:	2201      	movs	r2, #1
200140f4:	56eb      	ldrsb	r3, [r5, r3]
200140f6:	56aa      	ldrsb	r2, [r5, r2]
200140f8:	189a      	adds	r2, r3, r2
200140fa:	2302      	movs	r3, #2
200140fc:	56eb      	ldrsb	r3, [r5, r3]
200140fe:	189b      	adds	r3, r3, r2
20014100:	9a02      	ldr	r2, [sp, #8]
20014102:	2a01      	cmp	r2, #1
20014104:	d11b      	bne.n	2001413e <patched_lld_con_sched+0xee>
20014106:	33f2      	adds	r3, #242	; 0xf2
20014108:	da03      	bge.n	20014112 <patched_lld_con_sched+0xc2>
2001410a:	2302      	movs	r3, #2
2001410c:	7033      	strb	r3, [r6, #0]
2001410e:	4b1c      	ldr	r3, [pc, #112]	; (20014180 <patched_lld_con_sched+0x130>)
20014110:	4798      	blx	r3
20014112:	2000      	movs	r0, #0
20014114:	b005      	add	sp, #20
20014116:	bdf0      	pop	{r4, r5, r6, r7, pc}
20014118:	0029      	movs	r1, r5
2001411a:	0020      	movs	r0, r4
2001411c:	9a02      	ldr	r2, [sp, #8]
2001411e:	4b14      	ldr	r3, [pc, #80]	; (20014170 <patched_lld_con_sched+0x120>)
20014120:	4798      	blx	r3
20014122:	e7d5      	b.n	200140d0 <patched_lld_con_sched+0x80>
20014124:	9b01      	ldr	r3, [sp, #4]
20014126:	4f17      	ldr	r7, [pc, #92]	; (20014184 <patched_lld_con_sched+0x134>)
20014128:	339d      	adds	r3, #157	; 0x9d
2001412a:	7838      	ldrb	r0, [r7, #0]
2001412c:	781b      	ldrb	r3, [r3, #0]
2001412e:	2103      	movs	r1, #3
20014130:	542b      	strb	r3, [r5, r0]
20014132:	3001      	adds	r0, #1
20014134:	4b14      	ldr	r3, [pc, #80]	; (20014188 <patched_lld_con_sched+0x138>)
20014136:	b2c0      	uxtb	r0, r0
20014138:	4798      	blx	r3
2001413a:	7039      	strb	r1, [r7, #0]
2001413c:	e7d8      	b.n	200140f0 <patched_lld_con_sched+0xa0>
2001413e:	33d1      	adds	r3, #209	; 0xd1
20014140:	dbe7      	blt.n	20014112 <patched_lld_con_sched+0xc2>
20014142:	203f      	movs	r0, #63	; 0x3f
20014144:	6823      	ldr	r3, [r4, #0]
20014146:	4018      	ands	r0, r3
20014148:	4b10      	ldr	r3, [pc, #64]	; (2001418c <patched_lld_con_sched+0x13c>)
2001414a:	4798      	blx	r3
2001414c:	2802      	cmp	r0, #2
2001414e:	dde0      	ble.n	20014112 <patched_lld_con_sched+0xc2>
20014150:	2301      	movs	r3, #1
20014152:	7033      	strb	r3, [r6, #0]
20014154:	4b0e      	ldr	r3, [pc, #56]	; (20014190 <patched_lld_con_sched+0x140>)
20014156:	4798      	blx	r3
20014158:	2300      	movs	r3, #0
2001415a:	6023      	str	r3, [r4, #0]
2001415c:	e7d9      	b.n	20014112 <patched_lld_con_sched+0xc2>
2001415e:	46c0      	nop			; (mov r8, r8)
20014160:	200015a0 	.word	0x200015a0
20014164:	0002f01d 	.word	0x0002f01d
20014168:	300084fc 	.word	0x300084fc
2001416c:	20000dac 	.word	0x20000dac
20014170:	0001a3cd 	.word	0x0001a3cd
20014174:	20014c73 	.word	0x20014c73
20014178:	20014c78 	.word	0x20014c78
2001417c:	20014c70 	.word	0x20014c70
20014180:	20014309 	.word	0x20014309
20014184:	20014c74 	.word	0x20014c74
20014188:	0002ee49 	.word	0x0002ee49
2001418c:	10004fc9 	.word	0x10004fc9
20014190:	20014295 	.word	0x20014295

20014194 <user_rv_lld_con_sched.0>:
20014194:	20014051 00000000                       Q@. ....

2001419c <lld_scan_end_ind_handler_hook>:
2001419c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001419e:	001f      	movs	r7, r3
200141a0:	4b07      	ldr	r3, [pc, #28]	; (200141c0 <lld_scan_end_ind_handler_hook+0x24>)
200141a2:	0004      	movs	r4, r0
200141a4:	681b      	ldr	r3, [r3, #0]
200141a6:	000d      	movs	r5, r1
200141a8:	0016      	movs	r6, r2
200141aa:	2b00      	cmp	r3, #0
200141ac:	d101      	bne.n	200141b2 <lld_scan_end_ind_handler_hook+0x16>
200141ae:	4b05      	ldr	r3, [pc, #20]	; (200141c4 <lld_scan_end_ind_handler_hook+0x28>)
200141b0:	4798      	blx	r3
200141b2:	003b      	movs	r3, r7
200141b4:	0032      	movs	r2, r6
200141b6:	0029      	movs	r1, r5
200141b8:	0020      	movs	r0, r4
200141ba:	4c03      	ldr	r4, [pc, #12]	; (200141c8 <lld_scan_end_ind_handler_hook+0x2c>)
200141bc:	47a0      	blx	r4
200141be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200141c0:	20000e28 	.word	0x20000e28
200141c4:	0002d6f1 	.word	0x0002d6f1
200141c8:	0000c5c1 	.word	0x0000c5c1

200141cc <user_rv_appm_init.2>:
200141cc:	10000efd 00000000                       ........

200141d4 <user_rv_appm_init.0>:
200141d4:	10000f79 00000000                       y.......

200141dc <atm_timer_prevent>:
200141dc:	4b04      	ldr	r3, [pc, #16]	; (200141f0 <atm_timer_prevent+0x14>)
200141de:	0001      	movs	r1, r0
200141e0:	681a      	ldr	r2, [r3, #0]
200141e2:	685b      	ldr	r3, [r3, #4]
200141e4:	2001      	movs	r0, #1
200141e6:	431a      	orrs	r2, r3
200141e8:	d001      	beq.n	200141ee <atm_timer_prevent+0x12>
200141ea:	7008      	strb	r0, [r1, #0]
200141ec:	2000      	movs	r0, #0
200141ee:	4770      	bx	lr
200141f0:	20014d80 	.word	0x20014d80

200141f4 <user_rv_plf_prevent_hibernation.6>:
200141f4:	200141dd 00000000                       .A. ....

200141fc <user_rv_plf_prevent_retention.5>:
200141fc:	200141dd 00000000                       .A. ....

20014204 <atm_pm_prevent_hibernation>:
20014204:	b510      	push	{r4, lr}
20014206:	0003      	movs	r3, r0
20014208:	480b      	ldr	r0, [pc, #44]	; (20014238 <atm_pm_prevent_hibernation+0x34>)
2001420a:	6884      	ldr	r4, [r0, #8]
2001420c:	6840      	ldr	r0, [r0, #4]
2001420e:	4304      	orrs	r4, r0
20014210:	2001      	movs	r0, #1
20014212:	2c00      	cmp	r4, #0
20014214:	d002      	beq.n	2001421c <atm_pm_prevent_hibernation+0x18>
20014216:	7018      	strb	r0, [r3, #0]
20014218:	2000      	movs	r0, #0
2001421a:	bd10      	pop	{r4, pc}
2001421c:	2a00      	cmp	r2, #0
2001421e:	d1fc      	bne.n	2001421a <atm_pm_prevent_hibernation+0x16>
20014220:	4b06      	ldr	r3, [pc, #24]	; (2001423c <atm_pm_prevent_hibernation+0x38>)
20014222:	681b      	ldr	r3, [r3, #0]
20014224:	2b00      	cmp	r3, #0
20014226:	d0f8      	beq.n	2001421a <atm_pm_prevent_hibernation+0x16>
20014228:	680a      	ldr	r2, [r1, #0]
2001422a:	2a00      	cmp	r2, #0
2001422c:	d001      	beq.n	20014232 <atm_pm_prevent_hibernation+0x2e>
2001422e:	4293      	cmp	r3, r2
20014230:	daf3      	bge.n	2001421a <atm_pm_prevent_hibernation+0x16>
20014232:	2001      	movs	r0, #1
20014234:	600b      	str	r3, [r1, #0]
20014236:	e7f0      	b.n	2001421a <atm_pm_prevent_hibernation+0x16>
20014238:	20014d8c 	.word	0x20014d8c
2001423c:	20014d88 	.word	0x20014d88

20014240 <atm_pm_prevent_retention>:
20014240:	4a04      	ldr	r2, [pc, #16]	; (20014254 <atm_pm_prevent_retention+0x14>)
20014242:	0003      	movs	r3, r0
20014244:	6852      	ldr	r2, [r2, #4]
20014246:	2001      	movs	r0, #1
20014248:	2a00      	cmp	r2, #0
2001424a:	d001      	beq.n	20014250 <atm_pm_prevent_retention+0x10>
2001424c:	7018      	strb	r0, [r3, #0]
2001424e:	2000      	movs	r0, #0
20014250:	4770      	bx	lr
20014252:	46c0      	nop			; (mov r8, r8)
20014254:	20014d8c 	.word	0x20014d8c

20014258 <user_rv_plf_prevent_hibernation.2>:
20014258:	20014205 00000000                       .B. ....

20014260 <user_rv_plf_prevent_retention.1>:
20014260:	20014241 00000000                       AB. ....

20014268 <atm_gpio_validate_gpio>:
20014268:	2201      	movs	r2, #1
2001426a:	0011      	movs	r1, r2
2001426c:	4081      	lsls	r1, r0
2001426e:	b510      	push	{r4, lr}
20014270:	4c06      	ldr	r4, [pc, #24]	; (2001428c <atm_gpio_validate_gpio+0x24>)
20014272:	0003      	movs	r3, r0
20014274:	0010      	movs	r0, r2
20014276:	4221      	tst	r1, r4
20014278:	d007      	beq.n	2001428a <atm_gpio_validate_gpio+0x22>
2001427a:	2b1e      	cmp	r3, #30
2001427c:	d805      	bhi.n	2001428a <atm_gpio_validate_gpio+0x22>
2001427e:	4b04      	ldr	r3, [pc, #16]	; (20014290 <atm_gpio_validate_gpio+0x28>)
20014280:	6818      	ldr	r0, [r3, #0]
20014282:	4008      	ands	r0, r1
20014284:	4243      	negs	r3, r0
20014286:	4158      	adcs	r0, r3
20014288:	4090      	lsls	r0, r2
2001428a:	bd10      	pop	{r4, pc}
2001428c:	343d2e00 	.word	0x343d2e00
20014290:	20014da4 	.word	0x20014da4

20014294 <hw_cfg_max_interference_perf>:
20014294:	b570      	push	{r4, r5, r6, lr}
20014296:	2501      	movs	r5, #1
20014298:	4a14      	ldr	r2, [pc, #80]	; (200142ec <hw_cfg_max_interference_perf+0x58>)
2001429a:	4815      	ldr	r0, [pc, #84]	; (200142f0 <hw_cfg_max_interference_perf+0x5c>)
2001429c:	6814      	ldr	r4, [r2, #0]
2001429e:	6015      	str	r5, [r2, #0]
200142a0:	7801      	ldrb	r1, [r0, #0]
200142a2:	4b14      	ldr	r3, [pc, #80]	; (200142f4 <hw_cfg_max_interference_perf+0x60>)
200142a4:	2900      	cmp	r1, #0
200142a6:	d10a      	bne.n	200142be <hw_cfg_max_interference_perf+0x2a>
200142a8:	6ed9      	ldr	r1, [r3, #108]	; 0x6c
200142aa:	4e13      	ldr	r6, [pc, #76]	; (200142f8 <hw_cfg_max_interference_perf+0x64>)
200142ac:	400e      	ands	r6, r1
200142ae:	4913      	ldr	r1, [pc, #76]	; (200142fc <hw_cfg_max_interference_perf+0x68>)
200142b0:	4331      	orrs	r1, r6
200142b2:	66d9      	str	r1, [r3, #108]	; 0x6c
200142b4:	6b19      	ldr	r1, [r3, #48]	; 0x30
200142b6:	4e12      	ldr	r6, [pc, #72]	; (20014300 <hw_cfg_max_interference_perf+0x6c>)
200142b8:	4031      	ands	r1, r6
200142ba:	6319      	str	r1, [r3, #48]	; 0x30
200142bc:	7005      	strb	r5, [r0, #0]
200142be:	6c19      	ldr	r1, [r3, #64]	; 0x40
200142c0:	4810      	ldr	r0, [pc, #64]	; (20014304 <hw_cfg_max_interference_perf+0x70>)
200142c2:	4008      	ands	r0, r1
200142c4:	21c0      	movs	r1, #192	; 0xc0
200142c6:	0089      	lsls	r1, r1, #2
200142c8:	4301      	orrs	r1, r0
200142ca:	207f      	movs	r0, #127	; 0x7f
200142cc:	6419      	str	r1, [r3, #64]	; 0x40
200142ce:	69d9      	ldr	r1, [r3, #28]
200142d0:	4381      	bics	r1, r0
200142d2:	0008      	movs	r0, r1
200142d4:	2162      	movs	r1, #98	; 0x62
200142d6:	4301      	orrs	r1, r0
200142d8:	207c      	movs	r0, #124	; 0x7c
200142da:	61d9      	str	r1, [r3, #28]
200142dc:	6a19      	ldr	r1, [r3, #32]
200142de:	4381      	bics	r1, r0
200142e0:	0008      	movs	r0, r1
200142e2:	2130      	movs	r1, #48	; 0x30
200142e4:	4301      	orrs	r1, r0
200142e6:	6219      	str	r1, [r3, #32]
200142e8:	6014      	str	r4, [r2, #0]
200142ea:	bd70      	pop	{r4, r5, r6, pc}
200142ec:	50003018 	.word	0x50003018
200142f0:	20014db0 	.word	0x20014db0
200142f4:	50006000 	.word	0x50006000
200142f8:	00fffc3f 	.word	0x00fffc3f
200142fc:	320001c0 	.word	0x320001c0
20014300:	dfffffff 	.word	0xdfffffff
20014304:	fffffc1f 	.word	0xfffffc1f

20014308 <hw_cfg_max_range_perf>:
20014308:	2301      	movs	r3, #1
2001430a:	b510      	push	{r4, lr}
2001430c:	4a0d      	ldr	r2, [pc, #52]	; (20014344 <hw_cfg_max_range_perf+0x3c>)
2001430e:	480e      	ldr	r0, [pc, #56]	; (20014348 <hw_cfg_max_range_perf+0x40>)
20014310:	6814      	ldr	r4, [r2, #0]
20014312:	6013      	str	r3, [r2, #0]
20014314:	4b0d      	ldr	r3, [pc, #52]	; (2001434c <hw_cfg_max_range_perf+0x44>)
20014316:	6c19      	ldr	r1, [r3, #64]	; 0x40
20014318:	4008      	ands	r0, r1
2001431a:	21c8      	movs	r1, #200	; 0xc8
2001431c:	0089      	lsls	r1, r1, #2
2001431e:	4301      	orrs	r1, r0
20014320:	207f      	movs	r0, #127	; 0x7f
20014322:	6419      	str	r1, [r3, #64]	; 0x40
20014324:	69d9      	ldr	r1, [r3, #28]
20014326:	4381      	bics	r1, r0
20014328:	0008      	movs	r0, r1
2001432a:	2168      	movs	r1, #104	; 0x68
2001432c:	4301      	orrs	r1, r0
2001432e:	207c      	movs	r0, #124	; 0x7c
20014330:	61d9      	str	r1, [r3, #28]
20014332:	6a19      	ldr	r1, [r3, #32]
20014334:	4381      	bics	r1, r0
20014336:	0008      	movs	r0, r1
20014338:	2118      	movs	r1, #24
2001433a:	4301      	orrs	r1, r0
2001433c:	6219      	str	r1, [r3, #32]
2001433e:	6014      	str	r4, [r2, #0]
20014340:	bd10      	pop	{r4, pc}
20014342:	46c0      	nop			; (mov r8, r8)
20014344:	50003018 	.word	0x50003018
20014348:	fffffc1f 	.word	0xfffffc1f
2001434c:	50006000 	.word	0x50006000

20014350 <NMI_Handler>:
20014350:	b510      	push	{r4, lr}
20014352:	4b0b      	ldr	r3, [pc, #44]	; (20014380 <NMI_Handler+0x30>)
20014354:	681a      	ldr	r2, [r3, #0]
20014356:	1c51      	adds	r1, r2, #1
20014358:	6019      	str	r1, [r3, #0]
2001435a:	2a00      	cmp	r2, #0
2001435c:	d108      	bne.n	20014370 <NMI_Handler+0x20>
2001435e:	21c0      	movs	r1, #192	; 0xc0
20014360:	4b08      	ldr	r3, [pc, #32]	; (20014384 <NMI_Handler+0x34>)
20014362:	4809      	ldr	r0, [pc, #36]	; (20014388 <NMI_Handler+0x38>)
20014364:	0109      	lsls	r1, r1, #4
20014366:	5058      	str	r0, [r3, r1]
20014368:	2001      	movs	r0, #1
2001436a:	60d8      	str	r0, [r3, #12]
2001436c:	505a      	str	r2, [r3, r1]
2001436e:	bd10      	pop	{r4, pc}
20014370:	b672      	cpsid	i
20014372:	4b06      	ldr	r3, [pc, #24]	; (2001438c <NMI_Handler+0x3c>)
20014374:	2100      	movs	r1, #0
20014376:	6818      	ldr	r0, [r3, #0]
20014378:	4b05      	ldr	r3, [pc, #20]	; (20014390 <NMI_Handler+0x40>)
2001437a:	4798      	blx	r3
2001437c:	e7fe      	b.n	2001437c <NMI_Handler+0x2c>
2001437e:	46c0      	nop			; (mov r8, r8)
20014380:	20000bf8 	.word	0x20000bf8
20014384:	40008000 	.word	0x40008000
20014388:	1acce551 	.word	0x1acce551
2001438c:	20001280 	.word	0x20001280
20014390:	0000672d 	.word	0x0000672d

20014394 <ext_flash_write_page>:
20014394:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
20014396:	0004      	movs	r4, r0
20014398:	9100      	str	r1, [sp, #0]
2001439a:	9201      	str	r2, [sp, #4]
2001439c:	f3ef 8c10 	mrs	ip, PRIMASK
200143a0:	b672      	cpsid	i
200143a2:	2301      	movs	r3, #1
200143a4:	4a75      	ldr	r2, [pc, #468]	; (2001457c <ext_flash_write_page+0x1e8>)
200143a6:	2580      	movs	r5, #128	; 0x80
200143a8:	6013      	str	r3, [r2, #0]
200143aa:	2280      	movs	r2, #128	; 0x80
200143ac:	4b74      	ldr	r3, [pc, #464]	; (20014580 <ext_flash_write_page+0x1ec>)
200143ae:	0492      	lsls	r2, r2, #18
200143b0:	69d8      	ldr	r0, [r3, #28]
200143b2:	2680      	movs	r6, #128	; 0x80
200143b4:	0200      	lsls	r0, r0, #8
200143b6:	0a00      	lsrs	r0, r0, #8
200143b8:	601a      	str	r2, [r3, #0]
200143ba:	2280      	movs	r2, #128	; 0x80
200143bc:	4060      	eors	r0, r4
200143be:	2106      	movs	r1, #6
200143c0:	2408      	movs	r4, #8
200143c2:	0092      	lsls	r2, r2, #2
200143c4:	046d      	lsls	r5, r5, #17
200143c6:	0076      	lsls	r6, r6, #1
200143c8:	601a      	str	r2, [r3, #0]
200143ca:	0049      	lsls	r1, r1, #1
200143cc:	432a      	orrs	r2, r5
200143ce:	3c01      	subs	r4, #1
200143d0:	601a      	str	r2, [r3, #0]
200143d2:	b2c9      	uxtb	r1, r1
200143d4:	2c00      	cmp	r4, #0
200143d6:	d000      	beq.n	200143da <ext_flash_write_page+0x46>
200143d8:	e0ba      	b.n	20014550 <ext_flash_write_page+0x1bc>
200143da:	2280      	movs	r2, #128	; 0x80
200143dc:	0492      	lsls	r2, r2, #18
200143de:	601c      	str	r4, [r3, #0]
200143e0:	2580      	movs	r5, #128	; 0x80
200143e2:	601a      	str	r2, [r3, #0]
200143e4:	2680      	movs	r6, #128	; 0x80
200143e6:	601a      	str	r2, [r3, #0]
200143e8:	2280      	movs	r2, #128	; 0x80
200143ea:	2132      	movs	r1, #50	; 0x32
200143ec:	3408      	adds	r4, #8
200143ee:	0092      	lsls	r2, r2, #2
200143f0:	046d      	lsls	r5, r5, #17
200143f2:	0076      	lsls	r6, r6, #1
200143f4:	601a      	str	r2, [r3, #0]
200143f6:	0049      	lsls	r1, r1, #1
200143f8:	432a      	orrs	r2, r5
200143fa:	3c01      	subs	r4, #1
200143fc:	601a      	str	r2, [r3, #0]
200143fe:	b2c9      	uxtb	r1, r1
20014400:	2c00      	cmp	r4, #0
20014402:	d000      	beq.n	20014406 <ext_flash_write_page+0x72>
20014404:	e0ab      	b.n	2001455e <ext_flash_write_page+0x1ca>
20014406:	2680      	movs	r6, #128	; 0x80
20014408:	2580      	movs	r5, #128	; 0x80
2001440a:	0c01      	lsrs	r1, r0, #16
2001440c:	b2c9      	uxtb	r1, r1
2001440e:	3408      	adds	r4, #8
20014410:	0076      	lsls	r6, r6, #1
20014412:	046d      	lsls	r5, r5, #17
20014414:	2780      	movs	r7, #128	; 0x80
20014416:	b24a      	sxtb	r2, r1
20014418:	17d2      	asrs	r2, r2, #31
2001441a:	4032      	ands	r2, r6
2001441c:	00bf      	lsls	r7, r7, #2
2001441e:	19d2      	adds	r2, r2, r7
20014420:	601a      	str	r2, [r3, #0]
20014422:	0049      	lsls	r1, r1, #1
20014424:	432a      	orrs	r2, r5
20014426:	3c01      	subs	r4, #1
20014428:	601a      	str	r2, [r3, #0]
2001442a:	b2c9      	uxtb	r1, r1
2001442c:	2c00      	cmp	r4, #0
2001442e:	d1f1      	bne.n	20014414 <ext_flash_write_page+0x80>
20014430:	2680      	movs	r6, #128	; 0x80
20014432:	2580      	movs	r5, #128	; 0x80
20014434:	0a01      	lsrs	r1, r0, #8
20014436:	b2c9      	uxtb	r1, r1
20014438:	3408      	adds	r4, #8
2001443a:	0076      	lsls	r6, r6, #1
2001443c:	046d      	lsls	r5, r5, #17
2001443e:	2780      	movs	r7, #128	; 0x80
20014440:	b24a      	sxtb	r2, r1
20014442:	17d2      	asrs	r2, r2, #31
20014444:	4032      	ands	r2, r6
20014446:	00bf      	lsls	r7, r7, #2
20014448:	19d2      	adds	r2, r2, r7
2001444a:	601a      	str	r2, [r3, #0]
2001444c:	0049      	lsls	r1, r1, #1
2001444e:	432a      	orrs	r2, r5
20014450:	3c01      	subs	r4, #1
20014452:	601a      	str	r2, [r3, #0]
20014454:	b2c9      	uxtb	r1, r1
20014456:	2c00      	cmp	r4, #0
20014458:	d1f1      	bne.n	2001443e <ext_flash_write_page+0xaa>
2001445a:	2580      	movs	r5, #128	; 0x80
2001445c:	2480      	movs	r4, #128	; 0x80
2001445e:	2108      	movs	r1, #8
20014460:	b2c0      	uxtb	r0, r0
20014462:	006d      	lsls	r5, r5, #1
20014464:	0464      	lsls	r4, r4, #17
20014466:	2680      	movs	r6, #128	; 0x80
20014468:	b242      	sxtb	r2, r0
2001446a:	17d2      	asrs	r2, r2, #31
2001446c:	402a      	ands	r2, r5
2001446e:	00b6      	lsls	r6, r6, #2
20014470:	1992      	adds	r2, r2, r6
20014472:	601a      	str	r2, [r3, #0]
20014474:	0040      	lsls	r0, r0, #1
20014476:	4322      	orrs	r2, r4
20014478:	3901      	subs	r1, #1
2001447a:	601a      	str	r2, [r3, #0]
2001447c:	b2c0      	uxtb	r0, r0
2001447e:	2900      	cmp	r1, #0
20014480:	d1f1      	bne.n	20014466 <ext_flash_write_page+0xd2>
20014482:	9a00      	ldr	r2, [sp, #0]
20014484:	9801      	ldr	r0, [sp, #4]
20014486:	1882      	adds	r2, r0, r2
20014488:	9200      	str	r2, [sp, #0]
2001448a:	2510      	movs	r5, #16
2001448c:	2680      	movs	r6, #128	; 0x80
2001448e:	7802      	ldrb	r2, [r0, #0]
20014490:	0076      	lsls	r6, r6, #1
20014492:	0914      	lsrs	r4, r2, #4
20014494:	00e1      	lsls	r1, r4, #3
20014496:	4029      	ands	r1, r5
20014498:	01a5      	lsls	r5, r4, #6
2001449a:	4035      	ands	r5, r6
2001449c:	430d      	orrs	r5, r1
2001449e:	2780      	movs	r7, #128	; 0x80
200144a0:	2101      	movs	r1, #1
200144a2:	017f      	lsls	r7, r7, #5
200144a4:	4021      	ands	r1, r4
200144a6:	0264      	lsls	r4, r4, #9
200144a8:	403c      	ands	r4, r7
200144aa:	4329      	orrs	r1, r5
200144ac:	4321      	orrs	r1, r4
200144ae:	4d35      	ldr	r5, [pc, #212]	; (20014584 <ext_flash_write_page+0x1f0>)
200144b0:	4c35      	ldr	r4, [pc, #212]	; (20014588 <ext_flash_write_page+0x1f4>)
200144b2:	0209      	lsls	r1, r1, #8
200144b4:	430c      	orrs	r4, r1
200144b6:	4329      	orrs	r1, r5
200144b8:	601c      	str	r4, [r3, #0]
200144ba:	6019      	str	r1, [r3, #0]
200144bc:	210f      	movs	r1, #15
200144be:	2410      	movs	r4, #16
200144c0:	4011      	ands	r1, r2
200144c2:	00cf      	lsls	r7, r1, #3
200144c4:	4027      	ands	r7, r4
200144c6:	018c      	lsls	r4, r1, #6
200144c8:	4034      	ands	r4, r6
200144ca:	433c      	orrs	r4, r7
200144cc:	2780      	movs	r7, #128	; 0x80
200144ce:	3eff      	subs	r6, #255	; 0xff
200144d0:	4032      	ands	r2, r6
200144d2:	0249      	lsls	r1, r1, #9
200144d4:	017f      	lsls	r7, r7, #5
200144d6:	4314      	orrs	r4, r2
200144d8:	4039      	ands	r1, r7
200144da:	4e2b      	ldr	r6, [pc, #172]	; (20014588 <ext_flash_write_page+0x1f4>)
200144dc:	430c      	orrs	r4, r1
200144de:	0224      	lsls	r4, r4, #8
200144e0:	4326      	orrs	r6, r4
200144e2:	432c      	orrs	r4, r5
200144e4:	601e      	str	r6, [r3, #0]
200144e6:	601c      	str	r4, [r3, #0]
200144e8:	9a00      	ldr	r2, [sp, #0]
200144ea:	3001      	adds	r0, #1
200144ec:	4282      	cmp	r2, r0
200144ee:	d1cc      	bne.n	2001448a <ext_flash_write_page+0xf6>
200144f0:	2080      	movs	r0, #128	; 0x80
200144f2:	2200      	movs	r2, #0
200144f4:	2580      	movs	r5, #128	; 0x80
200144f6:	0480      	lsls	r0, r0, #18
200144f8:	601a      	str	r2, [r3, #0]
200144fa:	046d      	lsls	r5, r5, #17
200144fc:	6018      	str	r0, [r3, #0]
200144fe:	2180      	movs	r1, #128	; 0x80
20014500:	2208      	movs	r2, #8
20014502:	2405      	movs	r4, #5
20014504:	6018      	str	r0, [r3, #0]
20014506:	0089      	lsls	r1, r1, #2
20014508:	6019      	str	r1, [r3, #0]
2001450a:	0064      	lsls	r4, r4, #1
2001450c:	4329      	orrs	r1, r5
2001450e:	3a01      	subs	r2, #1
20014510:	6019      	str	r1, [r3, #0]
20014512:	b2e4      	uxtb	r4, r4
20014514:	2a00      	cmp	r2, #0
20014516:	d129      	bne.n	2001456c <ext_flash_write_page+0x1d8>
20014518:	2108      	movs	r1, #8
2001451a:	2480      	movs	r4, #128	; 0x80
2001451c:	2702      	movs	r7, #2
2001451e:	2600      	movs	r6, #0
20014520:	601e      	str	r6, [r3, #0]
20014522:	4e1a      	ldr	r6, [pc, #104]	; (2001458c <ext_flash_write_page+0x1f8>)
20014524:	601d      	str	r5, [r3, #0]
20014526:	601e      	str	r6, [r3, #0]
20014528:	685e      	ldr	r6, [r3, #4]
2001452a:	423e      	tst	r6, r7
2001452c:	d000      	beq.n	20014530 <ext_flash_write_page+0x19c>
2001452e:	4322      	orrs	r2, r4
20014530:	3901      	subs	r1, #1
20014532:	0864      	lsrs	r4, r4, #1
20014534:	2900      	cmp	r1, #0
20014536:	d1f2      	bne.n	2001451e <ext_flash_write_page+0x18a>
20014538:	6019      	str	r1, [r3, #0]
2001453a:	6018      	str	r0, [r3, #0]
2001453c:	07d2      	lsls	r2, r2, #31
2001453e:	d4de      	bmi.n	200144fe <ext_flash_write_page+0x16a>
20014540:	2290      	movs	r2, #144	; 0x90
20014542:	0552      	lsls	r2, r2, #21
20014544:	601a      	str	r2, [r3, #0]
20014546:	4b0d      	ldr	r3, [pc, #52]	; (2001457c <ext_flash_write_page+0x1e8>)
20014548:	6019      	str	r1, [r3, #0]
2001454a:	f38c 8810 	msr	PRIMASK, ip
2001454e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
20014550:	2780      	movs	r7, #128	; 0x80
20014552:	b24a      	sxtb	r2, r1
20014554:	17d2      	asrs	r2, r2, #31
20014556:	4032      	ands	r2, r6
20014558:	00bf      	lsls	r7, r7, #2
2001455a:	19d2      	adds	r2, r2, r7
2001455c:	e734      	b.n	200143c8 <ext_flash_write_page+0x34>
2001455e:	2780      	movs	r7, #128	; 0x80
20014560:	b24a      	sxtb	r2, r1
20014562:	17d2      	asrs	r2, r2, #31
20014564:	4032      	ands	r2, r6
20014566:	00bf      	lsls	r7, r7, #2
20014568:	19d2      	adds	r2, r2, r7
2001456a:	e743      	b.n	200143f4 <ext_flash_write_page+0x60>
2001456c:	2680      	movs	r6, #128	; 0x80
2001456e:	b261      	sxtb	r1, r4
20014570:	0076      	lsls	r6, r6, #1
20014572:	17c9      	asrs	r1, r1, #31
20014574:	4031      	ands	r1, r6
20014576:	19b6      	adds	r6, r6, r6
20014578:	1989      	adds	r1, r1, r6
2001457a:	e7c5      	b.n	20014508 <ext_flash_write_page+0x174>
2001457c:	4000303c 	.word	0x4000303c
20014580:	4000f000 	.word	0x4000f000
20014584:	01222200 	.word	0x01222200
20014588:	00222200 	.word	0x00222200
2001458c:	01000002 	.word	0x01000002

20014590 <macronix_exit_deep_power_down>:
20014590:	2301      	movs	r3, #1
20014592:	2280      	movs	r2, #128	; 0x80
20014594:	b5f0      	push	{r4, r5, r6, r7, lr}
20014596:	2680      	movs	r6, #128	; 0x80
20014598:	2580      	movs	r5, #128	; 0x80
2001459a:	2008      	movs	r0, #8
2001459c:	21eb      	movs	r1, #235	; 0xeb
2001459e:	4c20      	ldr	r4, [pc, #128]	; (20014620 <macronix_exit_deep_power_down+0x90>)
200145a0:	0492      	lsls	r2, r2, #18
200145a2:	6023      	str	r3, [r4, #0]
200145a4:	4b1f      	ldr	r3, [pc, #124]	; (20014624 <macronix_exit_deep_power_down+0x94>)
200145a6:	0076      	lsls	r6, r6, #1
200145a8:	601a      	str	r2, [r3, #0]
200145aa:	046d      	lsls	r5, r5, #17
200145ac:	2780      	movs	r7, #128	; 0x80
200145ae:	b24a      	sxtb	r2, r1
200145b0:	17d2      	asrs	r2, r2, #31
200145b2:	4032      	ands	r2, r6
200145b4:	00bf      	lsls	r7, r7, #2
200145b6:	19d2      	adds	r2, r2, r7
200145b8:	601a      	str	r2, [r3, #0]
200145ba:	0049      	lsls	r1, r1, #1
200145bc:	432a      	orrs	r2, r5
200145be:	3801      	subs	r0, #1
200145c0:	601a      	str	r2, [r3, #0]
200145c2:	b2c9      	uxtb	r1, r1
200145c4:	2800      	cmp	r0, #0
200145c6:	d1f1      	bne.n	200145ac <macronix_exit_deep_power_down+0x1c>
200145c8:	2206      	movs	r2, #6
200145ca:	4817      	ldr	r0, [pc, #92]	; (20014628 <macronix_exit_deep_power_down+0x98>)
200145cc:	4917      	ldr	r1, [pc, #92]	; (2001462c <macronix_exit_deep_power_down+0x9c>)
200145ce:	3a01      	subs	r2, #1
200145d0:	6018      	str	r0, [r3, #0]
200145d2:	6019      	str	r1, [r3, #0]
200145d4:	2a00      	cmp	r2, #0
200145d6:	d1fa      	bne.n	200145ce <macronix_exit_deep_power_down+0x3e>
200145d8:	4915      	ldr	r1, [pc, #84]	; (20014630 <macronix_exit_deep_power_down+0xa0>)
200145da:	4816      	ldr	r0, [pc, #88]	; (20014634 <macronix_exit_deep_power_down+0xa4>)
200145dc:	6019      	str	r1, [r3, #0]
200145de:	4916      	ldr	r1, [pc, #88]	; (20014638 <macronix_exit_deep_power_down+0xa8>)
200145e0:	6019      	str	r1, [r3, #0]
200145e2:	4916      	ldr	r1, [pc, #88]	; (2001463c <macronix_exit_deep_power_down+0xac>)
200145e4:	6019      	str	r1, [r3, #0]
200145e6:	4916      	ldr	r1, [pc, #88]	; (20014640 <macronix_exit_deep_power_down+0xb0>)
200145e8:	6019      	str	r1, [r3, #0]
200145ea:	2180      	movs	r1, #128	; 0x80
200145ec:	0449      	lsls	r1, r1, #17
200145ee:	601a      	str	r2, [r3, #0]
200145f0:	6019      	str	r1, [r3, #0]
200145f2:	601a      	str	r2, [r3, #0]
200145f4:	6019      	str	r1, [r3, #0]
200145f6:	601a      	str	r2, [r3, #0]
200145f8:	6019      	str	r1, [r3, #0]
200145fa:	601a      	str	r2, [r3, #0]
200145fc:	6019      	str	r1, [r3, #0]
200145fe:	601a      	str	r2, [r3, #0]
20014600:	6019      	str	r1, [r3, #0]
20014602:	6018      	str	r0, [r3, #0]
20014604:	601a      	str	r2, [r3, #0]
20014606:	6019      	str	r1, [r3, #0]
20014608:	490e      	ldr	r1, [pc, #56]	; (20014644 <macronix_exit_deep_power_down+0xb4>)
2001460a:	2001      	movs	r0, #1
2001460c:	6019      	str	r1, [r3, #0]
2001460e:	2180      	movs	r1, #128	; 0x80
20014610:	0489      	lsls	r1, r1, #18
20014612:	601a      	str	r2, [r3, #0]
20014614:	6019      	str	r1, [r3, #0]
20014616:	2190      	movs	r1, #144	; 0x90
20014618:	0549      	lsls	r1, r1, #21
2001461a:	6019      	str	r1, [r3, #0]
2001461c:	6022      	str	r2, [r4, #0]
2001461e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20014620:	4000303c 	.word	0x4000303c
20014624:	4000f000 	.word	0x4000f000
20014628:	00222200 	.word	0x00222200
2001462c:	01222200 	.word	0x01222200
20014630:	00232300 	.word	0x00232300
20014634:	010000f0 	.word	0x010000f0
20014638:	01232300 	.word	0x01232300
2001463c:	00323200 	.word	0x00323200
20014640:	01323200 	.word	0x01323200
20014644:	0100000f 	.word	0x0100000f

20014648 <winbond_deep_power_down>:
20014648:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001464a:	2388      	movs	r3, #136	; 0x88
2001464c:	2401      	movs	r4, #1
2001464e:	4d09      	ldr	r5, [pc, #36]	; (20014674 <winbond_deep_power_down+0x2c>)
20014650:	4e09      	ldr	r6, [pc, #36]	; (20014678 <winbond_deep_power_down+0x30>)
20014652:	4f0a      	ldr	r7, [pc, #40]	; (2001467c <winbond_deep_power_down+0x34>)
20014654:	059b      	lsls	r3, r3, #22
20014656:	602c      	str	r4, [r5, #0]
20014658:	4809      	ldr	r0, [pc, #36]	; (20014680 <winbond_deep_power_down+0x38>)
2001465a:	6033      	str	r3, [r6, #0]
2001465c:	603c      	str	r4, [r7, #0]
2001465e:	4b09      	ldr	r3, [pc, #36]	; (20014684 <winbond_deep_power_down+0x3c>)
20014660:	4798      	blx	r3
20014662:	2302      	movs	r3, #2
20014664:	603b      	str	r3, [r7, #0]
20014666:	2390      	movs	r3, #144	; 0x90
20014668:	055b      	lsls	r3, r3, #21
2001466a:	6033      	str	r3, [r6, #0]
2001466c:	2300      	movs	r3, #0
2001466e:	0020      	movs	r0, r4
20014670:	602b      	str	r3, [r5, #0]
20014672:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20014674:	4000303c 	.word	0x4000303c
20014678:	4000f000 	.word	0x4000f000
2001467c:	4000302c 	.word	0x4000302c
20014680:	0003cd70 	.word	0x0003cd70
20014684:	00007a05 	.word	0x00007a05

20014688 <macronix_deep_power_down>:
20014688:	2188      	movs	r1, #136	; 0x88
2001468a:	b570      	push	{r4, r5, r6, lr}
2001468c:	2401      	movs	r4, #1
2001468e:	4b0a      	ldr	r3, [pc, #40]	; (200146b8 <macronix_deep_power_down+0x30>)
20014690:	4a0a      	ldr	r2, [pc, #40]	; (200146bc <macronix_deep_power_down+0x34>)
20014692:	0589      	lsls	r1, r1, #22
20014694:	601c      	str	r4, [r3, #0]
20014696:	6011      	str	r1, [r2, #0]
20014698:	2200      	movs	r2, #0
2001469a:	4e09      	ldr	r6, [pc, #36]	; (200146c0 <macronix_deep_power_down+0x38>)
2001469c:	4d09      	ldr	r5, [pc, #36]	; (200146c4 <macronix_deep_power_down+0x3c>)
2001469e:	601a      	str	r2, [r3, #0]
200146a0:	0030      	movs	r0, r6
200146a2:	602c      	str	r4, [r5, #0]
200146a4:	4b08      	ldr	r3, [pc, #32]	; (200146c8 <macronix_deep_power_down+0x40>)
200146a6:	4798      	blx	r3
200146a8:	0030      	movs	r0, r6
200146aa:	4b08      	ldr	r3, [pc, #32]	; (200146cc <macronix_deep_power_down+0x44>)
200146ac:	4798      	blx	r3
200146ae:	2302      	movs	r3, #2
200146b0:	0020      	movs	r0, r4
200146b2:	602b      	str	r3, [r5, #0]
200146b4:	bd70      	pop	{r4, r5, r6, pc}
200146b6:	46c0      	nop			; (mov r8, r8)
200146b8:	4000303c 	.word	0x4000303c
200146bc:	4000f000 	.word	0x4000f000
200146c0:	0003cd70 	.word	0x0003cd70
200146c4:	4000302c 	.word	0x4000302c
200146c8:	00007971 	.word	0x00007971
200146cc:	00007a05 	.word	0x00007a05

200146d0 <macronix_rv_plf_back_from_retain_all>:
200146d0:	20014591 00000000                       .E. ....

200146d8 <macronix_rv_plf_retain_all>:
200146d8:	20014689 00000000                       .F. ....

200146e0 <winbond_rv_plf_retain_all>:
200146e0:	20014649 00000000                       IF. ....

200146e8 <pmu_soc_off>:
200146e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200146ea:	4b17      	ldr	r3, [pc, #92]	; (20014748 <pmu_soc_off+0x60>)
200146ec:	781b      	ldrb	r3, [r3, #0]
200146ee:	2b00      	cmp	r3, #0
200146f0:	d129      	bne.n	20014746 <pmu_soc_off+0x5e>
200146f2:	2401      	movs	r4, #1
200146f4:	4b15      	ldr	r3, [pc, #84]	; (2001474c <pmu_soc_off+0x64>)
200146f6:	4d16      	ldr	r5, [pc, #88]	; (20014750 <pmu_soc_off+0x68>)
200146f8:	2218      	movs	r2, #24
200146fa:	2109      	movs	r1, #9
200146fc:	0028      	movs	r0, r5
200146fe:	4f15      	ldr	r7, [pc, #84]	; (20014754 <pmu_soc_off+0x6c>)
20014700:	601c      	str	r4, [r3, #0]
20014702:	47b8      	blx	r7
20014704:	4220      	tst	r0, r4
20014706:	d118      	bne.n	2001473a <pmu_soc_off+0x52>
20014708:	2240      	movs	r2, #64	; 0x40
2001470a:	2109      	movs	r1, #9
2001470c:	0028      	movs	r0, r5
2001470e:	47b8      	blx	r7
20014710:	4c11      	ldr	r4, [pc, #68]	; (20014758 <pmu_soc_off+0x70>)
20014712:	2240      	movs	r2, #64	; 0x40
20014714:	4004      	ands	r4, r0
20014716:	0023      	movs	r3, r4
20014718:	2109      	movs	r1, #9
2001471a:	0028      	movs	r0, r5
2001471c:	4e0f      	ldr	r6, [pc, #60]	; (2001475c <pmu_soc_off+0x74>)
2001471e:	47b0      	blx	r6
20014720:	2109      	movs	r1, #9
20014722:	2240      	movs	r2, #64	; 0x40
20014724:	0028      	movs	r0, r5
20014726:	47b8      	blx	r7
20014728:	0001      	movs	r1, r0
2001472a:	4284      	cmp	r4, r0
2001472c:	d005      	beq.n	2001473a <pmu_soc_off+0x52>
2001472e:	2376      	movs	r3, #118	; 0x76
20014730:	0020      	movs	r0, r4
20014732:	4a0b      	ldr	r2, [pc, #44]	; (20014760 <pmu_soc_off+0x78>)
20014734:	4c0b      	ldr	r4, [pc, #44]	; (20014764 <pmu_soc_off+0x7c>)
20014736:	33ff      	adds	r3, #255	; 0xff
20014738:	47a0      	blx	r4
2001473a:	2300      	movs	r3, #0
2001473c:	4a03      	ldr	r2, [pc, #12]	; (2001474c <pmu_soc_off+0x64>)
2001473e:	6013      	str	r3, [r2, #0]
20014740:	4a01      	ldr	r2, [pc, #4]	; (20014748 <pmu_soc_off+0x60>)
20014742:	3301      	adds	r3, #1
20014744:	7013      	strb	r3, [r2, #0]
20014746:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20014748:	20014dd0 	.word	0x20014dd0
2001474c:	5000301c 	.word	0x5000301c
20014750:	0003cd78 	.word	0x0003cd78
20014754:	0000777f 	.word	0x0000777f
20014758:	fffff7ff 	.word	0xfffff7ff
2001475c:	0000779f 	.word	0x0000779f
20014760:	10005c48 	.word	0x10005c48
20014764:	00006641 	.word	0x00006641

20014768 <pmu_hibernate>:
20014768:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001476a:	4b22      	ldr	r3, [pc, #136]	; (200147f4 <pmu_hibernate+0x8c>)
2001476c:	0014      	movs	r4, r2
2001476e:	781b      	ldrb	r3, [r3, #0]
20014770:	2b04      	cmp	r3, #4
20014772:	d939      	bls.n	200147e8 <pmu_hibernate+0x80>
20014774:	2301      	movs	r3, #1
20014776:	4a20      	ldr	r2, [pc, #128]	; (200147f8 <pmu_hibernate+0x90>)
20014778:	4820      	ldr	r0, [pc, #128]	; (200147fc <pmu_hibernate+0x94>)
2001477a:	6013      	str	r3, [r2, #0]
2001477c:	6806      	ldr	r6, [r0, #0]
2001477e:	2000      	movs	r0, #0
20014780:	401e      	ands	r6, r3
20014782:	4b1f      	ldr	r3, [pc, #124]	; (20014800 <pmu_hibernate+0x98>)
20014784:	6010      	str	r0, [r2, #0]
20014786:	681b      	ldr	r3, [r3, #0]
20014788:	2b01      	cmp	r3, #1
2001478a:	d103      	bne.n	20014794 <pmu_hibernate+0x2c>
2001478c:	4b1d      	ldr	r3, [pc, #116]	; (20014804 <pmu_hibernate+0x9c>)
2001478e:	6818      	ldr	r0, [r3, #0]
20014790:	1e43      	subs	r3, r0, #1
20014792:	4198      	sbcs	r0, r3
20014794:	4b1c      	ldr	r3, [pc, #112]	; (20014808 <pmu_hibernate+0xa0>)
20014796:	0c24      	lsrs	r4, r4, #16
20014798:	681a      	ldr	r2, [r3, #0]
2001479a:	2301      	movs	r3, #1
2001479c:	2c00      	cmp	r4, #0
2001479e:	d107      	bne.n	200147b0 <pmu_hibernate+0x48>
200147a0:	4c1a      	ldr	r4, [pc, #104]	; (2001480c <pmu_hibernate+0xa4>)
200147a2:	6aa4      	ldr	r4, [r4, #40]	; 0x28
200147a4:	2c00      	cmp	r4, #0
200147a6:	d103      	bne.n	200147b0 <pmu_hibernate+0x48>
200147a8:	4b19      	ldr	r3, [pc, #100]	; (20014810 <pmu_hibernate+0xa8>)
200147aa:	6a9b      	ldr	r3, [r3, #40]	; 0x28
200147ac:	1e5c      	subs	r4, r3, #1
200147ae:	41a3      	sbcs	r3, r4
200147b0:	2e00      	cmp	r6, #0
200147b2:	d000      	beq.n	200147b6 <pmu_hibernate+0x4e>
200147b4:	2640      	movs	r6, #64	; 0x40
200147b6:	3a01      	subs	r2, #1
200147b8:	4254      	negs	r4, r2
200147ba:	4162      	adcs	r2, r4
200147bc:	4c15      	ldr	r4, [pc, #84]	; (20014814 <pmu_hibernate+0xac>)
200147be:	0140      	lsls	r0, r0, #5
200147c0:	7825      	ldrb	r5, [r4, #0]
200147c2:	0112      	lsls	r2, r2, #4
200147c4:	1e6c      	subs	r4, r5, #1
200147c6:	41a5      	sbcs	r5, r4
200147c8:	4c13      	ldr	r4, [pc, #76]	; (20014818 <pmu_hibernate+0xb0>)
200147ca:	00ed      	lsls	r5, r5, #3
200147cc:	7827      	ldrb	r7, [r4, #0]
200147ce:	2f00      	cmp	r7, #0
200147d0:	d10c      	bne.n	200147ec <pmu_hibernate+0x84>
200147d2:	1e0c      	subs	r4, r1, #0
200147d4:	d000      	beq.n	200147d8 <pmu_hibernate+0x70>
200147d6:	003c      	movs	r4, r7
200147d8:	4333      	orrs	r3, r6
200147da:	4303      	orrs	r3, r0
200147dc:	4313      	orrs	r3, r2
200147de:	432b      	orrs	r3, r5
200147e0:	4323      	orrs	r3, r4
200147e2:	d101      	bne.n	200147e8 <pmu_hibernate+0x80>
200147e4:	4b0d      	ldr	r3, [pc, #52]	; (2001481c <pmu_hibernate+0xb4>)
200147e6:	4798      	blx	r3
200147e8:	2001      	movs	r0, #1
200147ea:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200147ec:	2900      	cmp	r1, #0
200147ee:	d0fb      	beq.n	200147e8 <pmu_hibernate+0x80>
200147f0:	2404      	movs	r4, #4
200147f2:	e7f1      	b.n	200147d8 <pmu_hibernate+0x70>
200147f4:	20000fde 	.word	0x20000fde
200147f8:	50003020 	.word	0x50003020
200147fc:	500080f8 	.word	0x500080f8
20014800:	40003028 	.word	0x40003028
20014804:	4000a0c4 	.word	0x4000a0c4
20014808:	40003030 	.word	0x40003030
2001480c:	40010000 	.word	0x40010000
20014810:	40011000 	.word	0x40011000
20014814:	200012c8 	.word	0x200012c8
20014818:	200012c9 	.word	0x200012c9
2001481c:	200146e9 	.word	0x200146e9

20014820 <user_rv_plf_hibernate.0>:
20014820:	20014769 00000000                       iG. ....

20014828 <user_init_check_brwnout>:
20014828:	b5f0      	push	{r4, r5, r6, r7, lr}
2001482a:	b087      	sub	sp, #28
2001482c:	9302      	str	r3, [sp, #8]
2001482e:	4b71      	ldr	r3, [pc, #452]	; (200149f4 <user_init_check_brwnout+0x1cc>)
20014830:	9004      	str	r0, [sp, #16]
20014832:	7818      	ldrb	r0, [r3, #0]
20014834:	9101      	str	r1, [sp, #4]
20014836:	9205      	str	r2, [sp, #20]
20014838:	2800      	cmp	r0, #0
2001483a:	d002      	beq.n	20014842 <user_init_check_brwnout+0x1a>
2001483c:	2001      	movs	r0, #1
2001483e:	b007      	add	sp, #28
20014840:	bdf0      	pop	{r4, r5, r6, r7, pc}
20014842:	2301      	movs	r3, #1
20014844:	4c6c      	ldr	r4, [pc, #432]	; (200149f8 <user_init_check_brwnout+0x1d0>)
20014846:	4a6d      	ldr	r2, [pc, #436]	; (200149fc <user_init_check_brwnout+0x1d4>)
20014848:	6023      	str	r3, [r4, #0]
2001484a:	6852      	ldr	r2, [r2, #4]
2001484c:	496c      	ldr	r1, [pc, #432]	; (20014a00 <user_init_check_brwnout+0x1d8>)
2001484e:	40da      	lsrs	r2, r3
20014850:	4393      	bics	r3, r2
20014852:	700b      	strb	r3, [r1, #0]
20014854:	6020      	str	r0, [r4, #0]
20014856:	780b      	ldrb	r3, [r1, #0]
20014858:	2b00      	cmp	r3, #0
2001485a:	d103      	bne.n	20014864 <user_init_check_brwnout+0x3c>
2001485c:	4b69      	ldr	r3, [pc, #420]	; (20014a04 <user_init_check_brwnout+0x1dc>)
2001485e:	781b      	ldrb	r3, [r3, #0]
20014860:	2b00      	cmp	r3, #0
20014862:	d0eb      	beq.n	2001483c <user_init_check_brwnout+0x14>
20014864:	4b68      	ldr	r3, [pc, #416]	; (20014a08 <user_init_check_brwnout+0x1e0>)
20014866:	4869      	ldr	r0, [pc, #420]	; (20014a0c <user_init_check_brwnout+0x1e4>)
20014868:	4798      	blx	r3
2001486a:	f3ef 8310 	mrs	r3, PRIMASK
2001486e:	9303      	str	r3, [sp, #12]
20014870:	b672      	cpsid	i
20014872:	2301      	movs	r3, #1
20014874:	4a66      	ldr	r2, [pc, #408]	; (20014a10 <user_init_check_brwnout+0x1e8>)
20014876:	4d67      	ldr	r5, [pc, #412]	; (20014a14 <user_init_check_brwnout+0x1ec>)
20014878:	6013      	str	r3, [r2, #0]
2001487a:	2109      	movs	r1, #9
2001487c:	2240      	movs	r2, #64	; 0x40
2001487e:	0028      	movs	r0, r5
20014880:	2480      	movs	r4, #128	; 0x80
20014882:	4e65      	ldr	r6, [pc, #404]	; (20014a18 <user_init_check_brwnout+0x1f0>)
20014884:	47b0      	blx	r6
20014886:	01e4      	lsls	r4, r4, #7
20014888:	4220      	tst	r0, r4
2001488a:	d112      	bne.n	200148b2 <user_init_check_brwnout+0x8a>
2001488c:	4304      	orrs	r4, r0
2001488e:	0023      	movs	r3, r4
20014890:	2240      	movs	r2, #64	; 0x40
20014892:	2109      	movs	r1, #9
20014894:	0028      	movs	r0, r5
20014896:	4f61      	ldr	r7, [pc, #388]	; (20014a1c <user_init_check_brwnout+0x1f4>)
20014898:	47b8      	blx	r7
2001489a:	2109      	movs	r1, #9
2001489c:	2240      	movs	r2, #64	; 0x40
2001489e:	0028      	movs	r0, r5
200148a0:	47b0      	blx	r6
200148a2:	0001      	movs	r1, r0
200148a4:	4284      	cmp	r4, r0
200148a6:	d004      	beq.n	200148b2 <user_init_check_brwnout+0x8a>
200148a8:	0020      	movs	r0, r4
200148aa:	2342      	movs	r3, #66	; 0x42
200148ac:	4a5c      	ldr	r2, [pc, #368]	; (20014a20 <user_init_check_brwnout+0x1f8>)
200148ae:	4c5d      	ldr	r4, [pc, #372]	; (20014a24 <user_init_check_brwnout+0x1fc>)
200148b0:	47a0      	blx	r4
200148b2:	4d58      	ldr	r5, [pc, #352]	; (20014a14 <user_init_check_brwnout+0x1ec>)
200148b4:	2218      	movs	r2, #24
200148b6:	2109      	movs	r1, #9
200148b8:	0028      	movs	r0, r5
200148ba:	4e57      	ldr	r6, [pc, #348]	; (20014a18 <user_init_check_brwnout+0x1f0>)
200148bc:	47b0      	blx	r6
200148be:	2401      	movs	r4, #1
200148c0:	4220      	tst	r0, r4
200148c2:	d112      	bne.n	200148ea <user_init_check_brwnout+0xc2>
200148c4:	4304      	orrs	r4, r0
200148c6:	0023      	movs	r3, r4
200148c8:	2218      	movs	r2, #24
200148ca:	2109      	movs	r1, #9
200148cc:	0028      	movs	r0, r5
200148ce:	4f53      	ldr	r7, [pc, #332]	; (20014a1c <user_init_check_brwnout+0x1f4>)
200148d0:	47b8      	blx	r7
200148d2:	2109      	movs	r1, #9
200148d4:	2218      	movs	r2, #24
200148d6:	0028      	movs	r0, r5
200148d8:	47b0      	blx	r6
200148da:	0001      	movs	r1, r0
200148dc:	4284      	cmp	r4, r0
200148de:	d004      	beq.n	200148ea <user_init_check_brwnout+0xc2>
200148e0:	0020      	movs	r0, r4
200148e2:	2348      	movs	r3, #72	; 0x48
200148e4:	4a4e      	ldr	r2, [pc, #312]	; (20014a20 <user_init_check_brwnout+0x1f8>)
200148e6:	4c4f      	ldr	r4, [pc, #316]	; (20014a24 <user_init_check_brwnout+0x1fc>)
200148e8:	47a0      	blx	r4
200148ea:	4d4a      	ldr	r5, [pc, #296]	; (20014a14 <user_init_check_brwnout+0x1ec>)
200148ec:	2238      	movs	r2, #56	; 0x38
200148ee:	2109      	movs	r1, #9
200148f0:	0028      	movs	r0, r5
200148f2:	2480      	movs	r4, #128	; 0x80
200148f4:	4e48      	ldr	r6, [pc, #288]	; (20014a18 <user_init_check_brwnout+0x1f0>)
200148f6:	47b0      	blx	r6
200148f8:	0264      	lsls	r4, r4, #9
200148fa:	4220      	tst	r0, r4
200148fc:	d114      	bne.n	20014928 <user_init_check_brwnout+0x100>
200148fe:	4b4a      	ldr	r3, [pc, #296]	; (20014a28 <user_init_check_brwnout+0x200>)
20014900:	2238      	movs	r2, #56	; 0x38
20014902:	4018      	ands	r0, r3
20014904:	4304      	orrs	r4, r0
20014906:	0023      	movs	r3, r4
20014908:	2109      	movs	r1, #9
2001490a:	0028      	movs	r0, r5
2001490c:	4f43      	ldr	r7, [pc, #268]	; (20014a1c <user_init_check_brwnout+0x1f4>)
2001490e:	47b8      	blx	r7
20014910:	2109      	movs	r1, #9
20014912:	2238      	movs	r2, #56	; 0x38
20014914:	0028      	movs	r0, r5
20014916:	47b0      	blx	r6
20014918:	0001      	movs	r1, r0
2001491a:	4284      	cmp	r4, r0
2001491c:	d004      	beq.n	20014928 <user_init_check_brwnout+0x100>
2001491e:	0020      	movs	r0, r4
20014920:	234f      	movs	r3, #79	; 0x4f
20014922:	4a3f      	ldr	r2, [pc, #252]	; (20014a20 <user_init_check_brwnout+0x1f8>)
20014924:	4c3f      	ldr	r4, [pc, #252]	; (20014a24 <user_init_check_brwnout+0x1fc>)
20014926:	47a0      	blx	r4
20014928:	4d3a      	ldr	r5, [pc, #232]	; (20014a14 <user_init_check_brwnout+0x1ec>)
2001492a:	2200      	movs	r2, #0
2001492c:	210c      	movs	r1, #12
2001492e:	4e3a      	ldr	r6, [pc, #232]	; (20014a18 <user_init_check_brwnout+0x1f0>)
20014930:	0028      	movs	r0, r5
20014932:	47b0      	blx	r6
20014934:	2401      	movs	r4, #1
20014936:	4304      	orrs	r4, r0
20014938:	0023      	movs	r3, r4
2001493a:	2200      	movs	r2, #0
2001493c:	210c      	movs	r1, #12
2001493e:	0028      	movs	r0, r5
20014940:	4f36      	ldr	r7, [pc, #216]	; (20014a1c <user_init_check_brwnout+0x1f4>)
20014942:	47b8      	blx	r7
20014944:	210c      	movs	r1, #12
20014946:	2200      	movs	r2, #0
20014948:	0028      	movs	r0, r5
2001494a:	47b0      	blx	r6
2001494c:	0001      	movs	r1, r0
2001494e:	4284      	cmp	r4, r0
20014950:	d004      	beq.n	2001495c <user_init_check_brwnout+0x134>
20014952:	0020      	movs	r0, r4
20014954:	2354      	movs	r3, #84	; 0x54
20014956:	4a32      	ldr	r2, [pc, #200]	; (20014a20 <user_init_check_brwnout+0x1f8>)
20014958:	4c32      	ldr	r4, [pc, #200]	; (20014a24 <user_init_check_brwnout+0x1fc>)
2001495a:	47a0      	blx	r4
2001495c:	4d2d      	ldr	r5, [pc, #180]	; (20014a14 <user_init_check_brwnout+0x1ec>)
2001495e:	2204      	movs	r2, #4
20014960:	210c      	movs	r1, #12
20014962:	4e2d      	ldr	r6, [pc, #180]	; (20014a18 <user_init_check_brwnout+0x1f0>)
20014964:	0028      	movs	r0, r5
20014966:	2480      	movs	r4, #128	; 0x80
20014968:	47b0      	blx	r6
2001496a:	01a4      	lsls	r4, r4, #6
2001496c:	4304      	orrs	r4, r0
2001496e:	0023      	movs	r3, r4
20014970:	2204      	movs	r2, #4
20014972:	210c      	movs	r1, #12
20014974:	0028      	movs	r0, r5
20014976:	4f29      	ldr	r7, [pc, #164]	; (20014a1c <user_init_check_brwnout+0x1f4>)
20014978:	47b8      	blx	r7
2001497a:	210c      	movs	r1, #12
2001497c:	2204      	movs	r2, #4
2001497e:	0028      	movs	r0, r5
20014980:	47b0      	blx	r6
20014982:	0001      	movs	r1, r0
20014984:	4284      	cmp	r4, r0
20014986:	d004      	beq.n	20014992 <user_init_check_brwnout+0x16a>
20014988:	0020      	movs	r0, r4
2001498a:	2358      	movs	r3, #88	; 0x58
2001498c:	4a24      	ldr	r2, [pc, #144]	; (20014a20 <user_init_check_brwnout+0x1f8>)
2001498e:	4c25      	ldr	r4, [pc, #148]	; (20014a24 <user_init_check_brwnout+0x1fc>)
20014990:	47a0      	blx	r4
20014992:	2300      	movs	r3, #0
20014994:	4a1e      	ldr	r2, [pc, #120]	; (20014a10 <user_init_check_brwnout+0x1e8>)
20014996:	6013      	str	r3, [r2, #0]
20014998:	4b24      	ldr	r3, [pc, #144]	; (20014a2c <user_init_check_brwnout+0x204>)
2001499a:	681c      	ldr	r4, [r3, #0]
2001499c:	2c00      	cmp	r4, #0
2001499e:	d010      	beq.n	200149c2 <user_init_check_brwnout+0x19a>
200149a0:	6823      	ldr	r3, [r4, #0]
200149a2:	4a23      	ldr	r2, [pc, #140]	; (20014a30 <user_init_check_brwnout+0x208>)
200149a4:	4293      	cmp	r3, r2
200149a6:	d103      	bne.n	200149b0 <user_init_check_brwnout+0x188>
200149a8:	2300      	movs	r3, #0
200149aa:	9302      	str	r3, [sp, #8]
200149ac:	6864      	ldr	r4, [r4, #4]
200149ae:	e7f5      	b.n	2001499c <user_init_check_brwnout+0x174>
200149b0:	9a02      	ldr	r2, [sp, #8]
200149b2:	2a00      	cmp	r2, #0
200149b4:	d1fa      	bne.n	200149ac <user_init_check_brwnout+0x184>
200149b6:	9a05      	ldr	r2, [sp, #20]
200149b8:	9901      	ldr	r1, [sp, #4]
200149ba:	9804      	ldr	r0, [sp, #16]
200149bc:	4798      	blx	r3
200149be:	2800      	cmp	r0, #0
200149c0:	d1f2      	bne.n	200149a8 <user_init_check_brwnout+0x180>
200149c2:	4b1c      	ldr	r3, [pc, #112]	; (20014a34 <user_init_check_brwnout+0x20c>)
200149c4:	4798      	blx	r3
200149c6:	9b01      	ldr	r3, [sp, #4]
200149c8:	2b00      	cmp	r3, #0
200149ca:	d00b      	beq.n	200149e4 <user_init_check_brwnout+0x1bc>
200149cc:	2301      	movs	r3, #1
200149ce:	4a0a      	ldr	r2, [pc, #40]	; (200149f8 <user_init_check_brwnout+0x1d0>)
200149d0:	2102      	movs	r1, #2
200149d2:	6013      	str	r3, [r2, #0]
200149d4:	9801      	ldr	r0, [sp, #4]
200149d6:	4b18      	ldr	r3, [pc, #96]	; (20014a38 <user_init_check_brwnout+0x210>)
200149d8:	4798      	blx	r3
200149da:	9b03      	ldr	r3, [sp, #12]
200149dc:	f383 8810 	msr	PRIMASK, r3
200149e0:	2000      	movs	r0, #0
200149e2:	e72c      	b.n	2001483e <user_init_check_brwnout+0x16>
200149e4:	4b07      	ldr	r3, [pc, #28]	; (20014a04 <user_init_check_brwnout+0x1dc>)
200149e6:	781b      	ldrb	r3, [r3, #0]
200149e8:	2b00      	cmp	r3, #0
200149ea:	d1ef      	bne.n	200149cc <user_init_check_brwnout+0x1a4>
200149ec:	23fa      	movs	r3, #250	; 0xfa
200149ee:	00db      	lsls	r3, r3, #3
200149f0:	9301      	str	r3, [sp, #4]
200149f2:	e7eb      	b.n	200149cc <user_init_check_brwnout+0x1a4>
200149f4:	20014dd2 	.word	0x20014dd2
200149f8:	50003020 	.word	0x50003020
200149fc:	500080fc 	.word	0x500080fc
20014a00:	20014dd3 	.word	0x20014dd3
20014a04:	20014dd1 	.word	0x20014dd1
20014a08:	000066b1 	.word	0x000066b1
20014a0c:	10005ca6 	.word	0x10005ca6
20014a10:	5000301c 	.word	0x5000301c
20014a14:	0003cd78 	.word	0x0003cd78
20014a18:	0000777f 	.word	0x0000777f
20014a1c:	0000779f 	.word	0x0000779f
20014a20:	10005cd4 	.word	0x10005cd4
20014a24:	00006641 	.word	0x00006641
20014a28:	fffdffff 	.word	0xfffdffff
20014a2c:	200012a0 	.word	0x200012a0
20014a30:	20014a4d 	.word	0x20014a4d
20014a34:	200146e9 	.word	0x200146e9
20014a38:	000061e5 	.word	0x000061e5

20014a3c <user_init_check_brwnout_retain_all>:
20014a3c:	b510      	push	{r4, lr}
20014a3e:	2300      	movs	r3, #0
20014a40:	4c01      	ldr	r4, [pc, #4]	; (20014a48 <user_init_check_brwnout_retain_all+0xc>)
20014a42:	47a0      	blx	r4
20014a44:	bd10      	pop	{r4, pc}
20014a46:	46c0      	nop			; (mov r8, r8)
20014a48:	20014829 	.word	0x20014829

20014a4c <user_init_check_brwnout_hibernate>:
20014a4c:	b510      	push	{r4, lr}
20014a4e:	2301      	movs	r3, #1
20014a50:	4c01      	ldr	r4, [pc, #4]	; (20014a58 <user_init_check_brwnout_hibernate+0xc>)
20014a52:	47a0      	blx	r4
20014a54:	bd10      	pop	{r4, pc}
20014a56:	46c0      	nop			; (mov r8, r8)
20014a58:	20014829 	.word	0x20014829

20014a5c <user_rv_plf_hibernate.0>:
20014a5c:	20014a4d 00000000                       MJ. ....

20014a64 <user_rv_plf_retain_all.1>:
20014a64:	20014a3d 00000000                       =J. ....

20014a6c <swd_dbg_prevent>:
20014a6c:	2301      	movs	r3, #1
20014a6e:	b510      	push	{r4, lr}
20014a70:	2400      	movs	r4, #0
20014a72:	0002      	movs	r2, r0
20014a74:	4805      	ldr	r0, [pc, #20]	; (20014a8c <swd_dbg_prevent+0x20>)
20014a76:	4906      	ldr	r1, [pc, #24]	; (20014a90 <swd_dbg_prevent+0x24>)
20014a78:	6003      	str	r3, [r0, #0]
20014a7a:	6809      	ldr	r1, [r1, #0]
20014a7c:	6004      	str	r4, [r0, #0]
20014a7e:	0b89      	lsrs	r1, r1, #14
20014a80:	0018      	movs	r0, r3
20014a82:	4219      	tst	r1, r3
20014a84:	d001      	beq.n	20014a8a <swd_dbg_prevent+0x1e>
20014a86:	0020      	movs	r0, r4
20014a88:	7013      	strb	r3, [r2, #0]
20014a8a:	bd10      	pop	{r4, pc}
20014a8c:	50003020 	.word	0x50003020
20014a90:	500080f0 	.word	0x500080f0

20014a94 <user_rv_plf_prevent_hibernation.0>:
20014a94:	20014a6d 00000000                       mJ. ....

20014a9c <user_rv_plf_prevent_retention.1>:
20014a9c:	20014a6d 00000000                       mJ. ....

20014aa4 <__compound_literal.0>:
20014aa4:	00000019 20014adc                       .....J. 

20014aac <__compound_literal.1>:
20014aac:	0000000a 20014afa                       .....J. 

20014ab4 <default_adv_create_param>:
20014ab4:	00000000 00020100 00000000 00000000     ................
20014ac4:	00000000 000000a0 000000a0 00000107     ................
20014ad4:	00000100 00500050                       ....P.P.

20014adc <default_adv_data0>:
20014adc:	0300ff18 303030b0 b0003030 30303030     .....00000..0000
20014aec:	30b00030 30303030                        0..00000..

20014af6 <default_adv_start_param>:
20014af6:	00000064                                d...

20014afa <default_scan_data0>:
20014afa:	6000ff09 434e554c                        ...`LUNCHP

20014b04 <default_set_adv_data>:
20014b04:	20014aa4 20014aac                       .J. .J. 

20014b0c <default_scan_params>:
20014b0c:	00010102 00a000a0 00100010 00000064     ............d...

20014b1c <__init_array_start>:
20014b1c:	10001b65 	.word	0x10001b65
20014b20:	10000d55 	.word	0x10000d55
20014b24:	100019d1 	.word	0x100019d1
20014b28:	10000119 	.word	0x10000119
20014b2c:	10000df9 	.word	0x10000df9
20014b30:	10000e6d 	.word	0x10000e6d
20014b34:	10000ed5 	.word	0x10000ed5
20014b38:	10000f61 	.word	0x10000f61
20014b3c:	10000fe5 	.word	0x10000fe5
20014b40:	100011ad 	.word	0x100011ad
20014b44:	100011d5 	.word	0x100011d5
20014b48:	100013f5 	.word	0x100013f5
20014b4c:	100020ad 	.word	0x100020ad
20014b50:	100022c5 	.word	0x100022c5
20014b54:	10002319 	.word	0x10002319
20014b58:	10002341 	.word	0x10002341
