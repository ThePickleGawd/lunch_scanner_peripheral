
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
10000040:	f004 fdda 	bl	10004bf8 <__libc_init_array>
10000044:	bc01      	pop	{r0}
10000046:	4686      	mov	lr, r0
10000048:	2000      	movs	r0, #0
1000004a:	2100      	movs	r1, #0
1000004c:	4b07      	ldr	r3, [pc, #28]	; (1000006c <_upgrade_data_end+0x4c>)
1000004e:	4718      	bx	r3
10000050:	70000008 	.word	0x70000008
10000054:	100062f8 	.word	0x100062f8
10000058:	20014000 	.word	0x20014000
1000005c:	20014b2c 	.word	0x20014b2c
10000060:	20014b30 	.word	0x20014b30
10000064:	20014e80 	.word	0x20014e80
10000068:	80000001 	.word	0x80000001
1000006c:	10000b95 	.word	0x10000b95

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
100000f8:	10004cdb 	.word	0x10004cdb
100000fc:	10004cb0 	.word	0x10004cb0
10000100:	000066b1 	.word	0x000066b1
10000104:	00005821 	.word	0x00005821

10000108 <matches_bd_vendor>:
10000108:	7942      	ldrb	r2, [r0, #5]
1000010a:	0003      	movs	r3, r0
1000010c:	2000      	movs	r0, #0
1000010e:	2a7c      	cmp	r2, #124	; 0x7c
10000110:	d106      	bne.n	10000120 <matches_bd_vendor+0x18>
10000112:	791a      	ldrb	r2, [r3, #4]
10000114:	2a69      	cmp	r2, #105	; 0x69
10000116:	d103      	bne.n	10000120 <matches_bd_vendor+0x18>
10000118:	78d8      	ldrb	r0, [r3, #3]
1000011a:	386b      	subs	r0, #107	; 0x6b
1000011c:	4243      	negs	r3, r0
1000011e:	4158      	adcs	r0, r3
10000120:	4770      	bx	lr
	...

10000124 <user_init_appm_init>:
10000124:	b510      	push	{r4, lr}
10000126:	4b02      	ldr	r3, [pc, #8]	; (10000130 <user_init_appm_init+0xc>)
10000128:	4798      	blx	r3
1000012a:	2001      	movs	r0, #1
1000012c:	bd10      	pop	{r4, pc}
1000012e:	46c0      	nop			; (mov r8, r8)
10000130:	10001371 	.word	0x10001371

10000134 <user_init_constructor>:
10000134:	b530      	push	{r4, r5, lr}
10000136:	4b22      	ldr	r3, [pc, #136]	; (100001c0 <user_init_constructor+0x8c>)
10000138:	b085      	sub	sp, #20
1000013a:	4798      	blx	r3
1000013c:	4921      	ldr	r1, [pc, #132]	; (100001c4 <user_init_constructor+0x90>)
1000013e:	4c22      	ldr	r4, [pc, #136]	; (100001c8 <user_init_constructor+0x94>)
10000140:	4822      	ldr	r0, [pc, #136]	; (100001cc <user_init_constructor+0x98>)
10000142:	47a0      	blx	r4
10000144:	4922      	ldr	r1, [pc, #136]	; (100001d0 <user_init_constructor+0x9c>)
10000146:	4823      	ldr	r0, [pc, #140]	; (100001d4 <user_init_constructor+0xa0>)
10000148:	47a0      	blx	r4
1000014a:	4b23      	ldr	r3, [pc, #140]	; (100001d8 <user_init_constructor+0xa4>)
1000014c:	681b      	ldr	r3, [r3, #0]
1000014e:	2b02      	cmp	r3, #2
10000150:	d108      	bne.n	10000164 <user_init_constructor+0x30>
10000152:	2201      	movs	r2, #1
10000154:	4b21      	ldr	r3, [pc, #132]	; (100001dc <user_init_constructor+0xa8>)
10000156:	701a      	strb	r2, [r3, #0]
10000158:	4921      	ldr	r1, [pc, #132]	; (100001e0 <user_init_constructor+0xac>)
1000015a:	4822      	ldr	r0, [pc, #136]	; (100001e4 <user_init_constructor+0xb0>)
1000015c:	4b22      	ldr	r3, [pc, #136]	; (100001e8 <user_init_constructor+0xb4>)
1000015e:	4798      	blx	r3
10000160:	b005      	add	sp, #20
10000162:	bd30      	pop	{r4, r5, pc}
10000164:	4b21      	ldr	r3, [pc, #132]	; (100001ec <user_init_constructor+0xb8>)
10000166:	4798      	blx	r3
10000168:	2400      	movs	r4, #0
1000016a:	0005      	movs	r5, r0
1000016c:	42a0      	cmp	r0, r4
1000016e:	d00a      	beq.n	10000186 <user_init_constructor+0x52>
10000170:	466b      	mov	r3, sp
10000172:	1d99      	adds	r1, r3, #6
10000174:	2306      	movs	r3, #6
10000176:	2001      	movs	r0, #1
10000178:	800b      	strh	r3, [r1, #0]
1000017a:	aa02      	add	r2, sp, #8
1000017c:	4b1c      	ldr	r3, [pc, #112]	; (100001f0 <user_init_constructor+0xbc>)
1000017e:	4798      	blx	r3
10000180:	4243      	negs	r3, r0
10000182:	4158      	adcs	r0, r3
10000184:	b2c4      	uxtb	r4, r0
10000186:	4b1b      	ldr	r3, [pc, #108]	; (100001f4 <user_init_constructor+0xc0>)
10000188:	4798      	blx	r3
1000018a:	481b      	ldr	r0, [pc, #108]	; (100001f8 <user_init_constructor+0xc4>)
1000018c:	4b1b      	ldr	r3, [pc, #108]	; (100001fc <user_init_constructor+0xc8>)
1000018e:	491c      	ldr	r1, [pc, #112]	; (10000200 <user_init_constructor+0xcc>)
10000190:	1a09      	subs	r1, r1, r0
10000192:	1ac0      	subs	r0, r0, r3
10000194:	4b1b      	ldr	r3, [pc, #108]	; (10000204 <user_init_constructor+0xd0>)
10000196:	4798      	blx	r3
10000198:	2d00      	cmp	r5, #0
1000019a:	d0dd      	beq.n	10000158 <user_init_constructor+0x24>
1000019c:	466b      	mov	r3, sp
1000019e:	2200      	movs	r2, #0
100001a0:	1d99      	adds	r1, r3, #6
100001a2:	2001      	movs	r0, #1
100001a4:	4b12      	ldr	r3, [pc, #72]	; (100001f0 <user_init_constructor+0xbc>)
100001a6:	800a      	strh	r2, [r1, #0]
100001a8:	4798      	blx	r3
100001aa:	2804      	cmp	r0, #4
100001ac:	d0d4      	beq.n	10000158 <user_init_constructor+0x24>
100001ae:	2c00      	cmp	r4, #0
100001b0:	d0d2      	beq.n	10000158 <user_init_constructor+0x24>
100001b2:	2106      	movs	r1, #6
100001b4:	4b14      	ldr	r3, [pc, #80]	; (10000208 <user_init_constructor+0xd4>)
100001b6:	aa02      	add	r2, sp, #8
100001b8:	2001      	movs	r0, #1
100001ba:	4798      	blx	r3
100001bc:	e7cc      	b.n	10000158 <user_init_constructor+0x24>
100001be:	46c0      	nop			; (mov r8, r8)
100001c0:	10001405 	.word	0x10001405
100001c4:	10004ce8 	.word	0x10004ce8
100001c8:	000066b1 	.word	0x000066b1
100001cc:	10004cee 	.word	0x10004cee
100001d0:	10004cfe 	.word	0x10004cfe
100001d4:	10004d06 	.word	0x10004d06
100001d8:	4000303c 	.word	0x4000303c
100001dc:	200012b0 	.word	0x200012b0
100001e0:	20014000 	.word	0x20014000
100001e4:	20001290 	.word	0x20001290
100001e8:	00006715 	.word	0x00006715
100001ec:	00005dbd 	.word	0x00005dbd
100001f0:	00002f55 	.word	0x00002f55
100001f4:	10001b1d 	.word	0x10001b1d
100001f8:	10078000 	.word	0x10078000
100001fc:	10000000 	.word	0x10000000
10000200:	10080000 	.word	0x10080000
10000204:	00002e35 	.word	0x00002e35
10000208:	0000308d 	.word	0x0000308d

1000020c <bsa_adv_on>:
1000020c:	b510      	push	{r4, lr}
1000020e:	4a05      	ldr	r2, [pc, #20]	; (10000224 <bsa_adv_on+0x18>)
10000210:	4905      	ldr	r1, [pc, #20]	; (10000228 <bsa_adv_on+0x1c>)
10000212:	4b06      	ldr	r3, [pc, #24]	; (1000022c <bsa_adv_on+0x20>)
10000214:	4806      	ldr	r0, [pc, #24]	; (10000230 <bsa_adv_on+0x24>)
10000216:	4798      	blx	r3
10000218:	22ff      	movs	r2, #255	; 0xff
1000021a:	2108      	movs	r1, #8
1000021c:	2000      	movs	r0, #0
1000021e:	4b05      	ldr	r3, [pc, #20]	; (10000234 <bsa_adv_on+0x28>)
10000220:	4798      	blx	r3
10000222:	bd10      	pop	{r4, pc}
10000224:	10005158 	.word	0x10005158
10000228:	1000504b 	.word	0x1000504b
1000022c:	000066b1 	.word	0x000066b1
10000230:	10004d16 	.word	0x10004d16
10000234:	10002afd 	.word	0x10002afd

10000238 <bsa_init>:
10000238:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
1000023a:	2304      	movs	r3, #4
1000023c:	4c21      	ldr	r4, [pc, #132]	; (100002c4 <bsa_init+0x8c>)
1000023e:	a903      	add	r1, sp, #12
10000240:	0022      	movs	r2, r4
10000242:	2009      	movs	r0, #9
10000244:	4e20      	ldr	r6, [pc, #128]	; (100002c8 <bsa_init+0x90>)
10000246:	800b      	strh	r3, [r1, #0]
10000248:	47b0      	blx	r6
1000024a:	2800      	cmp	r0, #0
1000024c:	d001      	beq.n	10000252 <bsa_init+0x1a>
1000024e:	2300      	movs	r3, #0
10000250:	6023      	str	r3, [r4, #0]
10000252:	210e      	movs	r1, #14
10000254:	2301      	movs	r3, #1
10000256:	4d1d      	ldr	r5, [pc, #116]	; (100002cc <bsa_init+0x94>)
10000258:	4469      	add	r1, sp
1000025a:	002a      	movs	r2, r5
1000025c:	2011      	movs	r0, #17
1000025e:	800b      	strh	r3, [r1, #0]
10000260:	47b0      	blx	r6
10000262:	2800      	cmp	r0, #0
10000264:	d001      	beq.n	1000026a <bsa_init+0x32>
10000266:	2304      	movs	r3, #4
10000268:	702b      	strb	r3, [r5, #0]
1000026a:	220a      	movs	r2, #10
1000026c:	6823      	ldr	r3, [r4, #0]
1000026e:	4918      	ldr	r1, [pc, #96]	; (100002d0 <bsa_init+0x98>)
10000270:	435a      	muls	r2, r3
10000272:	4818      	ldr	r0, [pc, #96]	; (100002d4 <bsa_init+0x9c>)
10000274:	4b18      	ldr	r3, [pc, #96]	; (100002d8 <bsa_init+0xa0>)
10000276:	4798      	blx	r3
10000278:	6823      	ldr	r3, [r4, #0]
1000027a:	2b00      	cmp	r3, #0
1000027c:	d010      	beq.n	100002a0 <bsa_init+0x68>
1000027e:	2100      	movs	r1, #0
10000280:	4b16      	ldr	r3, [pc, #88]	; (100002dc <bsa_init+0xa4>)
10000282:	4817      	ldr	r0, [pc, #92]	; (100002e0 <bsa_init+0xa8>)
10000284:	4798      	blx	r3
10000286:	466d      	mov	r5, sp
10000288:	4b16      	ldr	r3, [pc, #88]	; (100002e4 <bsa_init+0xac>)
1000028a:	4e17      	ldr	r6, [pc, #92]	; (100002e8 <bsa_init+0xb0>)
1000028c:	7018      	strb	r0, [r3, #0]
1000028e:	2102      	movs	r1, #2
10000290:	0028      	movs	r0, r5
10000292:	4b16      	ldr	r3, [pc, #88]	; (100002ec <bsa_init+0xb4>)
10000294:	4798      	blx	r3
10000296:	cd0c      	ldmia	r5!, {r2, r3}
10000298:	c60c      	stmia	r6!, {r2, r3}
1000029a:	4b15      	ldr	r3, [pc, #84]	; (100002f0 <bsa_init+0xb8>)
1000029c:	6820      	ldr	r0, [r4, #0]
1000029e:	4798      	blx	r3
100002a0:	220b      	movs	r2, #11
100002a2:	2000      	movs	r0, #0
100002a4:	4913      	ldr	r1, [pc, #76]	; (100002f4 <bsa_init+0xbc>)
100002a6:	4b14      	ldr	r3, [pc, #80]	; (100002f8 <bsa_init+0xc0>)
100002a8:	4798      	blx	r3
100002aa:	2100      	movs	r1, #0
100002ac:	22ff      	movs	r2, #255	; 0xff
100002ae:	0008      	movs	r0, r1
100002b0:	4b12      	ldr	r3, [pc, #72]	; (100002fc <bsa_init+0xc4>)
100002b2:	4798      	blx	r3
100002b4:	2100      	movs	r1, #0
100002b6:	4b12      	ldr	r3, [pc, #72]	; (10000300 <bsa_init+0xc8>)
100002b8:	0008      	movs	r0, r1
100002ba:	4798      	blx	r3
100002bc:	2000      	movs	r0, #0
100002be:	b004      	add	sp, #16
100002c0:	bd70      	pop	{r4, r5, r6, pc}
100002c2:	46c0      	nop			; (mov r8, r8)
100002c4:	20014b34 	.word	0x20014b34
100002c8:	00002f55 	.word	0x00002f55
100002cc:	20014b49 	.word	0x20014b49
100002d0:	1000504b 	.word	0x1000504b
100002d4:	10004d30 	.word	0x10004d30
100002d8:	000066b1 	.word	0x000066b1
100002dc:	10000ebd 	.word	0x10000ebd
100002e0:	10000305 	.word	0x10000305
100002e4:	20014b4a 	.word	0x20014b4a
100002e8:	20014b40 	.word	0x20014b40
100002ec:	10001079 	.word	0x10001079
100002f0:	10001175 	.word	0x10001175
100002f4:	10005188 	.word	0x10005188
100002f8:	10002ac9 	.word	0x10002ac9
100002fc:	10002afd 	.word	0x10002afd
10000300:	10002b49 	.word	0x10002b49

10000304 <bsa_restart_timer>:
10000304:	b510      	push	{r4, lr}
10000306:	210b      	movs	r1, #11
10000308:	2000      	movs	r0, #0
1000030a:	4b01      	ldr	r3, [pc, #4]	; (10000310 <bsa_restart_timer+0xc>)
1000030c:	4798      	blx	r3
1000030e:	bd10      	pop	{r4, pc}
10000310:	10002b49 	.word	0x10002b49

10000314 <bsa_adv_state_change>:
10000314:	0002      	movs	r2, r0
10000316:	3802      	subs	r0, #2
10000318:	b510      	push	{r4, lr}
1000031a:	280a      	cmp	r0, #10
1000031c:	d816      	bhi.n	1000034c <bsa_adv_state_change+0x38>
1000031e:	f004 fc9f 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10000322:	1506      	.short	0x1506
10000324:	1115150d 	.word	0x1115150d
10000328:	15150f15 	.word	0x15150f15
1000032c:	13          	.byte	0x13
1000032d:	00          	.byte	0x00
1000032e:	4b0a      	ldr	r3, [pc, #40]	; (10000358 <bsa_adv_state_change+0x44>)
10000330:	7019      	strb	r1, [r3, #0]
10000332:	2102      	movs	r1, #2
10000334:	2000      	movs	r0, #0
10000336:	4b09      	ldr	r3, [pc, #36]	; (1000035c <bsa_adv_state_change+0x48>)
10000338:	4798      	blx	r3
1000033a:	bd10      	pop	{r4, pc}
1000033c:	2103      	movs	r1, #3
1000033e:	e7f9      	b.n	10000334 <bsa_adv_state_change+0x20>
10000340:	2105      	movs	r1, #5
10000342:	e7f7      	b.n	10000334 <bsa_adv_state_change+0x20>
10000344:	2106      	movs	r1, #6
10000346:	e7f5      	b.n	10000334 <bsa_adv_state_change+0x20>
10000348:	2107      	movs	r1, #7
1000034a:	e7f3      	b.n	10000334 <bsa_adv_state_change+0x20>
1000034c:	4904      	ldr	r1, [pc, #16]	; (10000360 <bsa_adv_state_change+0x4c>)
1000034e:	4b05      	ldr	r3, [pc, #20]	; (10000364 <bsa_adv_state_change+0x50>)
10000350:	4805      	ldr	r0, [pc, #20]	; (10000368 <bsa_adv_state_change+0x54>)
10000352:	4798      	blx	r3
10000354:	e7f1      	b.n	1000033a <bsa_adv_state_change+0x26>
10000356:	46c0      	nop			; (mov r8, r8)
10000358:	20014b30 	.word	0x20014b30
1000035c:	10002b49 	.word	0x10002b49
10000360:	1000504b 	.word	0x1000504b
10000364:	000066b1 	.word	0x000066b1
10000368:	10004d66 	.word	0x10004d66

1000036c <bsa_gap_init_cfm>:
1000036c:	b510      	push	{r4, lr}
1000036e:	2101      	movs	r1, #1
10000370:	2000      	movs	r0, #0
10000372:	4b01      	ldr	r3, [pc, #4]	; (10000378 <bsa_gap_init_cfm+0xc>)
10000374:	4798      	blx	r3
10000376:	bd10      	pop	{r4, pc}
10000378:	10002b49 	.word	0x10002b49

1000037c <bsa_restart_scan>:
1000037c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
1000037e:	4b08      	ldr	r3, [pc, #32]	; (100003a0 <bsa_restart_scan+0x24>)
10000380:	4668      	mov	r0, sp
10000382:	4798      	blx	r3
10000384:	4b07      	ldr	r3, [pc, #28]	; (100003a4 <bsa_restart_scan+0x28>)
10000386:	4669      	mov	r1, sp
10000388:	7818      	ldrb	r0, [r3, #0]
1000038a:	4b07      	ldr	r3, [pc, #28]	; (100003a8 <bsa_restart_scan+0x2c>)
1000038c:	4798      	blx	r3
1000038e:	1e03      	subs	r3, r0, #0
10000390:	d004      	beq.n	1000039c <bsa_restart_scan+0x20>
10000392:	4a06      	ldr	r2, [pc, #24]	; (100003ac <bsa_restart_scan+0x30>)
10000394:	4906      	ldr	r1, [pc, #24]	; (100003b0 <bsa_restart_scan+0x34>)
10000396:	4807      	ldr	r0, [pc, #28]	; (100003b4 <bsa_restart_scan+0x38>)
10000398:	4c07      	ldr	r4, [pc, #28]	; (100003b8 <bsa_restart_scan+0x3c>)
1000039a:	47a0      	blx	r4
1000039c:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
1000039e:	46c0      	nop			; (mov r8, r8)
100003a0:	10003555 	.word	0x10003555
100003a4:	20014b3c 	.word	0x20014b3c
100003a8:	10003401 	.word	0x10003401
100003ac:	100050f6 	.word	0x100050f6
100003b0:	1000504b 	.word	0x1000504b
100003b4:	10004d92 	.word	0x10004d92
100003b8:	000066b1 	.word	0x000066b1

100003bc <bsa_delete_adv>:
100003bc:	b510      	push	{r4, lr}
100003be:	4b06      	ldr	r3, [pc, #24]	; (100003d8 <bsa_delete_adv+0x1c>)
100003c0:	7818      	ldrb	r0, [r3, #0]
100003c2:	4b06      	ldr	r3, [pc, #24]	; (100003dc <bsa_delete_adv+0x20>)
100003c4:	4798      	blx	r3
100003c6:	1e03      	subs	r3, r0, #0
100003c8:	d004      	beq.n	100003d4 <bsa_delete_adv+0x18>
100003ca:	4a05      	ldr	r2, [pc, #20]	; (100003e0 <bsa_delete_adv+0x24>)
100003cc:	4905      	ldr	r1, [pc, #20]	; (100003e4 <bsa_delete_adv+0x28>)
100003ce:	4806      	ldr	r0, [pc, #24]	; (100003e8 <bsa_delete_adv+0x2c>)
100003d0:	4c06      	ldr	r4, [pc, #24]	; (100003ec <bsa_delete_adv+0x30>)
100003d2:	47a0      	blx	r4
100003d4:	bd10      	pop	{r4, pc}
100003d6:	46c0      	nop			; (mov r8, r8)
100003d8:	20014b30 	.word	0x20014b30
100003dc:	100029e9 	.word	0x100029e9
100003e0:	100050e7 	.word	0x100050e7
100003e4:	1000504b 	.word	0x1000504b
100003e8:	10004dc2 	.word	0x10004dc2
100003ec:	000066b1 	.word	0x000066b1

100003f0 <bsa_start_adv>:
100003f0:	b570      	push	{r4, r5, r6, lr}
100003f2:	4e0b      	ldr	r6, [pc, #44]	; (10000420 <bsa_start_adv+0x30>)
100003f4:	4d0b      	ldr	r5, [pc, #44]	; (10000424 <bsa_start_adv+0x34>)
100003f6:	0032      	movs	r2, r6
100003f8:	0029      	movs	r1, r5
100003fa:	480b      	ldr	r0, [pc, #44]	; (10000428 <bsa_start_adv+0x38>)
100003fc:	4c0b      	ldr	r4, [pc, #44]	; (1000042c <bsa_start_adv+0x3c>)
100003fe:	47a0      	blx	r4
10000400:	4b0b      	ldr	r3, [pc, #44]	; (10000430 <bsa_start_adv+0x40>)
10000402:	2000      	movs	r0, #0
10000404:	4798      	blx	r3
10000406:	4b0b      	ldr	r3, [pc, #44]	; (10000434 <bsa_start_adv+0x44>)
10000408:	0001      	movs	r1, r0
1000040a:	7818      	ldrb	r0, [r3, #0]
1000040c:	4b0a      	ldr	r3, [pc, #40]	; (10000438 <bsa_start_adv+0x48>)
1000040e:	4798      	blx	r3
10000410:	1e03      	subs	r3, r0, #0
10000412:	d003      	beq.n	1000041c <bsa_start_adv+0x2c>
10000414:	0032      	movs	r2, r6
10000416:	0029      	movs	r1, r5
10000418:	4808      	ldr	r0, [pc, #32]	; (1000043c <bsa_start_adv+0x4c>)
1000041a:	47a0      	blx	r4
1000041c:	bd70      	pop	{r4, r5, r6, pc}
1000041e:	46c0      	nop			; (mov r8, r8)
10000420:	1000514a 	.word	0x1000514a
10000424:	1000504b 	.word	0x1000504b
10000428:	10004df3 	.word	0x10004df3
1000042c:	000066b1 	.word	0x000066b1
10000430:	10002ab1 	.word	0x10002ab1
10000434:	20014b30 	.word	0x20014b30
10000438:	10002951 	.word	0x10002951
1000043c:	10004e44 	.word	0x10004e44

10000440 <bsa_set_adv_data>:
10000440:	b5f0      	push	{r4, r5, r6, r7, lr}
10000442:	4b45      	ldr	r3, [pc, #276]	; (10000558 <bsa_set_adv_data+0x118>)
10000444:	b091      	sub	sp, #68	; 0x44
10000446:	681b      	ldr	r3, [r3, #0]
10000448:	681b      	ldr	r3, [r3, #0]
1000044a:	2b00      	cmp	r3, #0
1000044c:	d105      	bne.n	1000045a <bsa_set_adv_data+0x1a>
1000044e:	4943      	ldr	r1, [pc, #268]	; (1000055c <bsa_set_adv_data+0x11c>)
10000450:	4843      	ldr	r0, [pc, #268]	; (10000560 <bsa_set_adv_data+0x120>)
10000452:	4b44      	ldr	r3, [pc, #272]	; (10000564 <bsa_set_adv_data+0x124>)
10000454:	4798      	blx	r3
10000456:	b011      	add	sp, #68	; 0x44
10000458:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000045a:	4b43      	ldr	r3, [pc, #268]	; (10000568 <bsa_set_adv_data+0x128>)
1000045c:	2208      	movs	r2, #8
1000045e:	2100      	movs	r1, #0
10000460:	a803      	add	r0, sp, #12
10000462:	4798      	blx	r3
10000464:	2300      	movs	r3, #0
10000466:	ad09      	add	r5, sp, #36	; 0x24
10000468:	4f3b      	ldr	r7, [pc, #236]	; (10000558 <bsa_set_adv_data+0x118>)
1000046a:	9300      	str	r3, [sp, #0]
1000046c:	683b      	ldr	r3, [r7, #0]
1000046e:	699c      	ldr	r4, [r3, #24]
10000470:	7863      	ldrb	r3, [r4, #1]
10000472:	7820      	ldrb	r0, [r4, #0]
10000474:	78a2      	ldrb	r2, [r4, #2]
10000476:	021b      	lsls	r3, r3, #8
10000478:	4303      	orrs	r3, r0
1000047a:	78e0      	ldrb	r0, [r4, #3]
1000047c:	0412      	lsls	r2, r2, #16
1000047e:	4313      	orrs	r3, r2
10000480:	0600      	lsls	r0, r0, #24
10000482:	7921      	ldrb	r1, [r4, #4]
10000484:	4318      	orrs	r0, r3
10000486:	4b39      	ldr	r3, [pc, #228]	; (1000056c <bsa_set_adv_data+0x12c>)
10000488:	4798      	blx	r3
1000048a:	0006      	movs	r6, r0
1000048c:	1d61      	adds	r1, r4, #5
1000048e:	220a      	movs	r2, #10
10000490:	4c37      	ldr	r4, [pc, #220]	; (10000570 <bsa_set_adv_data+0x130>)
10000492:	a806      	add	r0, sp, #24
10000494:	47a0      	blx	r4
10000496:	220e      	movs	r2, #14
10000498:	0028      	movs	r0, r5
1000049a:	a905      	add	r1, sp, #20
1000049c:	9605      	str	r6, [sp, #20]
1000049e:	47a0      	blx	r4
100004a0:	230e      	movs	r3, #14
100004a2:	9a00      	ldr	r2, [sp, #0]
100004a4:	ae09      	add	r6, sp, #36	; 0x24
100004a6:	4353      	muls	r3, r2
100004a8:	5b99      	ldrh	r1, [r3, r6]
100004aa:	18f3      	adds	r3, r6, r3
100004ac:	885a      	ldrh	r2, [r3, #2]
100004ae:	4c2b      	ldr	r4, [pc, #172]	; (1000055c <bsa_set_adv_data+0x11c>)
100004b0:	0412      	lsls	r2, r2, #16
100004b2:	430a      	orrs	r2, r1
100004b4:	4b2b      	ldr	r3, [pc, #172]	; (10000564 <bsa_set_adv_data+0x124>)
100004b6:	0021      	movs	r1, r4
100004b8:	482e      	ldr	r0, [pc, #184]	; (10000574 <bsa_set_adv_data+0x134>)
100004ba:	4798      	blx	r3
100004bc:	4b29      	ldr	r3, [pc, #164]	; (10000564 <bsa_set_adv_data+0x124>)
100004be:	1d2a      	adds	r2, r5, #4
100004c0:	0021      	movs	r1, r4
100004c2:	482d      	ldr	r0, [pc, #180]	; (10000578 <bsa_set_adv_data+0x138>)
100004c4:	4798      	blx	r3
100004c6:	9b00      	ldr	r3, [sp, #0]
100004c8:	350e      	adds	r5, #14
100004ca:	2b01      	cmp	r3, #1
100004cc:	d122      	bne.n	10000514 <bsa_set_adv_data+0xd4>
100004ce:	2203      	movs	r2, #3
100004d0:	2300      	movs	r3, #0
100004d2:	4694      	mov	ip, r2
100004d4:	9a00      	ldr	r2, [sp, #0]
100004d6:	6838      	ldr	r0, [r7, #0]
100004d8:	9201      	str	r2, [sp, #4]
100004da:	6802      	ldr	r2, [r0, #0]
100004dc:	429a      	cmp	r2, r3
100004de:	d11b      	bne.n	10000518 <bsa_set_adv_data+0xd8>
100004e0:	4b26      	ldr	r3, [pc, #152]	; (1000057c <bsa_set_adv_data+0x13c>)
100004e2:	2000      	movs	r0, #0
100004e4:	4798      	blx	r3
100004e6:	0005      	movs	r5, r0
100004e8:	6843      	ldr	r3, [r0, #4]
100004ea:	221c      	movs	r2, #28
100004ec:	0031      	movs	r1, r6
100004ee:	1c98      	adds	r0, r3, #2
100004f0:	4b1f      	ldr	r3, [pc, #124]	; (10000570 <bsa_set_adv_data+0x130>)
100004f2:	4798      	blx	r3
100004f4:	4b22      	ldr	r3, [pc, #136]	; (10000580 <bsa_set_adv_data+0x140>)
100004f6:	0029      	movs	r1, r5
100004f8:	7818      	ldrb	r0, [r3, #0]
100004fa:	4b22      	ldr	r3, [pc, #136]	; (10000584 <bsa_set_adv_data+0x144>)
100004fc:	4798      	blx	r3
100004fe:	1e03      	subs	r3, r0, #0
10000500:	d004      	beq.n	1000050c <bsa_set_adv_data+0xcc>
10000502:	0021      	movs	r1, r4
10000504:	4a20      	ldr	r2, [pc, #128]	; (10000588 <bsa_set_adv_data+0x148>)
10000506:	4821      	ldr	r0, [pc, #132]	; (1000058c <bsa_set_adv_data+0x14c>)
10000508:	4c16      	ldr	r4, [pc, #88]	; (10000564 <bsa_set_adv_data+0x124>)
1000050a:	47a0      	blx	r4
1000050c:	2200      	movs	r2, #0
1000050e:	4b20      	ldr	r3, [pc, #128]	; (10000590 <bsa_set_adv_data+0x150>)
10000510:	701a      	strb	r2, [r3, #0]
10000512:	e7a0      	b.n	10000456 <bsa_set_adv_data+0x16>
10000514:	2301      	movs	r3, #1
10000516:	e7a7      	b.n	10000468 <bsa_set_adv_data+0x28>
10000518:	221e      	movs	r2, #30
1000051a:	0059      	lsls	r1, r3, #1
1000051c:	4011      	ands	r1, r2
1000051e:	6905      	ldr	r5, [r0, #16]
10000520:	111a      	asrs	r2, r3, #4
10000522:	0092      	lsls	r2, r2, #2
10000524:	5952      	ldr	r2, [r2, r5]
10000526:	4667      	mov	r7, ip
10000528:	40ca      	lsrs	r2, r1
1000052a:	423a      	tst	r2, r7
1000052c:	d112      	bne.n	10000554 <bsa_set_adv_data+0x114>
1000052e:	091a      	lsrs	r2, r3, #4
10000530:	0092      	lsls	r2, r2, #2
10000532:	18aa      	adds	r2, r5, r2
10000534:	6815      	ldr	r5, [r2, #0]
10000536:	9200      	str	r2, [sp, #0]
10000538:	002f      	movs	r7, r5
1000053a:	4662      	mov	r2, ip
1000053c:	40cf      	lsrs	r7, r1
1000053e:	4217      	tst	r7, r2
10000540:	d108      	bne.n	10000554 <bsa_set_adv_data+0x114>
10000542:	9f01      	ldr	r7, [sp, #4]
10000544:	9a00      	ldr	r2, [sp, #0]
10000546:	408f      	lsls	r7, r1
10000548:	0039      	movs	r1, r7
1000054a:	4329      	orrs	r1, r5
1000054c:	6011      	str	r1, [r2, #0]
1000054e:	6842      	ldr	r2, [r0, #4]
10000550:	3a01      	subs	r2, #1
10000552:	6042      	str	r2, [r0, #4]
10000554:	3301      	adds	r3, #1
10000556:	e7c0      	b.n	100004da <bsa_set_adv_data+0x9a>
10000558:	20014b38 	.word	0x20014b38
1000055c:	1000504b 	.word	0x1000504b
10000560:	10004e83 	.word	0x10004e83
10000564:	000066b1 	.word	0x000066b1
10000568:	00005859 	.word	0x00005859
1000056c:	0002ee51 	.word	0x0002ee51
10000570:	00005821 	.word	0x00005821
10000574:	10004ea9 	.word	0x10004ea9
10000578:	10004ec7 	.word	0x10004ec7
1000057c:	10002abd 	.word	0x10002abd
10000580:	20014b30 	.word	0x20014b30
10000584:	10002749 	.word	0x10002749
10000588:	10005139 	.word	0x10005139
1000058c:	10004ee7 	.word	0x10004ee7
10000590:	20014b48 	.word	0x20014b48

10000594 <bsa_create_adv>:
10000594:	b570      	push	{r4, r5, r6, lr}
10000596:	4b0b      	ldr	r3, [pc, #44]	; (100005c4 <bsa_create_adv+0x30>)
10000598:	480b      	ldr	r0, [pc, #44]	; (100005c8 <bsa_create_adv+0x34>)
1000059a:	4798      	blx	r3
1000059c:	4e0b      	ldr	r6, [pc, #44]	; (100005cc <bsa_create_adv+0x38>)
1000059e:	4d0c      	ldr	r5, [pc, #48]	; (100005d0 <bsa_create_adv+0x3c>)
100005a0:	0032      	movs	r2, r6
100005a2:	0029      	movs	r1, r5
100005a4:	480b      	ldr	r0, [pc, #44]	; (100005d4 <bsa_create_adv+0x40>)
100005a6:	4c0c      	ldr	r4, [pc, #48]	; (100005d8 <bsa_create_adv+0x44>)
100005a8:	47a0      	blx	r4
100005aa:	4b0c      	ldr	r3, [pc, #48]	; (100005dc <bsa_create_adv+0x48>)
100005ac:	2000      	movs	r0, #0
100005ae:	4798      	blx	r3
100005b0:	4b0b      	ldr	r3, [pc, #44]	; (100005e0 <bsa_create_adv+0x4c>)
100005b2:	4798      	blx	r3
100005b4:	1e03      	subs	r3, r0, #0
100005b6:	d003      	beq.n	100005c0 <bsa_create_adv+0x2c>
100005b8:	0032      	movs	r2, r6
100005ba:	0029      	movs	r1, r5
100005bc:	4809      	ldr	r0, [pc, #36]	; (100005e4 <bsa_create_adv+0x50>)
100005be:	47a0      	blx	r4
100005c0:	bd70      	pop	{r4, r5, r6, pc}
100005c2:	46c0      	nop			; (mov r8, r8)
100005c4:	100025c9 	.word	0x100025c9
100005c8:	10000315 	.word	0x10000315
100005cc:	1000512a 	.word	0x1000512a
100005d0:	1000504b 	.word	0x1000504b
100005d4:	10004f1b 	.word	0x10004f1b
100005d8:	000066b1 	.word	0x000066b1
100005dc:	10002aa1 	.word	0x10002aa1
100005e0:	100025ed 	.word	0x100025ed
100005e4:	10004f6d 	.word	0x10004f6d

100005e8 <bsa_start_scan>:
100005e8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
100005ea:	4b08      	ldr	r3, [pc, #32]	; (1000060c <bsa_start_scan+0x24>)
100005ec:	4668      	mov	r0, sp
100005ee:	4798      	blx	r3
100005f0:	4b07      	ldr	r3, [pc, #28]	; (10000610 <bsa_start_scan+0x28>)
100005f2:	4669      	mov	r1, sp
100005f4:	2000      	movs	r0, #0
100005f6:	4a07      	ldr	r2, [pc, #28]	; (10000614 <bsa_start_scan+0x2c>)
100005f8:	4798      	blx	r3
100005fa:	1e03      	subs	r3, r0, #0
100005fc:	d004      	beq.n	10000608 <bsa_start_scan+0x20>
100005fe:	4a06      	ldr	r2, [pc, #24]	; (10000618 <bsa_start_scan+0x30>)
10000600:	4906      	ldr	r1, [pc, #24]	; (1000061c <bsa_start_scan+0x34>)
10000602:	4807      	ldr	r0, [pc, #28]	; (10000620 <bsa_start_scan+0x38>)
10000604:	4c07      	ldr	r4, [pc, #28]	; (10000624 <bsa_start_scan+0x3c>)
10000606:	47a0      	blx	r4
10000608:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}
1000060a:	46c0      	nop			; (mov r8, r8)
1000060c:	10003555 	.word	0x10003555
10000610:	1000338d 	.word	0x1000338d
10000614:	100051e0 	.word	0x100051e0
10000618:	100050d8 	.word	0x100050d8
1000061c:	1000504b 	.word	0x1000504b
10000620:	10004fa1 	.word	0x10004fa1
10000624:	000066b1 	.word	0x000066b1

10000628 <bsa_scan_start_cfm>:
10000628:	b570      	push	{r4, r5, r6, lr}
1000062a:	0004      	movs	r4, r0
1000062c:	2900      	cmp	r1, #0
1000062e:	d003      	beq.n	10000638 <bsa_scan_start_cfm+0x10>
10000630:	238c      	movs	r3, #140	; 0x8c
10000632:	4a05      	ldr	r2, [pc, #20]	; (10000648 <bsa_scan_start_cfm+0x20>)
10000634:	4d05      	ldr	r5, [pc, #20]	; (1000064c <bsa_scan_start_cfm+0x24>)
10000636:	47a8      	blx	r5
10000638:	4b05      	ldr	r3, [pc, #20]	; (10000650 <bsa_scan_start_cfm+0x28>)
1000063a:	2108      	movs	r1, #8
1000063c:	701c      	strb	r4, [r3, #0]
1000063e:	2000      	movs	r0, #0
10000640:	4b04      	ldr	r3, [pc, #16]	; (10000654 <bsa_scan_start_cfm+0x2c>)
10000642:	4798      	blx	r3
10000644:	bd70      	pop	{r4, r5, r6, pc}
10000646:	46c0      	nop			; (mov r8, r8)
10000648:	10004fdc 	.word	0x10004fdc
1000064c:	00006641 	.word	0x00006641
10000650:	20014b3c 	.word	0x20014b3c
10000654:	10002b49 	.word	0x10002b49

10000658 <bsa_gap_init>:
10000658:	b510      	push	{r4, lr}
1000065a:	4b03      	ldr	r3, [pc, #12]	; (10000668 <bsa_gap_init+0x10>)
1000065c:	4798      	blx	r3
1000065e:	4903      	ldr	r1, [pc, #12]	; (1000066c <bsa_gap_init+0x14>)
10000660:	4b03      	ldr	r3, [pc, #12]	; (10000670 <bsa_gap_init+0x18>)
10000662:	4798      	blx	r3
10000664:	bd10      	pop	{r4, pc}
10000666:	46c0      	nop			; (mov r8, r8)
10000668:	100032c1 	.word	0x100032c1
1000066c:	10005164 	.word	0x10005164
10000670:	10002e69 	.word	0x10002e69

10000674 <kh_resize_rssi>:
10000674:	b5f0      	push	{r4, r5, r6, r7, lr}
10000676:	231f      	movs	r3, #31
10000678:	0004      	movs	r4, r0
1000067a:	4a69      	ldr	r2, [pc, #420]	; (10000820 <kh_resize_rssi+0x1ac>)
1000067c:	b091      	sub	sp, #68	; 0x44
1000067e:	0098      	lsls	r0, r3, #2
10000680:	5810      	ldr	r0, [r2, r0]
10000682:	4288      	cmp	r0, r1
10000684:	d849      	bhi.n	1000071a <kh_resize_rssi+0xa6>
10000686:	3301      	adds	r3, #1
10000688:	009b      	lsls	r3, r3, #2
1000068a:	589e      	ldr	r6, [r3, r2]
1000068c:	4b65      	ldr	r3, [pc, #404]	; (10000824 <kh_resize_rssi+0x1b0>)
1000068e:	0030      	movs	r0, r6
10000690:	4798      	blx	r3
10000692:	4a65      	ldr	r2, [pc, #404]	; (10000828 <kh_resize_rssi+0x1b4>)
10000694:	4b65      	ldr	r3, [pc, #404]	; (1000082c <kh_resize_rssi+0x1b8>)
10000696:	4d66      	ldr	r5, [pc, #408]	; (10000830 <kh_resize_rssi+0x1bc>)
10000698:	47a8      	blx	r5
1000069a:	2200      	movs	r2, #0
1000069c:	4b65      	ldr	r3, [pc, #404]	; (10000834 <kh_resize_rssi+0x1c0>)
1000069e:	4d66      	ldr	r5, [pc, #408]	; (10000838 <kh_resize_rssi+0x1c4>)
100006a0:	47a8      	blx	r5
100006a2:	4b66      	ldr	r3, [pc, #408]	; (1000083c <kh_resize_rssi+0x1c8>)
100006a4:	4798      	blx	r3
100006a6:	6863      	ldr	r3, [r4, #4]
100006a8:	9006      	str	r0, [sp, #24]
100006aa:	4283      	cmp	r3, r0
100006ac:	d233      	bcs.n	10000716 <kh_resize_rssi+0xa2>
100006ae:	0935      	lsrs	r5, r6, #4
100006b0:	3501      	adds	r5, #1
100006b2:	00ad      	lsls	r5, r5, #2
100006b4:	4b62      	ldr	r3, [pc, #392]	; (10000840 <kh_resize_rssi+0x1cc>)
100006b6:	0028      	movs	r0, r5
100006b8:	4798      	blx	r3
100006ba:	4b62      	ldr	r3, [pc, #392]	; (10000844 <kh_resize_rssi+0x1d0>)
100006bc:	002a      	movs	r2, r5
100006be:	21aa      	movs	r1, #170	; 0xaa
100006c0:	9005      	str	r0, [sp, #20]
100006c2:	4798      	blx	r3
100006c4:	6823      	ldr	r3, [r4, #0]
100006c6:	42b3      	cmp	r3, r6
100006c8:	d209      	bcs.n	100006de <kh_resize_rssi+0x6a>
100006ca:	4d5f      	ldr	r5, [pc, #380]	; (10000848 <kh_resize_rssi+0x1d4>)
100006cc:	00b1      	lsls	r1, r6, #2
100006ce:	6960      	ldr	r0, [r4, #20]
100006d0:	47a8      	blx	r5
100006d2:	210f      	movs	r1, #15
100006d4:	6160      	str	r0, [r4, #20]
100006d6:	4371      	muls	r1, r6
100006d8:	69a0      	ldr	r0, [r4, #24]
100006da:	47a8      	blx	r5
100006dc:	61a0      	str	r0, [r4, #24]
100006de:	2300      	movs	r3, #0
100006e0:	9301      	str	r3, [sp, #4]
100006e2:	9a01      	ldr	r2, [sp, #4]
100006e4:	6823      	ldr	r3, [r4, #0]
100006e6:	4293      	cmp	r3, r2
100006e8:	d119      	bne.n	1000071e <kh_resize_rssi+0xaa>
100006ea:	42b2      	cmp	r2, r6
100006ec:	d909      	bls.n	10000702 <kh_resize_rssi+0x8e>
100006ee:	4d56      	ldr	r5, [pc, #344]	; (10000848 <kh_resize_rssi+0x1d4>)
100006f0:	00b1      	lsls	r1, r6, #2
100006f2:	6960      	ldr	r0, [r4, #20]
100006f4:	47a8      	blx	r5
100006f6:	210f      	movs	r1, #15
100006f8:	6160      	str	r0, [r4, #20]
100006fa:	4371      	muls	r1, r6
100006fc:	69a0      	ldr	r0, [r4, #24]
100006fe:	47a8      	blx	r5
10000700:	61a0      	str	r0, [r4, #24]
10000702:	4b52      	ldr	r3, [pc, #328]	; (1000084c <kh_resize_rssi+0x1d8>)
10000704:	6920      	ldr	r0, [r4, #16]
10000706:	4798      	blx	r3
10000708:	9b05      	ldr	r3, [sp, #20]
1000070a:	6026      	str	r6, [r4, #0]
1000070c:	6123      	str	r3, [r4, #16]
1000070e:	6863      	ldr	r3, [r4, #4]
10000710:	60a3      	str	r3, [r4, #8]
10000712:	9b06      	ldr	r3, [sp, #24]
10000714:	60e3      	str	r3, [r4, #12]
10000716:	b011      	add	sp, #68	; 0x44
10000718:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000071a:	3b01      	subs	r3, #1
1000071c:	e7af      	b.n	1000067e <kh_resize_rssi+0xa>
1000071e:	221e      	movs	r2, #30
10000720:	9b01      	ldr	r3, [sp, #4]
10000722:	091d      	lsrs	r5, r3, #4
10000724:	6923      	ldr	r3, [r4, #16]
10000726:	00ad      	lsls	r5, r5, #2
10000728:	195d      	adds	r5, r3, r5
1000072a:	9b01      	ldr	r3, [sp, #4]
1000072c:	682f      	ldr	r7, [r5, #0]
1000072e:	005b      	lsls	r3, r3, #1
10000730:	401a      	ands	r2, r3
10000732:	003b      	movs	r3, r7
10000734:	9203      	str	r2, [sp, #12]
10000736:	40d3      	lsrs	r3, r2
10000738:	2203      	movs	r2, #3
1000073a:	4213      	tst	r3, r2
1000073c:	d16d      	bne.n	1000081a <kh_resize_rssi+0x1a6>
1000073e:	9b01      	ldr	r3, [sp, #4]
10000740:	6962      	ldr	r2, [r4, #20]
10000742:	009b      	lsls	r3, r3, #2
10000744:	589b      	ldr	r3, [r3, r2]
10000746:	220f      	movs	r2, #15
10000748:	9901      	ldr	r1, [sp, #4]
1000074a:	9302      	str	r3, [sp, #8]
1000074c:	4351      	muls	r1, r2
1000074e:	69a3      	ldr	r3, [r4, #24]
10000750:	a808      	add	r0, sp, #32
10000752:	1859      	adds	r1, r3, r1
10000754:	4b3e      	ldr	r3, [pc, #248]	; (10000850 <kh_resize_rssi+0x1dc>)
10000756:	4798      	blx	r3
10000758:	2301      	movs	r3, #1
1000075a:	9a03      	ldr	r2, [sp, #12]
1000075c:	4093      	lsls	r3, r2
1000075e:	431f      	orrs	r7, r3
10000760:	602f      	str	r7, [r5, #0]
10000762:	4d3c      	ldr	r5, [pc, #240]	; (10000854 <kh_resize_rssi+0x1e0>)
10000764:	0031      	movs	r1, r6
10000766:	9802      	ldr	r0, [sp, #8]
10000768:	47a8      	blx	r5
1000076a:	9802      	ldr	r0, [sp, #8]
1000076c:	000f      	movs	r7, r1
1000076e:	1e71      	subs	r1, r6, #1
10000770:	47a8      	blx	r5
10000772:	3101      	adds	r1, #1
10000774:	251e      	movs	r5, #30
10000776:	093b      	lsrs	r3, r7, #4
10000778:	009b      	lsls	r3, r3, #2
1000077a:	9304      	str	r3, [sp, #16]
1000077c:	9a04      	ldr	r2, [sp, #16]
1000077e:	9b05      	ldr	r3, [sp, #20]
10000780:	0078      	lsls	r0, r7, #1
10000782:	189a      	adds	r2, r3, r2
10000784:	6813      	ldr	r3, [r2, #0]
10000786:	4005      	ands	r5, r0
10000788:	0018      	movs	r0, r3
1000078a:	9503      	str	r5, [sp, #12]
1000078c:	40e8      	lsrs	r0, r5
1000078e:	2502      	movs	r5, #2
10000790:	4228      	tst	r0, r5
10000792:	d034      	beq.n	100007fe <kh_resize_rssi+0x18a>
10000794:	0029      	movs	r1, r5
10000796:	9803      	ldr	r0, [sp, #12]
10000798:	350d      	adds	r5, #13
1000079a:	4081      	lsls	r1, r0
1000079c:	438b      	bics	r3, r1
1000079e:	6013      	str	r3, [r2, #0]
100007a0:	6823      	ldr	r3, [r4, #0]
100007a2:	437d      	muls	r5, r7
100007a4:	00b9      	lsls	r1, r7, #2
100007a6:	42bb      	cmp	r3, r7
100007a8:	d92e      	bls.n	10000808 <kh_resize_rssi+0x194>
100007aa:	9804      	ldr	r0, [sp, #16]
100007ac:	6922      	ldr	r2, [r4, #16]
100007ae:	6963      	ldr	r3, [r4, #20]
100007b0:	5812      	ldr	r2, [r2, r0]
100007b2:	9803      	ldr	r0, [sp, #12]
100007b4:	185b      	adds	r3, r3, r1
100007b6:	40c2      	lsrs	r2, r0
100007b8:	2003      	movs	r0, #3
100007ba:	4202      	tst	r2, r0
100007bc:	d124      	bne.n	10000808 <kh_resize_rssi+0x194>
100007be:	681a      	ldr	r2, [r3, #0]
100007c0:	4f23      	ldr	r7, [pc, #140]	; (10000850 <kh_resize_rssi+0x1dc>)
100007c2:	9207      	str	r2, [sp, #28]
100007c4:	9a02      	ldr	r2, [sp, #8]
100007c6:	a80c      	add	r0, sp, #48	; 0x30
100007c8:	601a      	str	r2, [r3, #0]
100007ca:	69a3      	ldr	r3, [r4, #24]
100007cc:	220f      	movs	r2, #15
100007ce:	195d      	adds	r5, r3, r5
100007d0:	0029      	movs	r1, r5
100007d2:	47b8      	blx	r7
100007d4:	220f      	movs	r2, #15
100007d6:	a908      	add	r1, sp, #32
100007d8:	0028      	movs	r0, r5
100007da:	47b8      	blx	r7
100007dc:	220f      	movs	r2, #15
100007de:	a90c      	add	r1, sp, #48	; 0x30
100007e0:	a808      	add	r0, sp, #32
100007e2:	47b8      	blx	r7
100007e4:	6922      	ldr	r2, [r4, #16]
100007e6:	9903      	ldr	r1, [sp, #12]
100007e8:	4694      	mov	ip, r2
100007ea:	2201      	movs	r2, #1
100007ec:	408a      	lsls	r2, r1
100007ee:	9b04      	ldr	r3, [sp, #16]
100007f0:	4463      	add	r3, ip
100007f2:	6819      	ldr	r1, [r3, #0]
100007f4:	430a      	orrs	r2, r1
100007f6:	601a      	str	r2, [r3, #0]
100007f8:	9b07      	ldr	r3, [sp, #28]
100007fa:	9302      	str	r3, [sp, #8]
100007fc:	e7b1      	b.n	10000762 <kh_resize_rssi+0xee>
100007fe:	187f      	adds	r7, r7, r1
10000800:	42b7      	cmp	r7, r6
10000802:	d3b7      	bcc.n	10000774 <kh_resize_rssi+0x100>
10000804:	1bbf      	subs	r7, r7, r6
10000806:	e7b5      	b.n	10000774 <kh_resize_rssi+0x100>
10000808:	6963      	ldr	r3, [r4, #20]
1000080a:	9a02      	ldr	r2, [sp, #8]
1000080c:	505a      	str	r2, [r3, r1]
1000080e:	69a3      	ldr	r3, [r4, #24]
10000810:	220f      	movs	r2, #15
10000812:	1958      	adds	r0, r3, r5
10000814:	a908      	add	r1, sp, #32
10000816:	4b0e      	ldr	r3, [pc, #56]	; (10000850 <kh_resize_rssi+0x1dc>)
10000818:	4798      	blx	r3
1000081a:	9b01      	ldr	r3, [sp, #4]
1000081c:	3301      	adds	r3, #1
1000081e:	e75f      	b.n	100006e0 <kh_resize_rssi+0x6c>
10000820:	10005058 	.word	0x10005058
10000824:	0003ae69 	.word	0x0003ae69
10000828:	0a3d70a4 	.word	0x0a3d70a4
1000082c:	3fe8a3d7 	.word	0x3fe8a3d7
10000830:	0003a211 	.word	0x0003a211
10000834:	3fe00000 	.word	0x3fe00000
10000838:	00039389 	.word	0x00039389
1000083c:	0003c255 	.word	0x0003c255
10000840:	0002f615 	.word	0x0002f615
10000844:	00005859 	.word	0x00005859
10000848:	0002fe0d 	.word	0x0002fe0d
1000084c:	0002f629 	.word	0x0002f629
10000850:	00005821 	.word	0x00005821
10000854:	0002ee49 	.word	0x0002ee49

10000858 <bsa_scan_stop_ind>:
10000858:	b510      	push	{r4, lr}
1000085a:	4b05      	ldr	r3, [pc, #20]	; (10000870 <bsa_scan_stop_ind+0x18>)
1000085c:	2109      	movs	r1, #9
1000085e:	7818      	ldrb	r0, [r3, #0]
10000860:	4b04      	ldr	r3, [pc, #16]	; (10000874 <bsa_scan_stop_ind+0x1c>)
10000862:	2800      	cmp	r0, #0
10000864:	d001      	beq.n	1000086a <bsa_scan_stop_ind+0x12>
10000866:	210a      	movs	r1, #10
10000868:	2000      	movs	r0, #0
1000086a:	4798      	blx	r3
1000086c:	bd10      	pop	{r4, pc}
1000086e:	46c0      	nop			; (mov r8, r8)
10000870:	20014b48 	.word	0x20014b48
10000874:	10002b49 	.word	0x10002b49

10000878 <bsa_unlock_hibernation>:
10000878:	b510      	push	{r4, lr}
1000087a:	4b0b      	ldr	r3, [pc, #44]	; (100008a8 <bsa_unlock_hibernation+0x30>)
1000087c:	4a0b      	ldr	r2, [pc, #44]	; (100008ac <bsa_unlock_hibernation+0x34>)
1000087e:	490c      	ldr	r1, [pc, #48]	; (100008b0 <bsa_unlock_hibernation+0x38>)
10000880:	480c      	ldr	r0, [pc, #48]	; (100008b4 <bsa_unlock_hibernation+0x3c>)
10000882:	4798      	blx	r3
10000884:	4c0c      	ldr	r4, [pc, #48]	; (100008b8 <bsa_unlock_hibernation+0x40>)
10000886:	6823      	ldr	r3, [r4, #0]
10000888:	2b00      	cmp	r3, #0
1000088a:	d00c      	beq.n	100008a6 <bsa_unlock_hibernation+0x2e>
1000088c:	4b0b      	ldr	r3, [pc, #44]	; (100008bc <bsa_unlock_hibernation+0x44>)
1000088e:	cb03      	ldmia	r3!, {r0, r1}
10000890:	4b0b      	ldr	r3, [pc, #44]	; (100008c0 <bsa_unlock_hibernation+0x48>)
10000892:	4798      	blx	r3
10000894:	4b0b      	ldr	r3, [pc, #44]	; (100008c4 <bsa_unlock_hibernation+0x4c>)
10000896:	781b      	ldrb	r3, [r3, #0]
10000898:	2b04      	cmp	r3, #4
1000089a:	d004      	beq.n	100008a6 <bsa_unlock_hibernation+0x2e>
1000089c:	4b0a      	ldr	r3, [pc, #40]	; (100008c8 <bsa_unlock_hibernation+0x50>)
1000089e:	6821      	ldr	r1, [r4, #0]
100008a0:	7818      	ldrb	r0, [r3, #0]
100008a2:	4b0a      	ldr	r3, [pc, #40]	; (100008cc <bsa_unlock_hibernation+0x54>)
100008a4:	4798      	blx	r3
100008a6:	bd10      	pop	{r4, pc}
100008a8:	000066b1 	.word	0x000066b1
100008ac:	10005113 	.word	0x10005113
100008b0:	1000504b 	.word	0x1000504b
100008b4:	10004d16 	.word	0x10004d16
100008b8:	20014b34 	.word	0x20014b34
100008bc:	20014b40 	.word	0x20014b40
100008c0:	10001121 	.word	0x10001121
100008c4:	20014b49 	.word	0x20014b49
100008c8:	20014b4a 	.word	0x20014b4a
100008cc:	10000f85 	.word	0x10000f85

100008d0 <bsa_scan_on>:
100008d0:	b510      	push	{r4, lr}
100008d2:	4a09      	ldr	r2, [pc, #36]	; (100008f8 <bsa_scan_on+0x28>)
100008d4:	4909      	ldr	r1, [pc, #36]	; (100008fc <bsa_scan_on+0x2c>)
100008d6:	4b0a      	ldr	r3, [pc, #40]	; (10000900 <bsa_scan_on+0x30>)
100008d8:	480a      	ldr	r0, [pc, #40]	; (10000904 <bsa_scan_on+0x34>)
100008da:	4798      	blx	r3
100008dc:	4b0a      	ldr	r3, [pc, #40]	; (10000908 <bsa_scan_on+0x38>)
100008de:	22ff      	movs	r2, #255	; 0xff
100008e0:	2104      	movs	r1, #4
100008e2:	2000      	movs	r0, #0
100008e4:	4798      	blx	r3
100008e6:	4b09      	ldr	r3, [pc, #36]	; (1000090c <bsa_scan_on+0x3c>)
100008e8:	681b      	ldr	r3, [r3, #0]
100008ea:	2b00      	cmp	r3, #0
100008ec:	d003      	beq.n	100008f6 <bsa_scan_on+0x26>
100008ee:	4b08      	ldr	r3, [pc, #32]	; (10000910 <bsa_scan_on+0x40>)
100008f0:	cb03      	ldmia	r3!, {r0, r1}
100008f2:	4b08      	ldr	r3, [pc, #32]	; (10000914 <bsa_scan_on+0x44>)
100008f4:	4798      	blx	r3
100008f6:	bd10      	pop	{r4, pc}
100008f8:	10005107 	.word	0x10005107
100008fc:	1000504b 	.word	0x1000504b
10000900:	000066b1 	.word	0x000066b1
10000904:	10004d16 	.word	0x10004d16
10000908:	10002afd 	.word	0x10002afd
1000090c:	20014b34 	.word	0x20014b34
10000910:	20014b40 	.word	0x20014b40
10000914:	100010cd 	.word	0x100010cd

10000918 <bsa_ext_adv_ind>:
10000918:	b5f0      	push	{r4, r5, r6, r7, lr}
1000091a:	7803      	ldrb	r3, [r0, #0]
1000091c:	b08d      	sub	sp, #52	; 0x34
1000091e:	9000      	str	r0, [sp, #0]
10000920:	071b      	lsls	r3, r3, #28
10000922:	d400      	bmi.n	10000926 <bsa_ext_adv_ind+0xe>
10000924:	e0ff      	b.n	10000b26 <bsa_ext_adv_ind+0x20e>
10000926:	4b8f      	ldr	r3, [pc, #572]	; (10000b64 <bsa_ext_adv_ind+0x24c>)
10000928:	3001      	adds	r0, #1
1000092a:	4798      	blx	r3
1000092c:	2800      	cmp	r0, #0
1000092e:	d100      	bne.n	10000932 <bsa_ext_adv_ind+0x1a>
10000930:	e0f9      	b.n	10000b26 <bsa_ext_adv_ind+0x20e>
10000932:	2210      	movs	r2, #16
10000934:	2100      	movs	r1, #0
10000936:	4b8c      	ldr	r3, [pc, #560]	; (10000b68 <bsa_ext_adv_ind+0x250>)
10000938:	a804      	add	r0, sp, #16
1000093a:	4798      	blx	r3
1000093c:	9b00      	ldr	r3, [sp, #0]
1000093e:	aa04      	add	r2, sp, #16
10000940:	0018      	movs	r0, r3
10000942:	7d99      	ldrb	r1, [r3, #22]
10000944:	3018      	adds	r0, #24
10000946:	4b89      	ldr	r3, [pc, #548]	; (10000b6c <bsa_ext_adv_ind+0x254>)
10000948:	4798      	blx	r3
1000094a:	2800      	cmp	r0, #0
1000094c:	d100      	bne.n	10000950 <bsa_ext_adv_ind+0x38>
1000094e:	e0ea      	b.n	10000b26 <bsa_ext_adv_ind+0x20e>
10000950:	2201      	movs	r2, #1
10000952:	4b87      	ldr	r3, [pc, #540]	; (10000b70 <bsa_ext_adv_ind+0x258>)
10000954:	a904      	add	r1, sp, #16
10000956:	701a      	strb	r2, [r3, #0]
10000958:	4b86      	ldr	r3, [pc, #536]	; (10000b74 <bsa_ext_adv_ind+0x25c>)
1000095a:	320f      	adds	r2, #15
1000095c:	681c      	ldr	r4, [r3, #0]
1000095e:	a808      	add	r0, sp, #32
10000960:	4b85      	ldr	r3, [pc, #532]	; (10000b78 <bsa_ext_adv_ind+0x260>)
10000962:	4798      	blx	r3
10000964:	2600      	movs	r6, #0
10000966:	2209      	movs	r2, #9
10000968:	210a      	movs	r1, #10
1000096a:	ab08      	add	r3, sp, #32
1000096c:	189b      	adds	r3, r3, r2
1000096e:	799b      	ldrb	r3, [r3, #6]
10000970:	3b30      	subs	r3, #48	; 0x30
10000972:	199e      	adds	r6, r3, r6
10000974:	434e      	muls	r6, r1
10000976:	3a01      	subs	r2, #1
10000978:	d2f7      	bcs.n	1000096a <bsa_ext_adv_ind+0x52>
1000097a:	6825      	ldr	r5, [r4, #0]
1000097c:	2d00      	cmp	r5, #0
1000097e:	d04a      	beq.n	10000a16 <bsa_ext_adv_ind+0xfe>
10000980:	4f7e      	ldr	r7, [pc, #504]	; (10000b7c <bsa_ext_adv_ind+0x264>)
10000982:	0029      	movs	r1, r5
10000984:	0030      	movs	r0, r6
10000986:	47b8      	blx	r7
10000988:	0030      	movs	r0, r6
1000098a:	9101      	str	r1, [sp, #4]
1000098c:	1e69      	subs	r1, r5, #1
1000098e:	47b8      	blx	r7
10000990:	221e      	movs	r2, #30
10000992:	2701      	movs	r7, #1
10000994:	4694      	mov	ip, r2
10000996:	1c4b      	adds	r3, r1, #1
10000998:	9302      	str	r3, [sp, #8]
1000099a:	6923      	ldr	r3, [r4, #16]
1000099c:	9303      	str	r3, [sp, #12]
1000099e:	9b01      	ldr	r3, [sp, #4]
100009a0:	4660      	mov	r0, ip
100009a2:	0059      	lsls	r1, r3, #1
100009a4:	4001      	ands	r1, r0
100009a6:	091a      	lsrs	r2, r3, #4
100009a8:	9803      	ldr	r0, [sp, #12]
100009aa:	0092      	lsls	r2, r2, #2
100009ac:	5812      	ldr	r2, [r2, r0]
100009ae:	40ca      	lsrs	r2, r1
100009b0:	2102      	movs	r1, #2
100009b2:	420a      	tst	r2, r1
100009b4:	d020      	beq.n	100009f8 <bsa_ext_adv_ind+0xe0>
100009b6:	0792      	lsls	r2, r2, #30
100009b8:	d12d      	bne.n	10000a16 <bsa_ext_adv_ind+0xfe>
100009ba:	429d      	cmp	r5, r3
100009bc:	d02b      	beq.n	10000a16 <bsa_ext_adv_ind+0xfe>
100009be:	220f      	movs	r2, #15
100009c0:	4353      	muls	r3, r2
100009c2:	69a2      	ldr	r2, [r4, #24]
100009c4:	18d3      	adds	r3, r2, r3
100009c6:	791a      	ldrb	r2, [r3, #4]
100009c8:	7858      	ldrb	r0, [r3, #1]
100009ca:	3201      	adds	r2, #1
100009cc:	7899      	ldrb	r1, [r3, #2]
100009ce:	711a      	strb	r2, [r3, #4]
100009d0:	781a      	ldrb	r2, [r3, #0]
100009d2:	0200      	lsls	r0, r0, #8
100009d4:	4310      	orrs	r0, r2
100009d6:	0409      	lsls	r1, r1, #16
100009d8:	4308      	orrs	r0, r1
100009da:	9900      	ldr	r1, [sp, #0]
100009dc:	78da      	ldrb	r2, [r3, #3]
100009de:	7c09      	ldrb	r1, [r1, #16]
100009e0:	0612      	lsls	r2, r2, #24
100009e2:	b249      	sxtb	r1, r1
100009e4:	4302      	orrs	r2, r0
100009e6:	1852      	adds	r2, r2, r1
100009e8:	0a11      	lsrs	r1, r2, #8
100009ea:	701a      	strb	r2, [r3, #0]
100009ec:	7059      	strb	r1, [r3, #1]
100009ee:	0c11      	lsrs	r1, r2, #16
100009f0:	0e12      	lsrs	r2, r2, #24
100009f2:	7099      	strb	r1, [r3, #2]
100009f4:	70da      	strb	r2, [r3, #3]
100009f6:	e096      	b.n	10000b26 <bsa_ext_adv_ind+0x20e>
100009f8:	423a      	tst	r2, r7
100009fa:	d104      	bne.n	10000a06 <bsa_ext_adv_ind+0xee>
100009fc:	6960      	ldr	r0, [r4, #20]
100009fe:	0099      	lsls	r1, r3, #2
10000a00:	5809      	ldr	r1, [r1, r0]
10000a02:	428e      	cmp	r6, r1
10000a04:	d0d7      	beq.n	100009b6 <bsa_ext_adv_ind+0x9e>
10000a06:	9a02      	ldr	r2, [sp, #8]
10000a08:	189b      	adds	r3, r3, r2
10000a0a:	429d      	cmp	r5, r3
10000a0c:	d800      	bhi.n	10000a10 <bsa_ext_adv_ind+0xf8>
10000a0e:	1b5b      	subs	r3, r3, r5
10000a10:	9a01      	ldr	r2, [sp, #4]
10000a12:	429a      	cmp	r2, r3
10000a14:	d1c4      	bne.n	100009a0 <bsa_ext_adv_ind+0x88>
10000a16:	68a3      	ldr	r3, [r4, #8]
10000a18:	68e2      	ldr	r2, [r4, #12]
10000a1a:	4293      	cmp	r3, r2
10000a1c:	d308      	bcc.n	10000a30 <bsa_ext_adv_ind+0x118>
10000a1e:	6863      	ldr	r3, [r4, #4]
10000a20:	1e69      	subs	r1, r5, #1
10000a22:	005a      	lsls	r2, r3, #1
10000a24:	4b56      	ldr	r3, [pc, #344]	; (10000b80 <bsa_ext_adv_ind+0x268>)
10000a26:	4295      	cmp	r5, r2
10000a28:	d800      	bhi.n	10000a2c <bsa_ext_adv_ind+0x114>
10000a2a:	1c69      	adds	r1, r5, #1
10000a2c:	0020      	movs	r0, r4
10000a2e:	4798      	blx	r3
10000a30:	6827      	ldr	r7, [r4, #0]
10000a32:	4b52      	ldr	r3, [pc, #328]	; (10000b7c <bsa_ext_adv_ind+0x264>)
10000a34:	0039      	movs	r1, r7
10000a36:	0030      	movs	r0, r6
10000a38:	4798      	blx	r3
10000a3a:	6923      	ldr	r3, [r4, #16]
10000a3c:	9101      	str	r1, [sp, #4]
10000a3e:	9302      	str	r3, [sp, #8]
10000a40:	004a      	lsls	r2, r1, #1
10000a42:	090b      	lsrs	r3, r1, #4
10000a44:	211e      	movs	r1, #30
10000a46:	400a      	ands	r2, r1
10000a48:	9902      	ldr	r1, [sp, #8]
10000a4a:	009b      	lsls	r3, r3, #2
10000a4c:	585b      	ldr	r3, [r3, r1]
10000a4e:	9d01      	ldr	r5, [sp, #4]
10000a50:	40d3      	lsrs	r3, r2
10000a52:	2202      	movs	r2, #2
10000a54:	4213      	tst	r3, r2
10000a56:	d128      	bne.n	10000aaa <bsa_ext_adv_ind+0x192>
10000a58:	4b48      	ldr	r3, [pc, #288]	; (10000b7c <bsa_ext_adv_ind+0x264>)
10000a5a:	0030      	movs	r0, r6
10000a5c:	1e79      	subs	r1, r7, #1
10000a5e:	4798      	blx	r3
10000a60:	003b      	movs	r3, r7
10000a62:	3101      	adds	r1, #1
10000a64:	092a      	lsrs	r2, r5, #4
10000a66:	0092      	lsls	r2, r2, #2
10000a68:	9203      	str	r2, [sp, #12]
10000a6a:	221e      	movs	r2, #30
10000a6c:	0068      	lsls	r0, r5, #1
10000a6e:	4010      	ands	r0, r2
10000a70:	4684      	mov	ip, r0
10000a72:	9a02      	ldr	r2, [sp, #8]
10000a74:	9803      	ldr	r0, [sp, #12]
10000a76:	5882      	ldr	r2, [r0, r2]
10000a78:	4660      	mov	r0, ip
10000a7a:	40c2      	lsrs	r2, r0
10000a7c:	2002      	movs	r0, #2
10000a7e:	4202      	tst	r2, r0
10000a80:	d107      	bne.n	10000a92 <bsa_ext_adv_ind+0x17a>
10000a82:	3801      	subs	r0, #1
10000a84:	4202      	tst	r2, r0
10000a86:	d150      	bne.n	10000b2a <bsa_ext_adv_ind+0x212>
10000a88:	6960      	ldr	r0, [r4, #20]
10000a8a:	00aa      	lsls	r2, r5, #2
10000a8c:	5812      	ldr	r2, [r2, r0]
10000a8e:	4296      	cmp	r6, r2
10000a90:	d14c      	bne.n	10000b2c <bsa_ext_adv_ind+0x214>
10000a92:	201e      	movs	r0, #30
10000a94:	0069      	lsls	r1, r5, #1
10000a96:	4001      	ands	r1, r0
10000a98:	092a      	lsrs	r2, r5, #4
10000a9a:	9802      	ldr	r0, [sp, #8]
10000a9c:	0092      	lsls	r2, r2, #2
10000a9e:	5812      	ldr	r2, [r2, r0]
10000aa0:	40ca      	lsrs	r2, r1
10000aa2:	0792      	lsls	r2, r2, #30
10000aa4:	d501      	bpl.n	10000aaa <bsa_ext_adv_ind+0x192>
10000aa6:	429f      	cmp	r7, r3
10000aa8:	d14a      	bne.n	10000b40 <bsa_ext_adv_ind+0x228>
10000aaa:	231e      	movs	r3, #30
10000aac:	0069      	lsls	r1, r5, #1
10000aae:	400b      	ands	r3, r1
10000ab0:	092a      	lsrs	r2, r5, #4
10000ab2:	9902      	ldr	r1, [sp, #8]
10000ab4:	0092      	lsls	r2, r2, #2
10000ab6:	5889      	ldr	r1, [r1, r2]
10000ab8:	40d9      	lsrs	r1, r3
10000aba:	0788      	lsls	r0, r1, #30
10000abc:	d542      	bpl.n	10000b44 <bsa_ext_adv_ind+0x22c>
10000abe:	6960      	ldr	r0, [r4, #20]
10000ac0:	00a9      	lsls	r1, r5, #2
10000ac2:	500e      	str	r6, [r1, r0]
10000ac4:	6921      	ldr	r1, [r4, #16]
10000ac6:	188a      	adds	r2, r1, r2
10000ac8:	2103      	movs	r1, #3
10000aca:	4099      	lsls	r1, r3
10000acc:	6813      	ldr	r3, [r2, #0]
10000ace:	438b      	bics	r3, r1
10000ad0:	6013      	str	r3, [r2, #0]
10000ad2:	6863      	ldr	r3, [r4, #4]
10000ad4:	3301      	adds	r3, #1
10000ad6:	6063      	str	r3, [r4, #4]
10000ad8:	68a3      	ldr	r3, [r4, #8]
10000ada:	3301      	adds	r3, #1
10000adc:	60a3      	str	r3, [r4, #8]
10000ade:	9b00      	ldr	r3, [sp, #0]
10000ae0:	ae08      	add	r6, sp, #32
10000ae2:	7c1b      	ldrb	r3, [r3, #16]
10000ae4:	a804      	add	r0, sp, #16
10000ae6:	b25b      	sxtb	r3, r3
10000ae8:	9308      	str	r3, [sp, #32]
10000aea:	2301      	movs	r3, #1
10000aec:	7133      	strb	r3, [r6, #4]
10000aee:	ab04      	add	r3, sp, #16
10000af0:	1d99      	adds	r1, r3, #6
10000af2:	2315      	movs	r3, #21
10000af4:	181b      	adds	r3, r3, r0
10000af6:	0018      	movs	r0, r3
10000af8:	220a      	movs	r2, #10
10000afa:	4f1f      	ldr	r7, [pc, #124]	; (10000b78 <bsa_ext_adv_ind+0x260>)
10000afc:	47b8      	blx	r7
10000afe:	220f      	movs	r2, #15
10000b00:	4355      	muls	r5, r2
10000b02:	69a0      	ldr	r0, [r4, #24]
10000b04:	0031      	movs	r1, r6
10000b06:	1940      	adds	r0, r0, r5
10000b08:	47b8      	blx	r7
10000b0a:	4d1e      	ldr	r5, [pc, #120]	; (10000b84 <bsa_ext_adv_ind+0x26c>)
10000b0c:	ab04      	add	r3, sp, #16
10000b0e:	1d9a      	adds	r2, r3, #6
10000b10:	0029      	movs	r1, r5
10000b12:	481d      	ldr	r0, [pc, #116]	; (10000b88 <bsa_ext_adv_ind+0x270>)
10000b14:	4c1d      	ldr	r4, [pc, #116]	; (10000b8c <bsa_ext_adv_ind+0x274>)
10000b16:	47a0      	blx	r4
10000b18:	2315      	movs	r3, #21
10000b1a:	aa04      	add	r2, sp, #16
10000b1c:	189b      	adds	r3, r3, r2
10000b1e:	001a      	movs	r2, r3
10000b20:	0029      	movs	r1, r5
10000b22:	481b      	ldr	r0, [pc, #108]	; (10000b90 <bsa_ext_adv_ind+0x278>)
10000b24:	47a0      	blx	r4
10000b26:	b00d      	add	sp, #52	; 0x34
10000b28:	bdf0      	pop	{r4, r5, r6, r7, pc}
10000b2a:	002b      	movs	r3, r5
10000b2c:	186d      	adds	r5, r5, r1
10000b2e:	42af      	cmp	r7, r5
10000b30:	d800      	bhi.n	10000b34 <bsa_ext_adv_ind+0x21c>
10000b32:	1bed      	subs	r5, r5, r7
10000b34:	9a01      	ldr	r2, [sp, #4]
10000b36:	42aa      	cmp	r2, r5
10000b38:	d000      	beq.n	10000b3c <bsa_ext_adv_ind+0x224>
10000b3a:	e793      	b.n	10000a64 <bsa_ext_adv_ind+0x14c>
10000b3c:	429f      	cmp	r7, r3
10000b3e:	d0a8      	beq.n	10000a92 <bsa_ext_adv_ind+0x17a>
10000b40:	001d      	movs	r5, r3
10000b42:	e7b2      	b.n	10000aaa <bsa_ext_adv_ind+0x192>
10000b44:	07c9      	lsls	r1, r1, #31
10000b46:	d5ca      	bpl.n	10000ade <bsa_ext_adv_ind+0x1c6>
10000b48:	6960      	ldr	r0, [r4, #20]
10000b4a:	00a9      	lsls	r1, r5, #2
10000b4c:	500e      	str	r6, [r1, r0]
10000b4e:	6921      	ldr	r1, [r4, #16]
10000b50:	188a      	adds	r2, r1, r2
10000b52:	2103      	movs	r1, #3
10000b54:	4099      	lsls	r1, r3
10000b56:	6813      	ldr	r3, [r2, #0]
10000b58:	438b      	bics	r3, r1
10000b5a:	6013      	str	r3, [r2, #0]
10000b5c:	6863      	ldr	r3, [r4, #4]
10000b5e:	3301      	adds	r3, #1
10000b60:	6063      	str	r3, [r4, #4]
10000b62:	e7bc      	b.n	10000ade <bsa_ext_adv_ind+0x1c6>
10000b64:	10000109 	.word	0x10000109
10000b68:	00005859 	.word	0x00005859
10000b6c:	10000075 	.word	0x10000075
10000b70:	20014b48 	.word	0x20014b48
10000b74:	20014b38 	.word	0x20014b38
10000b78:	00005821 	.word	0x00005821
10000b7c:	0002ee49 	.word	0x0002ee49
10000b80:	10000675 	.word	0x10000675
10000b84:	1000504b 	.word	0x1000504b
10000b88:	10004ff7 	.word	0x10004ff7
10000b8c:	000066b1 	.word	0x000066b1
10000b90:	10005019 	.word	0x10005019

10000b94 <main>:
10000b94:	b510      	push	{r4, lr}
10000b96:	211c      	movs	r1, #28
10000b98:	4b06      	ldr	r3, [pc, #24]	; (10000bb4 <main+0x20>)
10000b9a:	2001      	movs	r0, #1
10000b9c:	4798      	blx	r3
10000b9e:	4b06      	ldr	r3, [pc, #24]	; (10000bb8 <main+0x24>)
10000ba0:	4906      	ldr	r1, [pc, #24]	; (10000bbc <main+0x28>)
10000ba2:	6018      	str	r0, [r3, #0]
10000ba4:	4806      	ldr	r0, [pc, #24]	; (10000bc0 <main+0x2c>)
10000ba6:	4b07      	ldr	r3, [pc, #28]	; (10000bc4 <main+0x30>)
10000ba8:	4798      	blx	r3
10000baa:	4807      	ldr	r0, [pc, #28]	; (10000bc8 <main+0x34>)
10000bac:	4b07      	ldr	r3, [pc, #28]	; (10000bcc <main+0x38>)
10000bae:	4798      	blx	r3
10000bb0:	2000      	movs	r0, #0
10000bb2:	bd10      	pop	{r4, pc}
10000bb4:	0002f53d 	.word	0x0002f53d
10000bb8:	20014b38 	.word	0x20014b38
10000bbc:	20014008 	.word	0x20014008
10000bc0:	20001290 	.word	0x20001290
10000bc4:	0000671d 	.word	0x0000671d
10000bc8:	1000503a 	.word	0x1000503a
10000bcc:	000066b1 	.word	0x000066b1

10000bd0 <user_debug_constructor>:
10000bd0:	b510      	push	{r4, lr}
10000bd2:	4b03      	ldr	r3, [pc, #12]	; (10000be0 <user_debug_constructor+0x10>)
10000bd4:	4a03      	ldr	r2, [pc, #12]	; (10000be4 <user_debug_constructor+0x14>)
10000bd6:	601a      	str	r2, [r3, #0]
10000bd8:	4b03      	ldr	r3, [pc, #12]	; (10000be8 <user_debug_constructor+0x18>)
10000bda:	4798      	blx	r3
10000bdc:	bd10      	pop	{r4, pc}
10000bde:	46c0      	nop			; (mov r8, r8)
10000be0:	20000004 	.word	0x20000004
10000be4:	10000bf1 	.word	0x10000bf1
10000be8:	00005785 	.word	0x00005785

10000bec <loop_forever>:
10000bec:	bf30      	wfi
10000bee:	e7fd      	b.n	10000bec <loop_forever>

10000bf0 <HardFault_Handler>:
10000bf0:	4b05      	ldr	r3, [pc, #20]	; (10000c08 <MSP_stacking+0x8>)
10000bf2:	2004      	movs	r0, #4
10000bf4:	4671      	mov	r1, lr
10000bf6:	4208      	tst	r0, r1
10000bf8:	d002      	beq.n	10000c00 <MSP_stacking>
10000bfa:	f3ef 8009 	mrs	r0, PSP
10000bfe:	4718      	bx	r3

10000c00 <MSP_stacking>:
10000c00:	f3ef 8008 	mrs	r0, MSP
10000c04:	4718      	bx	r3
10000c06:	46c0      	nop			; (mov r8, r8)
10000c08:	10000c0d 	.word	0x10000c0d

10000c0c <HardFault_Handler_c>:
10000c0c:	b537      	push	{r0, r1, r2, r4, r5, lr}
10000c0e:	0004      	movs	r4, r0
10000c10:	4b11      	ldr	r3, [pc, #68]	; (10000c58 <HardFault_Handler_c+0x4c>)
10000c12:	4812      	ldr	r0, [pc, #72]	; (10000c5c <HardFault_Handler_c+0x50>)
10000c14:	4798      	blx	r3
10000c16:	68e3      	ldr	r3, [r4, #12]
10000c18:	4d11      	ldr	r5, [pc, #68]	; (10000c60 <HardFault_Handler_c+0x54>)
10000c1a:	6862      	ldr	r2, [r4, #4]
10000c1c:	6821      	ldr	r1, [r4, #0]
10000c1e:	9300      	str	r3, [sp, #0]
10000c20:	4810      	ldr	r0, [pc, #64]	; (10000c64 <HardFault_Handler_c+0x58>)
10000c22:	68a3      	ldr	r3, [r4, #8]
10000c24:	47a8      	blx	r5
10000c26:	69e3      	ldr	r3, [r4, #28]
10000c28:	6962      	ldr	r2, [r4, #20]
10000c2a:	9300      	str	r3, [sp, #0]
10000c2c:	6921      	ldr	r1, [r4, #16]
10000c2e:	69a3      	ldr	r3, [r4, #24]
10000c30:	480d      	ldr	r0, [pc, #52]	; (10000c68 <HardFault_Handler_c+0x5c>)
10000c32:	47a8      	blx	r5
10000c34:	4d0d      	ldr	r5, [pc, #52]	; (10000c6c <HardFault_Handler_c+0x60>)
10000c36:	2d00      	cmp	r5, #0
10000c38:	d009      	beq.n	10000c4e <HardFault_Handler_c+0x42>
10000c3a:	0022      	movs	r2, r4
10000c3c:	69e3      	ldr	r3, [r4, #28]
10000c3e:	3220      	adds	r2, #32
10000c40:	059b      	lsls	r3, r3, #22
10000c42:	d500      	bpl.n	10000c46 <HardFault_Handler_c+0x3a>
10000c44:	3204      	adds	r2, #4
10000c46:	2300      	movs	r3, #0
10000c48:	6961      	ldr	r1, [r4, #20]
10000c4a:	69a0      	ldr	r0, [r4, #24]
10000c4c:	47a8      	blx	r5
10000c4e:	4b08      	ldr	r3, [pc, #32]	; (10000c70 <HardFault_Handler_c+0x64>)
10000c50:	681b      	ldr	r3, [r3, #0]
10000c52:	4798      	blx	r3
10000c54:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
10000c56:	46c0      	nop			; (mov r8, r8)
10000c58:	0002fdb1 	.word	0x0002fdb1
10000c5c:	100051f0 	.word	0x100051f0
10000c60:	0002fccd 	.word	0x0002fccd
10000c64:	100051fc 	.word	0x100051fc
10000c68:	1000522b 	.word	0x1000522b
10000c6c:	10001fd1 	.word	0x10001fd1
10000c70:	20014010 	.word	0x20014010

10000c74 <install_HFH>:
10000c74:	4b01      	ldr	r3, [pc, #4]	; (10000c7c <install_HFH+0x8>)
10000c76:	4a02      	ldr	r2, [pc, #8]	; (10000c80 <install_HFH+0xc>)
10000c78:	601a      	str	r2, [r3, #0]
10000c7a:	4770      	bx	lr
10000c7c:	20000004 	.word	0x20000004
10000c80:	10000bf1 	.word	0x10000bf1

10000c84 <ROM_errata_10_appm_init>:
10000c84:	b573      	push	{r0, r1, r4, r5, r6, lr}
10000c86:	4c0f      	ldr	r4, [pc, #60]	; (10000cc4 <ROM_errata_10_appm_init+0x40>)
10000c88:	8963      	ldrh	r3, [r4, #10]
10000c8a:	2b1c      	cmp	r3, #28
10000c8c:	d004      	beq.n	10000c98 <ROM_errata_10_appm_init+0x14>
10000c8e:	2232      	movs	r2, #50	; 0x32
10000c90:	490d      	ldr	r1, [pc, #52]	; (10000cc8 <ROM_errata_10_appm_init+0x44>)
10000c92:	480e      	ldr	r0, [pc, #56]	; (10000ccc <ROM_errata_10_appm_init+0x48>)
10000c94:	4b0e      	ldr	r3, [pc, #56]	; (10000cd0 <ROM_errata_10_appm_init+0x4c>)
10000c96:	4798      	blx	r3
10000c98:	4e0e      	ldr	r6, [pc, #56]	; (10000cd4 <ROM_errata_10_appm_init+0x50>)
10000c9a:	4d0f      	ldr	r5, [pc, #60]	; (10000cd8 <ROM_errata_10_appm_init+0x54>)
10000c9c:	6833      	ldr	r3, [r6, #0]
10000c9e:	0028      	movs	r0, r5
10000ca0:	6819      	ldr	r1, [r3, #0]
10000ca2:	22e0      	movs	r2, #224	; 0xe0
10000ca4:	4b0d      	ldr	r3, [pc, #52]	; (10000cdc <ROM_errata_10_appm_init+0x58>)
10000ca6:	4798      	blx	r3
10000ca8:	4b0d      	ldr	r3, [pc, #52]	; (10000ce0 <ROM_errata_10_appm_init+0x5c>)
10000caa:	6862      	ldr	r2, [r4, #4]
10000cac:	66eb      	str	r3, [r5, #108]	; 0x6c
10000cae:	4b0d      	ldr	r3, [pc, #52]	; (10000ce4 <ROM_errata_10_appm_init+0x60>)
10000cb0:	9201      	str	r2, [sp, #4]
10000cb2:	605a      	str	r2, [r3, #4]
10000cb4:	8922      	ldrh	r2, [r4, #8]
10000cb6:	601d      	str	r5, [r3, #0]
10000cb8:	811a      	strh	r2, [r3, #8]
10000cba:	221c      	movs	r2, #28
10000cbc:	2001      	movs	r0, #1
10000cbe:	815a      	strh	r2, [r3, #10]
10000cc0:	6033      	str	r3, [r6, #0]
10000cc2:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10000cc4:	0003d13c 	.word	0x0003d13c
10000cc8:	1000525a 	.word	0x1000525a
10000ccc:	1000526a 	.word	0x1000526a
10000cd0:	00006609 	.word	0x00006609
10000cd4:	20000ae4 	.word	0x20000ae4
10000cd8:	20014b58 	.word	0x20014b58
10000cdc:	00005821 	.word	0x00005821
10000ce0:	20014015 	.word	0x20014015
10000ce4:	20014b4c 	.word	0x20014b4c

10000ce8 <ROM_errata_10_constructor>:
10000ce8:	b510      	push	{r4, lr}
10000cea:	4902      	ldr	r1, [pc, #8]	; (10000cf4 <ROM_errata_10_constructor+0xc>)
10000cec:	4802      	ldr	r0, [pc, #8]	; (10000cf8 <ROM_errata_10_constructor+0x10>)
10000cee:	4b03      	ldr	r3, [pc, #12]	; (10000cfc <ROM_errata_10_constructor+0x14>)
10000cf0:	4798      	blx	r3
10000cf2:	bd10      	pop	{r4, pc}
10000cf4:	20014048 	.word	0x20014048
10000cf8:	20001290 	.word	0x20001290
10000cfc:	0000671d 	.word	0x0000671d

10000d00 <lld_dynamic_rf_mode_control>:
10000d00:	b570      	push	{r4, r5, r6, lr}
10000d02:	4b0c      	ldr	r3, [pc, #48]	; (10000d34 <lld_dynamic_rf_mode_control+0x34>)
10000d04:	0004      	movs	r4, r0
10000d06:	4798      	blx	r3
10000d08:	4b0b      	ldr	r3, [pc, #44]	; (10000d38 <lld_dynamic_rf_mode_control+0x38>)
10000d0a:	781d      	ldrb	r5, [r3, #0]
10000d0c:	2c00      	cmp	r4, #0
10000d0e:	d007      	beq.n	10000d20 <lld_dynamic_rf_mode_control+0x20>
10000d10:	2201      	movs	r2, #1
10000d12:	701a      	strb	r2, [r3, #0]
10000d14:	002a      	movs	r2, r5
10000d16:	0021      	movs	r1, r4
10000d18:	4b08      	ldr	r3, [pc, #32]	; (10000d3c <lld_dynamic_rf_mode_control+0x3c>)
10000d1a:	4809      	ldr	r0, [pc, #36]	; (10000d40 <lld_dynamic_rf_mode_control+0x40>)
10000d1c:	4798      	blx	r3
10000d1e:	bd70      	pop	{r4, r5, r6, pc}
10000d20:	701c      	strb	r4, [r3, #0]
10000d22:	4b08      	ldr	r3, [pc, #32]	; (10000d44 <lld_dynamic_rf_mode_control+0x44>)
10000d24:	2203      	movs	r2, #3
10000d26:	601c      	str	r4, [r3, #0]
10000d28:	0021      	movs	r1, r4
10000d2a:	4b07      	ldr	r3, [pc, #28]	; (10000d48 <lld_dynamic_rf_mode_control+0x48>)
10000d2c:	4807      	ldr	r0, [pc, #28]	; (10000d4c <lld_dynamic_rf_mode_control+0x4c>)
10000d2e:	4798      	blx	r3
10000d30:	e7f0      	b.n	10000d14 <lld_dynamic_rf_mode_control+0x14>
10000d32:	46c0      	nop			; (mov r8, r8)
10000d34:	20014269 	.word	0x20014269
10000d38:	20014c3b 	.word	0x20014c3b
10000d3c:	000066b1 	.word	0x000066b1
10000d40:	100052a6 	.word	0x100052a6
10000d44:	20014c40 	.word	0x20014c40
10000d48:	00005859 	.word	0x00005859
10000d4c:	20014c38 	.word	0x20014c38

10000d50 <enable_ROM_errata_14>:
10000d50:	b510      	push	{r4, lr}
10000d52:	4804      	ldr	r0, [pc, #16]	; (10000d64 <enable_ROM_errata_14+0x14>)
10000d54:	4b04      	ldr	r3, [pc, #16]	; (10000d68 <enable_ROM_errata_14+0x18>)
10000d56:	4798      	blx	r3
10000d58:	4904      	ldr	r1, [pc, #16]	; (10000d6c <enable_ROM_errata_14+0x1c>)
10000d5a:	4805      	ldr	r0, [pc, #20]	; (10000d70 <enable_ROM_errata_14+0x20>)
10000d5c:	4b05      	ldr	r3, [pc, #20]	; (10000d74 <enable_ROM_errata_14+0x24>)
10000d5e:	4798      	blx	r3
10000d60:	bd10      	pop	{r4, pc}
10000d62:	46c0      	nop			; (mov r8, r8)
10000d64:	10000d01 	.word	0x10000d01
10000d68:	100013d9 	.word	0x100013d9
10000d6c:	20014194 	.word	0x20014194
10000d70:	20001294 	.word	0x20001294
10000d74:	00006981 	.word	0x00006981

10000d78 <ROM_errata_16_appm_init>:
10000d78:	b573      	push	{r0, r1, r4, r5, r6, lr}
10000d7a:	4c0f      	ldr	r4, [pc, #60]	; (10000db8 <ROM_errata_16_appm_init+0x40>)
10000d7c:	8963      	ldrh	r3, [r4, #10]
10000d7e:	2b12      	cmp	r3, #18
10000d80:	d004      	beq.n	10000d8c <ROM_errata_16_appm_init+0x14>
10000d82:	223c      	movs	r2, #60	; 0x3c
10000d84:	490d      	ldr	r1, [pc, #52]	; (10000dbc <ROM_errata_16_appm_init+0x44>)
10000d86:	480e      	ldr	r0, [pc, #56]	; (10000dc0 <ROM_errata_16_appm_init+0x48>)
10000d88:	4b0e      	ldr	r3, [pc, #56]	; (10000dc4 <ROM_errata_16_appm_init+0x4c>)
10000d8a:	4798      	blx	r3
10000d8c:	4e0e      	ldr	r6, [pc, #56]	; (10000dc8 <ROM_errata_16_appm_init+0x50>)
10000d8e:	4d0f      	ldr	r5, [pc, #60]	; (10000dcc <ROM_errata_16_appm_init+0x54>)
10000d90:	6833      	ldr	r3, [r6, #0]
10000d92:	0028      	movs	r0, r5
10000d94:	6819      	ldr	r1, [r3, #0]
10000d96:	2290      	movs	r2, #144	; 0x90
10000d98:	4b0d      	ldr	r3, [pc, #52]	; (10000dd0 <ROM_errata_16_appm_init+0x58>)
10000d9a:	4798      	blx	r3
10000d9c:	4b0d      	ldr	r3, [pc, #52]	; (10000dd4 <ROM_errata_16_appm_init+0x5c>)
10000d9e:	6862      	ldr	r2, [r4, #4]
10000da0:	66eb      	str	r3, [r5, #108]	; 0x6c
10000da2:	4b0d      	ldr	r3, [pc, #52]	; (10000dd8 <ROM_errata_16_appm_init+0x60>)
10000da4:	9201      	str	r2, [sp, #4]
10000da6:	605a      	str	r2, [r3, #4]
10000da8:	8922      	ldrh	r2, [r4, #8]
10000daa:	601d      	str	r5, [r3, #0]
10000dac:	811a      	strh	r2, [r3, #8]
10000dae:	2212      	movs	r2, #18
10000db0:	2001      	movs	r0, #1
10000db2:	815a      	strh	r2, [r3, #10]
10000db4:	6033      	str	r3, [r6, #0]
10000db6:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
10000db8:	0003cd88 	.word	0x0003cd88
10000dbc:	100052c2 	.word	0x100052c2
10000dc0:	100052d2 	.word	0x100052d2
10000dc4:	00006609 	.word	0x00006609
10000dc8:	20000ae0 	.word	0x20000ae0
10000dcc:	20014c50 	.word	0x20014c50
10000dd0:	00005821 	.word	0x00005821
10000dd4:	2001419d 	.word	0x2001419d
10000dd8:	20014c44 	.word	0x20014c44

10000ddc <ROM_errata_16_constructor>:
10000ddc:	b510      	push	{r4, lr}
10000dde:	4902      	ldr	r1, [pc, #8]	; (10000de8 <ROM_errata_16_constructor+0xc>)
10000de0:	4802      	ldr	r0, [pc, #8]	; (10000dec <ROM_errata_16_constructor+0x10>)
10000de2:	4b03      	ldr	r3, [pc, #12]	; (10000df0 <ROM_errata_16_constructor+0x14>)
10000de4:	4798      	blx	r3
10000de6:	bd10      	pop	{r4, pc}
10000de8:	200141cc 	.word	0x200141cc
10000dec:	20001290 	.word	0x20001290
10000df0:	0000671d 	.word	0x0000671d

10000df4 <sw_timer_appm_init>:
10000df4:	b510      	push	{r4, lr}
10000df6:	2017      	movs	r0, #23
10000df8:	4902      	ldr	r1, [pc, #8]	; (10000e04 <sw_timer_appm_init+0x10>)
10000dfa:	4b03      	ldr	r3, [pc, #12]	; (10000e08 <sw_timer_appm_init+0x14>)
10000dfc:	4798      	blx	r3
10000dfe:	2001      	movs	r0, #1
10000e00:	bd10      	pop	{r4, pc}
10000e02:	46c0      	nop			; (mov r8, r8)
10000e04:	100053ec 	.word	0x100053ec
10000e08:	00001775 	.word	0x00001775

10000e0c <sw_timer_msg_handler>:
10000e0c:	b510      	push	{r4, lr}
10000e0e:	0a01      	lsrs	r1, r0, #8
10000e10:	2964      	cmp	r1, #100	; 0x64
10000e12:	d006      	beq.n	10000e22 <sw_timer_msg_handler+0x16>
10000e14:	2913      	cmp	r1, #19
10000e16:	d002      	beq.n	10000e1e <sw_timer_msg_handler+0x12>
10000e18:	480c      	ldr	r0, [pc, #48]	; (10000e4c <sw_timer_msg_handler+0x40>)
10000e1a:	4c0d      	ldr	r4, [pc, #52]	; (10000e50 <sw_timer_msg_handler+0x44>)
10000e1c:	47a0      	blx	r4
10000e1e:	2000      	movs	r0, #0
10000e20:	bd10      	pop	{r4, pc}
10000e22:	b2c0      	uxtb	r0, r0
10000e24:	2807      	cmp	r0, #7
10000e26:	d904      	bls.n	10000e32 <sw_timer_msg_handler+0x26>
10000e28:	0001      	movs	r1, r0
10000e2a:	480a      	ldr	r0, [pc, #40]	; (10000e54 <sw_timer_msg_handler+0x48>)
10000e2c:	4b08      	ldr	r3, [pc, #32]	; (10000e50 <sw_timer_msg_handler+0x44>)
10000e2e:	4798      	blx	r3
10000e30:	e7f5      	b.n	10000e1e <sw_timer_msg_handler+0x12>
10000e32:	220c      	movs	r2, #12
10000e34:	4342      	muls	r2, r0
10000e36:	4b08      	ldr	r3, [pc, #32]	; (10000e58 <sw_timer_msg_handler+0x4c>)
10000e38:	58d4      	ldr	r4, [r2, r3]
10000e3a:	2c00      	cmp	r4, #0
10000e3c:	d102      	bne.n	10000e44 <sw_timer_msg_handler+0x38>
10000e3e:	0001      	movs	r1, r0
10000e40:	4806      	ldr	r0, [pc, #24]	; (10000e5c <sw_timer_msg_handler+0x50>)
10000e42:	e7f3      	b.n	10000e2c <sw_timer_msg_handler+0x20>
10000e44:	189b      	adds	r3, r3, r2
10000e46:	6859      	ldr	r1, [r3, #4]
10000e48:	47a0      	blx	r4
10000e4a:	e7e8      	b.n	10000e1e <sw_timer_msg_handler+0x12>
10000e4c:	1000530e 	.word	0x1000530e
10000e50:	000066b1 	.word	0x000066b1
10000e54:	1000533c 	.word	0x1000533c
10000e58:	20014ce8 	.word	0x20014ce8
10000e5c:	1000535f 	.word	0x1000535f

10000e60 <sw_timer_init_constructor>:
10000e60:	b570      	push	{r4, r5, r6, lr}
10000e62:	4c0e      	ldr	r4, [pc, #56]	; (10000e9c <sw_timer_init_constructor+0x3c>)
10000e64:	6823      	ldr	r3, [r4, #0]
10000e66:	2b00      	cmp	r3, #0
10000e68:	d004      	beq.n	10000e74 <sw_timer_init_constructor+0x14>
10000e6a:	2269      	movs	r2, #105	; 0x69
10000e6c:	490c      	ldr	r1, [pc, #48]	; (10000ea0 <sw_timer_init_constructor+0x40>)
10000e6e:	480d      	ldr	r0, [pc, #52]	; (10000ea4 <sw_timer_init_constructor+0x44>)
10000e70:	4b0d      	ldr	r3, [pc, #52]	; (10000ea8 <sw_timer_init_constructor+0x48>)
10000e72:	4798      	blx	r3
10000e74:	490d      	ldr	r1, [pc, #52]	; (10000eac <sw_timer_init_constructor+0x4c>)
10000e76:	2208      	movs	r2, #8
10000e78:	000b      	movs	r3, r1
10000e7a:	6820      	ldr	r0, [r4, #0]
10000e7c:	3354      	adds	r3, #84	; 0x54
10000e7e:	001d      	movs	r5, r3
10000e80:	3a01      	subs	r2, #1
10000e82:	6098      	str	r0, [r3, #8]
10000e84:	3d0c      	subs	r5, #12
10000e86:	0018      	movs	r0, r3
10000e88:	2a00      	cmp	r2, #0
10000e8a:	d105      	bne.n	10000e98 <sw_timer_init_constructor+0x38>
10000e8c:	6021      	str	r1, [r4, #0]
10000e8e:	4808      	ldr	r0, [pc, #32]	; (10000eb0 <sw_timer_init_constructor+0x50>)
10000e90:	4908      	ldr	r1, [pc, #32]	; (10000eb4 <sw_timer_init_constructor+0x54>)
10000e92:	4b09      	ldr	r3, [pc, #36]	; (10000eb8 <sw_timer_init_constructor+0x58>)
10000e94:	4798      	blx	r3
10000e96:	bd70      	pop	{r4, r5, r6, pc}
10000e98:	002b      	movs	r3, r5
10000e9a:	e7f0      	b.n	10000e7e <sw_timer_init_constructor+0x1e>
10000e9c:	20014ce0 	.word	0x20014ce0
10000ea0:	10005383 	.word	0x10005383
10000ea4:	1000538e 	.word	0x1000538e
10000ea8:	00006609 	.word	0x00006609
10000eac:	20014ce8 	.word	0x20014ce8
10000eb0:	20001290 	.word	0x20001290
10000eb4:	200141d4 	.word	0x200141d4
10000eb8:	00006715 	.word	0x00006715

10000ebc <sw_timer_alloc>:
10000ebc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10000ebe:	0005      	movs	r5, r0
10000ec0:	000e      	movs	r6, r1
10000ec2:	2800      	cmp	r0, #0
10000ec4:	d104      	bne.n	10000ed0 <sw_timer_alloc+0x14>
10000ec6:	2276      	movs	r2, #118	; 0x76
10000ec8:	4910      	ldr	r1, [pc, #64]	; (10000f0c <sw_timer_alloc+0x50>)
10000eca:	4811      	ldr	r0, [pc, #68]	; (10000f10 <sw_timer_alloc+0x54>)
10000ecc:	4b11      	ldr	r3, [pc, #68]	; (10000f14 <sw_timer_alloc+0x58>)
10000ece:	4798      	blx	r3
10000ed0:	4f11      	ldr	r7, [pc, #68]	; (10000f18 <sw_timer_alloc+0x5c>)
10000ed2:	683b      	ldr	r3, [r7, #0]
10000ed4:	2b00      	cmp	r3, #0
10000ed6:	d104      	bne.n	10000ee2 <sw_timer_alloc+0x26>
10000ed8:	2277      	movs	r2, #119	; 0x77
10000eda:	490c      	ldr	r1, [pc, #48]	; (10000f0c <sw_timer_alloc+0x50>)
10000edc:	480f      	ldr	r0, [pc, #60]	; (10000f1c <sw_timer_alloc+0x60>)
10000ede:	4b0d      	ldr	r3, [pc, #52]	; (10000f14 <sw_timer_alloc+0x58>)
10000ee0:	4798      	blx	r3
10000ee2:	683c      	ldr	r4, [r7, #0]
10000ee4:	2c00      	cmp	r4, #0
10000ee6:	d104      	bne.n	10000ef2 <sw_timer_alloc+0x36>
10000ee8:	227b      	movs	r2, #123	; 0x7b
10000eea:	4908      	ldr	r1, [pc, #32]	; (10000f0c <sw_timer_alloc+0x50>)
10000eec:	480c      	ldr	r0, [pc, #48]	; (10000f20 <sw_timer_alloc+0x64>)
10000eee:	4b09      	ldr	r3, [pc, #36]	; (10000f14 <sw_timer_alloc+0x58>)
10000ef0:	4798      	blx	r3
10000ef2:	68a3      	ldr	r3, [r4, #8]
10000ef4:	480b      	ldr	r0, [pc, #44]	; (10000f24 <sw_timer_alloc+0x68>)
10000ef6:	603b      	str	r3, [r7, #0]
10000ef8:	2300      	movs	r3, #0
10000efa:	6025      	str	r5, [r4, #0]
10000efc:	6066      	str	r6, [r4, #4]
10000efe:	60a3      	str	r3, [r4, #8]
10000f00:	1a20      	subs	r0, r4, r0
10000f02:	4c09      	ldr	r4, [pc, #36]	; (10000f28 <sw_timer_alloc+0x6c>)
10000f04:	1080      	asrs	r0, r0, #2
10000f06:	4360      	muls	r0, r4
10000f08:	b2c0      	uxtb	r0, r0
10000f0a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10000f0c:	10005383 	.word	0x10005383
10000f10:	100053e1 	.word	0x100053e1
10000f14:	00006609 	.word	0x00006609
10000f18:	20014ce0 	.word	0x20014ce0
10000f1c:	100053a9 	.word	0x100053a9
10000f20:	100053bc 	.word	0x100053bc
10000f24:	20014ce8 	.word	0x20014ce8
10000f28:	aaaaaaab 	.word	0xaaaaaaab

10000f2c <sw_timer_free>:
10000f2c:	b570      	push	{r4, r5, r6, lr}
10000f2e:	0005      	movs	r5, r0
10000f30:	2807      	cmp	r0, #7
10000f32:	d904      	bls.n	10000f3e <sw_timer_free+0x12>
10000f34:	2386      	movs	r3, #134	; 0x86
10000f36:	2108      	movs	r1, #8
10000f38:	4a0c      	ldr	r2, [pc, #48]	; (10000f6c <sw_timer_free+0x40>)
10000f3a:	4c0d      	ldr	r4, [pc, #52]	; (10000f70 <sw_timer_free+0x44>)
10000f3c:	47a0      	blx	r4
10000f3e:	230c      	movs	r3, #12
10000f40:	436b      	muls	r3, r5
10000f42:	4c0c      	ldr	r4, [pc, #48]	; (10000f74 <sw_timer_free+0x48>)
10000f44:	18e6      	adds	r6, r4, r3
10000f46:	58e3      	ldr	r3, [r4, r3]
10000f48:	2b00      	cmp	r3, #0
10000f4a:	d104      	bne.n	10000f56 <sw_timer_free+0x2a>
10000f4c:	2288      	movs	r2, #136	; 0x88
10000f4e:	4907      	ldr	r1, [pc, #28]	; (10000f6c <sw_timer_free+0x40>)
10000f50:	4809      	ldr	r0, [pc, #36]	; (10000f78 <sw_timer_free+0x4c>)
10000f52:	4b0a      	ldr	r3, [pc, #40]	; (10000f7c <sw_timer_free+0x50>)
10000f54:	4798      	blx	r3
10000f56:	200c      	movs	r0, #12
10000f58:	2300      	movs	r3, #0
10000f5a:	4345      	muls	r5, r0
10000f5c:	5163      	str	r3, [r4, r5]
10000f5e:	1964      	adds	r4, r4, r5
10000f60:	6063      	str	r3, [r4, #4]
10000f62:	4b07      	ldr	r3, [pc, #28]	; (10000f80 <sw_timer_free+0x54>)
10000f64:	681a      	ldr	r2, [r3, #0]
10000f66:	601e      	str	r6, [r3, #0]
10000f68:	60a2      	str	r2, [r4, #8]
10000f6a:	bd70      	pop	{r4, r5, r6, pc}
10000f6c:	10005383 	.word	0x10005383
10000f70:	00006641 	.word	0x00006641
10000f74:	20014ce8 	.word	0x20014ce8
10000f78:	100053c0 	.word	0x100053c0
10000f7c:	00006609 	.word	0x00006609
10000f80:	20014ce0 	.word	0x20014ce0

10000f84 <sw_timer_set>:
10000f84:	b570      	push	{r4, r5, r6, lr}
10000f86:	0004      	movs	r4, r0
10000f88:	000d      	movs	r5, r1
10000f8a:	2807      	cmp	r0, #7
10000f8c:	d904      	bls.n	10000f98 <sw_timer_set+0x14>
10000f8e:	23a1      	movs	r3, #161	; 0xa1
10000f90:	2108      	movs	r1, #8
10000f92:	4a0b      	ldr	r2, [pc, #44]	; (10000fc0 <sw_timer_set+0x3c>)
10000f94:	4e0b      	ldr	r6, [pc, #44]	; (10000fc4 <sw_timer_set+0x40>)
10000f96:	47b0      	blx	r6
10000f98:	230c      	movs	r3, #12
10000f9a:	4363      	muls	r3, r4
10000f9c:	4a0a      	ldr	r2, [pc, #40]	; (10000fc8 <sw_timer_set+0x44>)
10000f9e:	589b      	ldr	r3, [r3, r2]
10000fa0:	2b00      	cmp	r3, #0
10000fa2:	d104      	bne.n	10000fae <sw_timer_set+0x2a>
10000fa4:	22a2      	movs	r2, #162	; 0xa2
10000fa6:	4906      	ldr	r1, [pc, #24]	; (10000fc0 <sw_timer_set+0x3c>)
10000fa8:	4808      	ldr	r0, [pc, #32]	; (10000fcc <sw_timer_set+0x48>)
10000faa:	4b09      	ldr	r3, [pc, #36]	; (10000fd0 <sw_timer_set+0x4c>)
10000fac:	4798      	blx	r3
10000fae:	20c8      	movs	r0, #200	; 0xc8
10000fb0:	01c0      	lsls	r0, r0, #7
10000fb2:	002a      	movs	r2, r5
10000fb4:	2117      	movs	r1, #23
10000fb6:	4b07      	ldr	r3, [pc, #28]	; (10000fd4 <sw_timer_set+0x50>)
10000fb8:	4320      	orrs	r0, r4
10000fba:	4798      	blx	r3
10000fbc:	bd70      	pop	{r4, r5, r6, pc}
10000fbe:	46c0      	nop			; (mov r8, r8)
10000fc0:	10005383 	.word	0x10005383
10000fc4:	00006641 	.word	0x00006641
10000fc8:	20014ce8 	.word	0x20014ce8
10000fcc:	100053cd 	.word	0x100053cd
10000fd0:	00006609 	.word	0x00006609
10000fd4:	00001005 	.word	0x00001005

10000fd8 <sw_timer_clear>:
10000fd8:	b570      	push	{r4, r5, r6, lr}
10000fda:	0004      	movs	r4, r0
10000fdc:	2807      	cmp	r0, #7
10000fde:	d904      	bls.n	10000fea <sw_timer_clear+0x12>
10000fe0:	23a9      	movs	r3, #169	; 0xa9
10000fe2:	2108      	movs	r1, #8
10000fe4:	4a0a      	ldr	r2, [pc, #40]	; (10001010 <sw_timer_clear+0x38>)
10000fe6:	4d0b      	ldr	r5, [pc, #44]	; (10001014 <sw_timer_clear+0x3c>)
10000fe8:	47a8      	blx	r5
10000fea:	230c      	movs	r3, #12
10000fec:	4363      	muls	r3, r4
10000fee:	4a0a      	ldr	r2, [pc, #40]	; (10001018 <sw_timer_clear+0x40>)
10000ff0:	589b      	ldr	r3, [r3, r2]
10000ff2:	2b00      	cmp	r3, #0
10000ff4:	d104      	bne.n	10001000 <sw_timer_clear+0x28>
10000ff6:	22aa      	movs	r2, #170	; 0xaa
10000ff8:	4905      	ldr	r1, [pc, #20]	; (10001010 <sw_timer_clear+0x38>)
10000ffa:	4808      	ldr	r0, [pc, #32]	; (1000101c <sw_timer_clear+0x44>)
10000ffc:	4b08      	ldr	r3, [pc, #32]	; (10001020 <sw_timer_clear+0x48>)
10000ffe:	4798      	blx	r3
10001000:	20c8      	movs	r0, #200	; 0xc8
10001002:	01c0      	lsls	r0, r0, #7
10001004:	2117      	movs	r1, #23
10001006:	4b07      	ldr	r3, [pc, #28]	; (10001024 <sw_timer_clear+0x4c>)
10001008:	4320      	orrs	r0, r4
1000100a:	4798      	blx	r3
1000100c:	bd70      	pop	{r4, r5, r6, pc}
1000100e:	46c0      	nop			; (mov r8, r8)
10001010:	10005383 	.word	0x10005383
10001014:	00006641 	.word	0x00006641
10001018:	20014ce8 	.word	0x20014ce8
1000101c:	100053cd 	.word	0x100053cd
10001020:	00006609 	.word	0x00006609
10001024:	000010bd 	.word	0x000010bd

10001028 <atm_timer_init_constructor>:
10001028:	b510      	push	{r4, lr}
1000102a:	4904      	ldr	r1, [pc, #16]	; (1000103c <atm_timer_init_constructor+0x14>)
1000102c:	4c04      	ldr	r4, [pc, #16]	; (10001040 <atm_timer_init_constructor+0x18>)
1000102e:	4805      	ldr	r0, [pc, #20]	; (10001044 <atm_timer_init_constructor+0x1c>)
10001030:	47a0      	blx	r4
10001032:	4905      	ldr	r1, [pc, #20]	; (10001048 <atm_timer_init_constructor+0x20>)
10001034:	4805      	ldr	r0, [pc, #20]	; (1000104c <atm_timer_init_constructor+0x24>)
10001036:	47a0      	blx	r4
10001038:	bd10      	pop	{r4, pc}
1000103a:	46c0      	nop			; (mov r8, r8)
1000103c:	200141f4 	.word	0x200141f4
10001040:	00006805 	.word	0x00006805
10001044:	20001260 	.word	0x20001260
10001048:	200141fc 	.word	0x200141fc
1000104c:	20001284 	.word	0x20001284

10001050 <atm_pm_init_constructor>:
10001050:	b510      	push	{r4, lr}
10001052:	4904      	ldr	r1, [pc, #16]	; (10001064 <atm_pm_init_constructor+0x14>)
10001054:	4c04      	ldr	r4, [pc, #16]	; (10001068 <atm_pm_init_constructor+0x18>)
10001056:	4805      	ldr	r0, [pc, #20]	; (1000106c <atm_pm_init_constructor+0x1c>)
10001058:	47a0      	blx	r4
1000105a:	4905      	ldr	r1, [pc, #20]	; (10001070 <atm_pm_init_constructor+0x20>)
1000105c:	4805      	ldr	r0, [pc, #20]	; (10001074 <atm_pm_init_constructor+0x24>)
1000105e:	47a0      	blx	r4
10001060:	bd10      	pop	{r4, pc}
10001062:	46c0      	nop			; (mov r8, r8)
10001064:	20014258 	.word	0x20014258
10001068:	00006805 	.word	0x00006805
1000106c:	20001260 	.word	0x20001260
10001070:	20014260 	.word	0x20014260
10001074:	20001284 	.word	0x20001284

10001078 <atm_pm_alloc>:
10001078:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1000107a:	0004      	movs	r4, r0
1000107c:	000d      	movs	r5, r1
1000107e:	2902      	cmp	r1, #2
10001080:	d904      	bls.n	1000108c <atm_pm_alloc+0x14>
10001082:	2249      	movs	r2, #73	; 0x49
10001084:	490c      	ldr	r1, [pc, #48]	; (100010b8 <atm_pm_alloc+0x40>)
10001086:	480d      	ldr	r0, [pc, #52]	; (100010bc <atm_pm_alloc+0x44>)
10001088:	4b0d      	ldr	r3, [pc, #52]	; (100010c0 <atm_pm_alloc+0x48>)
1000108a:	4798      	blx	r3
1000108c:	4f0d      	ldr	r7, [pc, #52]	; (100010c4 <atm_pm_alloc+0x4c>)
1000108e:	00ae      	lsls	r6, r5, #2
10001090:	59f3      	ldr	r3, [r6, r7]
10001092:	3301      	adds	r3, #1
10001094:	d104      	bne.n	100010a0 <atm_pm_alloc+0x28>
10001096:	224a      	movs	r2, #74	; 0x4a
10001098:	4907      	ldr	r1, [pc, #28]	; (100010b8 <atm_pm_alloc+0x40>)
1000109a:	480b      	ldr	r0, [pc, #44]	; (100010c8 <atm_pm_alloc+0x50>)
1000109c:	4b08      	ldr	r3, [pc, #32]	; (100010c0 <atm_pm_alloc+0x48>)
1000109e:	4798      	blx	r3
100010a0:	2301      	movs	r3, #1
100010a2:	59ba      	ldr	r2, [r7, r6]
100010a4:	4213      	tst	r3, r2
100010a6:	d105      	bne.n	100010b4 <atm_pm_alloc+0x3c>
100010a8:	431a      	orrs	r2, r3
100010aa:	51ba      	str	r2, [r7, r6]
100010ac:	0020      	movs	r0, r4
100010ae:	7125      	strb	r5, [r4, #4]
100010b0:	6023      	str	r3, [r4, #0]
100010b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100010b4:	005b      	lsls	r3, r3, #1
100010b6:	e7f5      	b.n	100010a4 <atm_pm_alloc+0x2c>
100010b8:	10005400 	.word	0x10005400
100010bc:	10005451 	.word	0x10005451
100010c0:	00006609 	.word	0x00006609
100010c4:	20014d60 	.word	0x20014d60
100010c8:	1000542b 	.word	0x1000542b

100010cc <atm_pm_lock>:
100010cc:	b537      	push	{r0, r1, r2, r4, r5, lr}
100010ce:	0005      	movs	r5, r0
100010d0:	b2cc      	uxtb	r4, r1
100010d2:	2800      	cmp	r0, #0
100010d4:	d104      	bne.n	100010e0 <atm_pm_lock+0x14>
100010d6:	2260      	movs	r2, #96	; 0x60
100010d8:	490b      	ldr	r1, [pc, #44]	; (10001108 <atm_pm_lock+0x3c>)
100010da:	480c      	ldr	r0, [pc, #48]	; (1000110c <atm_pm_lock+0x40>)
100010dc:	4b0c      	ldr	r3, [pc, #48]	; (10001110 <atm_pm_lock+0x44>)
100010de:	4798      	blx	r3
100010e0:	2c02      	cmp	r4, #2
100010e2:	d904      	bls.n	100010ee <atm_pm_lock+0x22>
100010e4:	2261      	movs	r2, #97	; 0x61
100010e6:	4908      	ldr	r1, [pc, #32]	; (10001108 <atm_pm_lock+0x3c>)
100010e8:	480a      	ldr	r0, [pc, #40]	; (10001114 <atm_pm_lock+0x48>)
100010ea:	4b09      	ldr	r3, [pc, #36]	; (10001110 <atm_pm_lock+0x44>)
100010ec:	4798      	blx	r3
100010ee:	4b0a      	ldr	r3, [pc, #40]	; (10001118 <atm_pm_lock+0x4c>)
100010f0:	00a2      	lsls	r2, r4, #2
100010f2:	58d1      	ldr	r1, [r2, r3]
100010f4:	430d      	orrs	r5, r1
100010f6:	50d5      	str	r5, [r2, r3]
100010f8:	2c00      	cmp	r4, #0
100010fa:	d103      	bne.n	10001104 <atm_pm_lock+0x38>
100010fc:	2080      	movs	r0, #128	; 0x80
100010fe:	4b07      	ldr	r3, [pc, #28]	; (1000111c <atm_pm_lock+0x50>)
10001100:	0140      	lsls	r0, r0, #5
10001102:	4798      	blx	r3
10001104:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
10001106:	46c0      	nop			; (mov r8, r8)
10001108:	10005400 	.word	0x10005400
1000110c:	10005483 	.word	0x10005483
10001110:	00006609 	.word	0x00006609
10001114:	1000544e 	.word	0x1000544e
10001118:	20014d54 	.word	0x20014d54
1000111c:	0000069d 	.word	0x0000069d

10001120 <atm_pm_unlock>:
10001120:	b537      	push	{r0, r1, r2, r4, r5, lr}
10001122:	0005      	movs	r5, r0
10001124:	b2cc      	uxtb	r4, r1
10001126:	2800      	cmp	r0, #0
10001128:	d104      	bne.n	10001134 <atm_pm_unlock+0x14>
1000112a:	226a      	movs	r2, #106	; 0x6a
1000112c:	490b      	ldr	r1, [pc, #44]	; (1000115c <atm_pm_unlock+0x3c>)
1000112e:	480c      	ldr	r0, [pc, #48]	; (10001160 <atm_pm_unlock+0x40>)
10001130:	4b0c      	ldr	r3, [pc, #48]	; (10001164 <atm_pm_unlock+0x44>)
10001132:	4798      	blx	r3
10001134:	2c02      	cmp	r4, #2
10001136:	d904      	bls.n	10001142 <atm_pm_unlock+0x22>
10001138:	226b      	movs	r2, #107	; 0x6b
1000113a:	4908      	ldr	r1, [pc, #32]	; (1000115c <atm_pm_unlock+0x3c>)
1000113c:	480a      	ldr	r0, [pc, #40]	; (10001168 <atm_pm_unlock+0x48>)
1000113e:	4b09      	ldr	r3, [pc, #36]	; (10001164 <atm_pm_unlock+0x44>)
10001140:	4798      	blx	r3
10001142:	4a0a      	ldr	r2, [pc, #40]	; (1000116c <atm_pm_unlock+0x4c>)
10001144:	00a1      	lsls	r1, r4, #2
10001146:	588b      	ldr	r3, [r1, r2]
10001148:	43ab      	bics	r3, r5
1000114a:	508b      	str	r3, [r1, r2]
1000114c:	d105      	bne.n	1000115a <atm_pm_unlock+0x3a>
1000114e:	2c00      	cmp	r4, #0
10001150:	d103      	bne.n	1000115a <atm_pm_unlock+0x3a>
10001152:	2080      	movs	r0, #128	; 0x80
10001154:	4b06      	ldr	r3, [pc, #24]	; (10001170 <atm_pm_unlock+0x50>)
10001156:	0140      	lsls	r0, r0, #5
10001158:	4798      	blx	r3
1000115a:	bd37      	pop	{r0, r1, r2, r4, r5, pc}
1000115c:	10005400 	.word	0x10005400
10001160:	10005483 	.word	0x10005483
10001164:	00006609 	.word	0x00006609
10001168:	1000544e 	.word	0x1000544e
1000116c:	20014d54 	.word	0x20014d54
10001170:	000006b5 	.word	0x000006b5

10001174 <atm_pm_set_hib_restart_time>:
10001174:	b510      	push	{r4, lr}
10001176:	2264      	movs	r2, #100	; 0x64
10001178:	2300      	movs	r3, #0
1000117a:	4c03      	ldr	r4, [pc, #12]	; (10001188 <atm_pm_set_hib_restart_time+0x14>)
1000117c:	0c41      	lsrs	r1, r0, #17
1000117e:	03c0      	lsls	r0, r0, #15
10001180:	47a0      	blx	r4
10001182:	4b02      	ldr	r3, [pc, #8]	; (1000118c <atm_pm_set_hib_restart_time+0x18>)
10001184:	6018      	str	r0, [r3, #0]
10001186:	bd10      	pop	{r4, pc}
10001188:	0002f0ad 	.word	0x0002f0ad
1000118c:	20014d50 	.word	0x20014d50

10001190 <hw_cfg_pseq_init>:
10001190:	2380      	movs	r3, #128	; 0x80
10001192:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10001194:	4c2d      	ldr	r4, [pc, #180]	; (1000124c <hw_cfg_pseq_init+0xbc>)
10001196:	045b      	lsls	r3, r3, #17
10001198:	6ea2      	ldr	r2, [r4, #104]	; 0x68
1000119a:	4313      	orrs	r3, r2
1000119c:	66a3      	str	r3, [r4, #104]	; 0x68
1000119e:	4b2c      	ldr	r3, [pc, #176]	; (10001250 <hw_cfg_pseq_init+0xc0>)
100011a0:	4798      	blx	r3
100011a2:	2800      	cmp	r0, #0
100011a4:	d007      	beq.n	100011b6 <hw_cfg_pseq_init+0x26>
100011a6:	4b2b      	ldr	r3, [pc, #172]	; (10001254 <hw_cfg_pseq_init+0xc4>)
100011a8:	4798      	blx	r3
100011aa:	2800      	cmp	r0, #0
100011ac:	d003      	beq.n	100011b6 <hw_cfg_pseq_init+0x26>
100011ae:	2301      	movs	r3, #1
100011b0:	6ea2      	ldr	r2, [r4, #104]	; 0x68
100011b2:	4313      	orrs	r3, r2
100011b4:	66a3      	str	r3, [r4, #104]	; 0x68
100011b6:	4b28      	ldr	r3, [pc, #160]	; (10001258 <hw_cfg_pseq_init+0xc8>)
100011b8:	681a      	ldr	r2, [r3, #0]
100011ba:	0412      	lsls	r2, r2, #16
100011bc:	d405      	bmi.n	100011ca <hw_cfg_pseq_init+0x3a>
100011be:	220c      	movs	r2, #12
100011c0:	4b26      	ldr	r3, [pc, #152]	; (1000125c <hw_cfg_pseq_init+0xcc>)
100011c2:	601a      	str	r2, [r3, #0]
100011c4:	2200      	movs	r2, #0
100011c6:	601a      	str	r2, [r3, #0]
100011c8:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100011ca:	2110      	movs	r1, #16
100011cc:	681a      	ldr	r2, [r3, #0]
100011ce:	4d24      	ldr	r5, [pc, #144]	; (10001260 <hw_cfg_pseq_init+0xd0>)
100011d0:	430a      	orrs	r2, r1
100011d2:	601a      	str	r2, [r3, #0]
100011d4:	682b      	ldr	r3, [r5, #0]
100011d6:	9300      	str	r3, [sp, #0]
100011d8:	2301      	movs	r3, #1
100011da:	602b      	str	r3, [r5, #0]
100011dc:	f3ef 8710 	mrs	r7, PRIMASK
100011e0:	b672      	cpsid	i
100011e2:	4c20      	ldr	r4, [pc, #128]	; (10001264 <hw_cfg_pseq_init+0xd4>)
100011e4:	6823      	ldr	r3, [r4, #0]
100011e6:	6826      	ldr	r6, [r4, #0]
100011e8:	42b3      	cmp	r3, r6
100011ea:	d00a      	beq.n	10001202 <hw_cfg_pseq_init+0x72>
100011ec:	6823      	ldr	r3, [r4, #0]
100011ee:	429e      	cmp	r6, r3
100011f0:	d007      	beq.n	10001202 <hw_cfg_pseq_init+0x72>
100011f2:	6826      	ldr	r6, [r4, #0]
100011f4:	42b3      	cmp	r3, r6
100011f6:	d004      	beq.n	10001202 <hw_cfg_pseq_init+0x72>
100011f8:	229e      	movs	r2, #158	; 0x9e
100011fa:	491b      	ldr	r1, [pc, #108]	; (10001268 <hw_cfg_pseq_init+0xd8>)
100011fc:	481b      	ldr	r0, [pc, #108]	; (1000126c <hw_cfg_pseq_init+0xdc>)
100011fe:	4b1c      	ldr	r3, [pc, #112]	; (10001270 <hw_cfg_pseq_init+0xe0>)
10001200:	4798      	blx	r3
10001202:	f387 8810 	msr	PRIMASK, r7
10001206:	9b00      	ldr	r3, [sp, #0]
10001208:	602b      	str	r3, [r5, #0]
1000120a:	682b      	ldr	r3, [r5, #0]
1000120c:	9300      	str	r3, [sp, #0]
1000120e:	2301      	movs	r3, #1
10001210:	602b      	str	r3, [r5, #0]
10001212:	f3ef 8310 	mrs	r3, PRIMASK
10001216:	9301      	str	r3, [sp, #4]
10001218:	b672      	cpsid	i
1000121a:	6823      	ldr	r3, [r4, #0]
1000121c:	6827      	ldr	r7, [r4, #0]
1000121e:	42bb      	cmp	r3, r7
10001220:	d00a      	beq.n	10001238 <hw_cfg_pseq_init+0xa8>
10001222:	6823      	ldr	r3, [r4, #0]
10001224:	429f      	cmp	r7, r3
10001226:	d007      	beq.n	10001238 <hw_cfg_pseq_init+0xa8>
10001228:	6827      	ldr	r7, [r4, #0]
1000122a:	42bb      	cmp	r3, r7
1000122c:	d004      	beq.n	10001238 <hw_cfg_pseq_init+0xa8>
1000122e:	229e      	movs	r2, #158	; 0x9e
10001230:	490d      	ldr	r1, [pc, #52]	; (10001268 <hw_cfg_pseq_init+0xd8>)
10001232:	480e      	ldr	r0, [pc, #56]	; (1000126c <hw_cfg_pseq_init+0xdc>)
10001234:	4b0e      	ldr	r3, [pc, #56]	; (10001270 <hw_cfg_pseq_init+0xe0>)
10001236:	4798      	blx	r3
10001238:	9b01      	ldr	r3, [sp, #4]
1000123a:	f383 8810 	msr	PRIMASK, r3
1000123e:	9b00      	ldr	r3, [sp, #0]
10001240:	1bbf      	subs	r7, r7, r6
10001242:	602b      	str	r3, [r5, #0]
10001244:	2f02      	cmp	r7, #2
10001246:	d8ba      	bhi.n	100011be <hw_cfg_pseq_init+0x2e>
10001248:	bf10      	yield
1000124a:	e7de      	b.n	1000120a <hw_cfg_pseq_init+0x7a>
1000124c:	40003000 	.word	0x40003000
10001250:	000075f5 	.word	0x000075f5
10001254:	00007605 	.word	0x00007605
10001258:	30000030 	.word	0x30000030
1000125c:	50008090 	.word	0x50008090
10001260:	50003020 	.word	0x50003020
10001264:	500080e0 	.word	0x500080e0
10001268:	10005489 	.word	0x10005489
1000126c:	10005492 	.word	0x10005492
10001270:	00006609 	.word	0x00006609

10001274 <hw_cfg_pmu_init>:
10001274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10001276:	4b1c      	ldr	r3, [pc, #112]	; (100012e8 <hw_cfg_pmu_init+0x74>)
10001278:	681b      	ldr	r3, [r3, #0]
1000127a:	2b00      	cmp	r3, #0
1000127c:	da1a      	bge.n	100012b4 <hw_cfg_pmu_init+0x40>
1000127e:	4d1b      	ldr	r5, [pc, #108]	; (100012ec <hw_cfg_pmu_init+0x78>)
10001280:	2230      	movs	r2, #48	; 0x30
10001282:	2109      	movs	r1, #9
10001284:	4f1a      	ldr	r7, [pc, #104]	; (100012f0 <hw_cfg_pmu_init+0x7c>)
10001286:	0028      	movs	r0, r5
10001288:	2480      	movs	r4, #128	; 0x80
1000128a:	47b8      	blx	r7
1000128c:	0424      	lsls	r4, r4, #16
1000128e:	4304      	orrs	r4, r0
10001290:	0023      	movs	r3, r4
10001292:	2230      	movs	r2, #48	; 0x30
10001294:	2109      	movs	r1, #9
10001296:	0028      	movs	r0, r5
10001298:	4e16      	ldr	r6, [pc, #88]	; (100012f4 <hw_cfg_pmu_init+0x80>)
1000129a:	47b0      	blx	r6
1000129c:	2109      	movs	r1, #9
1000129e:	2230      	movs	r2, #48	; 0x30
100012a0:	0028      	movs	r0, r5
100012a2:	47b8      	blx	r7
100012a4:	0001      	movs	r1, r0
100012a6:	4284      	cmp	r4, r0
100012a8:	d004      	beq.n	100012b4 <hw_cfg_pmu_init+0x40>
100012aa:	0020      	movs	r0, r4
100012ac:	2352      	movs	r3, #82	; 0x52
100012ae:	4a12      	ldr	r2, [pc, #72]	; (100012f8 <hw_cfg_pmu_init+0x84>)
100012b0:	4c12      	ldr	r4, [pc, #72]	; (100012fc <hw_cfg_pmu_init+0x88>)
100012b2:	47a0      	blx	r4
100012b4:	4b0c      	ldr	r3, [pc, #48]	; (100012e8 <hw_cfg_pmu_init+0x74>)
100012b6:	681b      	ldr	r3, [r3, #0]
100012b8:	049b      	lsls	r3, r3, #18
100012ba:	d514      	bpl.n	100012e6 <hw_cfg_pmu_init+0x72>
100012bc:	4d0b      	ldr	r5, [pc, #44]	; (100012ec <hw_cfg_pmu_init+0x78>)
100012be:	4c10      	ldr	r4, [pc, #64]	; (10001300 <hw_cfg_pmu_init+0x8c>)
100012c0:	2218      	movs	r2, #24
100012c2:	0023      	movs	r3, r4
100012c4:	210c      	movs	r1, #12
100012c6:	0028      	movs	r0, r5
100012c8:	4e0a      	ldr	r6, [pc, #40]	; (100012f4 <hw_cfg_pmu_init+0x80>)
100012ca:	47b0      	blx	r6
100012cc:	210c      	movs	r1, #12
100012ce:	2218      	movs	r2, #24
100012d0:	0028      	movs	r0, r5
100012d2:	4b07      	ldr	r3, [pc, #28]	; (100012f0 <hw_cfg_pmu_init+0x7c>)
100012d4:	4798      	blx	r3
100012d6:	0001      	movs	r1, r0
100012d8:	42a0      	cmp	r0, r4
100012da:	d004      	beq.n	100012e6 <hw_cfg_pmu_init+0x72>
100012dc:	0020      	movs	r0, r4
100012de:	235d      	movs	r3, #93	; 0x5d
100012e0:	4a05      	ldr	r2, [pc, #20]	; (100012f8 <hw_cfg_pmu_init+0x84>)
100012e2:	4c06      	ldr	r4, [pc, #24]	; (100012fc <hw_cfg_pmu_init+0x88>)
100012e4:	47a0      	blx	r4
100012e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100012e8:	200012c4 	.word	0x200012c4
100012ec:	0003cd78 	.word	0x0003cd78
100012f0:	0000777f 	.word	0x0000777f
100012f4:	0000779f 	.word	0x0000779f
100012f8:	10005489 	.word	0x10005489
100012fc:	00006641 	.word	0x00006641
10001300:	0e8c0a74 	.word	0x0e8c0a74

10001304 <hw_cfg_rif_init>:
10001304:	4b0f      	ldr	r3, [pc, #60]	; (10001344 <hw_cfg_rif_init+0x40>)
10001306:	681b      	ldr	r3, [r3, #0]
10001308:	06db      	lsls	r3, r3, #27
1000130a:	d50b      	bpl.n	10001324 <hw_cfg_rif_init+0x20>
1000130c:	490e      	ldr	r1, [pc, #56]	; (10001348 <hw_cfg_rif_init+0x44>)
1000130e:	6e0b      	ldr	r3, [r1, #96]	; 0x60
10001310:	0bda      	lsrs	r2, r3, #15
10001312:	b2d2      	uxtb	r2, r2
10001314:	2a7f      	cmp	r2, #127	; 0x7f
10001316:	d10e      	bne.n	10001336 <hw_cfg_rif_init+0x32>
10001318:	4a0c      	ldr	r2, [pc, #48]	; (1000134c <hw_cfg_rif_init+0x48>)
1000131a:	4013      	ands	r3, r2
1000131c:	2280      	movs	r2, #128	; 0x80
1000131e:	03d2      	lsls	r2, r2, #15
10001320:	4313      	orrs	r3, r2
10001322:	660b      	str	r3, [r1, #96]	; 0x60
10001324:	490a      	ldr	r1, [pc, #40]	; (10001350 <hw_cfg_rif_init+0x4c>)
10001326:	4a0b      	ldr	r2, [pc, #44]	; (10001354 <hw_cfg_rif_init+0x50>)
10001328:	680b      	ldr	r3, [r1, #0]
1000132a:	401a      	ands	r2, r3
1000132c:	2398      	movs	r3, #152	; 0x98
1000132e:	011b      	lsls	r3, r3, #4
10001330:	4313      	orrs	r3, r2
10001332:	600b      	str	r3, [r1, #0]
10001334:	4770      	bx	lr
10001336:	2a80      	cmp	r2, #128	; 0x80
10001338:	d1f3      	bne.n	10001322 <hw_cfg_rif_init+0x1e>
1000133a:	3a41      	subs	r2, #65	; 0x41
1000133c:	4393      	bics	r3, r2
1000133e:	3a32      	subs	r2, #50	; 0x32
10001340:	e7ee      	b.n	10001320 <hw_cfg_rif_init+0x1c>
10001342:	46c0      	nop			; (mov r8, r8)
10001344:	200012c4 	.word	0x200012c4
10001348:	50004000 	.word	0x50004000
1000134c:	ff807fff 	.word	0xff807fff
10001350:	500040ac 	.word	0x500040ac
10001354:	fffff01f 	.word	0xfffff01f

10001358 <hw_cfg_mdm_init>:
10001358:	4b02      	ldr	r3, [pc, #8]	; (10001364 <hw_cfg_mdm_init+0xc>)
1000135a:	4a03      	ldr	r2, [pc, #12]	; (10001368 <hw_cfg_mdm_init+0x10>)
1000135c:	631a      	str	r2, [r3, #48]	; 0x30
1000135e:	4a03      	ldr	r2, [pc, #12]	; (1000136c <hw_cfg_mdm_init+0x14>)
10001360:	63da      	str	r2, [r3, #60]	; 0x3c
10001362:	4770      	bx	lr
10001364:	50006000 	.word	0x50006000
10001368:	233828a4 	.word	0x233828a4
1000136c:	96328080 	.word	0x96328080

10001370 <hw_cfg_ble_rf_init>:
10001370:	4904      	ldr	r1, [pc, #16]	; (10001384 <hw_cfg_ble_rf_init+0x14>)
10001372:	4a05      	ldr	r2, [pc, #20]	; (10001388 <hw_cfg_ble_rf_init+0x18>)
10001374:	680b      	ldr	r3, [r1, #0]
10001376:	401a      	ands	r2, r3
10001378:	23f8      	movs	r3, #248	; 0xf8
1000137a:	03db      	lsls	r3, r3, #15
1000137c:	4313      	orrs	r3, r2
1000137e:	600b      	str	r3, [r1, #0]
10001380:	4770      	bx	lr
10001382:	46c0      	nop			; (mov r8, r8)
10001384:	30000088 	.word	0x30000088
10001388:	ff00ffff 	.word	0xff00ffff

1000138c <hw_cfg_optimize_scan_params>:
1000138c:	2301      	movs	r3, #1
1000138e:	b530      	push	{r4, r5, lr}
10001390:	4d0d      	ldr	r5, [pc, #52]	; (100013c8 <hw_cfg_optimize_scan_params+0x3c>)
10001392:	4c0e      	ldr	r4, [pc, #56]	; (100013cc <hw_cfg_optimize_scan_params+0x40>)
10001394:	602b      	str	r3, [r5, #0]
10001396:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
10001398:	6a23      	ldr	r3, [r4, #32]
1000139a:	2900      	cmp	r1, #0
1000139c:	d000      	beq.n	100013a0 <hw_cfg_optimize_scan_params+0x14>
1000139e:	c10c      	stmia	r1!, {r2, r3}
100013a0:	1e41      	subs	r1, r0, #1
100013a2:	4188      	sbcs	r0, r1
100013a4:	490a      	ldr	r1, [pc, #40]	; (100013d0 <hw_cfg_optimize_scan_params+0x44>)
100013a6:	4240      	negs	r0, r0
100013a8:	4008      	ands	r0, r1
100013aa:	490a      	ldr	r1, [pc, #40]	; (100013d4 <hw_cfg_optimize_scan_params+0x48>)
100013ac:	0cd2      	lsrs	r2, r2, #19
100013ae:	04d2      	lsls	r2, r2, #19
100013b0:	1840      	adds	r0, r0, r1
100013b2:	4310      	orrs	r0, r2
100013b4:	227c      	movs	r2, #124	; 0x7c
100013b6:	4393      	bics	r3, r2
100013b8:	3a58      	subs	r2, #88	; 0x58
100013ba:	4313      	orrs	r3, r2
100013bc:	62e0      	str	r0, [r4, #44]	; 0x2c
100013be:	6223      	str	r3, [r4, #32]
100013c0:	2300      	movs	r3, #0
100013c2:	602b      	str	r3, [r5, #0]
100013c4:	bd30      	pop	{r4, r5, pc}
100013c6:	46c0      	nop			; (mov r8, r8)
100013c8:	50003018 	.word	0x50003018
100013cc:	50006000 	.word	0x50006000
100013d0:	fffffec0 	.word	0xfffffec0
100013d4:	00000736 	.word	0x00000736

100013d8 <hw_cfg_dynamic_rf_mode_ctrl_reg>:
100013d8:	4b01      	ldr	r3, [pc, #4]	; (100013e0 <hw_cfg_dynamic_rf_mode_ctrl_reg+0x8>)
100013da:	6018      	str	r0, [r3, #0]
100013dc:	4770      	bx	lr
100013de:	46c0      	nop			; (mov r8, r8)
100013e0:	20014d70 	.word	0x20014d70

100013e4 <hw_cfg_restore_scan_params>:
100013e4:	2201      	movs	r2, #1
100013e6:	4b05      	ldr	r3, [pc, #20]	; (100013fc <hw_cfg_restore_scan_params+0x18>)
100013e8:	601a      	str	r2, [r3, #0]
100013ea:	6801      	ldr	r1, [r0, #0]
100013ec:	4a04      	ldr	r2, [pc, #16]	; (10001400 <hw_cfg_restore_scan_params+0x1c>)
100013ee:	62d1      	str	r1, [r2, #44]	; 0x2c
100013f0:	6841      	ldr	r1, [r0, #4]
100013f2:	6211      	str	r1, [r2, #32]
100013f4:	2200      	movs	r2, #0
100013f6:	601a      	str	r2, [r3, #0]
100013f8:	4770      	bx	lr
100013fa:	46c0      	nop			; (mov r8, r8)
100013fc:	50003018 	.word	0x50003018
10001400:	50006000 	.word	0x50006000

10001404 <hw_cfg_init>:
10001404:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10001406:	2501      	movs	r5, #1
10001408:	2400      	movs	r4, #0
1000140a:	4e24      	ldr	r6, [pc, #144]	; (1000149c <hw_cfg_init+0x98>)
1000140c:	4b24      	ldr	r3, [pc, #144]	; (100014a0 <hw_cfg_init+0x9c>)
1000140e:	6035      	str	r5, [r6, #0]
10001410:	4798      	blx	r3
10001412:	6034      	str	r4, [r6, #0]
10001414:	4e23      	ldr	r6, [pc, #140]	; (100014a4 <hw_cfg_init+0xa0>)
10001416:	4b24      	ldr	r3, [pc, #144]	; (100014a8 <hw_cfg_init+0xa4>)
10001418:	6035      	str	r5, [r6, #0]
1000141a:	4798      	blx	r3
1000141c:	6034      	str	r4, [r6, #0]
1000141e:	4e23      	ldr	r6, [pc, #140]	; (100014ac <hw_cfg_init+0xa8>)
10001420:	4f23      	ldr	r7, [pc, #140]	; (100014b0 <hw_cfg_init+0xac>)
10001422:	4b24      	ldr	r3, [pc, #144]	; (100014b4 <hw_cfg_init+0xb0>)
10001424:	6035      	str	r5, [r6, #0]
10001426:	4798      	blx	r3
10001428:	4b23      	ldr	r3, [pc, #140]	; (100014b8 <hw_cfg_init+0xb4>)
1000142a:	6034      	str	r4, [r6, #0]
1000142c:	603d      	str	r5, [r7, #0]
1000142e:	4798      	blx	r3
10001430:	4b22      	ldr	r3, [pc, #136]	; (100014bc <hw_cfg_init+0xb8>)
10001432:	4798      	blx	r3
10001434:	42a0      	cmp	r0, r4
10001436:	d01d      	beq.n	10001474 <hw_cfg_init+0x70>
10001438:	4b21      	ldr	r3, [pc, #132]	; (100014c0 <hw_cfg_init+0xbc>)
1000143a:	681b      	ldr	r3, [r3, #0]
1000143c:	b2db      	uxtb	r3, r3
1000143e:	2b13      	cmp	r3, #19
10001440:	d918      	bls.n	10001474 <hw_cfg_init+0x70>
10001442:	4b20      	ldr	r3, [pc, #128]	; (100014c4 <hw_cfg_init+0xc0>)
10001444:	2214      	movs	r2, #20
10001446:	601d      	str	r5, [r3, #0]
10001448:	4d1f      	ldr	r5, [pc, #124]	; (100014c8 <hw_cfg_init+0xc4>)
1000144a:	0021      	movs	r1, r4
1000144c:	002b      	movs	r3, r5
1000144e:	481f      	ldr	r0, [pc, #124]	; (100014cc <hw_cfg_init+0xc8>)
10001450:	4e1f      	ldr	r6, [pc, #124]	; (100014d0 <hw_cfg_init+0xcc>)
10001452:	47b0      	blx	r6
10001454:	0021      	movs	r1, r4
10001456:	2214      	movs	r2, #20
10001458:	481c      	ldr	r0, [pc, #112]	; (100014cc <hw_cfg_init+0xc8>)
1000145a:	4b1e      	ldr	r3, [pc, #120]	; (100014d4 <hw_cfg_init+0xd0>)
1000145c:	4798      	blx	r3
1000145e:	0001      	movs	r1, r0
10001460:	42a8      	cmp	r0, r5
10001462:	d004      	beq.n	1000146e <hw_cfg_init+0x6a>
10001464:	2383      	movs	r3, #131	; 0x83
10001466:	0028      	movs	r0, r5
10001468:	4a1b      	ldr	r2, [pc, #108]	; (100014d8 <hw_cfg_init+0xd4>)
1000146a:	4c1c      	ldr	r4, [pc, #112]	; (100014dc <hw_cfg_init+0xd8>)
1000146c:	47a0      	blx	r4
1000146e:	2300      	movs	r3, #0
10001470:	4a14      	ldr	r2, [pc, #80]	; (100014c4 <hw_cfg_init+0xc0>)
10001472:	6013      	str	r3, [r2, #0]
10001474:	2300      	movs	r3, #0
10001476:	4a1a      	ldr	r2, [pc, #104]	; (100014e0 <hw_cfg_init+0xdc>)
10001478:	603b      	str	r3, [r7, #0]
1000147a:	8013      	strh	r3, [r2, #0]
1000147c:	4a19      	ldr	r2, [pc, #100]	; (100014e4 <hw_cfg_init+0xe0>)
1000147e:	8013      	strh	r3, [r2, #0]
10001480:	4a19      	ldr	r2, [pc, #100]	; (100014e8 <hw_cfg_init+0xe4>)
10001482:	8013      	strh	r3, [r2, #0]
10001484:	4a19      	ldr	r2, [pc, #100]	; (100014ec <hw_cfg_init+0xe8>)
10001486:	8013      	strh	r3, [r2, #0]
10001488:	4a19      	ldr	r2, [pc, #100]	; (100014f0 <hw_cfg_init+0xec>)
1000148a:	8013      	strh	r3, [r2, #0]
1000148c:	4a19      	ldr	r2, [pc, #100]	; (100014f4 <hw_cfg_init+0xf0>)
1000148e:	8013      	strh	r3, [r2, #0]
10001490:	4a19      	ldr	r2, [pc, #100]	; (100014f8 <hw_cfg_init+0xf4>)
10001492:	8013      	strh	r3, [r2, #0]
10001494:	4a19      	ldr	r2, [pc, #100]	; (100014fc <hw_cfg_init+0xf8>)
10001496:	8013      	strh	r3, [r2, #0]
10001498:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
1000149a:	46c0      	nop			; (mov r8, r8)
1000149c:	50003020 	.word	0x50003020
100014a0:	10001191 	.word	0x10001191
100014a4:	5000301c 	.word	0x5000301c
100014a8:	10001275 	.word	0x10001275
100014ac:	50003010 	.word	0x50003010
100014b0:	50003018 	.word	0x50003018
100014b4:	10001305 	.word	0x10001305
100014b8:	10001359 	.word	0x10001359
100014bc:	00005dbd 	.word	0x00005dbd
100014c0:	50006000 	.word	0x50006000
100014c4:	50003014 	.word	0x50003014
100014c8:	073c9e1f 	.word	0x073c9e1f
100014cc:	0003cd80 	.word	0x0003cd80
100014d0:	0000779f 	.word	0x0000779f
100014d4:	0000777f 	.word	0x0000777f
100014d8:	10005489 	.word	0x10005489
100014dc:	00006641 	.word	0x00006641
100014e0:	30008162 	.word	0x30008162
100014e4:	300081bc 	.word	0x300081bc
100014e8:	30008216 	.word	0x30008216
100014ec:	30008270 	.word	0x30008270
100014f0:	300082ca 	.word	0x300082ca
100014f4:	30008324 	.word	0x30008324
100014f8:	3000837e 	.word	0x3000837e
100014fc:	300083d8 	.word	0x300083d8

10001500 <hw_cfg_optimize_rx_scan>:
10001500:	0002      	movs	r2, r0
10001502:	b510      	push	{r4, lr}
10001504:	281f      	cmp	r0, #31
10001506:	d904      	bls.n	10001512 <hw_cfg_optimize_rx_scan+0x12>
10001508:	490f      	ldr	r1, [pc, #60]	; (10001548 <hw_cfg_optimize_rx_scan+0x48>)
1000150a:	4810      	ldr	r0, [pc, #64]	; (1000154c <hw_cfg_optimize_rx_scan+0x4c>)
1000150c:	4b10      	ldr	r3, [pc, #64]	; (10001550 <hw_cfg_optimize_rx_scan+0x50>)
1000150e:	4798      	blx	r3
10001510:	bd10      	pop	{r4, pc}
10001512:	2001      	movs	r0, #1
10001514:	4090      	lsls	r0, r2
10001516:	490f      	ldr	r1, [pc, #60]	; (10001554 <hw_cfg_optimize_rx_scan+0x54>)
10001518:	680b      	ldr	r3, [r1, #0]
1000151a:	4318      	orrs	r0, r3
1000151c:	6008      	str	r0, [r1, #0]
1000151e:	4298      	cmp	r0, r3
10001520:	d0f6      	beq.n	10001510 <hw_cfg_optimize_rx_scan+0x10>
10001522:	3801      	subs	r0, #1
10001524:	1e42      	subs	r2, r0, #1
10001526:	4190      	sbcs	r0, r2
10001528:	4a0b      	ldr	r2, [pc, #44]	; (10001558 <hw_cfg_optimize_rx_scan+0x58>)
1000152a:	b2c0      	uxtb	r0, r0
1000152c:	2b00      	cmp	r3, #0
1000152e:	d002      	beq.n	10001536 <hw_cfg_optimize_rx_scan+0x36>
10001530:	7811      	ldrb	r1, [r2, #0]
10001532:	4281      	cmp	r1, r0
10001534:	d0ec      	beq.n	10001510 <hw_cfg_optimize_rx_scan+0x10>
10001536:	7010      	strb	r0, [r2, #0]
10001538:	425a      	negs	r2, r3
1000153a:	4153      	adcs	r3, r2
1000153c:	4907      	ldr	r1, [pc, #28]	; (1000155c <hw_cfg_optimize_rx_scan+0x5c>)
1000153e:	425b      	negs	r3, r3
10001540:	4019      	ands	r1, r3
10001542:	4b07      	ldr	r3, [pc, #28]	; (10001560 <hw_cfg_optimize_rx_scan+0x60>)
10001544:	4798      	blx	r3
10001546:	e7e3      	b.n	10001510 <hw_cfg_optimize_rx_scan+0x10>
10001548:	100054c6 	.word	0x100054c6
1000154c:	1000549c 	.word	0x1000549c
10001550:	000066b1 	.word	0x000066b1
10001554:	20014d80 	.word	0x20014d80
10001558:	20014d6c 	.word	0x20014d6c
1000155c:	20014d78 	.word	0x20014d78
10001560:	1000138d 	.word	0x1000138d

10001564 <hw_cfg_restore_rx_scan>:
10001564:	b510      	push	{r4, lr}
10001566:	281f      	cmp	r0, #31
10001568:	d904      	bls.n	10001574 <hw_cfg_restore_rx_scan+0x10>
1000156a:	4910      	ldr	r1, [pc, #64]	; (100015ac <hw_cfg_restore_rx_scan+0x48>)
1000156c:	4810      	ldr	r0, [pc, #64]	; (100015b0 <hw_cfg_restore_rx_scan+0x4c>)
1000156e:	4b11      	ldr	r3, [pc, #68]	; (100015b4 <hw_cfg_restore_rx_scan+0x50>)
10001570:	4798      	blx	r3
10001572:	bd10      	pop	{r4, pc}
10001574:	2301      	movs	r3, #1
10001576:	4910      	ldr	r1, [pc, #64]	; (100015b8 <hw_cfg_restore_rx_scan+0x54>)
10001578:	4083      	lsls	r3, r0
1000157a:	680a      	ldr	r2, [r1, #0]
1000157c:	0010      	movs	r0, r2
1000157e:	4398      	bics	r0, r3
10001580:	6008      	str	r0, [r1, #0]
10001582:	4290      	cmp	r0, r2
10001584:	d0f5      	beq.n	10001572 <hw_cfg_restore_rx_scan+0xe>
10001586:	2800      	cmp	r0, #0
10001588:	d103      	bne.n	10001592 <hw_cfg_restore_rx_scan+0x2e>
1000158a:	480c      	ldr	r0, [pc, #48]	; (100015bc <hw_cfg_restore_rx_scan+0x58>)
1000158c:	4b0c      	ldr	r3, [pc, #48]	; (100015c0 <hw_cfg_restore_rx_scan+0x5c>)
1000158e:	4798      	blx	r3
10001590:	e7ef      	b.n	10001572 <hw_cfg_restore_rx_scan+0xe>
10001592:	2801      	cmp	r0, #1
10001594:	d1ed      	bne.n	10001572 <hw_cfg_restore_rx_scan+0xe>
10001596:	4b0b      	ldr	r3, [pc, #44]	; (100015c4 <hw_cfg_restore_rx_scan+0x60>)
10001598:	781a      	ldrb	r2, [r3, #0]
1000159a:	2a00      	cmp	r2, #0
1000159c:	d0e9      	beq.n	10001572 <hw_cfg_restore_rx_scan+0xe>
1000159e:	2000      	movs	r0, #0
100015a0:	7018      	strb	r0, [r3, #0]
100015a2:	0001      	movs	r1, r0
100015a4:	4b08      	ldr	r3, [pc, #32]	; (100015c8 <hw_cfg_restore_rx_scan+0x64>)
100015a6:	4798      	blx	r3
100015a8:	e7e3      	b.n	10001572 <hw_cfg_restore_rx_scan+0xe>
100015aa:	46c0      	nop			; (mov r8, r8)
100015ac:	100054af 	.word	0x100054af
100015b0:	1000549c 	.word	0x1000549c
100015b4:	000066b1 	.word	0x000066b1
100015b8:	20014d80 	.word	0x20014d80
100015bc:	20014d78 	.word	0x20014d78
100015c0:	100013e5 	.word	0x100013e5
100015c4:	20014d6c 	.word	0x20014d6c
100015c8:	1000138d 	.word	0x1000138d

100015cc <pinmux_init>:
100015cc:	22ff      	movs	r2, #255	; 0xff
100015ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100015d0:	4b43      	ldr	r3, [pc, #268]	; (100016e0 <pinmux_init+0x114>)
100015d2:	0112      	lsls	r2, r2, #4
100015d4:	5899      	ldr	r1, [r3, r2]
100015d6:	4a43      	ldr	r2, [pc, #268]	; (100016e4 <pinmux_init+0x118>)
100015d8:	2400      	movs	r4, #0
100015da:	589a      	ldr	r2, [r3, r2]
100015dc:	4b42      	ldr	r3, [pc, #264]	; (100016e8 <pinmux_init+0x11c>)
100015de:	4299      	cmp	r1, r3
100015e0:	d104      	bne.n	100015ec <pinmux_init+0x20>
100015e2:	4b42      	ldr	r3, [pc, #264]	; (100016ec <pinmux_init+0x120>)
100015e4:	18d4      	adds	r4, r2, r3
100015e6:	4263      	negs	r3, r4
100015e8:	415c      	adcs	r4, r3
100015ea:	0264      	lsls	r4, r4, #9
100015ec:	4e40      	ldr	r6, [pc, #256]	; (100016f0 <pinmux_init+0x124>)
100015ee:	2101      	movs	r1, #1
100015f0:	6833      	ldr	r3, [r6, #0]
100015f2:	091b      	lsrs	r3, r3, #4
100015f4:	001d      	movs	r5, r3
100015f6:	400d      	ands	r5, r1
100015f8:	420b      	tst	r3, r1
100015fa:	d027      	beq.n	1000164c <pinmux_init+0x80>
100015fc:	2280      	movs	r2, #128	; 0x80
100015fe:	000d      	movs	r5, r1
10001600:	01d2      	lsls	r2, r2, #7
10001602:	4314      	orrs	r4, r2
10001604:	2201      	movs	r2, #1
10001606:	6833      	ldr	r3, [r6, #0]
10001608:	08d9      	lsrs	r1, r3, #3
1000160a:	4211      	tst	r1, r2
1000160c:	d028      	beq.n	10001660 <pinmux_init+0x94>
1000160e:	0b5b      	lsrs	r3, r3, #13
10001610:	4213      	tst	r3, r2
10001612:	d022      	beq.n	1000165a <pinmux_init+0x8e>
10001614:	4837      	ldr	r0, [pc, #220]	; (100016f4 <pinmux_init+0x128>)
10001616:	4b38      	ldr	r3, [pc, #224]	; (100016f8 <pinmux_init+0x12c>)
10001618:	4798      	blx	r3
1000161a:	2211      	movs	r2, #17
1000161c:	2500      	movs	r5, #0
1000161e:	4314      	orrs	r4, r2
10001620:	6833      	ldr	r3, [r6, #0]
10001622:	05db      	lsls	r3, r3, #23
10001624:	d529      	bpl.n	1000167a <pinmux_init+0xae>
10001626:	2d00      	cmp	r5, #0
10001628:	d13a      	bne.n	100016a0 <pinmux_init+0xd4>
1000162a:	2240      	movs	r2, #64	; 0x40
1000162c:	4b33      	ldr	r3, [pc, #204]	; (100016fc <pinmux_init+0x130>)
1000162e:	4322      	orrs	r2, r4
10001630:	429a      	cmp	r2, r3
10001632:	d838      	bhi.n	100016a6 <pinmux_init+0xda>
10001634:	4b32      	ldr	r3, [pc, #200]	; (10001700 <pinmux_init+0x134>)
10001636:	18d0      	adds	r0, r2, r3
10001638:	280a      	cmp	r0, #10
1000163a:	d843      	bhi.n	100016c4 <pinmux_init+0xf8>
1000163c:	f003 fb10 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10001640:	42424249 	.word	0x42424249
10001644:	42424242 	.word	0x42424242
10001648:	314b      	.short	0x314b
1000164a:	47          	.byte	0x47
1000164b:	00          	.byte	0x00
1000164c:	482d      	ldr	r0, [pc, #180]	; (10001704 <pinmux_init+0x138>)
1000164e:	4b2a      	ldr	r3, [pc, #168]	; (100016f8 <pinmux_init+0x12c>)
10001650:	4798      	blx	r3
10001652:	2280      	movs	r2, #128	; 0x80
10001654:	0192      	lsls	r2, r2, #6
10001656:	4314      	orrs	r4, r2
10001658:	e7d4      	b.n	10001604 <pinmux_init+0x38>
1000165a:	2219      	movs	r2, #25
1000165c:	4314      	orrs	r4, r2
1000165e:	e7df      	b.n	10001620 <pinmux_init+0x54>
10001660:	0b9b      	lsrs	r3, r3, #14
10001662:	001d      	movs	r5, r3
10001664:	4924      	ldr	r1, [pc, #144]	; (100016f8 <pinmux_init+0x12c>)
10001666:	4828      	ldr	r0, [pc, #160]	; (10001708 <pinmux_init+0x13c>)
10001668:	4015      	ands	r5, r2
1000166a:	4213      	tst	r3, r2
1000166c:	d002      	beq.n	10001674 <pinmux_init+0xa8>
1000166e:	4788      	blx	r1
10001670:	221b      	movs	r2, #27
10001672:	e7d3      	b.n	1000161c <pinmux_init+0x50>
10001674:	4788      	blx	r1
10001676:	221a      	movs	r2, #26
10001678:	e7f0      	b.n	1000165c <pinmux_init+0x90>
1000167a:	4b1f      	ldr	r3, [pc, #124]	; (100016f8 <pinmux_init+0x12c>)
1000167c:	4823      	ldr	r0, [pc, #140]	; (1000170c <pinmux_init+0x140>)
1000167e:	4798      	blx	r3
10001680:	2280      	movs	r2, #128	; 0x80
10001682:	491e      	ldr	r1, [pc, #120]	; (100016fc <pinmux_init+0x130>)
10001684:	4b22      	ldr	r3, [pc, #136]	; (10001710 <pinmux_init+0x144>)
10001686:	4322      	orrs	r2, r4
10001688:	428a      	cmp	r2, r1
1000168a:	d126      	bne.n	100016da <pinmux_init+0x10e>
1000168c:	4921      	ldr	r1, [pc, #132]	; (10001714 <pinmux_init+0x148>)
1000168e:	4822      	ldr	r0, [pc, #136]	; (10001718 <pinmux_init+0x14c>)
10001690:	4c19      	ldr	r4, [pc, #100]	; (100016f8 <pinmux_init+0x12c>)
10001692:	47a0      	blx	r4
10001694:	2299      	movs	r2, #153	; 0x99
10001696:	4921      	ldr	r1, [pc, #132]	; (1000171c <pinmux_init+0x150>)
10001698:	4821      	ldr	r0, [pc, #132]	; (10001720 <pinmux_init+0x154>)
1000169a:	4b22      	ldr	r3, [pc, #136]	; (10001724 <pinmux_init+0x158>)
1000169c:	0052      	lsls	r2, r2, #1
1000169e:	4798      	blx	r3
100016a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100016a2:	4b21      	ldr	r3, [pc, #132]	; (10001728 <pinmux_init+0x15c>)
100016a4:	e7f2      	b.n	1000168c <pinmux_init+0xc0>
100016a6:	4921      	ldr	r1, [pc, #132]	; (1000172c <pinmux_init+0x160>)
100016a8:	4b21      	ldr	r3, [pc, #132]	; (10001730 <pinmux_init+0x164>)
100016aa:	428a      	cmp	r2, r1
100016ac:	d0ee      	beq.n	1000168c <pinmux_init+0xc0>
100016ae:	4b1f      	ldr	r3, [pc, #124]	; (1000172c <pinmux_init+0x160>)
100016b0:	429a      	cmp	r2, r3
100016b2:	d809      	bhi.n	100016c8 <pinmux_init+0xfc>
100016b4:	491f      	ldr	r1, [pc, #124]	; (10001734 <pinmux_init+0x168>)
100016b6:	4b20      	ldr	r3, [pc, #128]	; (10001738 <pinmux_init+0x16c>)
100016b8:	428a      	cmp	r2, r1
100016ba:	d0e7      	beq.n	1000168c <pinmux_init+0xc0>
100016bc:	491f      	ldr	r1, [pc, #124]	; (1000173c <pinmux_init+0x170>)
100016be:	4b20      	ldr	r3, [pc, #128]	; (10001740 <pinmux_init+0x174>)
100016c0:	428a      	cmp	r2, r1
100016c2:	d0e3      	beq.n	1000168c <pinmux_init+0xc0>
100016c4:	4b1f      	ldr	r3, [pc, #124]	; (10001744 <pinmux_init+0x178>)
100016c6:	e7e1      	b.n	1000168c <pinmux_init+0xc0>
100016c8:	491f      	ldr	r1, [pc, #124]	; (10001748 <pinmux_init+0x17c>)
100016ca:	4b20      	ldr	r3, [pc, #128]	; (1000174c <pinmux_init+0x180>)
100016cc:	e7f8      	b.n	100016c0 <pinmux_init+0xf4>
100016ce:	4b20      	ldr	r3, [pc, #128]	; (10001750 <pinmux_init+0x184>)
100016d0:	e7dc      	b.n	1000168c <pinmux_init+0xc0>
100016d2:	4b20      	ldr	r3, [pc, #128]	; (10001754 <pinmux_init+0x188>)
100016d4:	e7da      	b.n	1000168c <pinmux_init+0xc0>
100016d6:	4b20      	ldr	r3, [pc, #128]	; (10001758 <pinmux_init+0x18c>)
100016d8:	e7d8      	b.n	1000168c <pinmux_init+0xc0>
100016da:	428a      	cmp	r2, r1
100016dc:	d8e7      	bhi.n	100016ae <pinmux_init+0xe2>
100016de:	e7a9      	b.n	10001634 <pinmux_init+0x68>
100016e0:	40003000 	.word	0x40003000
100016e4:	00000ff4 	.word	0x00000ff4
100016e8:	5379646e 	.word	0x5379646e
100016ec:	9a870000 	.word	0x9a870000
100016f0:	200012c4 	.word	0x200012c4
100016f4:	1000553c 	.word	0x1000553c
100016f8:	000066b1 	.word	0x000066b1
100016fc:	00002299 	.word	0x00002299
10001700:	ffffddaf 	.word	0xffffddaf
10001704:	10005526 	.word	0x10005526
10001708:	10005554 	.word	0x10005554
1000170c:	1000556f 	.word	0x1000556f
10001710:	100054f6 	.word	0x100054f6
10001714:	1000558d 	.word	0x1000558d
10001718:	100055dd 	.word	0x100055dd
1000171c:	100056a3 	.word	0x100056a3
10001720:	10004cec 	.word	0x10004cec
10001724:	00006609 	.word	0x00006609
10001728:	10005514 	.word	0x10005514
1000172c:	00004259 	.word	0x00004259
10001730:	1000551a 	.word	0x1000551a
10001734:	0000229a 	.word	0x0000229a
10001738:	1000550e 	.word	0x1000550e
1000173c:	0000229b 	.word	0x0000229b
10001740:	10005508 	.word	0x10005508
10001744:	100054de 	.word	0x100054de
10001748:	00004299 	.word	0x00004299
1000174c:	10005520 	.word	0x10005520
10001750:	100054fc 	.word	0x100054fc
10001754:	10005502 	.word	0x10005502
10001758:	100054f0 	.word	0x100054f0

1000175c <pinmux_get_platform_info>:
1000175c:	2010      	movs	r0, #16
1000175e:	4770      	bx	lr

10001760 <watchdog_init_constructor>:
10001760:	2202      	movs	r2, #2
10001762:	4b06      	ldr	r3, [pc, #24]	; (1000177c <watchdog_init_constructor+0x1c>)
10001764:	6919      	ldr	r1, [r3, #16]
10001766:	4211      	tst	r1, r2
10001768:	d003      	beq.n	10001772 <watchdog_init_constructor+0x12>
1000176a:	2001      	movs	r0, #1
1000176c:	4904      	ldr	r1, [pc, #16]	; (10001780 <watchdog_init_constructor+0x20>)
1000176e:	7008      	strb	r0, [r1, #0]
10001770:	611a      	str	r2, [r3, #16]
10001772:	4b04      	ldr	r3, [pc, #16]	; (10001784 <watchdog_init_constructor+0x24>)
10001774:	4a04      	ldr	r2, [pc, #16]	; (10001788 <watchdog_init_constructor+0x28>)
10001776:	601a      	str	r2, [r3, #0]
10001778:	4770      	bx	lr
1000177a:	46c0      	nop			; (mov r8, r8)
1000177c:	4001f000 	.word	0x4001f000
10001780:	20014d84 	.word	0x20014d84
10001784:	20000000 	.word	0x20000000
10001788:	20014325 	.word	0x20014325

1000178c <ext_flash_identify>:
1000178c:	4b15      	ldr	r3, [pc, #84]	; (100017e4 <ext_flash_identify+0x58>)
1000178e:	6819      	ldr	r1, [r3, #0]
10001790:	b2ca      	uxtb	r2, r1
10001792:	0c09      	lsrs	r1, r1, #16
10001794:	2918      	cmp	r1, #24
10001796:	d900      	bls.n	1000179a <ext_flash_identify+0xe>
10001798:	2118      	movs	r1, #24
1000179a:	4b13      	ldr	r3, [pc, #76]	; (100017e8 <ext_flash_identify+0x5c>)
1000179c:	2a20      	cmp	r2, #32
1000179e:	d108      	bne.n	100017b2 <ext_flash_identify+0x26>
100017a0:	3a1c      	subs	r2, #28
100017a2:	721a      	strb	r2, [r3, #8]
100017a4:	2201      	movs	r2, #1
100017a6:	408a      	lsls	r2, r1
100017a8:	605a      	str	r2, [r3, #4]
100017aa:	7a1b      	ldrb	r3, [r3, #8]
100017ac:	7003      	strb	r3, [r0, #0]
100017ae:	2000      	movs	r0, #0
100017b0:	4770      	bx	lr
100017b2:	2ac2      	cmp	r2, #194	; 0xc2
100017b4:	d101      	bne.n	100017ba <ext_flash_identify+0x2e>
100017b6:	3abd      	subs	r2, #189	; 0xbd
100017b8:	e7f3      	b.n	100017a2 <ext_flash_identify+0x16>
100017ba:	2ac8      	cmp	r2, #200	; 0xc8
100017bc:	d101      	bne.n	100017c2 <ext_flash_identify+0x36>
100017be:	3ac1      	subs	r2, #193	; 0xc1
100017c0:	e7ef      	b.n	100017a2 <ext_flash_identify+0x16>
100017c2:	2aef      	cmp	r2, #239	; 0xef
100017c4:	d101      	bne.n	100017ca <ext_flash_identify+0x3e>
100017c6:	3ae9      	subs	r2, #233	; 0xe9
100017c8:	e7eb      	b.n	100017a2 <ext_flash_identify+0x16>
100017ca:	2aa1      	cmp	r2, #161	; 0xa1
100017cc:	d101      	bne.n	100017d2 <ext_flash_identify+0x46>
100017ce:	3a99      	subs	r2, #153	; 0x99
100017d0:	e7e7      	b.n	100017a2 <ext_flash_identify+0x16>
100017d2:	2a85      	cmp	r2, #133	; 0x85
100017d4:	d101      	bne.n	100017da <ext_flash_identify+0x4e>
100017d6:	3a7c      	subs	r2, #124	; 0x7c
100017d8:	e7e3      	b.n	100017a2 <ext_flash_identify+0x16>
100017da:	2ac4      	cmp	r2, #196	; 0xc4
100017dc:	d1e2      	bne.n	100017a4 <ext_flash_identify+0x18>
100017de:	3aba      	subs	r2, #186	; 0xba
100017e0:	e7df      	b.n	100017a2 <ext_flash_identify+0x16>
100017e2:	46c0      	nop			; (mov r8, r8)
100017e4:	200012b4 	.word	0x200012b4
100017e8:	20014d88 	.word	0x20014d88

100017ec <ext_flash_enable_AHB_writes>:
100017ec:	2302      	movs	r3, #2
100017ee:	2804      	cmp	r0, #4
100017f0:	d009      	beq.n	10001806 <ext_flash_enable_AHB_writes+0x1a>
100017f2:	4b08      	ldr	r3, [pc, #32]	; (10001814 <ext_flash_enable_AHB_writes+0x28>)
100017f4:	7a5a      	ldrb	r2, [r3, #9]
100017f6:	2302      	movs	r3, #2
100017f8:	429a      	cmp	r2, r3
100017fa:	d104      	bne.n	10001806 <ext_flash_enable_AHB_writes+0x1a>
100017fc:	3806      	subs	r0, #6
100017fe:	3330      	adds	r3, #48	; 0x30
10001800:	2804      	cmp	r0, #4
10001802:	d900      	bls.n	10001806 <ext_flash_enable_AHB_writes+0x1a>
10001804:	3306      	adds	r3, #6
10001806:	4a04      	ldr	r2, [pc, #16]	; (10001818 <ext_flash_enable_AHB_writes+0x2c>)
10001808:	021b      	lsls	r3, r3, #8
1000180a:	4313      	orrs	r3, r2
1000180c:	4a03      	ldr	r2, [pc, #12]	; (1000181c <ext_flash_enable_AHB_writes+0x30>)
1000180e:	6153      	str	r3, [r2, #20]
10001810:	4770      	bx	lr
10001812:	46c0      	nop			; (mov r8, r8)
10001814:	20014d88 	.word	0x20014d88
10001818:	00050006 	.word	0x00050006
1000181c:	4000f000 	.word	0x4000f000

10001820 <ext_flash_inval_cache>:
10001820:	2280      	movs	r2, #128	; 0x80
10001822:	4b03      	ldr	r3, [pc, #12]	; (10001830 <ext_flash_inval_cache+0x10>)
10001824:	04d2      	lsls	r2, r2, #19
10001826:	6919      	ldr	r1, [r3, #16]
10001828:	430a      	orrs	r2, r1
1000182a:	611a      	str	r2, [r3, #16]
1000182c:	6119      	str	r1, [r3, #16]
1000182e:	4770      	bx	lr
10001830:	4000f000 	.word	0x4000f000

10001834 <ext_flash_erase>:
10001834:	b570      	push	{r4, r5, r6, lr}
10001836:	4c12      	ldr	r4, [pc, #72]	; (10001880 <ext_flash_erase+0x4c>)
10001838:	2312      	movs	r3, #18
1000183a:	7a25      	ldrb	r5, [r4, #8]
1000183c:	4285      	cmp	r5, r0
1000183e:	d114      	bne.n	1000186a <ext_flash_erase+0x36>
10001840:	6865      	ldr	r5, [r4, #4]
10001842:	1888      	adds	r0, r1, r2
10001844:	42a8      	cmp	r0, r5
10001846:	d810      	bhi.n	1000186a <ext_flash_erase+0x36>
10001848:	430a      	orrs	r2, r1
1000184a:	0512      	lsls	r2, r2, #20
1000184c:	d10d      	bne.n	1000186a <ext_flash_erase+0x36>
1000184e:	4d0d      	ldr	r5, [pc, #52]	; (10001884 <ext_flash_erase+0x50>)
10001850:	3b11      	subs	r3, #17
10001852:	602b      	str	r3, [r5, #0]
10001854:	4a0c      	ldr	r2, [pc, #48]	; (10001888 <ext_flash_erase+0x54>)
10001856:	4b0d      	ldr	r3, [pc, #52]	; (1000188c <ext_flash_erase+0x58>)
10001858:	6153      	str	r3, [r2, #20]
1000185a:	4288      	cmp	r0, r1
1000185c:	d807      	bhi.n	1000186e <ext_flash_erase+0x3a>
1000185e:	4b0c      	ldr	r3, [pc, #48]	; (10001890 <ext_flash_erase+0x5c>)
10001860:	6153      	str	r3, [r2, #20]
10001862:	4b0c      	ldr	r3, [pc, #48]	; (10001894 <ext_flash_erase+0x60>)
10001864:	4798      	blx	r3
10001866:	2300      	movs	r3, #0
10001868:	602b      	str	r3, [r5, #0]
1000186a:	0018      	movs	r0, r3
1000186c:	bd70      	pop	{r4, r5, r6, pc}
1000186e:	6823      	ldr	r3, [r4, #0]
10001870:	4e09      	ldr	r6, [pc, #36]	; (10001898 <ext_flash_erase+0x64>)
10001872:	199b      	adds	r3, r3, r6
10001874:	6019      	str	r1, [r3, #0]
10001876:	2380      	movs	r3, #128	; 0x80
10001878:	015b      	lsls	r3, r3, #5
1000187a:	18c9      	adds	r1, r1, r3
1000187c:	e7ed      	b.n	1000185a <ext_flash_erase+0x26>
1000187e:	46c0      	nop			; (mov r8, r8)
10001880:	20014d88 	.word	0x20014d88
10001884:	4000303c 	.word	0x4000303c
10001888:	4000f000 	.word	0x4000f000
1000188c:	20050006 	.word	0x20050006
10001890:	00050004 	.word	0x00050004
10001894:	10001821 	.word	0x10001821
10001898:	00fffffc 	.word	0x00fffffc

1000189c <ext_flash_cmp>:
1000189c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000189e:	001c      	movs	r4, r3
100018a0:	4b2b      	ldr	r3, [pc, #172]	; (10001950 <ext_flash_cmp+0xb4>)
100018a2:	9001      	str	r0, [sp, #4]
100018a4:	000d      	movs	r5, r1
100018a6:	9e01      	ldr	r6, [sp, #4]
100018a8:	0011      	movs	r1, r2
100018aa:	7a1a      	ldrb	r2, [r3, #8]
100018ac:	2012      	movs	r0, #18
100018ae:	42b2      	cmp	r2, r6
100018b0:	d11d      	bne.n	100018ee <ext_flash_cmp+0x52>
100018b2:	685e      	ldr	r6, [r3, #4]
100018b4:	190a      	adds	r2, r1, r4
100018b6:	42b2      	cmp	r2, r6
100018b8:	d819      	bhi.n	100018ee <ext_flash_cmp+0x52>
100018ba:	681b      	ldr	r3, [r3, #0]
100018bc:	18cb      	adds	r3, r1, r3
100018be:	9300      	str	r3, [sp, #0]
100018c0:	2300      	movs	r3, #0
100018c2:	0018      	movs	r0, r3
100018c4:	429c      	cmp	r4, r3
100018c6:	d103      	bne.n	100018d0 <ext_flash_cmp+0x34>
100018c8:	2800      	cmp	r0, #0
100018ca:	d113      	bne.n	100018f4 <ext_flash_cmp+0x58>
100018cc:	6028      	str	r0, [r5, #0]
100018ce:	e00e      	b.n	100018ee <ext_flash_cmp+0x52>
100018d0:	9a08      	ldr	r2, [sp, #32]
100018d2:	9e00      	ldr	r6, [sp, #0]
100018d4:	5cd2      	ldrb	r2, [r2, r3]
100018d6:	5cf6      	ldrb	r6, [r6, r3]
100018d8:	1b97      	subs	r7, r2, r6
100018da:	42b2      	cmp	r2, r6
100018dc:	d008      	beq.n	100018f0 <ext_flash_cmp+0x54>
100018de:	2800      	cmp	r0, #0
100018e0:	d100      	bne.n	100018e4 <ext_flash_cmp+0x48>
100018e2:	0038      	movs	r0, r7
100018e4:	4332      	orrs	r2, r6
100018e6:	4296      	cmp	r6, r2
100018e8:	d002      	beq.n	100018f0 <ext_flash_cmp+0x54>
100018ea:	6028      	str	r0, [r5, #0]
100018ec:	2000      	movs	r0, #0
100018ee:	bdfe      	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
100018f0:	3301      	adds	r3, #1
100018f2:	e7e7      	b.n	100018c4 <ext_flash_cmp+0x28>
100018f4:	0022      	movs	r2, r4
100018f6:	4817      	ldr	r0, [pc, #92]	; (10001954 <ext_flash_cmp+0xb8>)
100018f8:	4b17      	ldr	r3, [pc, #92]	; (10001958 <ext_flash_cmp+0xbc>)
100018fa:	4798      	blx	r3
100018fc:	0027      	movs	r7, r4
100018fe:	2c40      	cmp	r4, #64	; 0x40
10001900:	d900      	bls.n	10001904 <ext_flash_cmp+0x68>
10001902:	2740      	movs	r7, #64	; 0x40
10001904:	2600      	movs	r6, #0
10001906:	42b7      	cmp	r7, r6
10001908:	dc17      	bgt.n	1000193a <ext_flash_cmp+0x9e>
1000190a:	42bc      	cmp	r4, r7
1000190c:	d91c      	bls.n	10001948 <ext_flash_cmp+0xac>
1000190e:	4813      	ldr	r0, [pc, #76]	; (1000195c <ext_flash_cmp+0xc0>)
10001910:	4b13      	ldr	r3, [pc, #76]	; (10001960 <ext_flash_cmp+0xc4>)
10001912:	4798      	blx	r3
10001914:	2301      	movs	r3, #1
10001916:	4e13      	ldr	r6, [pc, #76]	; (10001964 <ext_flash_cmp+0xc8>)
10001918:	6033      	str	r3, [r6, #0]
1000191a:	9801      	ldr	r0, [sp, #4]
1000191c:	4b12      	ldr	r3, [pc, #72]	; (10001968 <ext_flash_cmp+0xcc>)
1000191e:	4798      	blx	r3
10001920:	0022      	movs	r2, r4
10001922:	9908      	ldr	r1, [sp, #32]
10001924:	4b11      	ldr	r3, [pc, #68]	; (1000196c <ext_flash_cmp+0xd0>)
10001926:	9800      	ldr	r0, [sp, #0]
10001928:	4798      	blx	r3
1000192a:	4b11      	ldr	r3, [pc, #68]	; (10001970 <ext_flash_cmp+0xd4>)
1000192c:	4a11      	ldr	r2, [pc, #68]	; (10001974 <ext_flash_cmp+0xd8>)
1000192e:	615a      	str	r2, [r3, #20]
10001930:	4b11      	ldr	r3, [pc, #68]	; (10001978 <ext_flash_cmp+0xdc>)
10001932:	4798      	blx	r3
10001934:	2000      	movs	r0, #0
10001936:	6030      	str	r0, [r6, #0]
10001938:	e7c8      	b.n	100018cc <ext_flash_cmp+0x30>
1000193a:	9b08      	ldr	r3, [sp, #32]
1000193c:	480f      	ldr	r0, [pc, #60]	; (1000197c <ext_flash_cmp+0xe0>)
1000193e:	5d99      	ldrb	r1, [r3, r6]
10001940:	4b05      	ldr	r3, [pc, #20]	; (10001958 <ext_flash_cmp+0xbc>)
10001942:	4798      	blx	r3
10001944:	3601      	adds	r6, #1
10001946:	e7de      	b.n	10001906 <ext_flash_cmp+0x6a>
10001948:	200a      	movs	r0, #10
1000194a:	4b0d      	ldr	r3, [pc, #52]	; (10001980 <ext_flash_cmp+0xe4>)
1000194c:	e7e1      	b.n	10001912 <ext_flash_cmp+0x76>
1000194e:	46c0      	nop			; (mov r8, r8)
10001950:	20014d88 	.word	0x20014d88
10001954:	100056ac 	.word	0x100056ac
10001958:	0002fccd 	.word	0x0002fccd
1000195c:	100056d3 	.word	0x100056d3
10001960:	0002fdb1 	.word	0x0002fdb1
10001964:	4000303c 	.word	0x4000303c
10001968:	100017ed 	.word	0x100017ed
1000196c:	00005821 	.word	0x00005821
10001970:	4000f000 	.word	0x4000f000
10001974:	00050004 	.word	0x00050004
10001978:	10001821 	.word	0x10001821
1000197c:	100056cd 	.word	0x100056cd
10001980:	0002fcfd 	.word	0x0002fcfd

10001984 <ext_flash_write>:
10001984:	b5f0      	push	{r4, r5, r6, r7, lr}
10001986:	b089      	sub	sp, #36	; 0x24
10001988:	001e      	movs	r6, r3
1000198a:	af02      	add	r7, sp, #8
1000198c:	4b4b      	ldr	r3, [pc, #300]	; (10001abc <ext_flash_write+0x138>)
1000198e:	617a      	str	r2, [r7, #20]
10001990:	7a1d      	ldrb	r5, [r3, #8]
10001992:	685a      	ldr	r2, [r3, #4]
10001994:	4285      	cmp	r5, r0
10001996:	d103      	bne.n	100019a0 <ext_flash_write+0x1c>
10001998:	697c      	ldr	r4, [r7, #20]
1000199a:	190c      	adds	r4, r1, r4
1000199c:	4294      	cmp	r4, r2
1000199e:	d90a      	bls.n	100019b6 <ext_flash_write+0x32>
100019a0:	9201      	str	r2, [sp, #4]
100019a2:	9500      	str	r5, [sp, #0]
100019a4:	0003      	movs	r3, r0
100019a6:	697a      	ldr	r2, [r7, #20]
100019a8:	4845      	ldr	r0, [pc, #276]	; (10001ac0 <ext_flash_write+0x13c>)
100019aa:	4c46      	ldr	r4, [pc, #280]	; (10001ac4 <ext_flash_write+0x140>)
100019ac:	47a0      	blx	r4
100019ae:	2012      	movs	r0, #18
100019b0:	46bd      	mov	sp, r7
100019b2:	b007      	add	sp, #28
100019b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
100019b6:	2000      	movs	r0, #0
100019b8:	697a      	ldr	r2, [r7, #20]
100019ba:	4282      	cmp	r2, r0
100019bc:	d0f8      	beq.n	100019b0 <ext_flash_write+0x2c>
100019be:	2201      	movs	r2, #1
100019c0:	681c      	ldr	r4, [r3, #0]
100019c2:	4b41      	ldr	r3, [pc, #260]	; (10001ac8 <ext_flash_write+0x144>)
100019c4:	0028      	movs	r0, r5
100019c6:	601a      	str	r2, [r3, #0]
100019c8:	4b40      	ldr	r3, [pc, #256]	; (10001acc <ext_flash_write+0x148>)
100019ca:	190c      	adds	r4, r1, r4
100019cc:	4798      	blx	r3
100019ce:	2d09      	cmp	r5, #9
100019d0:	d13a      	bne.n	10001a48 <ext_flash_write+0xc4>
100019d2:	466b      	mov	r3, sp
100019d4:	60fb      	str	r3, [r7, #12]
100019d6:	0e23      	lsrs	r3, r4, #24
100019d8:	60bb      	str	r3, [r7, #8]
100019da:	0e33      	lsrs	r3, r6, #24
100019dc:	0e32      	lsrs	r2, r6, #24
100019de:	607b      	str	r3, [r7, #4]
100019e0:	0e23      	lsrs	r3, r4, #24
100019e2:	1a9b      	subs	r3, r3, r2
100019e4:	425a      	negs	r2, r3
100019e6:	4153      	adcs	r3, r2
100019e8:	466a      	mov	r2, sp
100019ea:	021b      	lsls	r3, r3, #8
100019ec:	1ad3      	subs	r3, r2, r3
100019ee:	469d      	mov	sp, r3
100019f0:	ab02      	add	r3, sp, #8
100019f2:	613b      	str	r3, [r7, #16]
100019f4:	25ff      	movs	r5, #255	; 0xff
100019f6:	2380      	movs	r3, #128	; 0x80
100019f8:	4025      	ands	r5, r4
100019fa:	005b      	lsls	r3, r3, #1
100019fc:	1b5d      	subs	r5, r3, r5
100019fe:	697b      	ldr	r3, [r7, #20]
10001a00:	429d      	cmp	r5, r3
10001a02:	d900      	bls.n	10001a06 <ext_flash_write+0x82>
10001a04:	001d      	movs	r5, r3
10001a06:	68bb      	ldr	r3, [r7, #8]
10001a08:	6879      	ldr	r1, [r7, #4]
10001a0a:	0032      	movs	r2, r6
10001a0c:	428b      	cmp	r3, r1
10001a0e:	d105      	bne.n	10001a1c <ext_flash_write+0x98>
10001a10:	002a      	movs	r2, r5
10001a12:	0031      	movs	r1, r6
10001a14:	6938      	ldr	r0, [r7, #16]
10001a16:	4b2e      	ldr	r3, [pc, #184]	; (10001ad0 <ext_flash_write+0x14c>)
10001a18:	4798      	blx	r3
10001a1a:	693a      	ldr	r2, [r7, #16]
10001a1c:	0020      	movs	r0, r4
10001a1e:	4b2d      	ldr	r3, [pc, #180]	; (10001ad4 <ext_flash_write+0x150>)
10001a20:	0029      	movs	r1, r5
10001a22:	4798      	blx	r3
10001a24:	697b      	ldr	r3, [r7, #20]
10001a26:	1964      	adds	r4, r4, r5
10001a28:	1b5b      	subs	r3, r3, r5
10001a2a:	1976      	adds	r6, r6, r5
10001a2c:	617b      	str	r3, [r7, #20]
10001a2e:	2b00      	cmp	r3, #0
10001a30:	d1e0      	bne.n	100019f4 <ext_flash_write+0x70>
10001a32:	68fb      	ldr	r3, [r7, #12]
10001a34:	469d      	mov	sp, r3
10001a36:	4b28      	ldr	r3, [pc, #160]	; (10001ad8 <ext_flash_write+0x154>)
10001a38:	4a28      	ldr	r2, [pc, #160]	; (10001adc <ext_flash_write+0x158>)
10001a3a:	615a      	str	r2, [r3, #20]
10001a3c:	4b28      	ldr	r3, [pc, #160]	; (10001ae0 <ext_flash_write+0x15c>)
10001a3e:	4798      	blx	r3
10001a40:	2000      	movs	r0, #0
10001a42:	4b21      	ldr	r3, [pc, #132]	; (10001ac8 <ext_flash_write+0x144>)
10001a44:	6018      	str	r0, [r3, #0]
10001a46:	e7b3      	b.n	100019b0 <ext_flash_write+0x2c>
10001a48:	697b      	ldr	r3, [r7, #20]
10001a4a:	191a      	adds	r2, r3, r4
10001a4c:	2301      	movs	r3, #1
10001a4e:	421c      	tst	r4, r3
10001a50:	d003      	beq.n	10001a5a <ext_flash_write+0xd6>
10001a52:	7833      	ldrb	r3, [r6, #0]
10001a54:	3601      	adds	r6, #1
10001a56:	7023      	strb	r3, [r4, #0]
10001a58:	3401      	adds	r4, #1
10001a5a:	1e90      	subs	r0, r2, #2
10001a5c:	42a0      	cmp	r0, r4
10001a5e:	d319      	bcc.n	10001a94 <ext_flash_write+0x110>
10001a60:	07a3      	lsls	r3, r4, #30
10001a62:	d506      	bpl.n	10001a72 <ext_flash_write+0xee>
10001a64:	7873      	ldrb	r3, [r6, #1]
10001a66:	7831      	ldrb	r1, [r6, #0]
10001a68:	021b      	lsls	r3, r3, #8
10001a6a:	430b      	orrs	r3, r1
10001a6c:	8023      	strh	r3, [r4, #0]
10001a6e:	3602      	adds	r6, #2
10001a70:	3402      	adds	r4, #2
10001a72:	1b33      	subs	r3, r6, r4
10001a74:	469c      	mov	ip, r3
10001a76:	1f15      	subs	r5, r2, #4
10001a78:	4663      	mov	r3, ip
10001a7a:	191b      	adds	r3, r3, r4
10001a7c:	42a5      	cmp	r5, r4
10001a7e:	d210      	bcs.n	10001aa2 <ext_flash_write+0x11e>
10001a80:	001e      	movs	r6, r3
10001a82:	42a0      	cmp	r0, r4
10001a84:	d306      	bcc.n	10001a94 <ext_flash_write+0x110>
10001a86:	7819      	ldrb	r1, [r3, #0]
10001a88:	785b      	ldrb	r3, [r3, #1]
10001a8a:	3602      	adds	r6, #2
10001a8c:	021b      	lsls	r3, r3, #8
10001a8e:	430b      	orrs	r3, r1
10001a90:	8023      	strh	r3, [r4, #0]
10001a92:	3402      	adds	r4, #2
10001a94:	1b33      	subs	r3, r6, r4
10001a96:	42a2      	cmp	r2, r4
10001a98:	d9cd      	bls.n	10001a36 <ext_flash_write+0xb2>
10001a9a:	5d19      	ldrb	r1, [r3, r4]
10001a9c:	7021      	strb	r1, [r4, #0]
10001a9e:	3401      	adds	r4, #1
10001aa0:	e7f9      	b.n	10001a96 <ext_flash_write+0x112>
10001aa2:	785e      	ldrb	r6, [r3, #1]
10001aa4:	7819      	ldrb	r1, [r3, #0]
10001aa6:	0236      	lsls	r6, r6, #8
10001aa8:	430e      	orrs	r6, r1
10001aaa:	7899      	ldrb	r1, [r3, #2]
10001aac:	0409      	lsls	r1, r1, #16
10001aae:	430e      	orrs	r6, r1
10001ab0:	78d9      	ldrb	r1, [r3, #3]
10001ab2:	0609      	lsls	r1, r1, #24
10001ab4:	4331      	orrs	r1, r6
10001ab6:	c402      	stmia	r4!, {r1}
10001ab8:	e7de      	b.n	10001a78 <ext_flash_write+0xf4>
10001aba:	46c0      	nop			; (mov r8, r8)
10001abc:	20014d88 	.word	0x20014d88
10001ac0:	100056d8 	.word	0x100056d8
10001ac4:	0002fccd 	.word	0x0002fccd
10001ac8:	4000303c 	.word	0x4000303c
10001acc:	100017ed 	.word	0x100017ed
10001ad0:	00005821 	.word	0x00005821
10001ad4:	20014369 	.word	0x20014369
10001ad8:	4000f000 	.word	0x4000f000
10001adc:	00050004 	.word	0x00050004
10001ae0:	10001821 	.word	0x10001821

10001ae4 <ext_flash_read>:
10001ae4:	b570      	push	{r4, r5, r6, lr}
10001ae6:	0004      	movs	r4, r0
10001ae8:	0018      	movs	r0, r3
10001aea:	4b09      	ldr	r3, [pc, #36]	; (10001b10 <ext_flash_read+0x2c>)
10001aec:	7a1d      	ldrb	r5, [r3, #8]
10001aee:	42a5      	cmp	r5, r4
10001af0:	d103      	bne.n	10001afa <ext_flash_read+0x16>
10001af2:	685d      	ldr	r5, [r3, #4]
10001af4:	188c      	adds	r4, r1, r2
10001af6:	42ac      	cmp	r4, r5
10001af8:	d904      	bls.n	10001b04 <ext_flash_read+0x20>
10001afa:	21ff      	movs	r1, #255	; 0xff
10001afc:	4b05      	ldr	r3, [pc, #20]	; (10001b14 <ext_flash_read+0x30>)
10001afe:	4798      	blx	r3
10001b00:	2012      	movs	r0, #18
10001b02:	bd70      	pop	{r4, r5, r6, pc}
10001b04:	681b      	ldr	r3, [r3, #0]
10001b06:	18c9      	adds	r1, r1, r3
10001b08:	4b03      	ldr	r3, [pc, #12]	; (10001b18 <ext_flash_read+0x34>)
10001b0a:	4798      	blx	r3
10001b0c:	2000      	movs	r0, #0
10001b0e:	e7f8      	b.n	10001b02 <ext_flash_read+0x1e>
10001b10:	20014d88 	.word	0x20014d88
10001b14:	00005859 	.word	0x00005859
10001b18:	00005821 	.word	0x00005821

10001b1c <ext_flash_init>:
10001b1c:	2380      	movs	r3, #128	; 0x80
10001b1e:	b5f0      	push	{r4, r5, r6, r7, lr}
10001b20:	4c3c      	ldr	r4, [pc, #240]	; (10001c14 <ext_flash_init+0xf8>)
10001b22:	2500      	movs	r5, #0
10001b24:	0020      	movs	r0, r4
10001b26:	009b      	lsls	r3, r3, #2
10001b28:	4a3b      	ldr	r2, [pc, #236]	; (10001c18 <ext_flash_init+0xfc>)
10001b2a:	8123      	strh	r3, [r4, #8]
10001b2c:	4b3b      	ldr	r3, [pc, #236]	; (10001c1c <ext_flash_init+0x100>)
10001b2e:	493c      	ldr	r1, [pc, #240]	; (10001c20 <ext_flash_init+0x104>)
10001b30:	6013      	str	r3, [r2, #0]
10001b32:	4a3c      	ldr	r2, [pc, #240]	; (10001c24 <ext_flash_init+0x108>)
10001b34:	4f3c      	ldr	r7, [pc, #240]	; (10001c28 <ext_flash_init+0x10c>)
10001b36:	6011      	str	r1, [r2, #0]
10001b38:	4a3c      	ldr	r2, [pc, #240]	; (10001c2c <ext_flash_init+0x110>)
10001b3a:	493d      	ldr	r1, [pc, #244]	; (10001c30 <ext_flash_init+0x114>)
10001b3c:	4e3d      	ldr	r6, [pc, #244]	; (10001c34 <ext_flash_init+0x118>)
10001b3e:	6011      	str	r1, [r2, #0]
10001b40:	4a3d      	ldr	r2, [pc, #244]	; (10001c38 <ext_flash_init+0x11c>)
10001b42:	493e      	ldr	r1, [pc, #248]	; (10001c3c <ext_flash_init+0x120>)
10001b44:	b087      	sub	sp, #28
10001b46:	6011      	str	r1, [r2, #0]
10001b48:	4a3d      	ldr	r2, [pc, #244]	; (10001c40 <ext_flash_init+0x124>)
10001b4a:	0029      	movs	r1, r5
10001b4c:	3008      	adds	r0, #8
10001b4e:	6027      	str	r7, [r4, #0]
10001b50:	6065      	str	r5, [r4, #4]
10001b52:	6016      	str	r6, [r2, #0]
10001b54:	4798      	blx	r3
10001b56:	7a23      	ldrb	r3, [r4, #8]
10001b58:	2b05      	cmp	r3, #5
10001b5a:	d11d      	bne.n	10001b98 <ext_flash_init+0x7c>
10001b5c:	4939      	ldr	r1, [pc, #228]	; (10001c44 <ext_flash_init+0x128>)
10001b5e:	483a      	ldr	r0, [pc, #232]	; (10001c48 <ext_flash_init+0x12c>)
10001b60:	4b3a      	ldr	r3, [pc, #232]	; (10001c4c <ext_flash_init+0x130>)
10001b62:	4798      	blx	r3
10001b64:	493a      	ldr	r1, [pc, #232]	; (10001c50 <ext_flash_init+0x134>)
10001b66:	4b3b      	ldr	r3, [pc, #236]	; (10001c54 <ext_flash_init+0x138>)
10001b68:	483b      	ldr	r0, [pc, #236]	; (10001c58 <ext_flash_init+0x13c>)
10001b6a:	4798      	blx	r3
10001b6c:	2201      	movs	r2, #1
10001b6e:	4b3b      	ldr	r3, [pc, #236]	; (10001c5c <ext_flash_init+0x140>)
10001b70:	493b      	ldr	r1, [pc, #236]	; (10001c60 <ext_flash_init+0x144>)
10001b72:	601a      	str	r2, [r3, #0]
10001b74:	608a      	str	r2, [r1, #8]
10001b76:	601d      	str	r5, [r3, #0]
10001b78:	2300      	movs	r3, #0
10001b7a:	493a      	ldr	r1, [pc, #232]	; (10001c64 <ext_flash_init+0x148>)
10001b7c:	ad02      	add	r5, sp, #8
10001b7e:	7a20      	ldrb	r0, [r4, #8]
10001b80:	1bc9      	subs	r1, r1, r7
10001b82:	9300      	str	r3, [sp, #0]
10001b84:	2210      	movs	r2, #16
10001b86:	002b      	movs	r3, r5
10001b88:	47b0      	blx	r6
10001b8a:	4c37      	ldr	r4, [pc, #220]	; (10001c68 <ext_flash_init+0x14c>)
10001b8c:	1e01      	subs	r1, r0, #0
10001b8e:	d01b      	beq.n	10001bc8 <ext_flash_init+0xac>
10001b90:	4836      	ldr	r0, [pc, #216]	; (10001c6c <ext_flash_init+0x150>)
10001b92:	47a0      	blx	r4
10001b94:	b007      	add	sp, #28
10001b96:	bdf0      	pop	{r4, r5, r6, r7, pc}
10001b98:	1fda      	subs	r2, r3, #7
10001b9a:	2a03      	cmp	r2, #3
10001b9c:	d80e      	bhi.n	10001bbc <ext_flash_init+0xa0>
10001b9e:	4929      	ldr	r1, [pc, #164]	; (10001c44 <ext_flash_init+0x128>)
10001ba0:	4829      	ldr	r0, [pc, #164]	; (10001c48 <ext_flash_init+0x12c>)
10001ba2:	4b2a      	ldr	r3, [pc, #168]	; (10001c4c <ext_flash_init+0x130>)
10001ba4:	4798      	blx	r3
10001ba6:	492a      	ldr	r1, [pc, #168]	; (10001c50 <ext_flash_init+0x134>)
10001ba8:	482b      	ldr	r0, [pc, #172]	; (10001c58 <ext_flash_init+0x13c>)
10001baa:	4b2a      	ldr	r3, [pc, #168]	; (10001c54 <ext_flash_init+0x138>)
10001bac:	4798      	blx	r3
10001bae:	2201      	movs	r2, #1
10001bb0:	4b2a      	ldr	r3, [pc, #168]	; (10001c5c <ext_flash_init+0x140>)
10001bb2:	492f      	ldr	r1, [pc, #188]	; (10001c70 <ext_flash_init+0x154>)
10001bb4:	601a      	str	r2, [r3, #0]
10001bb6:	4a2a      	ldr	r2, [pc, #168]	; (10001c60 <ext_flash_init+0x144>)
10001bb8:	6091      	str	r1, [r2, #8]
10001bba:	e7dc      	b.n	10001b76 <ext_flash_init+0x5a>
10001bbc:	2b06      	cmp	r3, #6
10001bbe:	d1db      	bne.n	10001b78 <ext_flash_init+0x5c>
10001bc0:	492c      	ldr	r1, [pc, #176]	; (10001c74 <ext_flash_init+0x158>)
10001bc2:	4821      	ldr	r0, [pc, #132]	; (10001c48 <ext_flash_init+0x12c>)
10001bc4:	4b21      	ldr	r3, [pc, #132]	; (10001c4c <ext_flash_init+0x130>)
10001bc6:	e7f1      	b.n	10001bac <ext_flash_init+0x90>
10001bc8:	4b2b      	ldr	r3, [pc, #172]	; (10001c78 <ext_flash_init+0x15c>)
10001bca:	4798      	blx	r3
10001bcc:	4b2b      	ldr	r3, [pc, #172]	; (10001c7c <ext_flash_init+0x160>)
10001bce:	2201      	movs	r2, #1
10001bd0:	681b      	ldr	r3, [r3, #0]
10001bd2:	2800      	cmp	r0, #0
10001bd4:	d018      	beq.n	10001c08 <ext_flash_init+0xec>
10001bd6:	0b5b      	lsrs	r3, r3, #13
10001bd8:	4829      	ldr	r0, [pc, #164]	; (10001c80 <ext_flash_init+0x164>)
10001bda:	4213      	tst	r3, r2
10001bdc:	d100      	bne.n	10001be0 <ext_flash_init+0xc4>
10001bde:	4829      	ldr	r0, [pc, #164]	; (10001c84 <ext_flash_init+0x168>)
10001be0:	47a0      	blx	r4
10001be2:	4b29      	ldr	r3, [pc, #164]	; (10001c88 <ext_flash_init+0x16c>)
10001be4:	4798      	blx	r3
10001be6:	4b29      	ldr	r3, [pc, #164]	; (10001c8c <ext_flash_init+0x170>)
10001be8:	2800      	cmp	r0, #0
10001bea:	d100      	bne.n	10001bee <ext_flash_init+0xd2>
10001bec:	4b28      	ldr	r3, [pc, #160]	; (10001c90 <ext_flash_init+0x174>)
10001bee:	0018      	movs	r0, r3
10001bf0:	47a0      	blx	r4
10001bf2:	2600      	movs	r6, #0
10001bf4:	5da9      	ldrb	r1, [r5, r6]
10001bf6:	4827      	ldr	r0, [pc, #156]	; (10001c94 <ext_flash_init+0x178>)
10001bf8:	3601      	adds	r6, #1
10001bfa:	47a0      	blx	r4
10001bfc:	2e10      	cmp	r6, #16
10001bfe:	d1f9      	bne.n	10001bf4 <ext_flash_init+0xd8>
10001c00:	4b25      	ldr	r3, [pc, #148]	; (10001c98 <ext_flash_init+0x17c>)
10001c02:	4826      	ldr	r0, [pc, #152]	; (10001c9c <ext_flash_init+0x180>)
10001c04:	4798      	blx	r3
10001c06:	e7c5      	b.n	10001b94 <ext_flash_init+0x78>
10001c08:	0b9b      	lsrs	r3, r3, #14
10001c0a:	4825      	ldr	r0, [pc, #148]	; (10001ca0 <ext_flash_init+0x184>)
10001c0c:	4213      	tst	r3, r2
10001c0e:	d1e7      	bne.n	10001be0 <ext_flash_init+0xc4>
10001c10:	4824      	ldr	r0, [pc, #144]	; (10001ca4 <ext_flash_init+0x188>)
10001c12:	e7e5      	b.n	10001be0 <ext_flash_init+0xc4>
10001c14:	20014d88 	.word	0x20014d88
10001c18:	200012ac 	.word	0x200012ac
10001c1c:	1000178d 	.word	0x1000178d
10001c20:	10001835 	.word	0x10001835
10001c24:	200012a8 	.word	0x200012a8
10001c28:	10000000 	.word	0x10000000
10001c2c:	200012c0 	.word	0x200012c0
10001c30:	10001985 	.word	0x10001985
10001c34:	10001ae5 	.word	0x10001ae5
10001c38:	200012bc 	.word	0x200012bc
10001c3c:	1000189d 	.word	0x1000189d
10001c40:	200012b8 	.word	0x200012b8
10001c44:	200146ac 	.word	0x200146ac
10001c48:	20001278 	.word	0x20001278
10001c4c:	00006897 	.word	0x00006897
10001c50:	200146a4 	.word	0x200146a4
10001c54:	00006715 	.word	0x00006715
10001c58:	200012a4 	.word	0x200012a4
10001c5c:	50003020 	.word	0x50003020
10001c60:	500080fc 	.word	0x500080fc
10001c64:	10078000 	.word	0x10078000
10001c68:	0002fccd 	.word	0x0002fccd
10001c6c:	10005731 	.word	0x10005731
10001c70:	00000ab3 	.word	0x00000ab3
10001c74:	200146b4 	.word	0x200146b4
10001c78:	000075f5 	.word	0x000075f5
10001c7c:	200012c4 	.word	0x200012c4
10001c80:	10005705 	.word	0x10005705
10001c84:	10005709 	.word	0x10005709
10001c88:	00007605 	.word	0x00007605
10001c8c:	10005715 	.word	0x10005715
10001c90:	10005725 	.word	0x10005725
10001c94:	100056cd 	.word	0x100056cd
10001c98:	0002fdb1 	.word	0x0002fdb1
10001c9c:	100056d3 	.word	0x100056d3
10001ca0:	1000570d 	.word	0x1000570d
10001ca4:	10005711 	.word	0x10005711

10001ca8 <pmu_init>:
10001ca8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10001caa:	2200      	movs	r2, #0
10001cac:	2301      	movs	r3, #1
10001cae:	492e      	ldr	r1, [pc, #184]	; (10001d68 <pmu_init+0xc0>)
10001cb0:	4c2e      	ldr	r4, [pc, #184]	; (10001d6c <pmu_init+0xc4>)
10001cb2:	600b      	str	r3, [r1, #0]
10001cb4:	0020      	movs	r0, r4
10001cb6:	600a      	str	r2, [r1, #0]
10001cb8:	2580      	movs	r5, #128	; 0x80
10001cba:	600b      	str	r3, [r1, #0]
10001cbc:	3240      	adds	r2, #64	; 0x40
10001cbe:	2109      	movs	r1, #9
10001cc0:	4b2b      	ldr	r3, [pc, #172]	; (10001d70 <pmu_init+0xc8>)
10001cc2:	4798      	blx	r3
10001cc4:	016d      	lsls	r5, r5, #5
10001cc6:	4305      	orrs	r5, r0
10001cc8:	002b      	movs	r3, r5
10001cca:	2240      	movs	r2, #64	; 0x40
10001ccc:	2109      	movs	r1, #9
10001cce:	0007      	movs	r7, r0
10001cd0:	4e28      	ldr	r6, [pc, #160]	; (10001d74 <pmu_init+0xcc>)
10001cd2:	0020      	movs	r0, r4
10001cd4:	47b0      	blx	r6
10001cd6:	2109      	movs	r1, #9
10001cd8:	2240      	movs	r2, #64	; 0x40
10001cda:	0020      	movs	r0, r4
10001cdc:	4b24      	ldr	r3, [pc, #144]	; (10001d70 <pmu_init+0xc8>)
10001cde:	4798      	blx	r3
10001ce0:	0001      	movs	r1, r0
10001ce2:	4285      	cmp	r5, r0
10001ce4:	d004      	beq.n	10001cf0 <pmu_init+0x48>
10001ce6:	0028      	movs	r0, r5
10001ce8:	23dc      	movs	r3, #220	; 0xdc
10001cea:	4a23      	ldr	r2, [pc, #140]	; (10001d78 <pmu_init+0xd0>)
10001cec:	4d23      	ldr	r5, [pc, #140]	; (10001d7c <pmu_init+0xd4>)
10001cee:	47a8      	blx	r5
10001cf0:	25c0      	movs	r5, #192	; 0xc0
10001cf2:	4823      	ldr	r0, [pc, #140]	; (10001d80 <pmu_init+0xd8>)
10001cf4:	016d      	lsls	r5, r5, #5
10001cf6:	4038      	ands	r0, r7
10001cf8:	4305      	orrs	r5, r0
10001cfa:	002b      	movs	r3, r5
10001cfc:	2240      	movs	r2, #64	; 0x40
10001cfe:	2109      	movs	r1, #9
10001d00:	0020      	movs	r0, r4
10001d02:	4f1c      	ldr	r7, [pc, #112]	; (10001d74 <pmu_init+0xcc>)
10001d04:	47b8      	blx	r7
10001d06:	2109      	movs	r1, #9
10001d08:	2240      	movs	r2, #64	; 0x40
10001d0a:	0020      	movs	r0, r4
10001d0c:	4b18      	ldr	r3, [pc, #96]	; (10001d70 <pmu_init+0xc8>)
10001d0e:	4798      	blx	r3
10001d10:	0001      	movs	r1, r0
10001d12:	4285      	cmp	r5, r0
10001d14:	d004      	beq.n	10001d20 <pmu_init+0x78>
10001d16:	0028      	movs	r0, r5
10001d18:	23df      	movs	r3, #223	; 0xdf
10001d1a:	4a17      	ldr	r2, [pc, #92]	; (10001d78 <pmu_init+0xd0>)
10001d1c:	4d17      	ldr	r5, [pc, #92]	; (10001d7c <pmu_init+0xd4>)
10001d1e:	47a8      	blx	r5
10001d20:	2218      	movs	r2, #24
10001d22:	2109      	movs	r1, #9
10001d24:	4f12      	ldr	r7, [pc, #72]	; (10001d70 <pmu_init+0xc8>)
10001d26:	0020      	movs	r0, r4
10001d28:	47b8      	blx	r7
10001d2a:	25f0      	movs	r5, #240	; 0xf0
10001d2c:	2301      	movs	r3, #1
10001d2e:	006d      	lsls	r5, r5, #1
10001d30:	4398      	bics	r0, r3
10001d32:	4305      	orrs	r5, r0
10001d34:	002b      	movs	r3, r5
10001d36:	2218      	movs	r2, #24
10001d38:	2109      	movs	r1, #9
10001d3a:	0020      	movs	r0, r4
10001d3c:	4e0d      	ldr	r6, [pc, #52]	; (10001d74 <pmu_init+0xcc>)
10001d3e:	47b0      	blx	r6
10001d40:	2109      	movs	r1, #9
10001d42:	2218      	movs	r2, #24
10001d44:	0020      	movs	r0, r4
10001d46:	47b8      	blx	r7
10001d48:	0001      	movs	r1, r0
10001d4a:	4285      	cmp	r5, r0
10001d4c:	d004      	beq.n	10001d58 <pmu_init+0xb0>
10001d4e:	23e5      	movs	r3, #229	; 0xe5
10001d50:	0028      	movs	r0, r5
10001d52:	4a09      	ldr	r2, [pc, #36]	; (10001d78 <pmu_init+0xd0>)
10001d54:	4c09      	ldr	r4, [pc, #36]	; (10001d7c <pmu_init+0xd4>)
10001d56:	47a0      	blx	r4
10001d58:	2300      	movs	r3, #0
10001d5a:	4a03      	ldr	r2, [pc, #12]	; (10001d68 <pmu_init+0xc0>)
10001d5c:	4909      	ldr	r1, [pc, #36]	; (10001d84 <pmu_init+0xdc>)
10001d5e:	6013      	str	r3, [r2, #0]
10001d60:	4809      	ldr	r0, [pc, #36]	; (10001d88 <pmu_init+0xe0>)
10001d62:	4b0a      	ldr	r3, [pc, #40]	; (10001d8c <pmu_init+0xe4>)
10001d64:	4798      	blx	r3
10001d66:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10001d68:	5000301c 	.word	0x5000301c
10001d6c:	0003cd78 	.word	0x0003cd78
10001d70:	0000777f 	.word	0x0000777f
10001d74:	0000779f 	.word	0x0000779f
10001d78:	1000574d 	.word	0x1000574d
10001d7c:	00006641 	.word	0x00006641
10001d80:	ffffbfff 	.word	0xffffbfff
10001d84:	200147f4 	.word	0x200147f4
10001d88:	200012a0 	.word	0x200012a0
10001d8c:	00006897 	.word	0x00006897

10001d90 <pmu_get_wkup_det>:
10001d90:	4b01      	ldr	r3, [pc, #4]	; (10001d98 <pmu_get_wkup_det+0x8>)
10001d92:	7818      	ldrb	r0, [r3, #0]
10001d94:	4770      	bx	lr
10001d96:	46c0      	nop			; (mov r8, r8)
10001d98:	20001234 	.word	0x20001234

10001d9c <pseq_get_boot_status>:
10001d9c:	4b01      	ldr	r3, [pc, #4]	; (10001da4 <pseq_get_boot_status+0x8>)
10001d9e:	6818      	ldr	r0, [r3, #0]
10001da0:	4770      	bx	lr
10001da2:	46c0      	nop			; (mov r8, r8)
10001da4:	2000117c 	.word	0x2000117c

10001da8 <boot_status>:
10001da8:	b570      	push	{r4, r5, r6, lr}
10001daa:	4b30      	ldr	r3, [pc, #192]	; (10001e6c <boot_status+0xc4>)
10001dac:	4798      	blx	r3
10001dae:	4b30      	ldr	r3, [pc, #192]	; (10001e70 <boot_status+0xc8>)
10001db0:	0005      	movs	r5, r0
10001db2:	4798      	blx	r3
10001db4:	4b2f      	ldr	r3, [pc, #188]	; (10001e74 <boot_status+0xcc>)
10001db6:	691a      	ldr	r2, [r3, #16]
10001db8:	07d2      	lsls	r2, r2, #31
10001dba:	d502      	bpl.n	10001dc2 <boot_status+0x1a>
10001dbc:	22f7      	movs	r2, #247	; 0xf7
10001dbe:	4215      	tst	r5, r2
10001dc0:	d04a      	beq.n	10001e58 <boot_status+0xb0>
10001dc2:	2202      	movs	r2, #2
10001dc4:	6919      	ldr	r1, [r3, #16]
10001dc6:	4211      	tst	r1, r2
10001dc8:	d148      	bne.n	10001e5c <boot_status+0xb4>
10001dca:	691b      	ldr	r3, [r3, #16]
10001dcc:	075b      	lsls	r3, r3, #29
10001dce:	d447      	bmi.n	10001e60 <boot_status+0xb8>
10001dd0:	2800      	cmp	r0, #0
10001dd2:	d116      	bne.n	10001e02 <boot_status+0x5a>
10001dd4:	2d00      	cmp	r5, #0
10001dd6:	d045      	beq.n	10001e64 <boot_status+0xbc>
10001dd8:	2401      	movs	r4, #1
10001dda:	4b27      	ldr	r3, [pc, #156]	; (10001e78 <boot_status+0xd0>)
10001ddc:	402c      	ands	r4, r5
10001dde:	3c01      	subs	r4, #1
10001de0:	401c      	ands	r4, r3
10001de2:	4b26      	ldr	r3, [pc, #152]	; (10001e7c <boot_status+0xd4>)
10001de4:	18e4      	adds	r4, r4, r3
10001de6:	4215      	tst	r5, r2
10001de8:	d001      	beq.n	10001dee <boot_status+0x46>
10001dea:	4b25      	ldr	r3, [pc, #148]	; (10001e80 <boot_status+0xd8>)
10001dec:	431c      	orrs	r4, r3
10001dee:	076b      	lsls	r3, r5, #29
10001df0:	d502      	bpl.n	10001df8 <boot_status+0x50>
10001df2:	4b24      	ldr	r3, [pc, #144]	; (10001e84 <boot_status+0xdc>)
10001df4:	431c      	orrs	r4, r3
10001df6:	e002      	b.n	10001dfe <boot_status+0x56>
10001df8:	2234      	movs	r2, #52	; 0x34
10001dfa:	2c00      	cmp	r4, #0
10001dfc:	d027      	beq.n	10001e4e <boot_status+0xa6>
10001dfe:	0020      	movs	r0, r4
10001e00:	bd70      	pop	{r4, r5, r6, pc}
10001e02:	2380      	movs	r3, #128	; 0x80
10001e04:	0004      	movs	r4, r0
10001e06:	005b      	lsls	r3, r3, #1
10001e08:	401c      	ands	r4, r3
10001e0a:	4218      	tst	r0, r3
10001e0c:	d000      	beq.n	10001e10 <boot_status+0x68>
10001e0e:	4c1e      	ldr	r4, [pc, #120]	; (10001e88 <boot_status+0xe0>)
10001e10:	0583      	lsls	r3, r0, #22
10001e12:	d501      	bpl.n	10001e18 <boot_status+0x70>
10001e14:	4b1d      	ldr	r3, [pc, #116]	; (10001e8c <boot_status+0xe4>)
10001e16:	431c      	orrs	r4, r3
10001e18:	0543      	lsls	r3, r0, #21
10001e1a:	d501      	bpl.n	10001e20 <boot_status+0x78>
10001e1c:	4b1c      	ldr	r3, [pc, #112]	; (10001e90 <boot_status+0xe8>)
10001e1e:	431c      	orrs	r4, r3
10001e20:	0503      	lsls	r3, r0, #20
10001e22:	d501      	bpl.n	10001e28 <boot_status+0x80>
10001e24:	4b1b      	ldr	r3, [pc, #108]	; (10001e94 <boot_status+0xec>)
10001e26:	431c      	orrs	r4, r3
10001e28:	04c3      	lsls	r3, r0, #19
10001e2a:	d501      	bpl.n	10001e30 <boot_status+0x88>
10001e2c:	4b1a      	ldr	r3, [pc, #104]	; (10001e98 <boot_status+0xf0>)
10001e2e:	431c      	orrs	r4, r3
10001e30:	0483      	lsls	r3, r0, #18
10001e32:	d501      	bpl.n	10001e38 <boot_status+0x90>
10001e34:	4b19      	ldr	r3, [pc, #100]	; (10001e9c <boot_status+0xf4>)
10001e36:	431c      	orrs	r4, r3
10001e38:	0443      	lsls	r3, r0, #17
10001e3a:	d501      	bpl.n	10001e40 <boot_status+0x98>
10001e3c:	4b18      	ldr	r3, [pc, #96]	; (10001ea0 <boot_status+0xf8>)
10001e3e:	431c      	orrs	r4, r3
10001e40:	0403      	lsls	r3, r0, #16
10001e42:	d501      	bpl.n	10001e48 <boot_status+0xa0>
10001e44:	4b17      	ldr	r3, [pc, #92]	; (10001ea4 <boot_status+0xfc>)
10001e46:	e7d5      	b.n	10001df4 <boot_status+0x4c>
10001e48:	2c00      	cmp	r4, #0
10001e4a:	d1d8      	bne.n	10001dfe <boot_status+0x56>
10001e4c:	2252      	movs	r2, #82	; 0x52
10001e4e:	4916      	ldr	r1, [pc, #88]	; (10001ea8 <boot_status+0x100>)
10001e50:	4816      	ldr	r0, [pc, #88]	; (10001eac <boot_status+0x104>)
10001e52:	4b17      	ldr	r3, [pc, #92]	; (10001eb0 <boot_status+0x108>)
10001e54:	4798      	blx	r3
10001e56:	e7d2      	b.n	10001dfe <boot_status+0x56>
10001e58:	4c16      	ldr	r4, [pc, #88]	; (10001eb4 <boot_status+0x10c>)
10001e5a:	e7d0      	b.n	10001dfe <boot_status+0x56>
10001e5c:	4c16      	ldr	r4, [pc, #88]	; (10001eb8 <boot_status+0x110>)
10001e5e:	e7ce      	b.n	10001dfe <boot_status+0x56>
10001e60:	4c16      	ldr	r4, [pc, #88]	; (10001ebc <boot_status+0x114>)
10001e62:	e7cc      	b.n	10001dfe <boot_status+0x56>
10001e64:	2480      	movs	r4, #128	; 0x80
10001e66:	0464      	lsls	r4, r4, #17
10001e68:	e7c9      	b.n	10001dfe <boot_status+0x56>
10001e6a:	46c0      	nop			; (mov r8, r8)
10001e6c:	10001d91 	.word	0x10001d91
10001e70:	10001d9d 	.word	0x10001d9d
10001e74:	4001f000 	.word	0x4001f000
10001e78:	fbffffff 	.word	0xfbffffff
10001e7c:	04000001 	.word	0x04000001
10001e80:	04000002 	.word	0x04000002
10001e84:	04000004 	.word	0x04000004
10001e88:	08000001 	.word	0x08000001
10001e8c:	08000002 	.word	0x08000002
10001e90:	08000004 	.word	0x08000004
10001e94:	08000008 	.word	0x08000008
10001e98:	08000010 	.word	0x08000010
10001e9c:	08000020 	.word	0x08000020
10001ea0:	08000040 	.word	0x08000040
10001ea4:	08000080 	.word	0x08000080
10001ea8:	10005753 	.word	0x10005753
10001eac:	1000575b 	.word	0x1000575b
10001eb0:	00006609 	.word	0x00006609
10001eb4:	02000001 	.word	0x02000001
10001eb8:	02000002 	.word	0x02000002
10001ebc:	02000004 	.word	0x02000004

10001ec0 <reset_print>:
10001ec0:	b570      	push	{r4, r5, r6, lr}
10001ec2:	4d0d      	ldr	r5, [pc, #52]	; (10001ef8 <reset_print+0x38>)
10001ec4:	47a8      	blx	r5
10001ec6:	4c0d      	ldr	r4, [pc, #52]	; (10001efc <reset_print+0x3c>)
10001ec8:	0001      	movs	r1, r0
10001eca:	480d      	ldr	r0, [pc, #52]	; (10001f00 <reset_print+0x40>)
10001ecc:	47a0      	blx	r4
10001ece:	47a8      	blx	r5
10001ed0:	01c3      	lsls	r3, r0, #7
10001ed2:	d501      	bpl.n	10001ed8 <reset_print+0x18>
10001ed4:	480b      	ldr	r0, [pc, #44]	; (10001f04 <reset_print+0x44>)
10001ed6:	47a0      	blx	r4
10001ed8:	47a8      	blx	r5
10001eda:	0183      	lsls	r3, r0, #6
10001edc:	d501      	bpl.n	10001ee2 <reset_print+0x22>
10001ede:	480a      	ldr	r0, [pc, #40]	; (10001f08 <reset_print+0x48>)
10001ee0:	47a0      	blx	r4
10001ee2:	47a8      	blx	r5
10001ee4:	0103      	lsls	r3, r0, #4
10001ee6:	d501      	bpl.n	10001eec <reset_print+0x2c>
10001ee8:	4808      	ldr	r0, [pc, #32]	; (10001f0c <reset_print+0x4c>)
10001eea:	47a0      	blx	r4
10001eec:	47a8      	blx	r5
10001eee:	0143      	lsls	r3, r0, #5
10001ef0:	d501      	bpl.n	10001ef6 <reset_print+0x36>
10001ef2:	4807      	ldr	r0, [pc, #28]	; (10001f10 <reset_print+0x50>)
10001ef4:	47a0      	blx	r4
10001ef6:	bd70      	pop	{r4, r5, r6, pc}
10001ef8:	10001da9 	.word	0x10001da9
10001efc:	000066b1 	.word	0x000066b1
10001f00:	10005762 	.word	0x10005762
10001f04:	10005773 	.word	0x10005773
10001f08:	1000577d 	.word	0x1000577d
10001f0c:	1000578a 	.word	0x1000578a
10001f10:	1000579c 	.word	0x1000579c

10001f14 <brwnout_init>:
10001f14:	b510      	push	{r4, lr}
10001f16:	4904      	ldr	r1, [pc, #16]	; (10001f28 <brwnout_init+0x14>)
10001f18:	4c04      	ldr	r4, [pc, #16]	; (10001f2c <brwnout_init+0x18>)
10001f1a:	4805      	ldr	r0, [pc, #20]	; (10001f30 <brwnout_init+0x1c>)
10001f1c:	47a0      	blx	r4
10001f1e:	4905      	ldr	r1, [pc, #20]	; (10001f34 <brwnout_init+0x20>)
10001f20:	4805      	ldr	r0, [pc, #20]	; (10001f38 <brwnout_init+0x24>)
10001f22:	47a0      	blx	r4
10001f24:	bd10      	pop	{r4, pc}
10001f26:	46c0      	nop			; (mov r8, r8)
10001f28:	20014a38 	.word	0x20014a38
10001f2c:	00006897 	.word	0x00006897
10001f30:	20001278 	.word	0x20001278
10001f34:	20014a30 	.word	0x20014a30
10001f38:	200012a0 	.word	0x200012a0

10001f3c <swd_dbg_constructor>:
10001f3c:	b510      	push	{r4, lr}
10001f3e:	4904      	ldr	r1, [pc, #16]	; (10001f50 <swd_dbg_constructor+0x14>)
10001f40:	4c04      	ldr	r4, [pc, #16]	; (10001f54 <swd_dbg_constructor+0x18>)
10001f42:	4805      	ldr	r0, [pc, #20]	; (10001f58 <swd_dbg_constructor+0x1c>)
10001f44:	47a0      	blx	r4
10001f46:	4905      	ldr	r1, [pc, #20]	; (10001f5c <swd_dbg_constructor+0x20>)
10001f48:	4805      	ldr	r0, [pc, #20]	; (10001f60 <swd_dbg_constructor+0x24>)
10001f4a:	47a0      	blx	r4
10001f4c:	bd10      	pop	{r4, pc}
10001f4e:	46c0      	nop			; (mov r8, r8)
10001f50:	20014a70 	.word	0x20014a70
10001f54:	00006805 	.word	0x00006805
10001f58:	20001284 	.word	0x20001284
10001f5c:	20014a68 	.word	0x20014a68
10001f60:	20001260 	.word	0x20001260

10001f64 <invalidate_reg_file>:
10001f64:	2200      	movs	r2, #0
10001f66:	1d03      	adds	r3, r0, #4
10001f68:	306c      	adds	r0, #108	; 0x6c
10001f6a:	701a      	strb	r2, [r3, #0]
10001f6c:	3308      	adds	r3, #8
10001f6e:	4283      	cmp	r3, r0
10001f70:	d1fb      	bne.n	10001f6a <invalidate_reg_file+0x6>
10001f72:	2000      	movs	r0, #0
10001f74:	4770      	bx	lr
	...

10001f78 <traceback_reporter>:
10001f78:	b570      	push	{r4, r5, r6, lr}
10001f7a:	7a01      	ldrb	r1, [r0, #8]
10001f7c:	0004      	movs	r4, r0
10001f7e:	2002      	movs	r0, #2
10001f80:	290a      	cmp	r1, #10
10001f82:	d81f      	bhi.n	10001fc4 <traceback_reporter+0x4c>
10001f84:	6822      	ldr	r2, [r4, #0]
10001f86:	2900      	cmp	r1, #0
10001f88:	d007      	beq.n	10001f9a <traceback_reporter+0x22>
10001f8a:	1c4b      	adds	r3, r1, #1
10001f8c:	4083      	lsls	r3, r0
10001f8e:	18e3      	adds	r3, r4, r3
10001f90:	685b      	ldr	r3, [r3, #4]
10001f92:	6f95      	ldr	r5, [r2, #120]	; 0x78
10001f94:	3003      	adds	r0, #3
10001f96:	42ab      	cmp	r3, r5
10001f98:	d014      	beq.n	10001fc4 <traceback_reporter+0x4c>
10001f9a:	7a63      	ldrb	r3, [r4, #9]
10001f9c:	428b      	cmp	r3, r1
10001f9e:	d803      	bhi.n	10001fa8 <traceback_reporter+0x30>
10001fa0:	6f92      	ldr	r2, [r2, #120]	; 0x78
10001fa2:	4809      	ldr	r0, [pc, #36]	; (10001fc8 <traceback_reporter+0x50>)
10001fa4:	4b09      	ldr	r3, [pc, #36]	; (10001fcc <traceback_reporter+0x54>)
10001fa6:	4798      	blx	r3
10001fa8:	200a      	movs	r0, #10
10001faa:	7a23      	ldrb	r3, [r4, #8]
10001fac:	6821      	ldr	r1, [r4, #0]
10001fae:	1c5a      	adds	r2, r3, #1
10001fb0:	b2d2      	uxtb	r2, r2
10001fb2:	4290      	cmp	r0, r2
10001fb4:	4180      	sbcs	r0, r0
10001fb6:	7222      	strb	r2, [r4, #8]
10001fb8:	3302      	adds	r3, #2
10001fba:	6f89      	ldr	r1, [r1, #120]	; 0x78
10001fbc:	009b      	lsls	r3, r3, #2
10001fbe:	18e4      	adds	r4, r4, r3
10001fc0:	6061      	str	r1, [r4, #4]
10001fc2:	4240      	negs	r0, r0
10001fc4:	bd70      	pop	{r4, r5, r6, pc}
10001fc6:	46c0      	nop			; (mov r8, r8)
10001fc8:	100057e3 	.word	0x100057e3
10001fcc:	0002fccd 	.word	0x0002fccd

10001fd0 <execute_traceback>:
10001fd0:	b5f0      	push	{r4, r5, r6, r7, lr}
10001fd2:	b0b1      	sub	sp, #196	; 0xc4
10001fd4:	0016      	movs	r6, r2
10001fd6:	aa02      	add	r2, sp, #8
10001fd8:	7353      	strb	r3, [r2, #13]
10001fda:	2300      	movs	r3, #0
10001fdc:	7313      	strb	r3, [r2, #12]
10001fde:	4bbc      	ldr	r3, [pc, #752]	; (100022d0 <execute_traceback+0x300>)
10001fe0:	0005      	movs	r5, r0
10001fe2:	9304      	str	r3, [sp, #16]
10001fe4:	a810      	add	r0, sp, #64	; 0x40
10001fe6:	4bbb      	ldr	r3, [pc, #748]	; (100022d4 <execute_traceback+0x304>)
10001fe8:	000c      	movs	r4, r1
10001fea:	9003      	str	r0, [sp, #12]
10001fec:	4798      	blx	r3
10001fee:	2800      	cmp	r0, #0
10001ff0:	d000      	beq.n	10001ff4 <execute_traceback+0x24>
10001ff2:	e15b      	b.n	100022ac <execute_traceback+0x2dc>
10001ff4:	9b03      	ldr	r3, [sp, #12]
10001ff6:	2202      	movs	r2, #2
10001ff8:	0019      	movs	r1, r3
10001ffa:	3168      	adds	r1, #104	; 0x68
10001ffc:	669e      	str	r6, [r3, #104]	; 0x68
10001ffe:	710a      	strb	r2, [r1, #4]
10002000:	3370      	adds	r3, #112	; 0x70
10002002:	609d      	str	r5, [r3, #8]
10002004:	750a      	strb	r2, [r1, #20]
10002006:	a803      	add	r0, sp, #12
10002008:	601c      	str	r4, [r3, #0]
1000200a:	711a      	strb	r2, [r3, #4]
1000200c:	9b04      	ldr	r3, [sp, #16]
1000200e:	4798      	blx	r3
10002010:	2800      	cmp	r0, #0
10002012:	d000      	beq.n	10002016 <execute_traceback+0x46>
10002014:	e14a      	b.n	100022ac <execute_traceback+0x2dc>
10002016:	23c8      	movs	r3, #200	; 0xc8
10002018:	2401      	movs	r4, #1
1000201a:	005b      	lsls	r3, r3, #1
1000201c:	9300      	str	r3, [sp, #0]
1000201e:	9a03      	ldr	r2, [sp, #12]
10002020:	6f91      	ldr	r1, [r2, #120]	; 0x78
10002022:	000b      	movs	r3, r1
10002024:	43a3      	bics	r3, r4
10002026:	881b      	ldrh	r3, [r3, #0]
10002028:	0b58      	lsrs	r0, r3, #13
1000202a:	0347      	lsls	r7, r0, #13
1000202c:	2800      	cmp	r0, #0
1000202e:	d139      	bne.n	100020a4 <execute_traceback+0xd4>
10002030:	20c0      	movs	r0, #192	; 0xc0
10002032:	25c0      	movs	r5, #192	; 0xc0
10002034:	0140      	lsls	r0, r0, #5
10002036:	4018      	ands	r0, r3
10002038:	016d      	lsls	r5, r5, #5
1000203a:	42a8      	cmp	r0, r5
1000203c:	d032      	beq.n	100020a4 <execute_traceback+0xd4>
1000203e:	2007      	movs	r0, #7
10002040:	0adf      	lsrs	r7, r3, #11
10002042:	055d      	lsls	r5, r3, #21
10002044:	08d9      	lsrs	r1, r3, #3
10002046:	4001      	ands	r1, r0
10002048:	b2fe      	uxtb	r6, r7
1000204a:	0eed      	lsrs	r5, r5, #27
1000204c:	4018      	ands	r0, r3
1000204e:	2f01      	cmp	r7, #1
10002050:	d01e      	beq.n	10002090 <execute_traceback+0xc0>
10002052:	2e02      	cmp	r6, #2
10002054:	d021      	beq.n	1000209a <execute_traceback+0xca>
10002056:	2e00      	cmp	r6, #0
10002058:	d10b      	bne.n	10002072 <execute_traceback+0xa2>
1000205a:	00c9      	lsls	r1, r1, #3
1000205c:	5853      	ldr	r3, [r2, r1]
1000205e:	00c0      	lsls	r0, r0, #3
10002060:	40ab      	lsls	r3, r5
10002062:	5013      	str	r3, [r2, r0]
10002064:	2304      	movs	r3, #4
10002066:	9a03      	ldr	r2, [sp, #12]
10002068:	1851      	adds	r1, r2, r1
1000206a:	7909      	ldrb	r1, [r1, #4]
1000206c:	1812      	adds	r2, r2, r0
1000206e:	430b      	orrs	r3, r1
10002070:	7113      	strb	r3, [r2, #4]
10002072:	9a03      	ldr	r2, [sp, #12]
10002074:	6f93      	ldr	r3, [r2, #120]	; 0x78
10002076:	3302      	adds	r3, #2
10002078:	6793      	str	r3, [r2, #120]	; 0x78
1000207a:	2b01      	cmp	r3, #1
1000207c:	d800      	bhi.n	10002080 <execute_traceback+0xb0>
1000207e:	e19f      	b.n	100023c0 <execute_traceback+0x3f0>
10002080:	9b00      	ldr	r3, [sp, #0]
10002082:	3b01      	subs	r3, #1
10002084:	b29b      	uxth	r3, r3
10002086:	9300      	str	r3, [sp, #0]
10002088:	2b00      	cmp	r3, #0
1000208a:	d1c8      	bne.n	1000201e <execute_traceback+0x4e>
1000208c:	2104      	movs	r1, #4
1000208e:	e10a      	b.n	100022a6 <execute_traceback+0x2d6>
10002090:	00c9      	lsls	r1, r1, #3
10002092:	5853      	ldr	r3, [r2, r1]
10002094:	00c0      	lsls	r0, r0, #3
10002096:	40eb      	lsrs	r3, r5
10002098:	e7e3      	b.n	10002062 <execute_traceback+0x92>
1000209a:	00c9      	lsls	r1, r1, #3
1000209c:	5853      	ldr	r3, [r2, r1]
1000209e:	00c0      	lsls	r0, r0, #3
100020a0:	412b      	asrs	r3, r5
100020a2:	e7de      	b.n	10002062 <execute_traceback+0x92>
100020a4:	26c0      	movs	r6, #192	; 0xc0
100020a6:	0add      	lsrs	r5, r3, #11
100020a8:	02e8      	lsls	r0, r5, #11
100020aa:	0176      	lsls	r6, r6, #5
100020ac:	42b0      	cmp	r0, r6
100020ae:	d127      	bne.n	10002100 <execute_traceback+0x130>
100020b0:	2180      	movs	r1, #128	; 0x80
100020b2:	2507      	movs	r5, #7
100020b4:	0089      	lsls	r1, r1, #2
100020b6:	4019      	ands	r1, r3
100020b8:	468c      	mov	ip, r1
100020ba:	099e      	lsrs	r6, r3, #6
100020bc:	08d9      	lsrs	r1, r3, #3
100020be:	4029      	ands	r1, r5
100020c0:	402e      	ands	r6, r5
100020c2:	401d      	ands	r5, r3
100020c4:	00c9      	lsls	r1, r1, #3
100020c6:	00ed      	lsls	r5, r5, #3
100020c8:	5850      	ldr	r0, [r2, r1]
100020ca:	1957      	adds	r7, r2, r5
100020cc:	055b      	lsls	r3, r3, #21
100020ce:	d50e      	bpl.n	100020ee <execute_traceback+0x11e>
100020d0:	4663      	mov	r3, ip
100020d2:	2b00      	cmp	r3, #0
100020d4:	d109      	bne.n	100020ea <execute_traceback+0x11a>
100020d6:	1980      	adds	r0, r0, r6
100020d8:	2204      	movs	r2, #4
100020da:	6038      	str	r0, [r7, #0]
100020dc:	9b03      	ldr	r3, [sp, #12]
100020de:	1859      	adds	r1, r3, r1
100020e0:	7909      	ldrb	r1, [r1, #4]
100020e2:	195b      	adds	r3, r3, r5
100020e4:	430a      	orrs	r2, r1
100020e6:	711a      	strb	r2, [r3, #4]
100020e8:	e7c3      	b.n	10002072 <execute_traceback+0xa2>
100020ea:	1b80      	subs	r0, r0, r6
100020ec:	e7f4      	b.n	100020d8 <execute_traceback+0x108>
100020ee:	00f6      	lsls	r6, r6, #3
100020f0:	58b3      	ldr	r3, [r6, r2]
100020f2:	4662      	mov	r2, ip
100020f4:	2a00      	cmp	r2, #0
100020f6:	d101      	bne.n	100020fc <execute_traceback+0x12c>
100020f8:	1818      	adds	r0, r3, r0
100020fa:	e7ed      	b.n	100020d8 <execute_traceback+0x108>
100020fc:	1ac0      	subs	r0, r0, r3
100020fe:	e7eb      	b.n	100020d8 <execute_traceback+0x108>
10002100:	2680      	movs	r6, #128	; 0x80
10002102:	01b6      	lsls	r6, r6, #6
10002104:	42b7      	cmp	r7, r6
10002106:	d10a      	bne.n	1000211e <execute_traceback+0x14e>
10002108:	07a9      	lsls	r1, r5, #30
1000210a:	d1b2      	bne.n	10002072 <execute_traceback+0xa2>
1000210c:	0559      	lsls	r1, r3, #21
1000210e:	0f49      	lsrs	r1, r1, #29
10002110:	00c9      	lsls	r1, r1, #3
10002112:	b2db      	uxtb	r3, r3
10002114:	5053      	str	r3, [r2, r1]
10002116:	9b03      	ldr	r3, [sp, #12]
10002118:	1859      	adds	r1, r3, r1
1000211a:	710c      	strb	r4, [r1, #4]
1000211c:	e7a9      	b.n	10002072 <execute_traceback+0xa2>
1000211e:	0a9d      	lsrs	r5, r3, #10
10002120:	02ae      	lsls	r6, r5, #10
10002122:	2d10      	cmp	r5, #16
10002124:	d156      	bne.n	100021d4 <execute_traceback+0x204>
10002126:	2107      	movs	r1, #7
10002128:	0998      	lsrs	r0, r3, #6
1000212a:	b2c0      	uxtb	r0, r0
1000212c:	08dd      	lsrs	r5, r3, #3
1000212e:	3801      	subs	r0, #1
10002130:	400d      	ands	r5, r1
10002132:	4019      	ands	r1, r3
10002134:	280e      	cmp	r0, #14
10002136:	d89c      	bhi.n	10002072 <execute_traceback+0xa2>
10002138:	f002 fd3a 	bl	10004bb0 <__gnu_thumb1_case_sqi>
1000213c:	251d1608 	.word	0x251d1608
10002140:	9b9b9b9b 	.word	0x9b9b9b9b
10002144:	9b9b2c9b 	.word	0x9b9b2c9b
10002148:	3932      	.short	0x3932
1000214a:	40          	.byte	0x40
1000214b:	00          	.byte	0x00
1000214c:	00c8      	lsls	r0, r1, #3
1000214e:	1811      	adds	r1, r2, r0
10002150:	00ed      	lsls	r5, r5, #3
10002152:	58ab      	ldr	r3, [r5, r2]
10002154:	680a      	ldr	r2, [r1, #0]
10002156:	4013      	ands	r3, r2
10002158:	600b      	str	r3, [r1, #0]
1000215a:	9903      	ldr	r1, [sp, #12]
1000215c:	1809      	adds	r1, r1, r0
1000215e:	2304      	movs	r3, #4
10002160:	790a      	ldrb	r2, [r1, #4]
10002162:	4313      	orrs	r3, r2
10002164:	710b      	strb	r3, [r1, #4]
10002166:	e784      	b.n	10002072 <execute_traceback+0xa2>
10002168:	00c8      	lsls	r0, r1, #3
1000216a:	1811      	adds	r1, r2, r0
1000216c:	00ed      	lsls	r5, r5, #3
1000216e:	58ab      	ldr	r3, [r5, r2]
10002170:	680a      	ldr	r2, [r1, #0]
10002172:	4053      	eors	r3, r2
10002174:	e7f0      	b.n	10002158 <execute_traceback+0x188>
10002176:	00c8      	lsls	r0, r1, #3
10002178:	1811      	adds	r1, r2, r0
1000217a:	00ed      	lsls	r5, r5, #3
1000217c:	58ab      	ldr	r3, [r5, r2]
1000217e:	680a      	ldr	r2, [r1, #0]
10002180:	409a      	lsls	r2, r3
10002182:	0013      	movs	r3, r2
10002184:	e7e8      	b.n	10002158 <execute_traceback+0x188>
10002186:	00c8      	lsls	r0, r1, #3
10002188:	1811      	adds	r1, r2, r0
1000218a:	00ed      	lsls	r5, r5, #3
1000218c:	58ab      	ldr	r3, [r5, r2]
1000218e:	680a      	ldr	r2, [r1, #0]
10002190:	40da      	lsrs	r2, r3
10002192:	e7f6      	b.n	10002182 <execute_traceback+0x1b2>
10002194:	00ed      	lsls	r5, r5, #3
10002196:	58ab      	ldr	r3, [r5, r2]
10002198:	00c8      	lsls	r0, r1, #3
1000219a:	425b      	negs	r3, r3
1000219c:	5013      	str	r3, [r2, r0]
1000219e:	e7dc      	b.n	1000215a <execute_traceback+0x18a>
100021a0:	00c8      	lsls	r0, r1, #3
100021a2:	1811      	adds	r1, r2, r0
100021a4:	00ed      	lsls	r5, r5, #3
100021a6:	58ab      	ldr	r3, [r5, r2]
100021a8:	680a      	ldr	r2, [r1, #0]
100021aa:	4313      	orrs	r3, r2
100021ac:	e7d4      	b.n	10002158 <execute_traceback+0x188>
100021ae:	00c8      	lsls	r0, r1, #3
100021b0:	1811      	adds	r1, r2, r0
100021b2:	00ed      	lsls	r5, r5, #3
100021b4:	58ab      	ldr	r3, [r5, r2]
100021b6:	680a      	ldr	r2, [r1, #0]
100021b8:	4353      	muls	r3, r2
100021ba:	e7cd      	b.n	10002158 <execute_traceback+0x188>
100021bc:	00ed      	lsls	r5, r5, #3
100021be:	58ab      	ldr	r3, [r5, r2]
100021c0:	00c9      	lsls	r1, r1, #3
100021c2:	1850      	adds	r0, r2, r1
100021c4:	425a      	negs	r2, r3
100021c6:	4153      	adcs	r3, r2
100021c8:	6802      	ldr	r2, [r0, #0]
100021ca:	4013      	ands	r3, r2
100021cc:	6003      	str	r3, [r0, #0]
100021ce:	9b03      	ldr	r3, [sp, #12]
100021d0:	1859      	adds	r1, r3, r1
100021d2:	e7c4      	b.n	1000215e <execute_traceback+0x18e>
100021d4:	2590      	movs	r5, #144	; 0x90
100021d6:	01ed      	lsls	r5, r5, #7
100021d8:	42a8      	cmp	r0, r5
100021da:	d113      	bne.n	10002204 <execute_traceback+0x234>
100021dc:	2003      	movs	r0, #3
100021de:	4381      	bics	r1, r0
100021e0:	b2d8      	uxtb	r0, r3
100021e2:	055b      	lsls	r3, r3, #21
100021e4:	3104      	adds	r1, #4
100021e6:	0080      	lsls	r0, r0, #2
100021e8:	0f5b      	lsrs	r3, r3, #29
100021ea:	00db      	lsls	r3, r3, #3
100021ec:	1809      	adds	r1, r1, r0
100021ee:	18d2      	adds	r2, r2, r3
100021f0:	2900      	cmp	r1, #0
100021f2:	d005      	beq.n	10002200 <execute_traceback+0x230>
100021f4:	6809      	ldr	r1, [r1, #0]
100021f6:	6011      	str	r1, [r2, #0]
100021f8:	9a03      	ldr	r2, [sp, #12]
100021fa:	18d3      	adds	r3, r2, r3
100021fc:	2280      	movs	r2, #128	; 0x80
100021fe:	e772      	b.n	100020e6 <execute_traceback+0x116>
10002200:	7111      	strb	r1, [r2, #4]
10002202:	e736      	b.n	10002072 <execute_traceback+0xa2>
10002204:	27c0      	movs	r7, #192	; 0xc0
10002206:	4d34      	ldr	r5, [pc, #208]	; (100022d8 <execute_traceback+0x308>)
10002208:	01ff      	lsls	r7, r7, #7
1000220a:	401d      	ands	r5, r3
1000220c:	42bd      	cmp	r5, r7
1000220e:	d117      	bne.n	10002240 <execute_traceback+0x270>
10002210:	0519      	lsls	r1, r3, #20
10002212:	d400      	bmi.n	10002216 <execute_traceback+0x246>
10002214:	e72d      	b.n	10002072 <execute_traceback+0xa2>
10002216:	2007      	movs	r0, #7
10002218:	2503      	movs	r5, #3
1000221a:	08d9      	lsrs	r1, r3, #3
1000221c:	4001      	ands	r1, r0
1000221e:	00c9      	lsls	r1, r1, #3
10002220:	588e      	ldr	r6, [r1, r2]
10002222:	0559      	lsls	r1, r3, #21
10002224:	4003      	ands	r3, r0
10002226:	40ab      	lsls	r3, r5
10002228:	0ec9      	lsrs	r1, r1, #27
1000222a:	43ae      	bics	r6, r5
1000222c:	0089      	lsls	r1, r1, #2
1000222e:	1871      	adds	r1, r6, r1
10002230:	18d2      	adds	r2, r2, r3
10002232:	2900      	cmp	r1, #0
10002234:	d002      	beq.n	1000223c <execute_traceback+0x26c>
10002236:	7910      	ldrb	r0, [r2, #4]
10002238:	2800      	cmp	r0, #0
1000223a:	d1db      	bne.n	100021f4 <execute_traceback+0x224>
1000223c:	2300      	movs	r3, #0
1000223e:	e717      	b.n	10002070 <execute_traceback+0xa0>
10002240:	25ff      	movs	r5, #255	; 0xff
10002242:	001f      	movs	r7, r3
10002244:	43af      	bics	r7, r5
10002246:	25b0      	movs	r5, #176	; 0xb0
10002248:	022d      	lsls	r5, r5, #8
1000224a:	42af      	cmp	r7, r5
1000224c:	d111      	bne.n	10002272 <execute_traceback+0x2a2>
1000224e:	21fe      	movs	r1, #254	; 0xfe
10002250:	0015      	movs	r5, r2
10002252:	2004      	movs	r0, #4
10002254:	0049      	lsls	r1, r1, #1
10002256:	009e      	lsls	r6, r3, #2
10002258:	3568      	adds	r5, #104	; 0x68
1000225a:	400e      	ands	r6, r1
1000225c:	7929      	ldrb	r1, [r5, #4]
1000225e:	4308      	orrs	r0, r1
10002260:	6e91      	ldr	r1, [r2, #104]	; 0x68
10002262:	061b      	lsls	r3, r3, #24
10002264:	d403      	bmi.n	1000226e <execute_traceback+0x29e>
10002266:	1871      	adds	r1, r6, r1
10002268:	6691      	str	r1, [r2, #104]	; 0x68
1000226a:	7128      	strb	r0, [r5, #4]
1000226c:	e701      	b.n	10002072 <execute_traceback+0xa2>
1000226e:	1b89      	subs	r1, r1, r6
10002270:	e7fa      	b.n	10002268 <execute_traceback+0x298>
10002272:	2588      	movs	r5, #136	; 0x88
10002274:	01ed      	lsls	r5, r5, #7
10002276:	42ae      	cmp	r6, r5
10002278:	d134      	bne.n	100022e4 <execute_traceback+0x314>
1000227a:	0599      	lsls	r1, r3, #22
1000227c:	0f89      	lsrs	r1, r1, #30
1000227e:	2903      	cmp	r1, #3
10002280:	d000      	beq.n	10002284 <execute_traceback+0x2b4>
10002282:	e6f6      	b.n	10002072 <execute_traceback+0xa2>
10002284:	0619      	lsls	r1, r3, #24
10002286:	d507      	bpl.n	10002298 <execute_traceback+0x2c8>
10002288:	0013      	movs	r3, r2
1000228a:	2100      	movs	r1, #0
1000228c:	3370      	adds	r3, #112	; 0x70
1000228e:	7119      	strb	r1, [r3, #4]
10002290:	0010      	movs	r0, r2
10002292:	4b10      	ldr	r3, [pc, #64]	; (100022d4 <execute_traceback+0x304>)
10002294:	4798      	blx	r3
10002296:	e6ec      	b.n	10002072 <execute_traceback+0xa2>
10002298:	2078      	movs	r0, #120	; 0x78
1000229a:	4003      	ands	r3, r0
1000229c:	18d3      	adds	r3, r2, r3
1000229e:	6819      	ldr	r1, [r3, #0]
100022a0:	4221      	tst	r1, r4
100022a2:	d105      	bne.n	100022b0 <execute_traceback+0x2e0>
100022a4:	2103      	movs	r1, #3
100022a6:	480d      	ldr	r0, [pc, #52]	; (100022dc <execute_traceback+0x30c>)
100022a8:	4b0d      	ldr	r3, [pc, #52]	; (100022e0 <execute_traceback+0x310>)
100022aa:	4798      	blx	r3
100022ac:	b031      	add	sp, #196	; 0xc4
100022ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
100022b0:	791b      	ldrb	r3, [r3, #4]
100022b2:	2b02      	cmp	r3, #2
100022b4:	d002      	beq.n	100022bc <execute_traceback+0x2ec>
100022b6:	2b80      	cmp	r3, #128	; 0x80
100022b8:	d000      	beq.n	100022bc <execute_traceback+0x2ec>
100022ba:	e07f      	b.n	100023bc <execute_traceback+0x3ec>
100022bc:	3902      	subs	r1, #2
100022be:	6791      	str	r1, [r2, #120]	; 0x78
100022c0:	9b04      	ldr	r3, [sp, #16]
100022c2:	a803      	add	r0, sp, #12
100022c4:	4798      	blx	r3
100022c6:	1e01      	subs	r1, r0, #0
100022c8:	d100      	bne.n	100022cc <execute_traceback+0x2fc>
100022ca:	e6d2      	b.n	10002072 <execute_traceback+0xa2>
100022cc:	e7eb      	b.n	100022a6 <execute_traceback+0x2d6>
100022ce:	46c0      	nop			; (mov r8, r8)
100022d0:	10001f79 	.word	0x10001f79
100022d4:	10001f65 	.word	0x10001f65
100022d8:	fffff200 	.word	0xfffff200
100022dc:	100057f0 	.word	0x100057f0
100022e0:	0002fccd 	.word	0x0002fccd
100022e4:	26b4      	movs	r6, #180	; 0xb4
100022e6:	4d37      	ldr	r5, [pc, #220]	; (100023c4 <execute_traceback+0x3f4>)
100022e8:	0236      	lsls	r6, r6, #8
100022ea:	401d      	ands	r5, r3
100022ec:	42b5      	cmp	r5, r6
100022ee:	d145      	bne.n	1000237c <execute_traceback+0x3ac>
100022f0:	2080      	movs	r0, #128	; 0x80
100022f2:	0040      	lsls	r0, r0, #1
100022f4:	4018      	ands	r0, r3
100022f6:	b2dd      	uxtb	r5, r3
100022f8:	051b      	lsls	r3, r3, #20
100022fa:	d52d      	bpl.n	10002358 <execute_traceback+0x388>
100022fc:	2200      	movs	r2, #0
100022fe:	2702      	movs	r7, #2
10002300:	002b      	movs	r3, r5
10002302:	4113      	asrs	r3, r2
10002304:	4223      	tst	r3, r4
10002306:	d00a      	beq.n	1000231e <execute_traceback+0x34e>
10002308:	9903      	ldr	r1, [sp, #12]
1000230a:	00d3      	lsls	r3, r2, #3
1000230c:	6e8e      	ldr	r6, [r1, #104]	; 0x68
1000230e:	6836      	ldr	r6, [r6, #0]
10002310:	50ce      	str	r6, [r1, r3]
10002312:	9903      	ldr	r1, [sp, #12]
10002314:	18cb      	adds	r3, r1, r3
10002316:	711f      	strb	r7, [r3, #4]
10002318:	6e8b      	ldr	r3, [r1, #104]	; 0x68
1000231a:	3304      	adds	r3, #4
1000231c:	668b      	str	r3, [r1, #104]	; 0x68
1000231e:	3201      	adds	r2, #1
10002320:	2a08      	cmp	r2, #8
10002322:	d1ed      	bne.n	10002300 <execute_traceback+0x330>
10002324:	2800      	cmp	r0, #0
10002326:	d100      	bne.n	1000232a <execute_traceback+0x35a>
10002328:	e6a3      	b.n	10002072 <execute_traceback+0xa2>
1000232a:	9b03      	ldr	r3, [sp, #12]
1000232c:	2502      	movs	r5, #2
1000232e:	0018      	movs	r0, r3
10002330:	6e9a      	ldr	r2, [r3, #104]	; 0x68
10002332:	3078      	adds	r0, #120	; 0x78
10002334:	6811      	ldr	r1, [r2, #0]
10002336:	6799      	str	r1, [r3, #120]	; 0x78
10002338:	7105      	strb	r5, [r0, #4]
1000233a:	4221      	tst	r1, r4
1000233c:	d0b2      	beq.n	100022a4 <execute_traceback+0x2d4>
1000233e:	3204      	adds	r2, #4
10002340:	669a      	str	r2, [r3, #104]	; 0x68
10002342:	9b04      	ldr	r3, [sp, #16]
10002344:	a803      	add	r0, sp, #12
10002346:	9301      	str	r3, [sp, #4]
10002348:	4798      	blx	r3
1000234a:	1e01      	subs	r1, r0, #0
1000234c:	d1ab      	bne.n	100022a6 <execute_traceback+0x2d6>
1000234e:	9a03      	ldr	r2, [sp, #12]
10002350:	6f93      	ldr	r3, [r2, #120]	; 0x78
10002352:	3b02      	subs	r3, #2
10002354:	6793      	str	r3, [r2, #120]	; 0x78
10002356:	e68c      	b.n	10002072 <execute_traceback+0xa2>
10002358:	2800      	cmp	r0, #0
1000235a:	d004      	beq.n	10002366 <execute_traceback+0x396>
1000235c:	4221      	tst	r1, r4
1000235e:	d0a1      	beq.n	100022a4 <execute_traceback+0x2d4>
10002360:	6e93      	ldr	r3, [r2, #104]	; 0x68
10002362:	3b04      	subs	r3, #4
10002364:	6693      	str	r3, [r2, #104]	; 0x68
10002366:	2307      	movs	r3, #7
10002368:	0029      	movs	r1, r5
1000236a:	4119      	asrs	r1, r3
1000236c:	4221      	tst	r1, r4
1000236e:	d002      	beq.n	10002376 <execute_traceback+0x3a6>
10002370:	6e91      	ldr	r1, [r2, #104]	; 0x68
10002372:	3904      	subs	r1, #4
10002374:	6691      	str	r1, [r2, #104]	; 0x68
10002376:	3b01      	subs	r3, #1
10002378:	d2f6      	bcs.n	10002368 <execute_traceback+0x398>
1000237a:	e67a      	b.n	10002072 <execute_traceback+0xa2>
1000237c:	25e0      	movs	r5, #224	; 0xe0
1000237e:	022d      	lsls	r5, r5, #8
10002380:	42a8      	cmp	r0, r5
10002382:	d105      	bne.n	10002390 <execute_traceback+0x3c0>
10002384:	055b      	lsls	r3, r3, #21
10002386:	151b      	asrs	r3, r3, #20
10002388:	3102      	adds	r1, #2
1000238a:	1859      	adds	r1, r3, r1
1000238c:	6791      	str	r1, [r2, #120]	; 0x78
1000238e:	e670      	b.n	10002072 <execute_traceback+0xa2>
10002390:	21be      	movs	r1, #190	; 0xbe
10002392:	0209      	lsls	r1, r1, #8
10002394:	428f      	cmp	r7, r1
10002396:	d100      	bne.n	1000239a <execute_traceback+0x3ca>
10002398:	e66b      	b.n	10002072 <execute_traceback+0xa2>
1000239a:	490b      	ldr	r1, [pc, #44]	; (100023c8 <execute_traceback+0x3f8>)
1000239c:	0b1b      	lsrs	r3, r3, #12
1000239e:	2b0f      	cmp	r3, #15
100023a0:	d109      	bne.n	100023b6 <execute_traceback+0x3e6>
100023a2:	0013      	movs	r3, r2
100023a4:	2000      	movs	r0, #0
100023a6:	3370      	adds	r3, #112	; 0x70
100023a8:	7118      	strb	r0, [r3, #4]
100023aa:	0010      	movs	r0, r2
100023ac:	4788      	blx	r1
100023ae:	9a03      	ldr	r2, [sp, #12]
100023b0:	6f93      	ldr	r3, [r2, #120]	; 0x78
100023b2:	3302      	adds	r3, #2
100023b4:	e7ce      	b.n	10002354 <execute_traceback+0x384>
100023b6:	0010      	movs	r0, r2
100023b8:	4788      	blx	r1
100023ba:	e65a      	b.n	10002072 <execute_traceback+0xa2>
100023bc:	2102      	movs	r1, #2
100023be:	e772      	b.n	100022a6 <execute_traceback+0x2d6>
100023c0:	2106      	movs	r1, #6
100023c2:	e770      	b.n	100022a6 <execute_traceback+0x2d6>
100023c4:	fffff600 	.word	0xfffff600
100023c8:	10001f65 	.word	0x10001f65

100023cc <atm_adv_cb>:
100023cc:	b510      	push	{r4, lr}
100023ce:	4b02      	ldr	r3, [pc, #8]	; (100023d8 <atm_adv_cb+0xc>)
100023d0:	681b      	ldr	r3, [r3, #0]
100023d2:	4798      	blx	r3
100023d4:	bd10      	pop	{r4, pc}
100023d6:	46c0      	nop			; (mov r8, r8)
100023d8:	20014d98 	.word	0x20014d98

100023dc <atm_adv_find_by_actidx>:
100023dc:	4a05      	ldr	r2, [pc, #20]	; (100023f4 <atm_adv_find_by_actidx+0x18>)
100023de:	0003      	movs	r3, r0
100023e0:	6810      	ldr	r0, [r2, #0]
100023e2:	2800      	cmp	r0, #0
100023e4:	d100      	bne.n	100023e8 <atm_adv_find_by_actidx+0xc>
100023e6:	4770      	bx	lr
100023e8:	7902      	ldrb	r2, [r0, #4]
100023ea:	429a      	cmp	r2, r3
100023ec:	d0fb      	beq.n	100023e6 <atm_adv_find_by_actidx+0xa>
100023ee:	6800      	ldr	r0, [r0, #0]
100023f0:	e7f7      	b.n	100023e2 <atm_adv_find_by_actidx+0x6>
100023f2:	46c0      	nop			; (mov r8, r8)
100023f4:	20014d9c 	.word	0x20014d9c

100023f8 <atm_gapm_adv_print_status>:
100023f8:	b510      	push	{r4, lr}
100023fa:	0002      	movs	r2, r0
100023fc:	000b      	movs	r3, r1
100023fe:	4c02      	ldr	r4, [pc, #8]	; (10002408 <atm_gapm_adv_print_status+0x10>)
10002400:	4902      	ldr	r1, [pc, #8]	; (1000240c <atm_gapm_adv_print_status+0x14>)
10002402:	4803      	ldr	r0, [pc, #12]	; (10002410 <atm_gapm_adv_print_status+0x18>)
10002404:	47a0      	blx	r4
10002406:	bd10      	pop	{r4, pc}
10002408:	000066b1 	.word	0x000066b1
1000240c:	10005b50 	.word	0x10005b50
10002410:	10005809 	.word	0x10005809

10002414 <atm_adv_sanity_err_return>:
10002414:	b51f      	push	{r0, r1, r2, r3, r4, lr}
10002416:	88c3      	ldrh	r3, [r0, #6]
10002418:	7902      	ldrb	r2, [r0, #4]
1000241a:	9102      	str	r1, [sp, #8]
1000241c:	7941      	ldrb	r1, [r0, #5]
1000241e:	4c07      	ldr	r4, [pc, #28]	; (1000243c <atm_adv_sanity_err_return+0x28>)
10002420:	9101      	str	r1, [sp, #4]
10002422:	7f41      	ldrb	r1, [r0, #29]
10002424:	4806      	ldr	r0, [pc, #24]	; (10002440 <atm_adv_sanity_err_return+0x2c>)
10002426:	9100      	str	r1, [sp, #0]
10002428:	4906      	ldr	r1, [pc, #24]	; (10002444 <atm_adv_sanity_err_return+0x30>)
1000242a:	47a0      	blx	r4
1000242c:	22d4      	movs	r2, #212	; 0xd4
1000242e:	4906      	ldr	r1, [pc, #24]	; (10002448 <atm_adv_sanity_err_return+0x34>)
10002430:	4806      	ldr	r0, [pc, #24]	; (1000244c <atm_adv_sanity_err_return+0x38>)
10002432:	4b07      	ldr	r3, [pc, #28]	; (10002450 <atm_adv_sanity_err_return+0x3c>)
10002434:	4798      	blx	r3
10002436:	4807      	ldr	r0, [pc, #28]	; (10002454 <atm_adv_sanity_err_return+0x40>)
10002438:	b004      	add	sp, #16
1000243a:	bd10      	pop	{r4, pc}
1000243c:	000066b1 	.word	0x000066b1
10002440:	10005833 	.word	0x10005833
10002444:	10005b50 	.word	0x10005b50
10002448:	10005892 	.word	0x10005892
1000244c:	10004cec 	.word	0x10004cec
10002450:	00006609 	.word	0x00006609
10002454:	00000401 	.word	0x00000401

10002458 <atm_gapm_cmp_evt_set_adv_data_cmp>:
10002458:	b570      	push	{r4, r5, r6, lr}
1000245a:	000c      	movs	r4, r1
1000245c:	8841      	ldrh	r1, [r0, #2]
1000245e:	0005      	movs	r5, r0
10002460:	2900      	cmp	r1, #0
10002462:	d00d      	beq.n	10002480 <atm_gapm_cmp_evt_set_adv_data_cmp+0x28>
10002464:	7920      	ldrb	r0, [r4, #4]
10002466:	4b0c      	ldr	r3, [pc, #48]	; (10002498 <atm_gapm_cmp_evt_set_adv_data_cmp+0x40>)
10002468:	4798      	blx	r3
1000246a:	480c      	ldr	r0, [pc, #48]	; (1000249c <atm_gapm_cmp_evt_set_adv_data_cmp+0x44>)
1000246c:	2283      	movs	r2, #131	; 0x83
1000246e:	490c      	ldr	r1, [pc, #48]	; (100024a0 <atm_gapm_cmp_evt_set_adv_data_cmp+0x48>)
10002470:	4b0c      	ldr	r3, [pc, #48]	; (100024a4 <atm_gapm_cmp_evt_set_adv_data_cmp+0x4c>)
10002472:	4798      	blx	r3
10002474:	2003      	movs	r0, #3
10002476:	886a      	ldrh	r2, [r5, #2]
10002478:	7921      	ldrb	r1, [r4, #4]
1000247a:	4b0b      	ldr	r3, [pc, #44]	; (100024a8 <atm_gapm_cmp_evt_set_adv_data_cmp+0x50>)
1000247c:	4798      	blx	r3
1000247e:	bd70      	pop	{r4, r5, r6, pc}
10002480:	7a23      	ldrb	r3, [r4, #8]
10002482:	2b07      	cmp	r3, #7
10002484:	d103      	bne.n	1000248e <atm_gapm_cmp_evt_set_adv_data_cmp+0x36>
10002486:	2307      	movs	r3, #7
10002488:	71e3      	strb	r3, [r4, #7]
1000248a:	2004      	movs	r0, #4
1000248c:	e7f3      	b.n	10002476 <atm_gapm_cmp_evt_set_adv_data_cmp+0x1e>
1000248e:	2b09      	cmp	r3, #9
10002490:	d0fa      	beq.n	10002488 <atm_gapm_cmp_evt_set_adv_data_cmp+0x30>
10002492:	2b02      	cmp	r3, #2
10002494:	d1f9      	bne.n	1000248a <atm_gapm_cmp_evt_set_adv_data_cmp+0x32>
10002496:	e7f6      	b.n	10002486 <atm_gapm_cmp_evt_set_adv_data_cmp+0x2e>
10002498:	100023f9 	.word	0x100023f9
1000249c:	10004cec 	.word	0x10004cec
100024a0:	10005892 	.word	0x10005892
100024a4:	00006609 	.word	0x00006609
100024a8:	100023cd 	.word	0x100023cd

100024ac <atm_gapm_cmp_evt_adv_start_cfm>:
100024ac:	b570      	push	{r4, r5, r6, lr}
100024ae:	000c      	movs	r4, r1
100024b0:	8841      	ldrh	r1, [r0, #2]
100024b2:	0005      	movs	r5, r0
100024b4:	7922      	ldrb	r2, [r4, #4]
100024b6:	2900      	cmp	r1, #0
100024b8:	d00d      	beq.n	100024d6 <atm_gapm_cmp_evt_adv_start_cfm+0x2a>
100024ba:	0010      	movs	r0, r2
100024bc:	4b09      	ldr	r3, [pc, #36]	; (100024e4 <atm_gapm_cmp_evt_adv_start_cfm+0x38>)
100024be:	4798      	blx	r3
100024c0:	225d      	movs	r2, #93	; 0x5d
100024c2:	4909      	ldr	r1, [pc, #36]	; (100024e8 <atm_gapm_cmp_evt_adv_start_cfm+0x3c>)
100024c4:	4809      	ldr	r0, [pc, #36]	; (100024ec <atm_gapm_cmp_evt_adv_start_cfm+0x40>)
100024c6:	4b0a      	ldr	r3, [pc, #40]	; (100024f0 <atm_gapm_cmp_evt_adv_start_cfm+0x44>)
100024c8:	4798      	blx	r3
100024ca:	886a      	ldrh	r2, [r5, #2]
100024cc:	7921      	ldrb	r1, [r4, #4]
100024ce:	79e0      	ldrb	r0, [r4, #7]
100024d0:	4b08      	ldr	r3, [pc, #32]	; (100024f4 <atm_gapm_cmp_evt_adv_start_cfm+0x48>)
100024d2:	4798      	blx	r3
100024d4:	bd70      	pop	{r4, r5, r6, pc}
100024d6:	4b08      	ldr	r3, [pc, #32]	; (100024f8 <atm_gapm_cmp_evt_adv_start_cfm+0x4c>)
100024d8:	4908      	ldr	r1, [pc, #32]	; (100024fc <atm_gapm_cmp_evt_adv_start_cfm+0x50>)
100024da:	4809      	ldr	r0, [pc, #36]	; (10002500 <atm_gapm_cmp_evt_adv_start_cfm+0x54>)
100024dc:	4798      	blx	r3
100024de:	2309      	movs	r3, #9
100024e0:	71e3      	strb	r3, [r4, #7]
100024e2:	e7f2      	b.n	100024ca <atm_gapm_cmp_evt_adv_start_cfm+0x1e>
100024e4:	100023f9 	.word	0x100023f9
100024e8:	10005892 	.word	0x10005892
100024ec:	10004cec 	.word	0x10004cec
100024f0:	00006609 	.word	0x00006609
100024f4:	100023cd 	.word	0x100023cd
100024f8:	000066b1 	.word	0x000066b1
100024fc:	10005b50 	.word	0x10005b50
10002500:	1000589c 	.word	0x1000589c

10002504 <atm_gapm_cmp_evt_create_adv>:
10002504:	b570      	push	{r4, r5, r6, lr}
10002506:	7902      	ldrb	r2, [r0, #4]
10002508:	000c      	movs	r4, r1
1000250a:	710a      	strb	r2, [r1, #4]
1000250c:	8841      	ldrh	r1, [r0, #2]
1000250e:	0005      	movs	r5, r0
10002510:	2900      	cmp	r1, #0
10002512:	d013      	beq.n	1000253c <atm_gapm_cmp_evt_create_adv+0x38>
10002514:	0010      	movs	r0, r2
10002516:	4b0d      	ldr	r3, [pc, #52]	; (1000254c <atm_gapm_cmp_evt_create_adv+0x48>)
10002518:	4798      	blx	r3
1000251a:	2298      	movs	r2, #152	; 0x98
1000251c:	490c      	ldr	r1, [pc, #48]	; (10002550 <atm_gapm_cmp_evt_create_adv+0x4c>)
1000251e:	480d      	ldr	r0, [pc, #52]	; (10002554 <atm_gapm_cmp_evt_create_adv+0x50>)
10002520:	4b0d      	ldr	r3, [pc, #52]	; (10002558 <atm_gapm_cmp_evt_create_adv+0x54>)
10002522:	4798      	blx	r3
10002524:	4b0d      	ldr	r3, [pc, #52]	; (1000255c <atm_gapm_cmp_evt_create_adv+0x58>)
10002526:	886a      	ldrh	r2, [r5, #2]
10002528:	7921      	ldrb	r1, [r4, #4]
1000252a:	79e0      	ldrb	r0, [r4, #7]
1000252c:	4798      	blx	r3
1000252e:	886b      	ldrh	r3, [r5, #2]
10002530:	2b00      	cmp	r3, #0
10002532:	d002      	beq.n	1000253a <atm_gapm_cmp_evt_create_adv+0x36>
10002534:	0020      	movs	r0, r4
10002536:	4b0a      	ldr	r3, [pc, #40]	; (10002560 <atm_gapm_cmp_evt_create_adv+0x5c>)
10002538:	4798      	blx	r3
1000253a:	bd70      	pop	{r4, r5, r6, pc}
1000253c:	4b09      	ldr	r3, [pc, #36]	; (10002564 <atm_gapm_cmp_evt_create_adv+0x60>)
1000253e:	490a      	ldr	r1, [pc, #40]	; (10002568 <atm_gapm_cmp_evt_create_adv+0x64>)
10002540:	480a      	ldr	r0, [pc, #40]	; (1000256c <atm_gapm_cmp_evt_create_adv+0x68>)
10002542:	4798      	blx	r3
10002544:	2302      	movs	r3, #2
10002546:	71e3      	strb	r3, [r4, #7]
10002548:	e7ec      	b.n	10002524 <atm_gapm_cmp_evt_create_adv+0x20>
1000254a:	46c0      	nop			; (mov r8, r8)
1000254c:	100023f9 	.word	0x100023f9
10002550:	10005892 	.word	0x10005892
10002554:	10004cec 	.word	0x10004cec
10002558:	00006609 	.word	0x00006609
1000255c:	100023cd 	.word	0x100023cd
10002560:	000014ed 	.word	0x000014ed
10002564:	000066b1 	.word	0x000066b1
10002568:	10005b50 	.word	0x10005b50
1000256c:	100058bd 	.word	0x100058bd

10002570 <atm_gapm_cmp_evt_delete_adv>:
10002570:	b570      	push	{r4, r5, r6, lr}
10002572:	000c      	movs	r4, r1
10002574:	8841      	ldrh	r1, [r0, #2]
10002576:	0005      	movs	r5, r0
10002578:	2900      	cmp	r1, #0
1000257a:	d007      	beq.n	1000258c <atm_gapm_cmp_evt_delete_adv+0x1c>
1000257c:	7920      	ldrb	r0, [r4, #4]
1000257e:	4b0a      	ldr	r3, [pc, #40]	; (100025a8 <atm_gapm_cmp_evt_delete_adv+0x38>)
10002580:	4798      	blx	r3
10002582:	22ab      	movs	r2, #171	; 0xab
10002584:	4909      	ldr	r1, [pc, #36]	; (100025ac <atm_gapm_cmp_evt_delete_adv+0x3c>)
10002586:	480a      	ldr	r0, [pc, #40]	; (100025b0 <atm_gapm_cmp_evt_delete_adv+0x40>)
10002588:	4b0a      	ldr	r3, [pc, #40]	; (100025b4 <atm_gapm_cmp_evt_delete_adv+0x44>)
1000258a:	4798      	blx	r3
1000258c:	0021      	movs	r1, r4
1000258e:	4b0a      	ldr	r3, [pc, #40]	; (100025b8 <atm_gapm_cmp_evt_delete_adv+0x48>)
10002590:	480a      	ldr	r0, [pc, #40]	; (100025bc <atm_gapm_cmp_evt_delete_adv+0x4c>)
10002592:	4798      	blx	r3
10002594:	200c      	movs	r0, #12
10002596:	71e0      	strb	r0, [r4, #7]
10002598:	886a      	ldrh	r2, [r5, #2]
1000259a:	7921      	ldrb	r1, [r4, #4]
1000259c:	4b08      	ldr	r3, [pc, #32]	; (100025c0 <atm_gapm_cmp_evt_delete_adv+0x50>)
1000259e:	4798      	blx	r3
100025a0:	0020      	movs	r0, r4
100025a2:	4b08      	ldr	r3, [pc, #32]	; (100025c4 <atm_gapm_cmp_evt_delete_adv+0x54>)
100025a4:	4798      	blx	r3
100025a6:	bd70      	pop	{r4, r5, r6, pc}
100025a8:	100023f9 	.word	0x100023f9
100025ac:	10005892 	.word	0x10005892
100025b0:	10004cec 	.word	0x10004cec
100025b4:	00006609 	.word	0x00006609
100025b8:	00002737 	.word	0x00002737
100025bc:	20014d9c 	.word	0x20014d9c
100025c0:	100023cd 	.word	0x100023cd
100025c4:	000014ed 	.word	0x000014ed

100025c8 <atm_adv_reg>:
100025c8:	b570      	push	{r4, r5, r6, lr}
100025ca:	4d05      	ldr	r5, [pc, #20]	; (100025e0 <atm_adv_reg+0x18>)
100025cc:	0004      	movs	r4, r0
100025ce:	682b      	ldr	r3, [r5, #0]
100025d0:	2b00      	cmp	r3, #0
100025d2:	d102      	bne.n	100025da <atm_adv_reg+0x12>
100025d4:	4803      	ldr	r0, [pc, #12]	; (100025e4 <atm_adv_reg+0x1c>)
100025d6:	4b04      	ldr	r3, [pc, #16]	; (100025e8 <atm_adv_reg+0x20>)
100025d8:	4798      	blx	r3
100025da:	602c      	str	r4, [r5, #0]
100025dc:	bd70      	pop	{r4, r5, r6, pc}
100025de:	46c0      	nop			; (mov r8, r8)
100025e0:	20014d98 	.word	0x20014d98
100025e4:	20014d9c 	.word	0x20014d9c
100025e8:	00002657 	.word	0x00002657

100025ec <atm_adv_create>:
100025ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100025ee:	4d40      	ldr	r5, [pc, #256]	; (100026f0 <atm_adv_create+0x104>)
100025f0:	0004      	movs	r4, r0
100025f2:	682b      	ldr	r3, [r5, #0]
100025f4:	2b00      	cmp	r3, #0
100025f6:	d10e      	bne.n	10002616 <atm_adv_create+0x2a>
100025f8:	4b3e      	ldr	r3, [pc, #248]	; (100026f4 <atm_adv_create+0x108>)
100025fa:	493f      	ldr	r1, [pc, #252]	; (100026f8 <atm_adv_create+0x10c>)
100025fc:	483f      	ldr	r0, [pc, #252]	; (100026fc <atm_adv_create+0x110>)
100025fe:	4798      	blx	r3
10002600:	682b      	ldr	r3, [r5, #0]
10002602:	2b00      	cmp	r3, #0
10002604:	d105      	bne.n	10002612 <atm_adv_create+0x26>
10002606:	2295      	movs	r2, #149	; 0x95
10002608:	493d      	ldr	r1, [pc, #244]	; (10002700 <atm_adv_create+0x114>)
1000260a:	483e      	ldr	r0, [pc, #248]	; (10002704 <atm_adv_create+0x118>)
1000260c:	4b3e      	ldr	r3, [pc, #248]	; (10002708 <atm_adv_create+0x11c>)
1000260e:	0052      	lsls	r2, r2, #1
10002610:	4798      	blx	r3
10002612:	4d3e      	ldr	r5, [pc, #248]	; (1000270c <atm_adv_create+0x120>)
10002614:	e04d      	b.n	100026b2 <atm_adv_create+0xc6>
10002616:	4e3e      	ldr	r6, [pc, #248]	; (10002710 <atm_adv_create+0x124>)
10002618:	4b3e      	ldr	r3, [pc, #248]	; (10002714 <atm_adv_create+0x128>)
1000261a:	0030      	movs	r0, r6
1000261c:	4798      	blx	r3
1000261e:	1e05      	subs	r5, r0, #0
10002620:	d163      	bne.n	100026ea <atm_adv_create+0xfe>
10002622:	2c00      	cmp	r4, #0
10002624:	d106      	bne.n	10002634 <atm_adv_create+0x48>
10002626:	22dd      	movs	r2, #221	; 0xdd
10002628:	4935      	ldr	r1, [pc, #212]	; (10002700 <atm_adv_create+0x114>)
1000262a:	483b      	ldr	r0, [pc, #236]	; (10002718 <atm_adv_create+0x12c>)
1000262c:	4b36      	ldr	r3, [pc, #216]	; (10002708 <atm_adv_create+0x11c>)
1000262e:	4798      	blx	r3
10002630:	4d3a      	ldr	r5, [pc, #232]	; (1000271c <atm_adv_create+0x130>)
10002632:	e03e      	b.n	100026b2 <atm_adv_create+0xc6>
10002634:	7922      	ldrb	r2, [r4, #4]
10002636:	2a01      	cmp	r2, #1
10002638:	d03d      	beq.n	100026b6 <atm_adv_create+0xca>
1000263a:	2a02      	cmp	r2, #2
1000263c:	d045      	beq.n	100026ca <atm_adv_create+0xde>
1000263e:	2a00      	cmp	r2, #0
10002640:	d148      	bne.n	100026d4 <atm_adv_create+0xe8>
10002642:	7f61      	ldrb	r1, [r4, #29]
10002644:	2901      	cmp	r1, #1
10002646:	d006      	beq.n	10002656 <atm_adv_create+0x6a>
10002648:	0001      	movs	r1, r0
1000264a:	0020      	movs	r0, r4
1000264c:	4b34      	ldr	r3, [pc, #208]	; (10002720 <atm_adv_create+0x134>)
1000264e:	4798      	blx	r3
10002650:	2800      	cmp	r0, #0
10002652:	d1ed      	bne.n	10002630 <atm_adv_create+0x44>
10002654:	e012      	b.n	1000267c <atm_adv_create+0x90>
10002656:	220c      	movs	r2, #12
10002658:	88e3      	ldrh	r3, [r4, #6]
1000265a:	4213      	tst	r3, r2
1000265c:	d00e      	beq.n	1000267c <atm_adv_create+0x90>
1000265e:	7962      	ldrb	r2, [r4, #5]
10002660:	2a00      	cmp	r2, #0
10002662:	d1f2      	bne.n	1000264a <atm_adv_create+0x5e>
10002664:	420b      	tst	r3, r1
10002666:	d101      	bne.n	1000266c <atm_adv_create+0x80>
10002668:	2102      	movs	r1, #2
1000266a:	e7ee      	b.n	1000264a <atm_adv_create+0x5e>
1000266c:	0020      	movs	r0, r4
1000266e:	492d      	ldr	r1, [pc, #180]	; (10002724 <atm_adv_create+0x138>)
10002670:	4b2d      	ldr	r3, [pc, #180]	; (10002728 <atm_adv_create+0x13c>)
10002672:	300a      	adds	r0, #10
10002674:	4798      	blx	r3
10002676:	2103      	movs	r1, #3
10002678:	2800      	cmp	r0, #0
1000267a:	d1e6      	bne.n	1000264a <atm_adv_create+0x5e>
1000267c:	2100      	movs	r1, #0
1000267e:	4b2b      	ldr	r3, [pc, #172]	; (1000272c <atm_adv_create+0x140>)
10002680:	200c      	movs	r0, #12
10002682:	4798      	blx	r3
10002684:	220c      	movs	r2, #12
10002686:	2100      	movs	r1, #0
10002688:	4b29      	ldr	r3, [pc, #164]	; (10002730 <atm_adv_create+0x144>)
1000268a:	4798      	blx	r3
1000268c:	7923      	ldrb	r3, [r4, #4]
1000268e:	0007      	movs	r7, r0
10002690:	7143      	strb	r3, [r0, #5]
10002692:	88e3      	ldrh	r3, [r4, #6]
10002694:	0001      	movs	r1, r0
10002696:	7183      	strb	r3, [r0, #6]
10002698:	23ff      	movs	r3, #255	; 0xff
1000269a:	7103      	strb	r3, [r0, #4]
1000269c:	3bfe      	subs	r3, #254	; 0xfe
1000269e:	71c3      	strb	r3, [r0, #7]
100026a0:	0030      	movs	r0, r6
100026a2:	4b24      	ldr	r3, [pc, #144]	; (10002734 <atm_adv_create+0x148>)
100026a4:	4798      	blx	r3
100026a6:	7820      	ldrb	r0, [r4, #0]
100026a8:	1d21      	adds	r1, r4, #4
100026aa:	003a      	movs	r2, r7
100026ac:	4b22      	ldr	r3, [pc, #136]	; (10002738 <atm_adv_create+0x14c>)
100026ae:	4c23      	ldr	r4, [pc, #140]	; (1000273c <atm_adv_create+0x150>)
100026b0:	47a0      	blx	r4
100026b2:	0028      	movs	r0, r5
100026b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100026b6:	7f63      	ldrb	r3, [r4, #29]
100026b8:	2104      	movs	r1, #4
100026ba:	2b02      	cmp	r3, #2
100026bc:	d0c5      	beq.n	1000264a <atm_adv_create+0x5e>
100026be:	88e3      	ldrh	r3, [r4, #6]
100026c0:	2105      	movs	r1, #5
100026c2:	43db      	mvns	r3, r3
100026c4:	079b      	lsls	r3, r3, #30
100026c6:	d1d9      	bne.n	1000267c <atm_adv_create+0x90>
100026c8:	e7bf      	b.n	1000264a <atm_adv_create+0x5e>
100026ca:	88e3      	ldrh	r3, [r4, #6]
100026cc:	079b      	lsls	r3, r3, #30
100026ce:	d0d5      	beq.n	1000267c <atm_adv_create+0x90>
100026d0:	2106      	movs	r1, #6
100026d2:	e7ba      	b.n	1000264a <atm_adv_create+0x5e>
100026d4:	4908      	ldr	r1, [pc, #32]	; (100026f8 <atm_adv_create+0x10c>)
100026d6:	4b07      	ldr	r3, [pc, #28]	; (100026f4 <atm_adv_create+0x108>)
100026d8:	4819      	ldr	r0, [pc, #100]	; (10002740 <atm_adv_create+0x154>)
100026da:	4798      	blx	r3
100026dc:	228a      	movs	r2, #138	; 0x8a
100026de:	4908      	ldr	r1, [pc, #32]	; (10002700 <atm_adv_create+0x114>)
100026e0:	480d      	ldr	r0, [pc, #52]	; (10002718 <atm_adv_create+0x12c>)
100026e2:	4b09      	ldr	r3, [pc, #36]	; (10002708 <atm_adv_create+0x11c>)
100026e4:	0052      	lsls	r2, r2, #1
100026e6:	4798      	blx	r3
100026e8:	e7c8      	b.n	1000267c <atm_adv_create+0x90>
100026ea:	4d16      	ldr	r5, [pc, #88]	; (10002744 <atm_adv_create+0x158>)
100026ec:	e7e1      	b.n	100026b2 <atm_adv_create+0xc6>
100026ee:	46c0      	nop			; (mov r8, r8)
100026f0:	20014d98 	.word	0x20014d98
100026f4:	000066b1 	.word	0x000066b1
100026f8:	10005b50 	.word	0x10005b50
100026fc:	1000590c 	.word	0x1000590c
10002700:	10005892 	.word	0x10005892
10002704:	10005930 	.word	0x10005930
10002708:	00006609 	.word	0x00006609
1000270c:	00000409 	.word	0x00000409
10002710:	20014d9c 	.word	0x20014d9c
10002714:	000028ab 	.word	0x000028ab
10002718:	10004cec 	.word	0x10004cec
1000271c:	00000401 	.word	0x00000401
10002720:	10002415 	.word	0x10002415
10002724:	0003eeba 	.word	0x0003eeba
10002728:	000021c5 	.word	0x000021c5
1000272c:	000013b9 	.word	0x000013b9
10002730:	00005859 	.word	0x00005859
10002734:	0000268f 	.word	0x0000268f
10002738:	10002505 	.word	0x10002505
1000273c:	10004211 	.word	0x10004211
10002740:	10005937 	.word	0x10005937
10002744:	00000404 	.word	0x00000404

10002748 <atm_adv_set_adv_data>:
10002748:	b5f0      	push	{r4, r5, r6, r7, lr}
1000274a:	4b6e      	ldr	r3, [pc, #440]	; (10002904 <atm_adv_set_adv_data+0x1bc>)
1000274c:	b08b      	sub	sp, #44	; 0x2c
1000274e:	9006      	str	r0, [sp, #24]
10002750:	9104      	str	r1, [sp, #16]
10002752:	4798      	blx	r3
10002754:	4b6c      	ldr	r3, [pc, #432]	; (10002908 <atm_adv_set_adv_data+0x1c0>)
10002756:	0007      	movs	r7, r0
10002758:	681a      	ldr	r2, [r3, #0]
1000275a:	2a00      	cmp	r2, #0
1000275c:	d004      	beq.n	10002768 <atm_adv_set_adv_data+0x20>
1000275e:	2800      	cmp	r0, #0
10002760:	d002      	beq.n	10002768 <atm_adv_set_adv_data+0x20>
10002762:	9b04      	ldr	r3, [sp, #16]
10002764:	2b00      	cmp	r3, #0
10002766:	d10f      	bne.n	10002788 <atm_adv_set_adv_data+0x40>
10002768:	003b      	movs	r3, r7
1000276a:	1e51      	subs	r1, r2, #1
1000276c:	418a      	sbcs	r2, r1
1000276e:	1e59      	subs	r1, r3, #1
10002770:	418b      	sbcs	r3, r1
10002772:	9904      	ldr	r1, [sp, #16]
10002774:	4c65      	ldr	r4, [pc, #404]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
10002776:	1e48      	subs	r0, r1, #1
10002778:	4181      	sbcs	r1, r0
1000277a:	4865      	ldr	r0, [pc, #404]	; (10002910 <atm_adv_set_adv_data+0x1c8>)
1000277c:	9100      	str	r1, [sp, #0]
1000277e:	4965      	ldr	r1, [pc, #404]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
10002780:	47a0      	blx	r4
10002782:	4865      	ldr	r0, [pc, #404]	; (10002918 <atm_adv_set_adv_data+0x1d0>)
10002784:	b00b      	add	sp, #44	; 0x2c
10002786:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002788:	79c3      	ldrb	r3, [r0, #7]
1000278a:	1e98      	subs	r0, r3, #2
1000278c:	2808      	cmp	r0, #8
1000278e:	d80a      	bhi.n	100027a6 <atm_adv_set_adv_data+0x5e>
10002790:	f002 fa66 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10002794:	07090706 	.word	0x07090706
10002798:	062b0609 	.word	0x062b0609
1000279c:	05          	.byte	0x05
1000279d:	00          	.byte	0x00
1000279e:	2307      	movs	r3, #7
100027a0:	723b      	strb	r3, [r7, #8]
100027a2:	2303      	movs	r3, #3
100027a4:	71fb      	strb	r3, [r7, #7]
100027a6:	79fb      	ldrb	r3, [r7, #7]
100027a8:	2b03      	cmp	r3, #3
100027aa:	d000      	beq.n	100027ae <atm_adv_set_adv_data+0x66>
100027ac:	e0a7      	b.n	100028fe <atm_adv_set_adv_data+0x1b6>
100027ae:	2500      	movs	r5, #0
100027b0:	4b56      	ldr	r3, [pc, #344]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
100027b2:	4958      	ldr	r1, [pc, #352]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
100027b4:	4859      	ldr	r0, [pc, #356]	; (1000291c <atm_adv_set_adv_data+0x1d4>)
100027b6:	4798      	blx	r3
100027b8:	9b04      	ldr	r3, [sp, #16]
100027ba:	881b      	ldrh	r3, [r3, #0]
100027bc:	9303      	str	r3, [sp, #12]
100027be:	9b04      	ldr	r3, [sp, #16]
100027c0:	685e      	ldr	r6, [r3, #4]
100027c2:	9b03      	ldr	r3, [sp, #12]
100027c4:	42ab      	cmp	r3, r5
100027c6:	d812      	bhi.n	100027ee <atm_adv_set_adv_data+0xa6>
100027c8:	4952      	ldr	r1, [pc, #328]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
100027ca:	4855      	ldr	r0, [pc, #340]	; (10002920 <atm_adv_set_adv_data+0x1d8>)
100027cc:	4b4f      	ldr	r3, [pc, #316]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
100027ce:	4798      	blx	r3
100027d0:	9b04      	ldr	r3, [sp, #16]
100027d2:	881a      	ldrh	r2, [r3, #0]
100027d4:	4b53      	ldr	r3, [pc, #332]	; (10002924 <atm_adv_set_adv_data+0x1dc>)
100027d6:	9700      	str	r7, [sp, #0]
100027d8:	9301      	str	r3, [sp, #4]
100027da:	9b04      	ldr	r3, [sp, #16]
100027dc:	685b      	ldr	r3, [r3, #4]
100027de:	2000      	movs	r0, #0
100027e0:	9906      	ldr	r1, [sp, #24]
100027e2:	4c51      	ldr	r4, [pc, #324]	; (10002928 <atm_adv_set_adv_data+0x1e0>)
100027e4:	47a0      	blx	r4
100027e6:	2000      	movs	r0, #0
100027e8:	e7cc      	b.n	10002784 <atm_adv_set_adv_data+0x3c>
100027ea:	2309      	movs	r3, #9
100027ec:	e7d8      	b.n	100027a0 <atm_adv_set_adv_data+0x58>
100027ee:	1973      	adds	r3, r6, r5
100027f0:	9305      	str	r3, [sp, #20]
100027f2:	5d72      	ldrb	r2, [r6, r5]
100027f4:	002b      	movs	r3, r5
100027f6:	4947      	ldr	r1, [pc, #284]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
100027f8:	484c      	ldr	r0, [pc, #304]	; (1000292c <atm_adv_set_adv_data+0x1e4>)
100027fa:	4c44      	ldr	r4, [pc, #272]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
100027fc:	47a0      	blx	r4
100027fe:	1973      	adds	r3, r6, r5
10002800:	785b      	ldrb	r3, [r3, #1]
10002802:	9307      	str	r3, [sp, #28]
10002804:	2bff      	cmp	r3, #255	; 0xff
10002806:	d13e      	bne.n	10002886 <atm_adv_set_adv_data+0x13e>
10002808:	1973      	adds	r3, r6, r5
1000280a:	789b      	ldrb	r3, [r3, #2]
1000280c:	9308      	str	r3, [sp, #32]
1000280e:	2b24      	cmp	r3, #36	; 0x24
10002810:	d139      	bne.n	10002886 <atm_adv_set_adv_data+0x13e>
10002812:	1973      	adds	r3, r6, r5
10002814:	78db      	ldrb	r3, [r3, #3]
10002816:	9309      	str	r3, [sp, #36]	; 0x24
10002818:	2b0a      	cmp	r3, #10
1000281a:	d134      	bne.n	10002886 <atm_adv_set_adv_data+0x13e>
1000281c:	466b      	mov	r3, sp
1000281e:	002a      	movs	r2, r5
10002820:	7b1c      	ldrb	r4, [r3, #12]
10002822:	493c      	ldr	r1, [pc, #240]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
10002824:	4b39      	ldr	r3, [pc, #228]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
10002826:	4842      	ldr	r0, [pc, #264]	; (10002930 <atm_adv_set_adv_data+0x1e8>)
10002828:	4798      	blx	r3
1000282a:	1973      	adds	r3, r6, r5
1000282c:	791b      	ldrb	r3, [r3, #4]
1000282e:	2b00      	cmp	r3, #0
10002830:	d008      	beq.n	10002844 <atm_adv_set_adv_data+0xfc>
10002832:	2b01      	cmp	r3, #1
10002834:	d00d      	beq.n	10002852 <atm_adv_set_adv_data+0x10a>
10002836:	231f      	movs	r3, #31
10002838:	1b1b      	subs	r3, r3, r4
1000283a:	2b06      	cmp	r3, #6
1000283c:	dc29      	bgt.n	10002892 <atm_adv_set_adv_data+0x14a>
1000283e:	4935      	ldr	r1, [pc, #212]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
10002840:	483c      	ldr	r0, [pc, #240]	; (10002934 <atm_adv_set_adv_data+0x1ec>)
10002842:	e7c3      	b.n	100027cc <atm_adv_set_adv_data+0x84>
10002844:	221f      	movs	r2, #31
10002846:	1b12      	subs	r2, r2, r4
10002848:	2a02      	cmp	r2, #2
1000284a:	dc40      	bgt.n	100028ce <atm_adv_set_adv_data+0x186>
1000284c:	4931      	ldr	r1, [pc, #196]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
1000284e:	483a      	ldr	r0, [pc, #232]	; (10002938 <atm_adv_set_adv_data+0x1f0>)
10002850:	e7bc      	b.n	100027cc <atm_adv_set_adv_data+0x84>
10002852:	1973      	adds	r3, r6, r5
10002854:	781b      	ldrb	r3, [r3, #0]
10002856:	18ed      	adds	r5, r5, r3
10002858:	b2ed      	uxtb	r5, r5
1000285a:	4b38      	ldr	r3, [pc, #224]	; (1000293c <atm_adv_set_adv_data+0x1f4>)
1000285c:	4798      	blx	r3
1000285e:	492d      	ldr	r1, [pc, #180]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
10002860:	0002      	movs	r2, r0
10002862:	5570      	strb	r0, [r6, r5]
10002864:	4b29      	ldr	r3, [pc, #164]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
10002866:	4836      	ldr	r0, [pc, #216]	; (10002940 <atm_adv_set_adv_data+0x1f8>)
10002868:	4798      	blx	r3
1000286a:	2400      	movs	r4, #0
1000286c:	9b03      	ldr	r3, [sp, #12]
1000286e:	429c      	cmp	r4, r3
10002870:	db3d      	blt.n	100028ee <atm_adv_set_adv_data+0x1a6>
10002872:	4b26      	ldr	r3, [pc, #152]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
10002874:	4927      	ldr	r1, [pc, #156]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
10002876:	4833      	ldr	r0, [pc, #204]	; (10002944 <atm_adv_set_adv_data+0x1fc>)
10002878:	4798      	blx	r3
1000287a:	4b2a      	ldr	r3, [pc, #168]	; (10002924 <atm_adv_set_adv_data+0x1dc>)
1000287c:	9a03      	ldr	r2, [sp, #12]
1000287e:	9301      	str	r3, [sp, #4]
10002880:	9700      	str	r7, [sp, #0]
10002882:	0033      	movs	r3, r6
10002884:	e7ab      	b.n	100027de <atm_adv_set_adv_data+0x96>
10002886:	9b05      	ldr	r3, [sp, #20]
10002888:	781b      	ldrb	r3, [r3, #0]
1000288a:	3301      	adds	r3, #1
1000288c:	18ed      	adds	r5, r5, r3
1000288e:	b2ed      	uxtb	r5, r5
10002890:	e797      	b.n	100027c2 <atm_adv_set_adv_data+0x7a>
10002892:	2306      	movs	r3, #6
10002894:	9a07      	ldr	r2, [sp, #28]
10002896:	5533      	strb	r3, [r6, r4]
10002898:	1c63      	adds	r3, r4, #1
1000289a:	b2db      	uxtb	r3, r3
1000289c:	54f2      	strb	r2, [r6, r3]
1000289e:	9a08      	ldr	r2, [sp, #32]
100028a0:	1ca3      	adds	r3, r4, #2
100028a2:	b2db      	uxtb	r3, r3
100028a4:	54f2      	strb	r2, [r6, r3]
100028a6:	9a09      	ldr	r2, [sp, #36]	; 0x24
100028a8:	1ce3      	adds	r3, r4, #3
100028aa:	b2db      	uxtb	r3, r3
100028ac:	54f2      	strb	r2, [r6, r3]
100028ae:	2201      	movs	r2, #1
100028b0:	1d23      	adds	r3, r4, #4
100028b2:	b2db      	uxtb	r3, r3
100028b4:	54f2      	strb	r2, [r6, r3]
100028b6:	2300      	movs	r3, #0
100028b8:	1da5      	adds	r5, r4, #6
100028ba:	3405      	adds	r4, #5
100028bc:	b2ed      	uxtb	r5, r5
100028be:	b2e4      	uxtb	r4, r4
100028c0:	5533      	strb	r3, [r6, r4]
100028c2:	5573      	strb	r3, [r6, r5]
100028c4:	9b03      	ldr	r3, [sp, #12]
100028c6:	3307      	adds	r3, #7
100028c8:	b29b      	uxth	r3, r3
100028ca:	9303      	str	r3, [sp, #12]
100028cc:	e7c5      	b.n	1000285a <atm_adv_set_adv_data+0x112>
100028ce:	9a05      	ldr	r2, [sp, #20]
100028d0:	9905      	ldr	r1, [sp, #20]
100028d2:	7812      	ldrb	r2, [r2, #0]
100028d4:	1ca5      	adds	r5, r4, #2
100028d6:	3203      	adds	r2, #3
100028d8:	700a      	strb	r2, [r1, #0]
100028da:	2201      	movs	r2, #1
100028dc:	5532      	strb	r2, [r6, r4]
100028de:	18a4      	adds	r4, r4, r2
100028e0:	b2ed      	uxtb	r5, r5
100028e2:	b2e4      	uxtb	r4, r4
100028e4:	5533      	strb	r3, [r6, r4]
100028e6:	5573      	strb	r3, [r6, r5]
100028e8:	9b03      	ldr	r3, [sp, #12]
100028ea:	3303      	adds	r3, #3
100028ec:	e7ec      	b.n	100028c8 <atm_adv_set_adv_data+0x180>
100028ee:	0022      	movs	r2, r4
100028f0:	5d33      	ldrb	r3, [r6, r4]
100028f2:	4908      	ldr	r1, [pc, #32]	; (10002914 <atm_adv_set_adv_data+0x1cc>)
100028f4:	4814      	ldr	r0, [pc, #80]	; (10002948 <atm_adv_set_adv_data+0x200>)
100028f6:	4d05      	ldr	r5, [pc, #20]	; (1000290c <atm_adv_set_adv_data+0x1c4>)
100028f8:	47a8      	blx	r5
100028fa:	3401      	adds	r4, #1
100028fc:	e7b6      	b.n	1000286c <atm_adv_set_adv_data+0x124>
100028fe:	4813      	ldr	r0, [pc, #76]	; (1000294c <atm_adv_set_adv_data+0x204>)
10002900:	e740      	b.n	10002784 <atm_adv_set_adv_data+0x3c>
10002902:	46c0      	nop			; (mov r8, r8)
10002904:	100023dd 	.word	0x100023dd
10002908:	20014d98 	.word	0x20014d98
1000290c:	000066b1 	.word	0x000066b1
10002910:	10005961 	.word	0x10005961
10002914:	10005b50 	.word	0x10005b50
10002918:	00000409 	.word	0x00000409
1000291c:	1000598d 	.word	0x1000598d
10002920:	10005a27 	.word	0x10005a27
10002924:	10002459 	.word	0x10002459
10002928:	10004281 	.word	0x10004281
1000292c:	100059c2 	.word	0x100059c2
10002930:	100059f3 	.word	0x100059f3
10002934:	10005a55 	.word	0x10005a55
10002938:	10005a8c 	.word	0x10005a8c
1000293c:	1000175d 	.word	0x1000175d
10002940:	10005ac6 	.word	0x10005ac6
10002944:	10005b1c 	.word	0x10005b1c
10002948:	10005af2 	.word	0x10005af2
1000294c:	00000404 	.word	0x00000404

10002950 <atm_adv_start>:
10002950:	b573      	push	{r0, r1, r4, r5, r6, lr}
10002952:	4b1e      	ldr	r3, [pc, #120]	; (100029cc <atm_adv_start+0x7c>)
10002954:	0006      	movs	r6, r0
10002956:	000d      	movs	r5, r1
10002958:	4798      	blx	r3
1000295a:	4b1d      	ldr	r3, [pc, #116]	; (100029d0 <atm_adv_start+0x80>)
1000295c:	0004      	movs	r4, r0
1000295e:	681b      	ldr	r3, [r3, #0]
10002960:	2b00      	cmp	r3, #0
10002962:	d030      	beq.n	100029c6 <atm_adv_start+0x76>
10002964:	2800      	cmp	r0, #0
10002966:	d02e      	beq.n	100029c6 <atm_adv_start+0x76>
10002968:	2d00      	cmp	r5, #0
1000296a:	d02c      	beq.n	100029c6 <atm_adv_start+0x76>
1000296c:	79c3      	ldrb	r3, [r0, #7]
1000296e:	001a      	movs	r2, r3
10002970:	3a08      	subs	r2, #8
10002972:	2a01      	cmp	r2, #1
10002974:	d801      	bhi.n	1000297a <atm_adv_start+0x2a>
10002976:	4817      	ldr	r0, [pc, #92]	; (100029d4 <atm_adv_start+0x84>)
10002978:	bd76      	pop	{r1, r2, r4, r5, r6, pc}
1000297a:	7982      	ldrb	r2, [r0, #6]
1000297c:	0752      	lsls	r2, r2, #29
1000297e:	d501      	bpl.n	10002984 <atm_adv_start+0x34>
10002980:	2b02      	cmp	r3, #2
10002982:	d00e      	beq.n	100029a2 <atm_adv_start+0x52>
10002984:	2b05      	cmp	r3, #5
10002986:	d003      	beq.n	10002990 <atm_adv_start+0x40>
10002988:	2b07      	cmp	r3, #7
1000298a:	d00a      	beq.n	100029a2 <atm_adv_start+0x52>
1000298c:	2b03      	cmp	r3, #3
1000298e:	d10a      	bne.n	100029a6 <atm_adv_start+0x56>
10002990:	7a23      	ldrb	r3, [r4, #8]
10002992:	2b02      	cmp	r3, #2
10002994:	d001      	beq.n	1000299a <atm_adv_start+0x4a>
10002996:	2b07      	cmp	r3, #7
10002998:	d105      	bne.n	100029a6 <atm_adv_start+0x56>
1000299a:	2309      	movs	r3, #9
1000299c:	7223      	strb	r3, [r4, #8]
1000299e:	3b01      	subs	r3, #1
100029a0:	e000      	b.n	100029a4 <atm_adv_start+0x54>
100029a2:	2308      	movs	r3, #8
100029a4:	71e3      	strb	r3, [r4, #7]
100029a6:	79e3      	ldrb	r3, [r4, #7]
100029a8:	2b08      	cmp	r3, #8
100029aa:	d1e4      	bne.n	10002976 <atm_adv_start+0x26>
100029ac:	2002      	movs	r0, #2
100029ae:	4b0a      	ldr	r3, [pc, #40]	; (100029d8 <atm_adv_start+0x88>)
100029b0:	4798      	blx	r3
100029b2:	4b0a      	ldr	r3, [pc, #40]	; (100029dc <atm_adv_start+0x8c>)
100029b4:	0030      	movs	r0, r6
100029b6:	9300      	str	r3, [sp, #0]
100029b8:	78aa      	ldrb	r2, [r5, #2]
100029ba:	0023      	movs	r3, r4
100029bc:	8829      	ldrh	r1, [r5, #0]
100029be:	4c08      	ldr	r4, [pc, #32]	; (100029e0 <atm_adv_start+0x90>)
100029c0:	47a0      	blx	r4
100029c2:	2000      	movs	r0, #0
100029c4:	e7d8      	b.n	10002978 <atm_adv_start+0x28>
100029c6:	4807      	ldr	r0, [pc, #28]	; (100029e4 <atm_adv_start+0x94>)
100029c8:	e7d6      	b.n	10002978 <atm_adv_start+0x28>
100029ca:	46c0      	nop			; (mov r8, r8)
100029cc:	100023dd 	.word	0x100023dd
100029d0:	20014d98 	.word	0x20014d98
100029d4:	00000404 	.word	0x00000404
100029d8:	10001501 	.word	0x10001501
100029dc:	100024ad 	.word	0x100024ad
100029e0:	10004309 	.word	0x10004309
100029e4:	00000409 	.word	0x00000409

100029e8 <atm_adv_delete>:
100029e8:	b510      	push	{r4, lr}
100029ea:	4b0d      	ldr	r3, [pc, #52]	; (10002a20 <atm_adv_delete+0x38>)
100029ec:	0004      	movs	r4, r0
100029ee:	4798      	blx	r3
100029f0:	4b0c      	ldr	r3, [pc, #48]	; (10002a24 <atm_adv_delete+0x3c>)
100029f2:	0001      	movs	r1, r0
100029f4:	681b      	ldr	r3, [r3, #0]
100029f6:	2b00      	cmp	r3, #0
100029f8:	d00e      	beq.n	10002a18 <atm_adv_delete+0x30>
100029fa:	2800      	cmp	r0, #0
100029fc:	d00c      	beq.n	10002a18 <atm_adv_delete+0x30>
100029fe:	79c3      	ldrb	r3, [r0, #7]
10002a00:	2b07      	cmp	r3, #7
10002a02:	d001      	beq.n	10002a08 <atm_adv_delete+0x20>
10002a04:	2b0a      	cmp	r3, #10
10002a06:	d109      	bne.n	10002a1c <atm_adv_delete+0x34>
10002a08:	230b      	movs	r3, #11
10002a0a:	0020      	movs	r0, r4
10002a0c:	71cb      	strb	r3, [r1, #7]
10002a0e:	4a06      	ldr	r2, [pc, #24]	; (10002a28 <atm_adv_delete+0x40>)
10002a10:	4b06      	ldr	r3, [pc, #24]	; (10002a2c <atm_adv_delete+0x44>)
10002a12:	4798      	blx	r3
10002a14:	2000      	movs	r0, #0
10002a16:	bd10      	pop	{r4, pc}
10002a18:	4805      	ldr	r0, [pc, #20]	; (10002a30 <atm_adv_delete+0x48>)
10002a1a:	e7fc      	b.n	10002a16 <atm_adv_delete+0x2e>
10002a1c:	4805      	ldr	r0, [pc, #20]	; (10002a34 <atm_adv_delete+0x4c>)
10002a1e:	e7fa      	b.n	10002a16 <atm_adv_delete+0x2e>
10002a20:	100023dd 	.word	0x100023dd
10002a24:	20014d98 	.word	0x20014d98
10002a28:	10002571 	.word	0x10002571
10002a2c:	100041cd 	.word	0x100041cd
10002a30:	00000409 	.word	0x00000409
10002a34:	00000404 	.word	0x00000404

10002a38 <atm_adv_stopped_ind>:
10002a38:	b570      	push	{r4, r5, r6, lr}
10002a3a:	4b0f      	ldr	r3, [pc, #60]	; (10002a78 <atm_adv_stopped_ind+0x40>)
10002a3c:	0005      	movs	r5, r0
10002a3e:	7800      	ldrb	r0, [r0, #0]
10002a40:	4798      	blx	r3
10002a42:	1e04      	subs	r4, r0, #0
10002a44:	d105      	bne.n	10002a52 <atm_adv_stopped_ind+0x1a>
10002a46:	4a0d      	ldr	r2, [pc, #52]	; (10002a7c <atm_adv_stopped_ind+0x44>)
10002a48:	490d      	ldr	r1, [pc, #52]	; (10002a80 <atm_adv_stopped_ind+0x48>)
10002a4a:	480e      	ldr	r0, [pc, #56]	; (10002a84 <atm_adv_stopped_ind+0x4c>)
10002a4c:	4b0e      	ldr	r3, [pc, #56]	; (10002a88 <atm_adv_stopped_ind+0x50>)
10002a4e:	4798      	blx	r3
10002a50:	bd70      	pop	{r4, r5, r6, pc}
10002a52:	2002      	movs	r0, #2
10002a54:	4b0d      	ldr	r3, [pc, #52]	; (10002a8c <atm_adv_stopped_ind+0x54>)
10002a56:	4798      	blx	r3
10002a58:	2307      	movs	r3, #7
10002a5a:	7223      	strb	r3, [r4, #8]
10002a5c:	71e3      	strb	r3, [r4, #7]
10002a5e:	886b      	ldrh	r3, [r5, #2]
10002a60:	7922      	ldrb	r2, [r4, #4]
10002a62:	490b      	ldr	r1, [pc, #44]	; (10002a90 <atm_adv_stopped_ind+0x58>)
10002a64:	4e0b      	ldr	r6, [pc, #44]	; (10002a94 <atm_adv_stopped_ind+0x5c>)
10002a66:	480c      	ldr	r0, [pc, #48]	; (10002a98 <atm_adv_stopped_ind+0x60>)
10002a68:	47b0      	blx	r6
10002a6a:	886a      	ldrh	r2, [r5, #2]
10002a6c:	7921      	ldrb	r1, [r4, #4]
10002a6e:	79e0      	ldrb	r0, [r4, #7]
10002a70:	4b0a      	ldr	r3, [pc, #40]	; (10002a9c <atm_adv_stopped_ind+0x64>)
10002a72:	4798      	blx	r3
10002a74:	e7ec      	b.n	10002a50 <atm_adv_stopped_ind+0x18>
10002a76:	46c0      	nop			; (mov r8, r8)
10002a78:	100023dd 	.word	0x100023dd
10002a7c:	000003ab 	.word	0x000003ab
10002a80:	10005892 	.word	0x10005892
10002a84:	10004cec 	.word	0x10004cec
10002a88:	00006609 	.word	0x00006609
10002a8c:	10001565 	.word	0x10001565
10002a90:	10005b50 	.word	0x10005b50
10002a94:	000066b1 	.word	0x000066b1
10002a98:	100058e4 	.word	0x100058e4
10002a9c:	100023cd 	.word	0x100023cd

10002aa0 <atm_adv_create_param_get>:
10002aa0:	2328      	movs	r3, #40	; 0x28
10002aa2:	4343      	muls	r3, r0
10002aa4:	4801      	ldr	r0, [pc, #4]	; (10002aac <atm_adv_create_param_get+0xc>)
10002aa6:	18c0      	adds	r0, r0, r3
10002aa8:	4770      	bx	lr
10002aaa:	46c0      	nop			; (mov r8, r8)
10002aac:	20014a88 	.word	0x20014a88

10002ab0 <atm_adv_start_param_get>:
10002ab0:	0083      	lsls	r3, r0, #2
10002ab2:	4801      	ldr	r0, [pc, #4]	; (10002ab8 <atm_adv_start_param_get+0x8>)
10002ab4:	18c0      	adds	r0, r0, r3
10002ab6:	4770      	bx	lr
10002ab8:	20014ac8 	.word	0x20014ac8

10002abc <atm_adv_advdata_param_get>:
10002abc:	4b01      	ldr	r3, [pc, #4]	; (10002ac4 <atm_adv_advdata_param_get+0x8>)
10002abe:	00c0      	lsls	r0, r0, #3
10002ac0:	58c0      	ldr	r0, [r0, r3]
10002ac2:	4770      	bx	lr
10002ac4:	20014ad8 	.word	0x20014ad8

10002ac8 <atm_asm_init_table>:
10002ac8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002aca:	0004      	movs	r4, r0
10002acc:	000e      	movs	r6, r1
10002ace:	0015      	movs	r5, r2
10002ad0:	2800      	cmp	r0, #0
10002ad2:	d005      	beq.n	10002ae0 <atm_asm_init_table+0x18>
10002ad4:	0001      	movs	r1, r0
10002ad6:	2332      	movs	r3, #50	; 0x32
10002ad8:	2001      	movs	r0, #1
10002ada:	4a05      	ldr	r2, [pc, #20]	; (10002af0 <atm_asm_init_table+0x28>)
10002adc:	4f05      	ldr	r7, [pc, #20]	; (10002af4 <atm_asm_init_table+0x2c>)
10002ade:	47b8      	blx	r7
10002ae0:	200c      	movs	r0, #12
10002ae2:	4344      	muls	r4, r0
10002ae4:	4b04      	ldr	r3, [pc, #16]	; (10002af8 <atm_asm_init_table+0x30>)
10002ae6:	50e6      	str	r6, [r4, r3]
10002ae8:	191b      	adds	r3, r3, r4
10002aea:	711d      	strb	r5, [r3, #4]
10002aec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002aee:	46c0      	nop			; (mov r8, r8)
10002af0:	10005b58 	.word	0x10005b58
10002af4:	00006641 	.word	0x00006641
10002af8:	20014db0 	.word	0x20014db0

10002afc <atm_asm_set_state_op>:
10002afc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002afe:	0007      	movs	r7, r0
10002b00:	000e      	movs	r6, r1
10002b02:	0015      	movs	r5, r2
10002b04:	2800      	cmp	r0, #0
10002b06:	d005      	beq.n	10002b14 <atm_asm_set_state_op+0x18>
10002b08:	0001      	movs	r1, r0
10002b0a:	233c      	movs	r3, #60	; 0x3c
10002b0c:	2001      	movs	r0, #1
10002b0e:	4a0b      	ldr	r2, [pc, #44]	; (10002b3c <atm_asm_set_state_op+0x40>)
10002b10:	4c0b      	ldr	r4, [pc, #44]	; (10002b40 <atm_asm_set_state_op+0x44>)
10002b12:	47a0      	blx	r4
10002b14:	220c      	movs	r2, #12
10002b16:	437a      	muls	r2, r7
10002b18:	4c0a      	ldr	r4, [pc, #40]	; (10002b44 <atm_asm_set_state_op+0x48>)
10002b1a:	18a2      	adds	r2, r4, r2
10002b1c:	6893      	ldr	r3, [r2, #8]
10002b1e:	2b00      	cmp	r3, #0
10002b20:	d003      	beq.n	10002b2a <atm_asm_set_state_op+0x2e>
10002b22:	7990      	ldrb	r0, [r2, #6]
10002b24:	0029      	movs	r1, r5
10002b26:	0032      	movs	r2, r6
10002b28:	4798      	blx	r3
10002b2a:	200c      	movs	r0, #12
10002b2c:	4378      	muls	r0, r7
10002b2e:	1820      	adds	r0, r4, r0
10002b30:	7983      	ldrb	r3, [r0, #6]
10002b32:	7145      	strb	r5, [r0, #5]
10002b34:	7186      	strb	r6, [r0, #6]
10002b36:	71c3      	strb	r3, [r0, #7]
10002b38:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002b3a:	46c0      	nop			; (mov r8, r8)
10002b3c:	10005b58 	.word	0x10005b58
10002b40:	00006641 	.word	0x00006641
10002b44:	20014db0 	.word	0x20014db0

10002b48 <atm_asm_move>:
10002b48:	b570      	push	{r4, r5, r6, lr}
10002b4a:	0005      	movs	r5, r0
10002b4c:	000e      	movs	r6, r1
10002b4e:	2800      	cmp	r0, #0
10002b50:	d005      	beq.n	10002b5e <atm_asm_move+0x16>
10002b52:	0001      	movs	r1, r0
10002b54:	2368      	movs	r3, #104	; 0x68
10002b56:	2001      	movs	r0, #1
10002b58:	4a12      	ldr	r2, [pc, #72]	; (10002ba4 <atm_asm_move+0x5c>)
10002b5a:	4c13      	ldr	r4, [pc, #76]	; (10002ba8 <atm_asm_move+0x60>)
10002b5c:	47a0      	blx	r4
10002b5e:	230c      	movs	r3, #12
10002b60:	436b      	muls	r3, r5
10002b62:	4a12      	ldr	r2, [pc, #72]	; (10002bac <atm_asm_move+0x64>)
10002b64:	589c      	ldr	r4, [r3, r2]
10002b66:	18d2      	adds	r2, r2, r3
10002b68:	7913      	ldrb	r3, [r2, #4]
10002b6a:	7990      	ldrb	r0, [r2, #6]
10002b6c:	00db      	lsls	r3, r3, #3
10002b6e:	191b      	adds	r3, r3, r4
10002b70:	429c      	cmp	r4, r3
10002b72:	d105      	bne.n	10002b80 <atm_asm_move+0x38>
10002b74:	237a      	movs	r3, #122	; 0x7a
10002b76:	0031      	movs	r1, r6
10002b78:	4a0a      	ldr	r2, [pc, #40]	; (10002ba4 <atm_asm_move+0x5c>)
10002b7a:	4c0b      	ldr	r4, [pc, #44]	; (10002ba8 <atm_asm_move+0x60>)
10002b7c:	47a0      	blx	r4
10002b7e:	e00e      	b.n	10002b9e <atm_asm_move+0x56>
10002b80:	7822      	ldrb	r2, [r4, #0]
10002b82:	4282      	cmp	r2, r0
10002b84:	d10c      	bne.n	10002ba0 <atm_asm_move+0x58>
10002b86:	7862      	ldrb	r2, [r4, #1]
10002b88:	42b2      	cmp	r2, r6
10002b8a:	d109      	bne.n	10002ba0 <atm_asm_move+0x58>
10002b8c:	4b08      	ldr	r3, [pc, #32]	; (10002bb0 <atm_asm_move+0x68>)
10002b8e:	0032      	movs	r2, r6
10002b90:	0028      	movs	r0, r5
10002b92:	78a1      	ldrb	r1, [r4, #2]
10002b94:	4798      	blx	r3
10002b96:	6863      	ldr	r3, [r4, #4]
10002b98:	2b00      	cmp	r3, #0
10002b9a:	d000      	beq.n	10002b9e <atm_asm_move+0x56>
10002b9c:	4798      	blx	r3
10002b9e:	bd70      	pop	{r4, r5, r6, pc}
10002ba0:	3408      	adds	r4, #8
10002ba2:	e7e5      	b.n	10002b70 <atm_asm_move+0x28>
10002ba4:	10005b58 	.word	0x10005b58
10002ba8:	00006641 	.word	0x00006641
10002bac:	20014db0 	.word	0x20014db0
10002bb0:	10002afd 	.word	0x10002afd

10002bb4 <atm_gapc_cmp_evt_disconnect>:
10002bb4:	b510      	push	{r4, lr}
10002bb6:	0014      	movs	r4, r2
10002bb8:	4b05      	ldr	r3, [pc, #20]	; (10002bd0 <atm_gapc_cmp_evt_disconnect+0x1c>)
10002bba:	884a      	ldrh	r2, [r1, #2]
10002bbc:	4805      	ldr	r0, [pc, #20]	; (10002bd4 <atm_gapc_cmp_evt_disconnect+0x20>)
10002bbe:	4906      	ldr	r1, [pc, #24]	; (10002bd8 <atm_gapc_cmp_evt_disconnect+0x24>)
10002bc0:	4798      	blx	r3
10002bc2:	7823      	ldrb	r3, [r4, #0]
10002bc4:	2b00      	cmp	r3, #0
10002bc6:	d001      	beq.n	10002bcc <atm_gapc_cmp_evt_disconnect+0x18>
10002bc8:	2303      	movs	r3, #3
10002bca:	7023      	strb	r3, [r4, #0]
10002bcc:	bd10      	pop	{r4, pc}
10002bce:	46c0      	nop			; (mov r8, r8)
10002bd0:	000066b1 	.word	0x000066b1
10002bd4:	10005b62 	.word	0x10005b62
10002bd8:	10005da6 	.word	0x10005da6

10002bdc <proc_gapc_ind>:
10002bdc:	b570      	push	{r4, r5, r6, lr}
10002bde:	0004      	movs	r4, r0
10002be0:	0015      	movs	r5, r2
10002be2:	2900      	cmp	r1, #0
10002be4:	d004      	beq.n	10002bf0 <proc_gapc_ind+0x14>
10002be6:	4a06      	ldr	r2, [pc, #24]	; (10002c00 <proc_gapc_ind+0x24>)
10002be8:	4906      	ldr	r1, [pc, #24]	; (10002c04 <proc_gapc_ind+0x28>)
10002bea:	4807      	ldr	r0, [pc, #28]	; (10002c08 <proc_gapc_ind+0x2c>)
10002bec:	4b07      	ldr	r3, [pc, #28]	; (10002c0c <proc_gapc_ind+0x30>)
10002bee:	4798      	blx	r3
10002bf0:	2d00      	cmp	r5, #0
10002bf2:	d104      	bne.n	10002bfe <proc_gapc_ind+0x22>
10002bf4:	0022      	movs	r2, r4
10002bf6:	4906      	ldr	r1, [pc, #24]	; (10002c10 <proc_gapc_ind+0x34>)
10002bf8:	4806      	ldr	r0, [pc, #24]	; (10002c14 <proc_gapc_ind+0x38>)
10002bfa:	4b07      	ldr	r3, [pc, #28]	; (10002c18 <proc_gapc_ind+0x3c>)
10002bfc:	4798      	blx	r3
10002bfe:	bd70      	pop	{r4, r5, r6, pc}
10002c00:	0000022e 	.word	0x0000022e
10002c04:	10005b8c 	.word	0x10005b8c
10002c08:	10004cec 	.word	0x10004cec
10002c0c:	00006609 	.word	0x00006609
10002c10:	10005da6 	.word	0x10005da6
10002c14:	10005b96 	.word	0x10005b96
10002c18:	000066b1 	.word	0x000066b1

10002c1c <atm_gapm_cmp_evt_set_device>:
10002c1c:	b570      	push	{r4, r5, r6, lr}
10002c1e:	000c      	movs	r4, r1
10002c20:	8841      	ldrh	r1, [r0, #2]
10002c22:	2900      	cmp	r1, #0
10002c24:	d005      	beq.n	10002c32 <atm_gapm_cmp_evt_set_device+0x16>
10002c26:	23e4      	movs	r3, #228	; 0xe4
10002c28:	7800      	ldrb	r0, [r0, #0]
10002c2a:	4a0f      	ldr	r2, [pc, #60]	; (10002c68 <atm_gapm_cmp_evt_set_device+0x4c>)
10002c2c:	4d0f      	ldr	r5, [pc, #60]	; (10002c6c <atm_gapm_cmp_evt_set_device+0x50>)
10002c2e:	005b      	lsls	r3, r3, #1
10002c30:	47a8      	blx	r5
10002c32:	2300      	movs	r3, #0
10002c34:	7a61      	ldrb	r1, [r4, #9]
10002c36:	72a3      	strb	r3, [r4, #10]
10002c38:	7aa3      	ldrb	r3, [r4, #10]
10002c3a:	428b      	cmp	r3, r1
10002c3c:	d20c      	bcs.n	10002c58 <atm_gapm_cmp_evt_set_device+0x3c>
10002c3e:	6860      	ldr	r0, [r4, #4]
10002c40:	009a      	lsls	r2, r3, #2
10002c42:	5812      	ldr	r2, [r2, r0]
10002c44:	6852      	ldr	r2, [r2, #4]
10002c46:	2a00      	cmp	r2, #0
10002c48:	d003      	beq.n	10002c52 <atm_gapm_cmp_evt_set_device+0x36>
10002c4a:	0021      	movs	r1, r4
10002c4c:	4808      	ldr	r0, [pc, #32]	; (10002c70 <atm_gapm_cmp_evt_set_device+0x54>)
10002c4e:	4790      	blx	r2
10002c50:	e009      	b.n	10002c66 <atm_gapm_cmp_evt_set_device+0x4a>
10002c52:	3301      	adds	r3, #1
10002c54:	72a3      	strb	r3, [r4, #10]
10002c56:	e7ef      	b.n	10002c38 <atm_gapm_cmp_evt_set_device+0x1c>
10002c58:	4b06      	ldr	r3, [pc, #24]	; (10002c74 <atm_gapm_cmp_evt_set_device+0x58>)
10002c5a:	681b      	ldr	r3, [r3, #0]
10002c5c:	691b      	ldr	r3, [r3, #16]
10002c5e:	2b00      	cmp	r3, #0
10002c60:	d001      	beq.n	10002c66 <atm_gapm_cmp_evt_set_device+0x4a>
10002c62:	2000      	movs	r0, #0
10002c64:	4798      	blx	r3
10002c66:	bd70      	pop	{r4, r5, r6, pc}
10002c68:	10005b8c 	.word	0x10005b8c
10002c6c:	00006641 	.word	0x00006641
10002c70:	10002c79 	.word	0x10002c79
10002c74:	20014dbc 	.word	0x20014dbc

10002c78 <atm_gap_mod_start_cfm>:
10002c78:	b570      	push	{r4, r5, r6, lr}
10002c7a:	8840      	ldrh	r0, [r0, #2]
10002c7c:	000c      	movs	r4, r1
10002c7e:	2800      	cmp	r0, #0
10002c80:	d005      	beq.n	10002c8e <atm_gap_mod_start_cfm+0x16>
10002c82:	2358      	movs	r3, #88	; 0x58
10002c84:	2100      	movs	r1, #0
10002c86:	4a13      	ldr	r2, [pc, #76]	; (10002cd4 <atm_gap_mod_start_cfm+0x5c>)
10002c88:	4d13      	ldr	r5, [pc, #76]	; (10002cd8 <atm_gap_mod_start_cfm+0x60>)
10002c8a:	33ff      	adds	r3, #255	; 0xff
10002c8c:	47a8      	blx	r5
10002c8e:	7aa3      	ldrb	r3, [r4, #10]
10002c90:	7a62      	ldrb	r2, [r4, #9]
10002c92:	4293      	cmp	r3, r2
10002c94:	d30a      	bcc.n	10002cac <atm_gap_mod_start_cfm+0x34>
10002c96:	7aa3      	ldrb	r3, [r4, #10]
10002c98:	429a      	cmp	r2, r3
10002c9a:	d813      	bhi.n	10002cc4 <atm_gap_mod_start_cfm+0x4c>
10002c9c:	4b0f      	ldr	r3, [pc, #60]	; (10002cdc <atm_gap_mod_start_cfm+0x64>)
10002c9e:	681b      	ldr	r3, [r3, #0]
10002ca0:	691b      	ldr	r3, [r3, #16]
10002ca2:	2b00      	cmp	r3, #0
10002ca4:	d015      	beq.n	10002cd2 <atm_gap_mod_start_cfm+0x5a>
10002ca6:	2000      	movs	r0, #0
10002ca8:	4798      	blx	r3
10002caa:	e012      	b.n	10002cd2 <atm_gap_mod_start_cfm+0x5a>
10002cac:	3301      	adds	r3, #1
10002cae:	72a3      	strb	r3, [r4, #10]
10002cb0:	7aa3      	ldrb	r3, [r4, #10]
10002cb2:	429a      	cmp	r2, r3
10002cb4:	d9ef      	bls.n	10002c96 <atm_gap_mod_start_cfm+0x1e>
10002cb6:	6860      	ldr	r0, [r4, #4]
10002cb8:	0099      	lsls	r1, r3, #2
10002cba:	5809      	ldr	r1, [r1, r0]
10002cbc:	6849      	ldr	r1, [r1, #4]
10002cbe:	2900      	cmp	r1, #0
10002cc0:	d0f4      	beq.n	10002cac <atm_gap_mod_start_cfm+0x34>
10002cc2:	e7e8      	b.n	10002c96 <atm_gap_mod_start_cfm+0x1e>
10002cc4:	6862      	ldr	r2, [r4, #4]
10002cc6:	009b      	lsls	r3, r3, #2
10002cc8:	589b      	ldr	r3, [r3, r2]
10002cca:	0021      	movs	r1, r4
10002ccc:	685b      	ldr	r3, [r3, #4]
10002cce:	4804      	ldr	r0, [pc, #16]	; (10002ce0 <atm_gap_mod_start_cfm+0x68>)
10002cd0:	4798      	blx	r3
10002cd2:	bd70      	pop	{r4, r5, r6, pc}
10002cd4:	10005b8c 	.word	0x10005b8c
10002cd8:	00006641 	.word	0x00006641
10002cdc:	20014dbc 	.word	0x20014dbc
10002ce0:	10002c79 	.word	0x10002c79

10002ce4 <atm_continue_init>:
10002ce4:	b5f0      	push	{r4, r5, r6, r7, lr}
10002ce6:	2506      	movs	r5, #6
10002ce8:	b09b      	sub	sp, #108	; 0x6c
10002cea:	6807      	ldr	r7, [r0, #0]
10002cec:	ac0d      	add	r4, sp, #52	; 0x34
10002cee:	4e2f      	ldr	r6, [pc, #188]	; (10002dac <atm_continue_init+0xc8>)
10002cf0:	2232      	movs	r2, #50	; 0x32
10002cf2:	6979      	ldr	r1, [r7, #20]
10002cf4:	9000      	str	r0, [sp, #0]
10002cf6:	0020      	movs	r0, r4
10002cf8:	47b0      	blx	r6
10002cfa:	002a      	movs	r2, r5
10002cfc:	492c      	ldr	r1, [pc, #176]	; (10002db0 <atm_continue_init+0xcc>)
10002cfe:	a803      	add	r0, sp, #12
10002d00:	47b0      	blx	r6
10002d02:	003b      	movs	r3, r7
10002d04:	3318      	adds	r3, #24
10002d06:	0018      	movs	r0, r3
10002d08:	9301      	str	r3, [sp, #4]
10002d0a:	002a      	movs	r2, r5
10002d0c:	4b29      	ldr	r3, [pc, #164]	; (10002db4 <atm_continue_init+0xd0>)
10002d0e:	a903      	add	r1, sp, #12
10002d10:	4798      	blx	r3
10002d12:	ae0e      	add	r6, sp, #56	; 0x38
10002d14:	2800      	cmp	r0, #0
10002d16:	d143      	bne.n	10002da0 <atm_continue_init+0xbc>
10002d18:	a905      	add	r1, sp, #20
10002d1a:	0032      	movs	r2, r6
10002d1c:	4b26      	ldr	r3, [pc, #152]	; (10002db8 <atm_continue_init+0xd4>)
10002d1e:	800d      	strh	r5, [r1, #0]
10002d20:	3001      	adds	r0, #1
10002d22:	4798      	blx	r3
10002d24:	7ea3      	ldrb	r3, [r4, #26]
10002d26:	07db      	lsls	r3, r3, #31
10002d28:	d523      	bpl.n	10002d72 <atm_continue_init+0x8e>
10002d2a:	223f      	movs	r2, #63	; 0x3f
10002d2c:	7a63      	ldrb	r3, [r4, #9]
10002d2e:	4393      	bics	r3, r2
10002d30:	2bc0      	cmp	r3, #192	; 0xc0
10002d32:	d005      	beq.n	10002d40 <atm_continue_init+0x5c>
10002d34:	22e2      	movs	r2, #226	; 0xe2
10002d36:	4921      	ldr	r1, [pc, #132]	; (10002dbc <atm_continue_init+0xd8>)
10002d38:	4821      	ldr	r0, [pc, #132]	; (10002dc0 <atm_continue_init+0xdc>)
10002d3a:	4b22      	ldr	r3, [pc, #136]	; (10002dc4 <atm_continue_init+0xe0>)
10002d3c:	32ff      	adds	r2, #255	; 0xff
10002d3e:	4798      	blx	r3
10002d40:	0030      	movs	r0, r6
10002d42:	4b21      	ldr	r3, [pc, #132]	; (10002dc8 <atm_continue_init+0xe4>)
10002d44:	4798      	blx	r3
10002d46:	ab02      	add	r3, sp, #8
10002d48:	1c99      	adds	r1, r3, #2
10002d4a:	2320      	movs	r3, #32
10002d4c:	2080      	movs	r0, #128	; 0x80
10002d4e:	800b      	strh	r3, [r1, #0]
10002d50:	aa05      	add	r2, sp, #20
10002d52:	4b19      	ldr	r3, [pc, #100]	; (10002db8 <atm_continue_init+0xd4>)
10002d54:	4798      	blx	r3
10002d56:	2800      	cmp	r0, #0
10002d58:	d00b      	beq.n	10002d72 <atm_continue_init+0x8e>
10002d5a:	2302      	movs	r3, #2
10002d5c:	2204      	movs	r2, #4
10002d5e:	2108      	movs	r1, #8
10002d60:	481a      	ldr	r0, [pc, #104]	; (10002dcc <atm_continue_init+0xe8>)
10002d62:	4e1b      	ldr	r6, [pc, #108]	; (10002dd0 <atm_continue_init+0xec>)
10002d64:	47b0      	blx	r6
10002d66:	232f      	movs	r3, #47	; 0x2f
10002d68:	7003      	strb	r3, [r0, #0]
10002d6a:	3b2e      	subs	r3, #46	; 0x2e
10002d6c:	7043      	strb	r3, [r0, #1]
10002d6e:	4b19      	ldr	r3, [pc, #100]	; (10002dd4 <atm_continue_init+0xf0>)
10002d70:	4798      	blx	r3
10002d72:	2036      	movs	r0, #54	; 0x36
10002d74:	ab02      	add	r3, sp, #8
10002d76:	2210      	movs	r2, #16
10002d78:	2100      	movs	r1, #0
10002d7a:	18c0      	adds	r0, r0, r3
10002d7c:	4b16      	ldr	r3, [pc, #88]	; (10002dd8 <atm_continue_init+0xf4>)
10002d7e:	4798      	blx	r3
10002d80:	2204      	movs	r2, #4
10002d82:	7ea3      	ldrb	r3, [r4, #26]
10002d84:	0020      	movs	r0, r4
10002d86:	4393      	bics	r3, r2
10002d88:	76a3      	strb	r3, [r4, #26]
10002d8a:	2356      	movs	r3, #86	; 0x56
10002d8c:	aa02      	add	r2, sp, #8
10002d8e:	189b      	adds	r3, r3, r2
10002d90:	2201      	movs	r2, #1
10002d92:	4912      	ldr	r1, [pc, #72]	; (10002ddc <atm_continue_init+0xf8>)
10002d94:	701a      	strb	r2, [r3, #0]
10002d96:	9a00      	ldr	r2, [sp, #0]
10002d98:	4b11      	ldr	r3, [pc, #68]	; (10002de0 <atm_continue_init+0xfc>)
10002d9a:	4798      	blx	r3
10002d9c:	b01b      	add	sp, #108	; 0x6c
10002d9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002da0:	69bb      	ldr	r3, [r7, #24]
10002da2:	930e      	str	r3, [sp, #56]	; 0x38
10002da4:	9b01      	ldr	r3, [sp, #4]
10002da6:	889b      	ldrh	r3, [r3, #4]
10002da8:	80b3      	strh	r3, [r6, #4]
10002daa:	e7bb      	b.n	10002d24 <atm_continue_init+0x40>
10002dac:	00005821 	.word	0x00005821
10002db0:	10005da0 	.word	0x10005da0
10002db4:	0002fba5 	.word	0x0002fba5
10002db8:	00002f55 	.word	0x00002f55
10002dbc:	10005b8c 	.word	0x10005b8c
10002dc0:	10004cec 	.word	0x10004cec
10002dc4:	00006609 	.word	0x00006609
10002dc8:	10004b99 	.word	0x10004b99
10002dcc:	00000d2b 	.word	0x00000d2b
10002dd0:	00001171 	.word	0x00001171
10002dd4:	000011a9 	.word	0x000011a9
10002dd8:	00005859 	.word	0x00005859
10002ddc:	10002c1d 	.word	0x10002c1d
10002de0:	100040d1 	.word	0x100040d1

10002de4 <atm_gap_conidx_state_sanity>:
10002de4:	000a      	movs	r2, r1
10002de6:	b510      	push	{r4, lr}
10002de8:	2800      	cmp	r0, #0
10002dea:	d104      	bne.n	10002df6 <atm_gap_conidx_state_sanity+0x12>
10002dec:	4b05      	ldr	r3, [pc, #20]	; (10002e04 <atm_gap_conidx_state_sanity+0x20>)
10002dee:	3001      	adds	r0, #1
10002df0:	781b      	ldrb	r3, [r3, #0]
10002df2:	2b00      	cmp	r3, #0
10002df4:	d104      	bne.n	10002e00 <atm_gap_conidx_state_sanity+0x1c>
10002df6:	4904      	ldr	r1, [pc, #16]	; (10002e08 <atm_gap_conidx_state_sanity+0x24>)
10002df8:	4804      	ldr	r0, [pc, #16]	; (10002e0c <atm_gap_conidx_state_sanity+0x28>)
10002dfa:	4b05      	ldr	r3, [pc, #20]	; (10002e10 <atm_gap_conidx_state_sanity+0x2c>)
10002dfc:	4798      	blx	r3
10002dfe:	2000      	movs	r0, #0
10002e00:	bd10      	pop	{r4, pc}
10002e02:	46c0      	nop			; (mov r8, r8)
10002e04:	20014dcc 	.word	0x20014dcc
10002e08:	10005da6 	.word	0x10005da6
10002e0c:	10005bc4 	.word	0x10005bc4
10002e10:	000066b1 	.word	0x000066b1

10002e14 <atm_gap_conidx_sanity>:
10002e14:	2301      	movs	r3, #1
10002e16:	b510      	push	{r4, lr}
10002e18:	2800      	cmp	r0, #0
10002e1a:	d005      	beq.n	10002e28 <atm_gap_conidx_sanity+0x14>
10002e1c:	4b03      	ldr	r3, [pc, #12]	; (10002e2c <atm_gap_conidx_sanity+0x18>)
10002e1e:	22c5      	movs	r2, #197	; 0xc5
10002e20:	4903      	ldr	r1, [pc, #12]	; (10002e30 <atm_gap_conidx_sanity+0x1c>)
10002e22:	4804      	ldr	r0, [pc, #16]	; (10002e34 <atm_gap_conidx_sanity+0x20>)
10002e24:	4798      	blx	r3
10002e26:	2300      	movs	r3, #0
10002e28:	0018      	movs	r0, r3
10002e2a:	bd10      	pop	{r4, pc}
10002e2c:	00006609 	.word	0x00006609
10002e30:	10005b8c 	.word	0x10005b8c
10002e34:	10004cec 	.word	0x10004cec

10002e38 <atm_gapm_cmp_evt_bt_reset>:
10002e38:	b510      	push	{r4, lr}
10002e3a:	8843      	ldrh	r3, [r0, #2]
10002e3c:	2b00      	cmp	r3, #0
10002e3e:	d103      	bne.n	10002e48 <atm_gapm_cmp_evt_bt_reset+0x10>
10002e40:	0008      	movs	r0, r1
10002e42:	4b04      	ldr	r3, [pc, #16]	; (10002e54 <atm_gapm_cmp_evt_bt_reset+0x1c>)
10002e44:	4798      	blx	r3
10002e46:	bd10      	pop	{r4, pc}
10002e48:	4a03      	ldr	r2, [pc, #12]	; (10002e58 <atm_gapm_cmp_evt_bt_reset+0x20>)
10002e4a:	4904      	ldr	r1, [pc, #16]	; (10002e5c <atm_gapm_cmp_evt_bt_reset+0x24>)
10002e4c:	4804      	ldr	r0, [pc, #16]	; (10002e60 <atm_gapm_cmp_evt_bt_reset+0x28>)
10002e4e:	4b05      	ldr	r3, [pc, #20]	; (10002e64 <atm_gapm_cmp_evt_bt_reset+0x2c>)
10002e50:	4798      	blx	r3
10002e52:	e7f8      	b.n	10002e46 <atm_gapm_cmp_evt_bt_reset+0xe>
10002e54:	10002ce5 	.word	0x10002ce5
10002e58:	00000225 	.word	0x00000225
10002e5c:	10005b8c 	.word	0x10005b8c
10002e60:	10004cec 	.word	0x10004cec
10002e64:	00006609 	.word	0x00006609

10002e68 <atm_gap_start>:
10002e68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10002e6a:	4f18      	ldr	r7, [pc, #96]	; (10002ecc <atm_gap_start+0x64>)
10002e6c:	0006      	movs	r6, r0
10002e6e:	683b      	ldr	r3, [r7, #0]
10002e70:	000c      	movs	r4, r1
10002e72:	2b00      	cmp	r3, #0
10002e74:	d005      	beq.n	10002e82 <atm_gap_start+0x1a>
10002e76:	2285      	movs	r2, #133	; 0x85
10002e78:	4915      	ldr	r1, [pc, #84]	; (10002ed0 <atm_gap_start+0x68>)
10002e7a:	4816      	ldr	r0, [pc, #88]	; (10002ed4 <atm_gap_start+0x6c>)
10002e7c:	4b16      	ldr	r3, [pc, #88]	; (10002ed8 <atm_gap_start+0x70>)
10002e7e:	00d2      	lsls	r2, r2, #3
10002e80:	4798      	blx	r3
10002e82:	4d16      	ldr	r5, [pc, #88]	; (10002edc <atm_gap_start+0x74>)
10002e84:	4b16      	ldr	r3, [pc, #88]	; (10002ee0 <atm_gap_start+0x78>)
10002e86:	603c      	str	r4, [r7, #0]
10002e88:	602e      	str	r6, [r5, #0]
10002e8a:	4798      	blx	r3
10002e8c:	4b15      	ldr	r3, [pc, #84]	; (10002ee4 <atm_gap_start+0x7c>)
10002e8e:	4798      	blx	r3
10002e90:	4815      	ldr	r0, [pc, #84]	; (10002ee8 <atm_gap_start+0x80>)
10002e92:	4b16      	ldr	r3, [pc, #88]	; (10002eec <atm_gap_start+0x84>)
10002e94:	4798      	blx	r3
10002e96:	2100      	movs	r1, #0
10002e98:	2002      	movs	r0, #2
10002e9a:	4a15      	ldr	r2, [pc, #84]	; (10002ef0 <atm_gap_start+0x88>)
10002e9c:	4b15      	ldr	r3, [pc, #84]	; (10002ef4 <atm_gap_start+0x8c>)
10002e9e:	4798      	blx	r3
10002ea0:	0029      	movs	r1, r5
10002ea2:	4815      	ldr	r0, [pc, #84]	; (10002ef8 <atm_gap_start+0x90>)
10002ea4:	4b15      	ldr	r3, [pc, #84]	; (10002efc <atm_gap_start+0x94>)
10002ea6:	4798      	blx	r3
10002ea8:	2400      	movs	r4, #0
10002eaa:	7a6b      	ldrb	r3, [r5, #9]
10002eac:	429c      	cmp	r4, r3
10002eae:	db04      	blt.n	10002eba <atm_gap_start+0x52>
10002eb0:	4b13      	ldr	r3, [pc, #76]	; (10002f00 <atm_gap_start+0x98>)
10002eb2:	4798      	blx	r3
10002eb4:	4b13      	ldr	r3, [pc, #76]	; (10002f04 <atm_gap_start+0x9c>)
10002eb6:	4798      	blx	r3
10002eb8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10002eba:	686a      	ldr	r2, [r5, #4]
10002ebc:	00a3      	lsls	r3, r4, #2
10002ebe:	589b      	ldr	r3, [r3, r2]
10002ec0:	681b      	ldr	r3, [r3, #0]
10002ec2:	2b00      	cmp	r3, #0
10002ec4:	d000      	beq.n	10002ec8 <atm_gap_start+0x60>
10002ec6:	4798      	blx	r3
10002ec8:	3401      	adds	r4, #1
10002eca:	e7ee      	b.n	10002eaa <atm_gap_start+0x42>
10002ecc:	20014dbc 	.word	0x20014dbc
10002ed0:	10005b8c 	.word	0x10005b8c
10002ed4:	10004cec 	.word	0x10004cec
10002ed8:	00006609 	.word	0x00006609
10002edc:	20014dc0 	.word	0x20014dc0
10002ee0:	100044ad 	.word	0x100044ad
10002ee4:	10004389 	.word	0x10004389
10002ee8:	10002bdd 	.word	0x10002bdd
10002eec:	1000437d 	.word	0x1000437d
10002ef0:	10002f79 	.word	0x10002f79
10002ef4:	10003ee1 	.word	0x10003ee1
10002ef8:	10002e39 	.word	0x10002e39
10002efc:	10004075 	.word	0x10004075
10002f00:	10004521 	.word	0x10004521
10002f04:	20014269 	.word	0x20014269

10002f08 <atm_gap_disconnect>:
10002f08:	b570      	push	{r4, r5, r6, lr}
10002f0a:	0a0b      	lsrs	r3, r1, #8
10002f0c:	0004      	movs	r4, r0
10002f0e:	000d      	movs	r5, r1
10002f10:	2b00      	cmp	r3, #0
10002f12:	d005      	beq.n	10002f20 <atm_gap_disconnect+0x18>
10002f14:	2b03      	cmp	r3, #3
10002f16:	d003      	beq.n	10002f20 <atm_gap_disconnect+0x18>
10002f18:	4b08      	ldr	r3, [pc, #32]	; (10002f3c <atm_gap_disconnect+0x34>)
10002f1a:	4a09      	ldr	r2, [pc, #36]	; (10002f40 <atm_gap_disconnect+0x38>)
10002f1c:	4e09      	ldr	r6, [pc, #36]	; (10002f44 <atm_gap_disconnect+0x3c>)
10002f1e:	47b0      	blx	r6
10002f20:	0020      	movs	r0, r4
10002f22:	4909      	ldr	r1, [pc, #36]	; (10002f48 <atm_gap_disconnect+0x40>)
10002f24:	4b09      	ldr	r3, [pc, #36]	; (10002f4c <atm_gap_disconnect+0x44>)
10002f26:	4798      	blx	r3
10002f28:	2800      	cmp	r0, #0
10002f2a:	d005      	beq.n	10002f38 <atm_gap_disconnect+0x30>
10002f2c:	0020      	movs	r0, r4
10002f2e:	0029      	movs	r1, r5
10002f30:	4b07      	ldr	r3, [pc, #28]	; (10002f50 <atm_gap_disconnect+0x48>)
10002f32:	4a08      	ldr	r2, [pc, #32]	; (10002f54 <atm_gap_disconnect+0x4c>)
10002f34:	4c08      	ldr	r4, [pc, #32]	; (10002f58 <atm_gap_disconnect+0x50>)
10002f36:	47a0      	blx	r4
10002f38:	bd70      	pop	{r4, r5, r6, pc}
10002f3a:	46c0      	nop			; (mov r8, r8)
10002f3c:	0000044a 	.word	0x0000044a
10002f40:	10005b8c 	.word	0x10005b8c
10002f44:	00006641 	.word	0x00006641
10002f48:	10005c16 	.word	0x10005c16
10002f4c:	10002de5 	.word	0x10002de5
10002f50:	20014dcc 	.word	0x20014dcc
10002f54:	10002bb5 	.word	0x10002bb5
10002f58:	10003f25 	.word	0x10003f25

10002f5c <atm_gap_get_local_name>:
10002f5c:	4a05      	ldr	r2, [pc, #20]	; (10002f74 <atm_gap_get_local_name+0x18>)
10002f5e:	0003      	movs	r3, r0
10002f60:	6810      	ldr	r0, [r2, #0]
10002f62:	2800      	cmp	r0, #0
10002f64:	d004      	beq.n	10002f70 <atm_gap_get_local_name+0x14>
10002f66:	7901      	ldrb	r1, [r0, #4]
10002f68:	7019      	strb	r1, [r3, #0]
10002f6a:	6813      	ldr	r3, [r2, #0]
10002f6c:	6818      	ldr	r0, [r3, #0]
10002f6e:	4770      	bx	lr
10002f70:	7018      	strb	r0, [r3, #0]
10002f72:	e7fc      	b.n	10002f6e <atm_gap_get_local_name+0x12>
10002f74:	20014dc0 	.word	0x20014dc0

10002f78 <evt_handler>:
10002f78:	b5f0      	push	{r4, r5, r6, r7, lr}
10002f7a:	7802      	ldrb	r2, [r0, #0]
10002f7c:	0004      	movs	r4, r0
10002f7e:	b08f      	sub	sp, #60	; 0x3c
10002f80:	2a1a      	cmp	r2, #26
10002f82:	d900      	bls.n	10002f86 <evt_handler+0xe>
10002f84:	e14c      	b.n	10003220 <evt_handler+0x2a8>
10002f86:	0010      	movs	r0, r2
10002f88:	f001 fe62 	bl	10004c50 <____gnu_thumb1_case_uhi_veneer>
10002f8c:	0020001b 	.word	0x0020001b
10002f90:	001e001e 	.word	0x001e001e
10002f94:	002f0023 	.word	0x002f0023
10002f98:	014a005a 	.word	0x014a005a
10002f9c:	007e014a 	.word	0x007e014a
10002fa0:	001e001e 	.word	0x001e001e
10002fa4:	00b4009e 	.word	0x00b4009e
10002fa8:	00c1014a 	.word	0x00c1014a
10002fac:	001e00d5 	.word	0x001e00d5
10002fb0:	014a014a 	.word	0x014a014a
10002fb4:	014a014a 	.word	0x014a014a
10002fb8:	001e014a 	.word	0x001e014a
10002fbc:	001e001e 	.word	0x001e001e
10002fc0:	001e      	.short	0x001e
10002fc2:	4b9a      	ldr	r3, [pc, #616]	; (1000322c <evt_handler+0x2b4>)
10002fc4:	1d20      	adds	r0, r4, #4
10002fc6:	4798      	blx	r3
10002fc8:	2501      	movs	r5, #1
10002fca:	e07a      	b.n	100030c2 <evt_handler+0x14a>
10002fcc:	4b98      	ldr	r3, [pc, #608]	; (10003230 <evt_handler+0x2b8>)
10002fce:	1d20      	adds	r0, r4, #4
10002fd0:	e7f9      	b.n	10002fc6 <evt_handler+0x4e>
10002fd2:	4b98      	ldr	r3, [pc, #608]	; (10003234 <evt_handler+0x2bc>)
10002fd4:	1d20      	adds	r0, r4, #4
10002fd6:	681b      	ldr	r3, [r3, #0]
10002fd8:	681b      	ldr	r3, [r3, #0]
10002fda:	2b00      	cmp	r3, #0
10002fdc:	d1f3      	bne.n	10002fc6 <evt_handler+0x4e>
10002fde:	4a96      	ldr	r2, [pc, #600]	; (10003238 <evt_handler+0x2c0>)
10002fe0:	4996      	ldr	r1, [pc, #600]	; (1000323c <evt_handler+0x2c4>)
10002fe2:	4897      	ldr	r0, [pc, #604]	; (10003240 <evt_handler+0x2c8>)
10002fe4:	4b97      	ldr	r3, [pc, #604]	; (10003244 <evt_handler+0x2cc>)
10002fe6:	4798      	blx	r3
10002fe8:	e7ee      	b.n	10002fc8 <evt_handler+0x50>
10002fea:	4d97      	ldr	r5, [pc, #604]	; (10003248 <evt_handler+0x2d0>)
10002fec:	7926      	ldrb	r6, [r4, #4]
10002fee:	782b      	ldrb	r3, [r5, #0]
10002ff0:	431e      	orrs	r6, r3
10002ff2:	d1e9      	bne.n	10002fc8 <evt_handler+0x50>
10002ff4:	1caf      	adds	r7, r5, #2
10002ff6:	4b95      	ldr	r3, [pc, #596]	; (1000324c <evt_handler+0x2d4>)
10002ff8:	2212      	movs	r2, #18
10002ffa:	0038      	movs	r0, r7
10002ffc:	1da1      	adds	r1, r4, #6
10002ffe:	4798      	blx	r3
10003000:	2301      	movs	r3, #1
10003002:	702b      	strb	r3, [r5, #0]
10003004:	4b8b      	ldr	r3, [pc, #556]	; (10003234 <evt_handler+0x2bc>)
10003006:	681b      	ldr	r3, [r3, #0]
10003008:	685b      	ldr	r3, [r3, #4]
1000300a:	2b00      	cmp	r3, #0
1000300c:	d002      	beq.n	10003014 <evt_handler+0x9c>
1000300e:	0039      	movs	r1, r7
10003010:	0030      	movs	r0, r6
10003012:	4798      	blx	r3
10003014:	7caa      	ldrb	r2, [r5, #18]
10003016:	4b8e      	ldr	r3, [pc, #568]	; (10003250 <evt_handler+0x2d8>)
10003018:	2a00      	cmp	r2, #0
1000301a:	d100      	bne.n	1000301e <evt_handler+0xa6>
1000301c:	4b8d      	ldr	r3, [pc, #564]	; (10003254 <evt_handler+0x2dc>)
1000301e:	2200      	movs	r2, #0
10003020:	4986      	ldr	r1, [pc, #536]	; (1000323c <evt_handler+0x2c4>)
10003022:	488d      	ldr	r0, [pc, #564]	; (10003258 <evt_handler+0x2e0>)
10003024:	4d87      	ldr	r5, [pc, #540]	; (10003244 <evt_handler+0x2cc>)
10003026:	47a8      	blx	r5
10003028:	0020      	movs	r0, r4
1000302a:	2206      	movs	r2, #6
1000302c:	498b      	ldr	r1, [pc, #556]	; (1000325c <evt_handler+0x2e4>)
1000302e:	4b8c      	ldr	r3, [pc, #560]	; (10003260 <evt_handler+0x2e8>)
10003030:	3010      	adds	r0, #16
10003032:	4798      	blx	r3
10003034:	2800      	cmp	r0, #0
10003036:	d1c7      	bne.n	10002fc8 <evt_handler+0x50>
10003038:	2144      	movs	r1, #68	; 0x44
1000303a:	4b8a      	ldr	r3, [pc, #552]	; (10003264 <evt_handler+0x2ec>)
1000303c:	4798      	blx	r3
1000303e:	e7c3      	b.n	10002fc8 <evt_handler+0x50>
10003040:	7927      	ldrb	r7, [r4, #4]
10003042:	4b89      	ldr	r3, [pc, #548]	; (10003268 <evt_handler+0x2f0>)
10003044:	0038      	movs	r0, r7
10003046:	4798      	blx	r3
10003048:	1e05      	subs	r5, r0, #0
1000304a:	d0bd      	beq.n	10002fc8 <evt_handler+0x50>
1000304c:	2200      	movs	r2, #0
1000304e:	4e7e      	ldr	r6, [pc, #504]	; (10003248 <evt_handler+0x2d0>)
10003050:	017b      	lsls	r3, r7, #5
10003052:	559a      	strb	r2, [r3, r6]
10003054:	18f6      	adds	r6, r6, r3
10003056:	6973      	ldr	r3, [r6, #20]
10003058:	4293      	cmp	r3, r2
1000305a:	d007      	beq.n	1000306c <evt_handler+0xf4>
1000305c:	7f30      	ldrb	r0, [r6, #28]
1000305e:	4b83      	ldr	r3, [pc, #524]	; (1000326c <evt_handler+0x2f4>)
10003060:	4798      	blx	r3
10003062:	7f30      	ldrb	r0, [r6, #28]
10003064:	4b82      	ldr	r3, [pc, #520]	; (10003270 <evt_handler+0x2f8>)
10003066:	4798      	blx	r3
10003068:	2200      	movs	r2, #0
1000306a:	6172      	str	r2, [r6, #20]
1000306c:	4b71      	ldr	r3, [pc, #452]	; (10003234 <evt_handler+0x2bc>)
1000306e:	681b      	ldr	r3, [r3, #0]
10003070:	689b      	ldr	r3, [r3, #8]
10003072:	2b00      	cmp	r3, #0
10003074:	d002      	beq.n	1000307c <evt_handler+0x104>
10003076:	0038      	movs	r0, r7
10003078:	1da1      	adds	r1, r4, #6
1000307a:	4798      	blx	r3
1000307c:	8922      	ldrh	r2, [r4, #8]
1000307e:	496f      	ldr	r1, [pc, #444]	; (1000323c <evt_handler+0x2c4>)
10003080:	487c      	ldr	r0, [pc, #496]	; (10003274 <evt_handler+0x2fc>)
10003082:	4b70      	ldr	r3, [pc, #448]	; (10003244 <evt_handler+0x2cc>)
10003084:	4798      	blx	r3
10003086:	e01c      	b.n	100030c2 <evt_handler+0x14a>
10003088:	7926      	ldrb	r6, [r4, #4]
1000308a:	4b77      	ldr	r3, [pc, #476]	; (10003268 <evt_handler+0x2f0>)
1000308c:	0030      	movs	r0, r6
1000308e:	4798      	blx	r3
10003090:	2800      	cmp	r0, #0
10003092:	d099      	beq.n	10002fc8 <evt_handler+0x50>
10003094:	0030      	movs	r0, r6
10003096:	4978      	ldr	r1, [pc, #480]	; (10003278 <evt_handler+0x300>)
10003098:	4b78      	ldr	r3, [pc, #480]	; (1000327c <evt_handler+0x304>)
1000309a:	4798      	blx	r3
1000309c:	1e05      	subs	r5, r0, #0
1000309e:	d093      	beq.n	10002fc8 <evt_handler+0x50>
100030a0:	4b69      	ldr	r3, [pc, #420]	; (10003248 <evt_handler+0x2d0>)
100030a2:	88e2      	ldrh	r2, [r4, #6]
100030a4:	0171      	lsls	r1, r6, #5
100030a6:	185b      	adds	r3, r3, r1
100030a8:	809a      	strh	r2, [r3, #4]
100030aa:	8922      	ldrh	r2, [r4, #8]
100030ac:	80da      	strh	r2, [r3, #6]
100030ae:	8962      	ldrh	r2, [r4, #10]
100030b0:	811a      	strh	r2, [r3, #8]
100030b2:	4b60      	ldr	r3, [pc, #384]	; (10003234 <evt_handler+0x2bc>)
100030b4:	681b      	ldr	r3, [r3, #0]
100030b6:	68db      	ldr	r3, [r3, #12]
100030b8:	2b00      	cmp	r3, #0
100030ba:	d100      	bne.n	100030be <evt_handler+0x146>
100030bc:	e784      	b.n	10002fc8 <evt_handler+0x50>
100030be:	0030      	movs	r0, r6
100030c0:	4798      	blx	r3
100030c2:	0028      	movs	r0, r5
100030c4:	b00f      	add	sp, #60	; 0x3c
100030c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
100030c8:	7926      	ldrb	r6, [r4, #4]
100030ca:	4b67      	ldr	r3, [pc, #412]	; (10003268 <evt_handler+0x2f0>)
100030cc:	0030      	movs	r0, r6
100030ce:	4798      	blx	r3
100030d0:	1e05      	subs	r5, r0, #0
100030d2:	d100      	bne.n	100030d6 <evt_handler+0x15e>
100030d4:	e778      	b.n	10002fc8 <evt_handler+0x50>
100030d6:	0030      	movs	r0, r6
100030d8:	4969      	ldr	r1, [pc, #420]	; (10003280 <evt_handler+0x308>)
100030da:	4b6a      	ldr	r3, [pc, #424]	; (10003284 <evt_handler+0x30c>)
100030dc:	4798      	blx	r3
100030de:	89a1      	ldrh	r1, [r4, #12]
100030e0:	8923      	ldrh	r3, [r4, #8]
100030e2:	88e2      	ldrh	r2, [r4, #6]
100030e4:	9101      	str	r1, [sp, #4]
100030e6:	8961      	ldrh	r1, [r4, #10]
100030e8:	4867      	ldr	r0, [pc, #412]	; (10003288 <evt_handler+0x310>)
100030ea:	9100      	str	r1, [sp, #0]
100030ec:	4c55      	ldr	r4, [pc, #340]	; (10003244 <evt_handler+0x2cc>)
100030ee:	4953      	ldr	r1, [pc, #332]	; (1000323c <evt_handler+0x2c4>)
100030f0:	47a0      	blx	r4
100030f2:	e7e6      	b.n	100030c2 <evt_handler+0x14a>
100030f4:	4b4f      	ldr	r3, [pc, #316]	; (10003234 <evt_handler+0x2bc>)
100030f6:	681b      	ldr	r3, [r3, #0]
100030f8:	695b      	ldr	r3, [r3, #20]
100030fa:	2b00      	cmp	r3, #0
100030fc:	d103      	bne.n	10003106 <evt_handler+0x18e>
100030fe:	4a63      	ldr	r2, [pc, #396]	; (1000328c <evt_handler+0x314>)
10003100:	494e      	ldr	r1, [pc, #312]	; (1000323c <evt_handler+0x2c4>)
10003102:	4863      	ldr	r0, [pc, #396]	; (10003290 <evt_handler+0x318>)
10003104:	e76e      	b.n	10002fe4 <evt_handler+0x6c>
10003106:	7920      	ldrb	r0, [r4, #4]
10003108:	1d61      	adds	r1, r4, #5
1000310a:	4798      	blx	r3
1000310c:	e75c      	b.n	10002fc8 <evt_handler+0x50>
1000310e:	7926      	ldrb	r6, [r4, #4]
10003110:	4b55      	ldr	r3, [pc, #340]	; (10003268 <evt_handler+0x2f0>)
10003112:	0030      	movs	r0, r6
10003114:	4798      	blx	r3
10003116:	1e05      	subs	r5, r0, #0
10003118:	d100      	bne.n	1000311c <evt_handler+0x1a4>
1000311a:	e755      	b.n	10002fc8 <evt_handler+0x50>
1000311c:	4b45      	ldr	r3, [pc, #276]	; (10003234 <evt_handler+0x2bc>)
1000311e:	681b      	ldr	r3, [r3, #0]
10003120:	6a1b      	ldr	r3, [r3, #32]
10003122:	2b00      	cmp	r3, #0
10003124:	d103      	bne.n	1000312e <evt_handler+0x1b6>
10003126:	4a5b      	ldr	r2, [pc, #364]	; (10003294 <evt_handler+0x31c>)
10003128:	4944      	ldr	r1, [pc, #272]	; (1000323c <evt_handler+0x2c4>)
1000312a:	4859      	ldr	r0, [pc, #356]	; (10003290 <evt_handler+0x318>)
1000312c:	e7a9      	b.n	10003082 <evt_handler+0x10a>
1000312e:	0030      	movs	r0, r6
10003130:	1da1      	adds	r1, r4, #6
10003132:	4798      	blx	r3
10003134:	e7c5      	b.n	100030c2 <evt_handler+0x14a>
10003136:	79a5      	ldrb	r5, [r4, #6]
10003138:	4e57      	ldr	r6, [pc, #348]	; (10003298 <evt_handler+0x320>)
1000313a:	2d00      	cmp	r5, #0
1000313c:	d14e      	bne.n	100031dc <evt_handler+0x264>
1000313e:	230f      	movs	r3, #15
10003140:	aa04      	add	r2, sp, #16
10003142:	189b      	adds	r3, r3, r2
10003144:	0018      	movs	r0, r3
10003146:	4b55      	ldr	r3, [pc, #340]	; (1000329c <evt_handler+0x324>)
10003148:	4798      	blx	r3
1000314a:	a904      	add	r1, sp, #16
1000314c:	7bc9      	ldrb	r1, [r1, #15]
1000314e:	9002      	str	r0, [sp, #8]
10003150:	89a3      	ldrh	r3, [r4, #12]
10003152:	8962      	ldrh	r2, [r4, #10]
10003154:	4f3b      	ldr	r7, [pc, #236]	; (10003244 <evt_handler+0x2cc>)
10003156:	9100      	str	r1, [sp, #0]
10003158:	4851      	ldr	r0, [pc, #324]	; (100032a0 <evt_handler+0x328>)
1000315a:	4938      	ldr	r1, [pc, #224]	; (1000323c <evt_handler+0x2c4>)
1000315c:	47b8      	blx	r7
1000315e:	ab04      	add	r3, sp, #16
10003160:	7bdb      	ldrb	r3, [r3, #15]
10003162:	8967      	ldrh	r7, [r4, #10]
10003164:	b29a      	uxth	r2, r3
10003166:	9203      	str	r2, [sp, #12]
10003168:	429f      	cmp	r7, r3
1000316a:	d90e      	bls.n	1000318a <evt_handler+0x212>
1000316c:	af08      	add	r7, sp, #32
1000316e:	2218      	movs	r2, #24
10003170:	0029      	movs	r1, r5
10003172:	0038      	movs	r0, r7
10003174:	47b0      	blx	r6
10003176:	79a3      	ldrb	r3, [r4, #6]
10003178:	703b      	strb	r3, [r7, #0]
1000317a:	4b4a      	ldr	r3, [pc, #296]	; (100032a4 <evt_handler+0x32c>)
1000317c:	807b      	strh	r3, [r7, #2]
1000317e:	8923      	ldrh	r3, [r4, #8]
10003180:	80bb      	strh	r3, [r7, #4]
10003182:	0039      	movs	r1, r7
10003184:	7920      	ldrb	r0, [r4, #4]
10003186:	4b48      	ldr	r3, [pc, #288]	; (100032a8 <evt_handler+0x330>)
10003188:	e7bf      	b.n	1000310a <evt_handler+0x192>
1000318a:	1bdb      	subs	r3, r3, r7
1000318c:	89a2      	ldrh	r2, [r4, #12]
1000318e:	b2de      	uxtb	r6, r3
10003190:	4296      	cmp	r6, r2
10003192:	d900      	bls.n	10003196 <evt_handler+0x21e>
10003194:	0016      	movs	r6, r2
10003196:	0030      	movs	r0, r6
10003198:	4b44      	ldr	r3, [pc, #272]	; (100032ac <evt_handler+0x334>)
1000319a:	3018      	adds	r0, #24
1000319c:	4798      	blx	r3
1000319e:	0005      	movs	r5, r0
100031a0:	79a3      	ldrb	r3, [r4, #6]
100031a2:	2218      	movs	r2, #24
100031a4:	9304      	str	r3, [sp, #16]
100031a6:	8923      	ldrh	r3, [r4, #8]
100031a8:	2100      	movs	r1, #0
100031aa:	9305      	str	r3, [sp, #20]
100031ac:	4b3a      	ldr	r3, [pc, #232]	; (10003298 <evt_handler+0x320>)
100031ae:	4798      	blx	r3
100031b0:	0028      	movs	r0, r5
100031b2:	9b04      	ldr	r3, [sp, #16]
100031b4:	0032      	movs	r2, r6
100031b6:	702b      	strb	r3, [r5, #0]
100031b8:	9b05      	ldr	r3, [sp, #20]
100031ba:	300a      	adds	r0, #10
100031bc:	80ab      	strh	r3, [r5, #4]
100031be:	9b03      	ldr	r3, [sp, #12]
100031c0:	80eb      	strh	r3, [r5, #6]
100031c2:	9b02      	ldr	r3, [sp, #8]
100031c4:	19d9      	adds	r1, r3, r7
100031c6:	4b21      	ldr	r3, [pc, #132]	; (1000324c <evt_handler+0x2d4>)
100031c8:	4798      	blx	r3
100031ca:	7920      	ldrb	r0, [r4, #4]
100031cc:	0029      	movs	r1, r5
100031ce:	4b36      	ldr	r3, [pc, #216]	; (100032a8 <evt_handler+0x330>)
100031d0:	812e      	strh	r6, [r5, #8]
100031d2:	4798      	blx	r3
100031d4:	0028      	movs	r0, r5
100031d6:	4b36      	ldr	r3, [pc, #216]	; (100032b0 <evt_handler+0x338>)
100031d8:	4798      	blx	r3
100031da:	e6f5      	b.n	10002fc8 <evt_handler+0x50>
100031dc:	af08      	add	r7, sp, #32
100031de:	2218      	movs	r2, #24
100031e0:	2100      	movs	r1, #0
100031e2:	0038      	movs	r0, r7
100031e4:	47b0      	blx	r6
100031e6:	703d      	strb	r5, [r7, #0]
100031e8:	8923      	ldrh	r3, [r4, #8]
100031ea:	80bb      	strh	r3, [r7, #4]
100031ec:	2d01      	cmp	r5, #1
100031ee:	d007      	beq.n	10003200 <evt_handler+0x288>
100031f0:	2d02      	cmp	r5, #2
100031f2:	d00c      	beq.n	1000320e <evt_handler+0x296>
100031f4:	002a      	movs	r2, r5
100031f6:	4911      	ldr	r1, [pc, #68]	; (1000323c <evt_handler+0x2c4>)
100031f8:	4b12      	ldr	r3, [pc, #72]	; (10003244 <evt_handler+0x2cc>)
100031fa:	482e      	ldr	r0, [pc, #184]	; (100032b4 <evt_handler+0x33c>)
100031fc:	4798      	blx	r3
100031fe:	e7c0      	b.n	10003182 <evt_handler+0x20a>
10003200:	2302      	movs	r3, #2
10003202:	80fb      	strh	r3, [r7, #6]
10003204:	4b2c      	ldr	r3, [pc, #176]	; (100032b8 <evt_handler+0x340>)
10003206:	681b      	ldr	r3, [r3, #0]
10003208:	88db      	ldrh	r3, [r3, #6]
1000320a:	813b      	strh	r3, [r7, #8]
1000320c:	e7b9      	b.n	10003182 <evt_handler+0x20a>
1000320e:	2308      	movs	r3, #8
10003210:	80fb      	strh	r3, [r7, #6]
10003212:	4b29      	ldr	r3, [pc, #164]	; (100032b8 <evt_handler+0x340>)
10003214:	aa0a      	add	r2, sp, #40	; 0x28
10003216:	681b      	ldr	r3, [r3, #0]
10003218:	3308      	adds	r3, #8
1000321a:	cb03      	ldmia	r3!, {r0, r1}
1000321c:	c203      	stmia	r2!, {r0, r1}
1000321e:	e7b0      	b.n	10003182 <evt_handler+0x20a>
10003220:	4906      	ldr	r1, [pc, #24]	; (1000323c <evt_handler+0x2c4>)
10003222:	4826      	ldr	r0, [pc, #152]	; (100032bc <evt_handler+0x344>)
10003224:	4b07      	ldr	r3, [pc, #28]	; (10003244 <evt_handler+0x2cc>)
10003226:	4798      	blx	r3
10003228:	2500      	movs	r5, #0
1000322a:	e74a      	b.n	100030c2 <evt_handler+0x14a>
1000322c:	10002a39 	.word	0x10002a39
10003230:	100034f5 	.word	0x100034f5
10003234:	20014dbc 	.word	0x20014dbc
10003238:	10005c21 	.word	0x10005c21
1000323c:	10005da6 	.word	0x10005da6
10003240:	10005bf4 	.word	0x10005bf4
10003244:	000066b1 	.word	0x000066b1
10003248:	20014dcc 	.word	0x20014dcc
1000324c:	00005821 	.word	0x00005821
10003250:	10005c1d 	.word	0x10005c1d
10003254:	10005c1f 	.word	0x10005c1f
10003258:	10005c29 	.word	0x10005c29
1000325c:	10005db4 	.word	0x10005db4
10003260:	0002fba5 	.word	0x0002fba5
10003264:	10002f09 	.word	0x10002f09
10003268:	10002e15 	.word	0x10002e15
1000326c:	10000fd9 	.word	0x10000fd9
10003270:	10000f2d 	.word	0x10000f2d
10003274:	10005c57 	.word	0x10005c57
10003278:	10005c7d 	.word	0x10005c7d
1000327c:	10002de5 	.word	0x10002de5
10003280:	10005dae 	.word	0x10005dae
10003284:	10003f79 	.word	0x10003f79
10003288:	10005c88 	.word	0x10005c88
1000328c:	10005cdc 	.word	0x10005cdc
10003290:	10005ce0 	.word	0x10005ce0
10003294:	10005d02 	.word	0x10005d02
10003298:	00005859 	.word	0x00005859
1000329c:	10002f5d 	.word	0x10002f5d
100032a0:	10005d0e 	.word	0x10005d0e
100032a4:	00000207 	.word	0x00000207
100032a8:	10003fad 	.word	0x10003fad
100032ac:	0002f615 	.word	0x0002f615
100032b0:	0002f629 	.word	0x0002f629
100032b4:	10005d4f 	.word	0x10005d4f
100032b8:	20014dc0 	.word	0x20014dc0
100032bc:	10005d77 	.word	0x10005d77

100032c0 <atm_gap_param_get>:
100032c0:	4800      	ldr	r0, [pc, #0]	; (100032c4 <atm_gap_param_get+0x4>)
100032c2:	4770      	bx	lr
100032c4:	10005dbc 	.word	0x10005dbc

100032c8 <scan_find_by_actidx>:
100032c8:	4a05      	ldr	r2, [pc, #20]	; (100032e0 <scan_find_by_actidx+0x18>)
100032ca:	2300      	movs	r3, #0
100032cc:	7811      	ldrb	r1, [r2, #0]
100032ce:	4281      	cmp	r1, r0
100032d0:	d103      	bne.n	100032da <scan_find_by_actidx+0x12>
100032d2:	7891      	ldrb	r1, [r2, #2]
100032d4:	4299      	cmp	r1, r3
100032d6:	d000      	beq.n	100032da <scan_find_by_actidx+0x12>
100032d8:	0013      	movs	r3, r2
100032da:	0018      	movs	r0, r3
100032dc:	4770      	bx	lr
100032de:	46c0      	nop			; (mov r8, r8)
100032e0:	20014dec 	.word	0x20014dec

100032e4 <gapm_cmp_evt_scan_start>:
100032e4:	b570      	push	{r4, r5, r6, lr}
100032e6:	0005      	movs	r5, r0
100032e8:	1e0c      	subs	r4, r1, #0
100032ea:	d002      	beq.n	100032f2 <gapm_cmp_evt_scan_start+0xe>
100032ec:	788b      	ldrb	r3, [r1, #2]
100032ee:	2b03      	cmp	r3, #3
100032f0:	d005      	beq.n	100032fe <gapm_cmp_evt_scan_start+0x1a>
100032f2:	4a0e      	ldr	r2, [pc, #56]	; (1000332c <gapm_cmp_evt_scan_start+0x48>)
100032f4:	490e      	ldr	r1, [pc, #56]	; (10003330 <gapm_cmp_evt_scan_start+0x4c>)
100032f6:	480f      	ldr	r0, [pc, #60]	; (10003334 <gapm_cmp_evt_scan_start+0x50>)
100032f8:	4b0f      	ldr	r3, [pc, #60]	; (10003338 <gapm_cmp_evt_scan_start+0x54>)
100032fa:	4798      	blx	r3
100032fc:	bd70      	pop	{r4, r5, r6, pc}
100032fe:	8843      	ldrh	r3, [r0, #2]
10003300:	2b00      	cmp	r3, #0
10003302:	d109      	bne.n	10003318 <gapm_cmp_evt_scan_start+0x34>
10003304:	3304      	adds	r3, #4
10003306:	708b      	strb	r3, [r1, #2]
10003308:	6863      	ldr	r3, [r4, #4]
1000330a:	689b      	ldr	r3, [r3, #8]
1000330c:	2b00      	cmp	r3, #0
1000330e:	d0f5      	beq.n	100032fc <gapm_cmp_evt_scan_start+0x18>
10003310:	8869      	ldrh	r1, [r5, #2]
10003312:	7820      	ldrb	r0, [r4, #0]
10003314:	4798      	blx	r3
10003316:	e7f1      	b.n	100032fc <gapm_cmp_evt_scan_start+0x18>
10003318:	2302      	movs	r3, #2
1000331a:	708b      	strb	r3, [r1, #2]
1000331c:	8843      	ldrh	r3, [r0, #2]
1000331e:	780a      	ldrb	r2, [r1, #0]
10003320:	4e05      	ldr	r6, [pc, #20]	; (10003338 <gapm_cmp_evt_scan_start+0x54>)
10003322:	4903      	ldr	r1, [pc, #12]	; (10003330 <gapm_cmp_evt_scan_start+0x4c>)
10003324:	4805      	ldr	r0, [pc, #20]	; (1000333c <gapm_cmp_evt_scan_start+0x58>)
10003326:	47b0      	blx	r6
10003328:	e7ee      	b.n	10003308 <gapm_cmp_evt_scan_start+0x24>
1000332a:	46c0      	nop			; (mov r8, r8)
1000332c:	10005fac 	.word	0x10005fac
10003330:	10005f8e 	.word	0x10005f8e
10003334:	10005e20 	.word	0x10005e20
10003338:	000066b1 	.word	0x000066b1
1000333c:	10005e53 	.word	0x10005e53

10003340 <atm_scan_create>:
10003340:	b510      	push	{r4, lr}
10003342:	000b      	movs	r3, r1
10003344:	490a      	ldr	r1, [pc, #40]	; (10003370 <atm_scan_create+0x30>)
10003346:	788c      	ldrb	r4, [r1, #2]
10003348:	2c00      	cmp	r4, #0
1000334a:	d10a      	bne.n	10003362 <atm_scan_create+0x22>
1000334c:	22ff      	movs	r2, #255	; 0xff
1000334e:	700a      	strb	r2, [r1, #0]
10003350:	3afe      	subs	r2, #254	; 0xfe
10003352:	708a      	strb	r2, [r1, #2]
10003354:	604b      	str	r3, [r1, #4]
10003356:	4a07      	ldr	r2, [pc, #28]	; (10003374 <atm_scan_create+0x34>)
10003358:	4b07      	ldr	r3, [pc, #28]	; (10003378 <atm_scan_create+0x38>)
1000335a:	7048      	strb	r0, [r1, #1]
1000335c:	4798      	blx	r3
1000335e:	0020      	movs	r0, r4
10003360:	bd10      	pop	{r4, pc}
10003362:	4a06      	ldr	r2, [pc, #24]	; (1000337c <atm_scan_create+0x3c>)
10003364:	4906      	ldr	r1, [pc, #24]	; (10003380 <atm_scan_create+0x40>)
10003366:	4807      	ldr	r0, [pc, #28]	; (10003384 <atm_scan_create+0x44>)
10003368:	4b07      	ldr	r3, [pc, #28]	; (10003388 <atm_scan_create+0x48>)
1000336a:	4798      	blx	r3
1000336c:	2402      	movs	r4, #2
1000336e:	e7f6      	b.n	1000335e <atm_scan_create+0x1e>
10003370:	20014dec 	.word	0x20014dec
10003374:	10003475 	.word	0x10003475
10003378:	1000426d 	.word	0x1000426d
1000337c:	10005fec 	.word	0x10005fec
10003380:	10005f8e 	.word	0x10005f8e
10003384:	10005e84 	.word	0x10005e84
10003388:	000066b1 	.word	0x000066b1

1000338c <atm_scan_create_and_start>:
1000338c:	b570      	push	{r4, r5, r6, lr}
1000338e:	4b11      	ldr	r3, [pc, #68]	; (100033d4 <atm_scan_create_and_start+0x48>)
10003390:	000e      	movs	r6, r1
10003392:	0011      	movs	r1, r2
10003394:	4798      	blx	r3
10003396:	1e04      	subs	r4, r0, #0
10003398:	d006      	beq.n	100033a8 <atm_scan_create_and_start+0x1c>
1000339a:	0003      	movs	r3, r0
1000339c:	4a0e      	ldr	r2, [pc, #56]	; (100033d8 <atm_scan_create_and_start+0x4c>)
1000339e:	490f      	ldr	r1, [pc, #60]	; (100033dc <atm_scan_create_and_start+0x50>)
100033a0:	4d0f      	ldr	r5, [pc, #60]	; (100033e0 <atm_scan_create_and_start+0x54>)
100033a2:	4810      	ldr	r0, [pc, #64]	; (100033e4 <atm_scan_create_and_start+0x58>)
100033a4:	47a8      	blx	r5
100033a6:	e013      	b.n	100033d0 <atm_scan_create_and_start+0x44>
100033a8:	4d0f      	ldr	r5, [pc, #60]	; (100033e8 <atm_scan_create_and_start+0x5c>)
100033aa:	78ab      	ldrb	r3, [r5, #2]
100033ac:	2b01      	cmp	r3, #1
100033ae:	d10f      	bne.n	100033d0 <atm_scan_create_and_start+0x44>
100033b0:	68ab      	ldr	r3, [r5, #8]
100033b2:	2b00      	cmp	r3, #0
100033b4:	d004      	beq.n	100033c0 <atm_scan_create_and_start+0x34>
100033b6:	22af      	movs	r2, #175	; 0xaf
100033b8:	490c      	ldr	r1, [pc, #48]	; (100033ec <atm_scan_create_and_start+0x60>)
100033ba:	480d      	ldr	r0, [pc, #52]	; (100033f0 <atm_scan_create_and_start+0x64>)
100033bc:	4b0d      	ldr	r3, [pc, #52]	; (100033f4 <atm_scan_create_and_start+0x68>)
100033be:	4798      	blx	r3
100033c0:	4b0d      	ldr	r3, [pc, #52]	; (100033f8 <atm_scan_create_and_start+0x6c>)
100033c2:	2010      	movs	r0, #16
100033c4:	4798      	blx	r3
100033c6:	2210      	movs	r2, #16
100033c8:	0031      	movs	r1, r6
100033ca:	4b0c      	ldr	r3, [pc, #48]	; (100033fc <atm_scan_create_and_start+0x70>)
100033cc:	60a8      	str	r0, [r5, #8]
100033ce:	4798      	blx	r3
100033d0:	0020      	movs	r0, r4
100033d2:	bd70      	pop	{r4, r5, r6, pc}
100033d4:	10003341 	.word	0x10003341
100033d8:	10005ffc 	.word	0x10005ffc
100033dc:	10005f8e 	.word	0x10005f8e
100033e0:	000066b1 	.word	0x000066b1
100033e4:	10005ec8 	.word	0x10005ec8
100033e8:	20014dec 	.word	0x20014dec
100033ec:	10005ea9 	.word	0x10005ea9
100033f0:	10005eb4 	.word	0x10005eb4
100033f4:	00006609 	.word	0x00006609
100033f8:	0002f615 	.word	0x0002f615
100033fc:	00005821 	.word	0x00005821

10003400 <atm_scan_start>:
10003400:	b570      	push	{r4, r5, r6, lr}
10003402:	4b13      	ldr	r3, [pc, #76]	; (10003450 <atm_scan_start+0x50>)
10003404:	0006      	movs	r6, r0
10003406:	000d      	movs	r5, r1
10003408:	4798      	blx	r3
1000340a:	1e04      	subs	r4, r0, #0
1000340c:	d004      	beq.n	10003418 <atm_scan_start+0x18>
1000340e:	7883      	ldrb	r3, [r0, #2]
10003410:	2b02      	cmp	r3, #2
10003412:	d101      	bne.n	10003418 <atm_scan_start+0x18>
10003414:	2d00      	cmp	r5, #0
10003416:	d107      	bne.n	10003428 <atm_scan_start+0x28>
10003418:	0033      	movs	r3, r6
1000341a:	4a0e      	ldr	r2, [pc, #56]	; (10003454 <atm_scan_start+0x54>)
1000341c:	490e      	ldr	r1, [pc, #56]	; (10003458 <atm_scan_start+0x58>)
1000341e:	480f      	ldr	r0, [pc, #60]	; (1000345c <atm_scan_start+0x5c>)
10003420:	4c0f      	ldr	r4, [pc, #60]	; (10003460 <atm_scan_start+0x60>)
10003422:	47a0      	blx	r4
10003424:	2001      	movs	r0, #1
10003426:	bd70      	pop	{r4, r5, r6, pc}
10003428:	2303      	movs	r3, #3
1000342a:	7083      	strb	r3, [r0, #2]
1000342c:	7868      	ldrb	r0, [r5, #1]
1000342e:	3309      	adds	r3, #9
10003430:	4018      	ands	r0, r3
10003432:	1e42      	subs	r2, r0, #1
10003434:	4190      	sbcs	r0, r2
10003436:	4b0b      	ldr	r3, [pc, #44]	; (10003464 <atm_scan_start+0x64>)
10003438:	b2c0      	uxtb	r0, r0
1000343a:	7018      	strb	r0, [r3, #0]
1000343c:	4b0a      	ldr	r3, [pc, #40]	; (10003468 <atm_scan_start+0x68>)
1000343e:	4798      	blx	r3
10003440:	7820      	ldrb	r0, [r4, #0]
10003442:	0022      	movs	r2, r4
10003444:	0029      	movs	r1, r5
10003446:	4b09      	ldr	r3, [pc, #36]	; (1000346c <atm_scan_start+0x6c>)
10003448:	4c09      	ldr	r4, [pc, #36]	; (10003470 <atm_scan_start+0x70>)
1000344a:	47a0      	blx	r4
1000344c:	2000      	movs	r0, #0
1000344e:	e7ea      	b.n	10003426 <atm_scan_start+0x26>
10003450:	100032c9 	.word	0x100032c9
10003454:	10005fc4 	.word	0x10005fc4
10003458:	10005f8e 	.word	0x10005f8e
1000345c:	10005eed 	.word	0x10005eed
10003460:	000066b1 	.word	0x000066b1
10003464:	20014df8 	.word	0x20014df8
10003468:	10001501 	.word	0x10001501
1000346c:	100032e5 	.word	0x100032e5
10003470:	1000433d 	.word	0x1000433d

10003474 <gapm_cmp_evt_create_scan>:
10003474:	b570      	push	{r4, r5, r6, lr}
10003476:	0005      	movs	r5, r0
10003478:	1e0c      	subs	r4, r1, #0
1000347a:	d002      	beq.n	10003482 <gapm_cmp_evt_create_scan+0xe>
1000347c:	788b      	ldrb	r3, [r1, #2]
1000347e:	2b01      	cmp	r3, #1
10003480:	d005      	beq.n	1000348e <gapm_cmp_evt_create_scan+0x1a>
10003482:	4a15      	ldr	r2, [pc, #84]	; (100034d8 <gapm_cmp_evt_create_scan+0x64>)
10003484:	4915      	ldr	r1, [pc, #84]	; (100034dc <gapm_cmp_evt_create_scan+0x68>)
10003486:	4816      	ldr	r0, [pc, #88]	; (100034e0 <gapm_cmp_evt_create_scan+0x6c>)
10003488:	4b16      	ldr	r3, [pc, #88]	; (100034e4 <gapm_cmp_evt_create_scan+0x70>)
1000348a:	4798      	blx	r3
1000348c:	bd70      	pop	{r4, r5, r6, pc}
1000348e:	8843      	ldrh	r3, [r0, #2]
10003490:	2b00      	cmp	r3, #0
10003492:	d117      	bne.n	100034c4 <gapm_cmp_evt_create_scan+0x50>
10003494:	3302      	adds	r3, #2
10003496:	708b      	strb	r3, [r1, #2]
10003498:	7900      	ldrb	r0, [r0, #4]
1000349a:	7008      	strb	r0, [r1, #0]
1000349c:	6889      	ldr	r1, [r1, #8]
1000349e:	2900      	cmp	r1, #0
100034a0:	d001      	beq.n	100034a6 <gapm_cmp_evt_create_scan+0x32>
100034a2:	4b11      	ldr	r3, [pc, #68]	; (100034e8 <gapm_cmp_evt_create_scan+0x74>)
100034a4:	4798      	blx	r3
100034a6:	68a0      	ldr	r0, [r4, #8]
100034a8:	2800      	cmp	r0, #0
100034aa:	d003      	beq.n	100034b4 <gapm_cmp_evt_create_scan+0x40>
100034ac:	4b0f      	ldr	r3, [pc, #60]	; (100034ec <gapm_cmp_evt_create_scan+0x78>)
100034ae:	4798      	blx	r3
100034b0:	2300      	movs	r3, #0
100034b2:	60a3      	str	r3, [r4, #8]
100034b4:	6863      	ldr	r3, [r4, #4]
100034b6:	681b      	ldr	r3, [r3, #0]
100034b8:	2b00      	cmp	r3, #0
100034ba:	d0e7      	beq.n	1000348c <gapm_cmp_evt_create_scan+0x18>
100034bc:	8869      	ldrh	r1, [r5, #2]
100034be:	7820      	ldrb	r0, [r4, #0]
100034c0:	4798      	blx	r3
100034c2:	e7e3      	b.n	1000348c <gapm_cmp_evt_create_scan+0x18>
100034c4:	2300      	movs	r3, #0
100034c6:	708b      	strb	r3, [r1, #2]
100034c8:	8843      	ldrh	r3, [r0, #2]
100034ca:	780a      	ldrb	r2, [r1, #0]
100034cc:	4e05      	ldr	r6, [pc, #20]	; (100034e4 <gapm_cmp_evt_create_scan+0x70>)
100034ce:	4903      	ldr	r1, [pc, #12]	; (100034dc <gapm_cmp_evt_create_scan+0x68>)
100034d0:	4807      	ldr	r0, [pc, #28]	; (100034f0 <gapm_cmp_evt_create_scan+0x7c>)
100034d2:	47b0      	blx	r6
100034d4:	e7e7      	b.n	100034a6 <gapm_cmp_evt_create_scan+0x32>
100034d6:	46c0      	nop			; (mov r8, r8)
100034d8:	10005fd3 	.word	0x10005fd3
100034dc:	10005f8e 	.word	0x10005f8e
100034e0:	10005e20 	.word	0x10005e20
100034e4:	000066b1 	.word	0x000066b1
100034e8:	10003401 	.word	0x10003401
100034ec:	0002f629 	.word	0x0002f629
100034f0:	10005f23 	.word	0x10005f23

100034f4 <atm_scan_stopped_ind>:
100034f4:	b570      	push	{r4, r5, r6, lr}
100034f6:	7806      	ldrb	r6, [r0, #0]
100034f8:	0005      	movs	r5, r0
100034fa:	4b0f      	ldr	r3, [pc, #60]	; (10003538 <atm_scan_stopped_ind+0x44>)
100034fc:	0030      	movs	r0, r6
100034fe:	4798      	blx	r3
10003500:	1e04      	subs	r4, r0, #0
10003502:	d003      	beq.n	1000350c <atm_scan_stopped_ind+0x18>
10003504:	7883      	ldrb	r3, [r0, #2]
10003506:	3b04      	subs	r3, #4
10003508:	2b01      	cmp	r3, #1
1000350a:	d906      	bls.n	1000351a <atm_scan_stopped_ind+0x26>
1000350c:	0033      	movs	r3, r6
1000350e:	4a0b      	ldr	r2, [pc, #44]	; (1000353c <atm_scan_stopped_ind+0x48>)
10003510:	490b      	ldr	r1, [pc, #44]	; (10003540 <atm_scan_stopped_ind+0x4c>)
10003512:	480c      	ldr	r0, [pc, #48]	; (10003544 <atm_scan_stopped_ind+0x50>)
10003514:	4c0c      	ldr	r4, [pc, #48]	; (10003548 <atm_scan_stopped_ind+0x54>)
10003516:	47a0      	blx	r4
10003518:	bd70      	pop	{r4, r5, r6, pc}
1000351a:	4b0c      	ldr	r3, [pc, #48]	; (1000354c <atm_scan_stopped_ind+0x58>)
1000351c:	7818      	ldrb	r0, [r3, #0]
1000351e:	4b0c      	ldr	r3, [pc, #48]	; (10003550 <atm_scan_stopped_ind+0x5c>)
10003520:	4798      	blx	r3
10003522:	2302      	movs	r3, #2
10003524:	70a3      	strb	r3, [r4, #2]
10003526:	6863      	ldr	r3, [r4, #4]
10003528:	68db      	ldr	r3, [r3, #12]
1000352a:	2b00      	cmp	r3, #0
1000352c:	d0f4      	beq.n	10003518 <atm_scan_stopped_ind+0x24>
1000352e:	8869      	ldrh	r1, [r5, #2]
10003530:	7820      	ldrb	r0, [r4, #0]
10003532:	4798      	blx	r3
10003534:	e7f0      	b.n	10003518 <atm_scan_stopped_ind+0x24>
10003536:	46c0      	nop			; (mov r8, r8)
10003538:	100032c9 	.word	0x100032c9
1000353c:	10005f97 	.word	0x10005f97
10003540:	10005f8e 	.word	0x10005f8e
10003544:	10005f57 	.word	0x10005f57
10003548:	000066b1 	.word	0x000066b1
1000354c:	20014df8 	.word	0x20014df8
10003550:	10001565 	.word	0x10001565

10003554 <atm_get_nvds_scan_params>:
10003554:	b530      	push	{r4, r5, lr}
10003556:	490c      	ldr	r1, [pc, #48]	; (10003588 <atm_get_nvds_scan_params+0x34>)
10003558:	b085      	sub	sp, #20
1000355a:	2210      	movs	r2, #16
1000355c:	4b0b      	ldr	r3, [pc, #44]	; (1000358c <atm_get_nvds_scan_params+0x38>)
1000355e:	0004      	movs	r4, r0
10003560:	4798      	blx	r3
10003562:	466b      	mov	r3, sp
10003564:	1d99      	adds	r1, r3, #6
10003566:	2306      	movs	r3, #6
10003568:	ad02      	add	r5, sp, #8
1000356a:	800b      	strh	r3, [r1, #0]
1000356c:	002a      	movs	r2, r5
1000356e:	20a4      	movs	r0, #164	; 0xa4
10003570:	4b07      	ldr	r3, [pc, #28]	; (10003590 <atm_get_nvds_scan_params+0x3c>)
10003572:	4798      	blx	r3
10003574:	2800      	cmp	r0, #0
10003576:	d105      	bne.n	10003584 <atm_get_nvds_scan_params+0x30>
10003578:	88ab      	ldrh	r3, [r5, #4]
1000357a:	81a3      	strh	r3, [r4, #12]
1000357c:	882b      	ldrh	r3, [r5, #0]
1000357e:	80a3      	strh	r3, [r4, #4]
10003580:	886b      	ldrh	r3, [r5, #2]
10003582:	80e3      	strh	r3, [r4, #6]
10003584:	b005      	add	sp, #20
10003586:	bd30      	pop	{r4, r5, pc}
10003588:	20014ae0 	.word	0x20014ae0
1000358c:	00005821 	.word	0x00005821
10003590:	00002f55 	.word	0x00002f55

10003594 <ble_gapc_cmp_cb_list_pick>:
10003594:	0002      	movs	r2, r0
10003596:	b510      	push	{r4, lr}
10003598:	4b06      	ldr	r3, [pc, #24]	; (100035b4 <ble_gapc_cmp_cb_list_pick+0x20>)
1000359a:	681b      	ldr	r3, [r3, #0]
1000359c:	2b00      	cmp	r3, #0
1000359e:	d101      	bne.n	100035a4 <ble_gapc_cmp_cb_list_pick+0x10>
100035a0:	0018      	movs	r0, r3
100035a2:	e006      	b.n	100035b2 <ble_gapc_cmp_cb_list_pick+0x1e>
100035a4:	68d8      	ldr	r0, [r3, #12]
100035a6:	7804      	ldrb	r4, [r0, #0]
100035a8:	428c      	cmp	r4, r1
100035aa:	d1f6      	bne.n	1000359a <ble_gapc_cmp_cb_list_pick+0x6>
100035ac:	7904      	ldrb	r4, [r0, #4]
100035ae:	4294      	cmp	r4, r2
100035b0:	d1f3      	bne.n	1000359a <ble_gapc_cmp_cb_list_pick+0x6>
100035b2:	bd10      	pop	{r4, pc}
100035b4:	20014e10 	.word	0x20014e10

100035b8 <ble_gapm_default_handler>:
100035b8:	2000      	movs	r0, #0
100035ba:	4770      	bx	lr

100035bc <ble_gapm_gen_cb_evt>:
100035bc:	b510      	push	{r4, lr}
100035be:	2100      	movs	r1, #0
100035c0:	4b01      	ldr	r3, [pc, #4]	; (100035c8 <ble_gapm_gen_cb_evt+0xc>)
100035c2:	3014      	adds	r0, #20
100035c4:	4798      	blx	r3
100035c6:	bd10      	pop	{r4, pc}
100035c8:	000013b9 	.word	0x000013b9

100035cc <ble_gapm_push_cb>:
100035cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100035ce:	0007      	movs	r7, r0
100035d0:	000e      	movs	r6, r1
100035d2:	001c      	movs	r4, r3
100035d4:	2102      	movs	r1, #2
100035d6:	4b06      	ldr	r3, [pc, #24]	; (100035f0 <ble_gapm_push_cb+0x24>)
100035d8:	2014      	movs	r0, #20
100035da:	0015      	movs	r5, r2
100035dc:	4798      	blx	r3
100035de:	4b05      	ldr	r3, [pc, #20]	; (100035f4 <ble_gapm_push_cb+0x28>)
100035e0:	6047      	str	r7, [r0, #4]
100035e2:	7406      	strb	r6, [r0, #16]
100035e4:	6085      	str	r5, [r0, #8]
100035e6:	0001      	movs	r1, r0
100035e8:	60c4      	str	r4, [r0, #12]
100035ea:	4803      	ldr	r0, [pc, #12]	; (100035f8 <ble_gapm_push_cb+0x2c>)
100035ec:	4798      	blx	r3
100035ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100035f0:	000013b9 	.word	0x000013b9
100035f4:	0000268f 	.word	0x0000268f
100035f8:	20014e24 	.word	0x20014e24

100035fc <ble_gapm_create_activity>:
100035fc:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100035fe:	0017      	movs	r7, r2
10003600:	2204      	movs	r2, #4
10003602:	9001      	str	r0, [sp, #4]
10003604:	20da      	movs	r0, #218	; 0xda
10003606:	000d      	movs	r5, r1
10003608:	001e      	movs	r6, r3
1000360a:	2108      	movs	r1, #8
1000360c:	4090      	lsls	r0, r2
1000360e:	2302      	movs	r3, #2
10003610:	4c09      	ldr	r4, [pc, #36]	; (10003638 <ble_gapm_create_activity+0x3c>)
10003612:	47a0      	blx	r4
10003614:	9b01      	ldr	r3, [sp, #4]
10003616:	0004      	movs	r4, r0
10003618:	7005      	strb	r5, [r0, #0]
1000361a:	7043      	strb	r3, [r0, #1]
1000361c:	4b07      	ldr	r3, [pc, #28]	; (1000363c <ble_gapm_create_activity+0x40>)
1000361e:	2000      	movs	r0, #0
10003620:	4798      	blx	r3
10003622:	003a      	movs	r2, r7
10003624:	0029      	movs	r1, r5
10003626:	0003      	movs	r3, r0
10003628:	4d05      	ldr	r5, [pc, #20]	; (10003640 <ble_gapm_create_activity+0x44>)
1000362a:	0030      	movs	r0, r6
1000362c:	47a8      	blx	r5
1000362e:	0020      	movs	r0, r4
10003630:	4b04      	ldr	r3, [pc, #16]	; (10003644 <ble_gapm_create_activity+0x48>)
10003632:	4798      	blx	r3
10003634:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10003636:	46c0      	nop			; (mov r8, r8)
10003638:	00001171 	.word	0x00001171
1000363c:	100035bd 	.word	0x100035bd
10003640:	100035cd 	.word	0x100035cd
10003644:	000011a9 	.word	0x000011a9

10003648 <ble_gapm_start_activity>:
10003648:	b570      	push	{r4, r5, r6, lr}
1000364a:	0004      	movs	r4, r0
1000364c:	000d      	movs	r5, r1
1000364e:	21a4      	movs	r1, #164	; 0xa4
10003650:	1e18      	subs	r0, r3, #0
10003652:	7021      	strb	r1, [r4, #0]
10003654:	7065      	strb	r5, [r4, #1]
10003656:	d002      	beq.n	1000365e <ble_gapm_start_activity+0x16>
10003658:	2300      	movs	r3, #0
1000365a:	4d03      	ldr	r5, [pc, #12]	; (10003668 <ble_gapm_start_activity+0x20>)
1000365c:	47a8      	blx	r5
1000365e:	0020      	movs	r0, r4
10003660:	4b02      	ldr	r3, [pc, #8]	; (1000366c <ble_gapm_start_activity+0x24>)
10003662:	4798      	blx	r3
10003664:	bd70      	pop	{r4, r5, r6, pc}
10003666:	46c0      	nop			; (mov r8, r8)
10003668:	100035cd 	.word	0x100035cd
1000366c:	000011a9 	.word	0x000011a9

10003670 <ble_gapc_le_ping_to_val_ind_handler>:
10003670:	b570      	push	{r4, r5, r6, lr}
10003672:	0a1d      	lsrs	r5, r3, #8
10003674:	000e      	movs	r6, r1
10003676:	0028      	movs	r0, r5
10003678:	2112      	movs	r1, #18
1000367a:	4b07      	ldr	r3, [pc, #28]	; (10003698 <ble_gapc_le_ping_to_val_ind_handler+0x28>)
1000367c:	4798      	blx	r3
1000367e:	1e04      	subs	r4, r0, #0
10003680:	d104      	bne.n	1000368c <ble_gapc_le_ping_to_val_ind_handler+0x1c>
10003682:	4a06      	ldr	r2, [pc, #24]	; (1000369c <ble_gapc_le_ping_to_val_ind_handler+0x2c>)
10003684:	4906      	ldr	r1, [pc, #24]	; (100036a0 <ble_gapc_le_ping_to_val_ind_handler+0x30>)
10003686:	4807      	ldr	r0, [pc, #28]	; (100036a4 <ble_gapc_le_ping_to_val_ind_handler+0x34>)
10003688:	4b07      	ldr	r3, [pc, #28]	; (100036a8 <ble_gapc_le_ping_to_val_ind_handler+0x38>)
1000368a:	4798      	blx	r3
1000368c:	7225      	strb	r5, [r4, #8]
1000368e:	8833      	ldrh	r3, [r6, #0]
10003690:	2000      	movs	r0, #0
10003692:	8163      	strh	r3, [r4, #10]
10003694:	bd70      	pop	{r4, r5, r6, pc}
10003696:	46c0      	nop			; (mov r8, r8)
10003698:	10003595 	.word	0x10003595
1000369c:	0000044c 	.word	0x0000044c
100036a0:	10006016 	.word	0x10006016
100036a4:	1000602e 	.word	0x1000602e
100036a8:	00006609 	.word	0x00006609

100036ac <ble_gapc_con_channel_map_ind_handler>:
100036ac:	b570      	push	{r4, r5, r6, lr}
100036ae:	0a1e      	lsrs	r6, r3, #8
100036b0:	000d      	movs	r5, r1
100036b2:	0030      	movs	r0, r6
100036b4:	2108      	movs	r1, #8
100036b6:	4b09      	ldr	r3, [pc, #36]	; (100036dc <ble_gapc_con_channel_map_ind_handler+0x30>)
100036b8:	4798      	blx	r3
100036ba:	1e04      	subs	r4, r0, #0
100036bc:	d105      	bne.n	100036ca <ble_gapc_con_channel_map_ind_handler+0x1e>
100036be:	2288      	movs	r2, #136	; 0x88
100036c0:	4907      	ldr	r1, [pc, #28]	; (100036e0 <ble_gapc_con_channel_map_ind_handler+0x34>)
100036c2:	4808      	ldr	r0, [pc, #32]	; (100036e4 <ble_gapc_con_channel_map_ind_handler+0x38>)
100036c4:	4b08      	ldr	r3, [pc, #32]	; (100036e8 <ble_gapc_con_channel_map_ind_handler+0x3c>)
100036c6:	00d2      	lsls	r2, r2, #3
100036c8:	4798      	blx	r3
100036ca:	0020      	movs	r0, r4
100036cc:	0029      	movs	r1, r5
100036ce:	7226      	strb	r6, [r4, #8]
100036d0:	2205      	movs	r2, #5
100036d2:	4b06      	ldr	r3, [pc, #24]	; (100036ec <ble_gapc_con_channel_map_ind_handler+0x40>)
100036d4:	3009      	adds	r0, #9
100036d6:	4798      	blx	r3
100036d8:	2000      	movs	r0, #0
100036da:	bd70      	pop	{r4, r5, r6, pc}
100036dc:	10003595 	.word	0x10003595
100036e0:	10006016 	.word	0x10006016
100036e4:	1000602e 	.word	0x1000602e
100036e8:	00006609 	.word	0x00006609
100036ec:	00005821 	.word	0x00005821

100036f0 <ble_gapc_con_rssi_ind_handler>:
100036f0:	b570      	push	{r4, r5, r6, lr}
100036f2:	0a1d      	lsrs	r5, r3, #8
100036f4:	000e      	movs	r6, r1
100036f6:	0028      	movs	r0, r5
100036f8:	2107      	movs	r1, #7
100036fa:	4b07      	ldr	r3, [pc, #28]	; (10003718 <ble_gapc_con_rssi_ind_handler+0x28>)
100036fc:	4798      	blx	r3
100036fe:	1e04      	subs	r4, r0, #0
10003700:	d104      	bne.n	1000370c <ble_gapc_con_rssi_ind_handler+0x1c>
10003702:	4a06      	ldr	r2, [pc, #24]	; (1000371c <ble_gapc_con_rssi_ind_handler+0x2c>)
10003704:	4906      	ldr	r1, [pc, #24]	; (10003720 <ble_gapc_con_rssi_ind_handler+0x30>)
10003706:	4807      	ldr	r0, [pc, #28]	; (10003724 <ble_gapc_con_rssi_ind_handler+0x34>)
10003708:	4b07      	ldr	r3, [pc, #28]	; (10003728 <ble_gapc_con_rssi_ind_handler+0x38>)
1000370a:	4798      	blx	r3
1000370c:	7225      	strb	r5, [r4, #8]
1000370e:	7833      	ldrb	r3, [r6, #0]
10003710:	2000      	movs	r0, #0
10003712:	7263      	strb	r3, [r4, #9]
10003714:	bd70      	pop	{r4, r5, r6, pc}
10003716:	46c0      	nop			; (mov r8, r8)
10003718:	10003595 	.word	0x10003595
1000371c:	00000435 	.word	0x00000435
10003720:	10006016 	.word	0x10006016
10003724:	1000602e 	.word	0x1000602e
10003728:	00006609 	.word	0x00006609

1000372c <ble_gapc_peer_features_ind_handler>:
1000372c:	b570      	push	{r4, r5, r6, lr}
1000372e:	0a1e      	lsrs	r6, r3, #8
10003730:	000d      	movs	r5, r1
10003732:	0030      	movs	r0, r6
10003734:	2104      	movs	r1, #4
10003736:	4b09      	ldr	r3, [pc, #36]	; (1000375c <ble_gapc_peer_features_ind_handler+0x30>)
10003738:	4798      	blx	r3
1000373a:	1e04      	subs	r4, r0, #0
1000373c:	d104      	bne.n	10003748 <ble_gapc_peer_features_ind_handler+0x1c>
1000373e:	4a08      	ldr	r2, [pc, #32]	; (10003760 <ble_gapc_peer_features_ind_handler+0x34>)
10003740:	4908      	ldr	r1, [pc, #32]	; (10003764 <ble_gapc_peer_features_ind_handler+0x38>)
10003742:	4809      	ldr	r0, [pc, #36]	; (10003768 <ble_gapc_peer_features_ind_handler+0x3c>)
10003744:	4b09      	ldr	r3, [pc, #36]	; (1000376c <ble_gapc_peer_features_ind_handler+0x40>)
10003746:	4798      	blx	r3
10003748:	0020      	movs	r0, r4
1000374a:	0029      	movs	r1, r5
1000374c:	7226      	strb	r6, [r4, #8]
1000374e:	2208      	movs	r2, #8
10003750:	4b07      	ldr	r3, [pc, #28]	; (10003770 <ble_gapc_peer_features_ind_handler+0x44>)
10003752:	3009      	adds	r0, #9
10003754:	4798      	blx	r3
10003756:	2000      	movs	r0, #0
10003758:	bd70      	pop	{r4, r5, r6, pc}
1000375a:	46c0      	nop			; (mov r8, r8)
1000375c:	10003595 	.word	0x10003595
10003760:	0000042a 	.word	0x0000042a
10003764:	10006016 	.word	0x10006016
10003768:	1000602e 	.word	0x1000602e
1000376c:	00006609 	.word	0x00006609
10003770:	00005821 	.word	0x00005821

10003774 <ble_gapc_peer_version_ind_handler>:
10003774:	b570      	push	{r4, r5, r6, lr}
10003776:	0a1e      	lsrs	r6, r3, #8
10003778:	000d      	movs	r5, r1
1000377a:	0030      	movs	r0, r6
1000377c:	2103      	movs	r1, #3
1000377e:	4b09      	ldr	r3, [pc, #36]	; (100037a4 <ble_gapc_peer_version_ind_handler+0x30>)
10003780:	4798      	blx	r3
10003782:	1e04      	subs	r4, r0, #0
10003784:	d104      	bne.n	10003790 <ble_gapc_peer_version_ind_handler+0x1c>
10003786:	4a08      	ldr	r2, [pc, #32]	; (100037a8 <ble_gapc_peer_version_ind_handler+0x34>)
10003788:	4908      	ldr	r1, [pc, #32]	; (100037ac <ble_gapc_peer_version_ind_handler+0x38>)
1000378a:	4809      	ldr	r0, [pc, #36]	; (100037b0 <ble_gapc_peer_version_ind_handler+0x3c>)
1000378c:	4b09      	ldr	r3, [pc, #36]	; (100037b4 <ble_gapc_peer_version_ind_handler+0x40>)
1000378e:	4798      	blx	r3
10003790:	0020      	movs	r0, r4
10003792:	0029      	movs	r1, r5
10003794:	7226      	strb	r6, [r4, #8]
10003796:	2206      	movs	r2, #6
10003798:	4b07      	ldr	r3, [pc, #28]	; (100037b8 <ble_gapc_peer_version_ind_handler+0x44>)
1000379a:	300a      	adds	r0, #10
1000379c:	4798      	blx	r3
1000379e:	2000      	movs	r0, #0
100037a0:	bd70      	pop	{r4, r5, r6, pc}
100037a2:	46c0      	nop			; (mov r8, r8)
100037a4:	10003595 	.word	0x10003595
100037a8:	0000041f 	.word	0x0000041f
100037ac:	10006016 	.word	0x10006016
100037b0:	1000602e 	.word	0x1000602e
100037b4:	00006609 	.word	0x00006609
100037b8:	00005821 	.word	0x00005821

100037bc <ble_gapm_cmp_evt_handler>:
100037bc:	b5f0      	push	{r4, r5, r6, r7, lr}
100037be:	4b1f      	ldr	r3, [pc, #124]	; (1000383c <ble_gapm_cmp_evt_handler+0x80>)
100037c0:	000f      	movs	r7, r1
100037c2:	681c      	ldr	r4, [r3, #0]
100037c4:	2300      	movs	r3, #0
100037c6:	b089      	sub	sp, #36	; 0x24
100037c8:	9301      	str	r3, [sp, #4]
100037ca:	2c00      	cmp	r4, #0
100037cc:	d103      	bne.n	100037d6 <ble_gapm_cmp_evt_handler+0x1a>
100037ce:	4b1c      	ldr	r3, [pc, #112]	; (10003840 <ble_gapm_cmp_evt_handler+0x84>)
100037d0:	481c      	ldr	r0, [pc, #112]	; (10003844 <ble_gapm_cmp_evt_handler+0x88>)
100037d2:	4798      	blx	r3
100037d4:	e01a      	b.n	1000380c <ble_gapm_cmp_evt_handler+0x50>
100037d6:	783b      	ldrb	r3, [r7, #0]
100037d8:	7c26      	ldrb	r6, [r4, #16]
100037da:	429e      	cmp	r6, r3
100037dc:	d12a      	bne.n	10003834 <ble_gapm_cmp_evt_handler+0x78>
100037de:	68e5      	ldr	r5, [r4, #12]
100037e0:	2d00      	cmp	r5, #0
100037e2:	d016      	beq.n	10003812 <ble_gapm_cmp_evt_handler+0x56>
100037e4:	702e      	strb	r6, [r5, #0]
100037e6:	4b18      	ldr	r3, [pc, #96]	; (10003848 <ble_gapm_cmp_evt_handler+0x8c>)
100037e8:	7878      	ldrb	r0, [r7, #1]
100037ea:	4798      	blx	r3
100037ec:	8068      	strh	r0, [r5, #2]
100037ee:	6863      	ldr	r3, [r4, #4]
100037f0:	0028      	movs	r0, r5
100037f2:	68a1      	ldr	r1, [r4, #8]
100037f4:	4798      	blx	r3
100037f6:	0028      	movs	r0, r5
100037f8:	4b14      	ldr	r3, [pc, #80]	; (1000384c <ble_gapm_cmp_evt_handler+0x90>)
100037fa:	4798      	blx	r3
100037fc:	480f      	ldr	r0, [pc, #60]	; (1000383c <ble_gapm_cmp_evt_handler+0x80>)
100037fe:	4b14      	ldr	r3, [pc, #80]	; (10003850 <ble_gapm_cmp_evt_handler+0x94>)
10003800:	0022      	movs	r2, r4
10003802:	9901      	ldr	r1, [sp, #4]
10003804:	4798      	blx	r3
10003806:	0020      	movs	r0, r4
10003808:	4b10      	ldr	r3, [pc, #64]	; (1000384c <ble_gapm_cmp_evt_handler+0x90>)
1000380a:	4798      	blx	r3
1000380c:	2000      	movs	r0, #0
1000380e:	b009      	add	sp, #36	; 0x24
10003810:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003812:	0029      	movs	r1, r5
10003814:	2214      	movs	r2, #20
10003816:	4b0f      	ldr	r3, [pc, #60]	; (10003854 <ble_gapm_cmp_evt_handler+0x98>)
10003818:	a803      	add	r0, sp, #12
1000381a:	4798      	blx	r3
1000381c:	ab02      	add	r3, sp, #8
1000381e:	711e      	strb	r6, [r3, #4]
10003820:	7878      	ldrb	r0, [r7, #1]
10003822:	4b09      	ldr	r3, [pc, #36]	; (10003848 <ble_gapm_cmp_evt_handler+0x8c>)
10003824:	4798      	blx	r3
10003826:	ab02      	add	r3, sp, #8
10003828:	80d8      	strh	r0, [r3, #6]
1000382a:	68a1      	ldr	r1, [r4, #8]
1000382c:	6863      	ldr	r3, [r4, #4]
1000382e:	a803      	add	r0, sp, #12
10003830:	4798      	blx	r3
10003832:	e7e3      	b.n	100037fc <ble_gapm_cmp_evt_handler+0x40>
10003834:	9401      	str	r4, [sp, #4]
10003836:	6824      	ldr	r4, [r4, #0]
10003838:	e7c7      	b.n	100037ca <ble_gapm_cmp_evt_handler+0xe>
1000383a:	46c0      	nop			; (mov r8, r8)
1000383c:	20014e24 	.word	0x20014e24
10003840:	000066b1 	.word	0x000066b1
10003844:	10006020 	.word	0x10006020
10003848:	10004569 	.word	0x10004569
1000384c:	000014ed 	.word	0x000014ed
10003850:	00002789 	.word	0x00002789
10003854:	00005859 	.word	0x00005859

10003858 <ble_gapm_ind_handler>:
10003858:	b5f0      	push	{r4, r5, r6, r7, lr}
1000385a:	0006      	movs	r6, r0
1000385c:	000d      	movs	r5, r1
1000385e:	4b35      	ldr	r3, [pc, #212]	; (10003934 <ble_gapm_ind_handler+0xdc>)
10003860:	b087      	sub	sp, #28
10003862:	681f      	ldr	r7, [r3, #0]
10003864:	2f00      	cmp	r7, #0
10003866:	d102      	bne.n	1000386e <ble_gapm_ind_handler+0x16>
10003868:	0038      	movs	r0, r7
1000386a:	b007      	add	sp, #28
1000386c:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000386e:	4b32      	ldr	r3, [pc, #200]	; (10003938 <ble_gapm_ind_handler+0xe0>)
10003870:	429e      	cmp	r6, r3
10003872:	d010      	beq.n	10003896 <ble_gapm_ind_handler+0x3e>
10003874:	4b31      	ldr	r3, [pc, #196]	; (1000393c <ble_gapm_ind_handler+0xe4>)
10003876:	68fc      	ldr	r4, [r7, #12]
10003878:	429e      	cmp	r6, r3
1000387a:	d10e      	bne.n	1000389a <ble_gapm_ind_handler+0x42>
1000387c:	7c3b      	ldrb	r3, [r7, #16]
1000387e:	2b18      	cmp	r3, #24
10003880:	d109      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
10003882:	4b2f      	ldr	r3, [pc, #188]	; (10003940 <ble_gapm_ind_handler+0xe8>)
10003884:	2207      	movs	r2, #7
10003886:	0029      	movs	r1, r5
10003888:	a804      	add	r0, sp, #16
1000388a:	4798      	blx	r3
1000388c:	9b04      	ldr	r3, [sp, #16]
1000388e:	6063      	str	r3, [r4, #4]
10003890:	ab04      	add	r3, sp, #16
10003892:	889b      	ldrh	r3, [r3, #4]
10003894:	8123      	strh	r3, [r4, #8]
10003896:	683f      	ldr	r7, [r7, #0]
10003898:	e7e4      	b.n	10003864 <ble_gapm_ind_handler+0xc>
1000389a:	4b2a      	ldr	r3, [pc, #168]	; (10003944 <ble_gapm_ind_handler+0xec>)
1000389c:	429e      	cmp	r6, r3
1000389e:	d11f      	bne.n	100038e0 <ble_gapm_ind_handler+0x88>
100038a0:	7c3b      	ldrb	r3, [r7, #16]
100038a2:	2b17      	cmp	r3, #23
100038a4:	d1f7      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
100038a6:	7963      	ldrb	r3, [r4, #5]
100038a8:	9302      	str	r3, [sp, #8]
100038aa:	0023      	movs	r3, r4
100038ac:	3308      	adds	r3, #8
100038ae:	9301      	str	r3, [sp, #4]
100038b0:	2300      	movs	r3, #0
100038b2:	9300      	str	r3, [sp, #0]
100038b4:	1dab      	adds	r3, r5, #6
100038b6:	9303      	str	r3, [sp, #12]
100038b8:	9b02      	ldr	r3, [sp, #8]
100038ba:	9a00      	ldr	r2, [sp, #0]
100038bc:	4293      	cmp	r3, r2
100038be:	ddea      	ble.n	10003896 <ble_gapm_ind_handler+0x3e>
100038c0:	9801      	ldr	r0, [sp, #4]
100038c2:	4b21      	ldr	r3, [pc, #132]	; (10003948 <ble_gapm_ind_handler+0xf0>)
100038c4:	2210      	movs	r2, #16
100038c6:	9903      	ldr	r1, [sp, #12]
100038c8:	4798      	blx	r3
100038ca:	9b01      	ldr	r3, [sp, #4]
100038cc:	331c      	adds	r3, #28
100038ce:	9301      	str	r3, [sp, #4]
100038d0:	9b00      	ldr	r3, [sp, #0]
100038d2:	2800      	cmp	r0, #0
100038d4:	d101      	bne.n	100038da <ble_gapm_ind_handler+0x82>
100038d6:	7123      	strb	r3, [r4, #4]
100038d8:	e7dd      	b.n	10003896 <ble_gapm_ind_handler+0x3e>
100038da:	3301      	adds	r3, #1
100038dc:	9300      	str	r3, [sp, #0]
100038de:	e7eb      	b.n	100038b8 <ble_gapm_ind_handler+0x60>
100038e0:	4b1a      	ldr	r3, [pc, #104]	; (1000394c <ble_gapm_ind_handler+0xf4>)
100038e2:	429e      	cmp	r6, r3
100038e4:	d105      	bne.n	100038f2 <ble_gapm_ind_handler+0x9a>
100038e6:	7c3b      	ldrb	r3, [r7, #16]
100038e8:	2b2b      	cmp	r3, #43	; 0x2b
100038ea:	d1d4      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
100038ec:	882b      	ldrh	r3, [r5, #0]
100038ee:	80a3      	strh	r3, [r4, #4]
100038f0:	e7d1      	b.n	10003896 <ble_gapm_ind_handler+0x3e>
100038f2:	4b17      	ldr	r3, [pc, #92]	; (10003950 <ble_gapm_ind_handler+0xf8>)
100038f4:	429e      	cmp	r6, r3
100038f6:	d118      	bne.n	1000392a <ble_gapm_ind_handler+0xd2>
100038f8:	7c3b      	ldrb	r3, [r7, #16]
100038fa:	2ba2      	cmp	r3, #162	; 0xa2
100038fc:	d104      	bne.n	10003908 <ble_gapm_ind_handler+0xb0>
100038fe:	786b      	ldrb	r3, [r5, #1]
10003900:	2b02      	cmp	r3, #2
10003902:	d1c8      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
10003904:	782b      	ldrb	r3, [r5, #0]
10003906:	e7e6      	b.n	100038d6 <ble_gapm_ind_handler+0x7e>
10003908:	2ba1      	cmp	r3, #161	; 0xa1
1000390a:	d103      	bne.n	10003914 <ble_gapm_ind_handler+0xbc>
1000390c:	786b      	ldrb	r3, [r5, #1]
1000390e:	2b01      	cmp	r3, #1
10003910:	d1c1      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
10003912:	e7f7      	b.n	10003904 <ble_gapm_ind_handler+0xac>
10003914:	2ba0      	cmp	r3, #160	; 0xa0
10003916:	d1be      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
10003918:	786b      	ldrb	r3, [r5, #1]
1000391a:	2b00      	cmp	r3, #0
1000391c:	d1bb      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
1000391e:	782b      	ldrb	r3, [r5, #0]
10003920:	7123      	strb	r3, [r4, #4]
10003922:	2302      	movs	r3, #2
10003924:	56eb      	ldrsb	r3, [r5, r3]
10003926:	7163      	strb	r3, [r4, #5]
10003928:	e7b5      	b.n	10003896 <ble_gapm_ind_handler+0x3e>
1000392a:	4b0a      	ldr	r3, [pc, #40]	; (10003954 <ble_gapm_ind_handler+0xfc>)
1000392c:	429e      	cmp	r6, r3
1000392e:	d1b2      	bne.n	10003896 <ble_gapm_ind_handler+0x3e>
10003930:	88ab      	ldrh	r3, [r5, #4]
10003932:	e7dc      	b.n	100038ee <ble_gapm_ind_handler+0x96>
10003934:	20014e24 	.word	0x20014e24
10003938:	00000d1a 	.word	0x00000d1a
1000393c:	00000d08 	.word	0x00000d08
10003940:	00005821 	.word	0x00005821
10003944:	00000d15 	.word	0x00000d15
10003948:	0002fba5 	.word	0x0002fba5
1000394c:	00000d27 	.word	0x00000d27
10003950:	00000da4 	.word	0x00000da4
10003954:	00000d1c 	.word	0x00000d1c

10003958 <ble_gapc_cmp_evt_handler>:
10003958:	b5f0      	push	{r4, r5, r6, r7, lr}
1000395a:	2700      	movs	r7, #0
1000395c:	0a1e      	lsrs	r6, r3, #8
1000395e:	4b2f      	ldr	r3, [pc, #188]	; (10003a1c <ble_gapc_cmp_evt_handler+0xc4>)
10003960:	b08b      	sub	sp, #44	; 0x2c
10003962:	681c      	ldr	r4, [r3, #0]
10003964:	780b      	ldrb	r3, [r1, #0]
10003966:	9100      	str	r1, [sp, #0]
10003968:	9301      	str	r3, [sp, #4]
1000396a:	2c00      	cmp	r4, #0
1000396c:	d10a      	bne.n	10003984 <ble_gapc_cmp_evt_handler+0x2c>
1000396e:	4f2c      	ldr	r7, [pc, #176]	; (10003a20 <ble_gapc_cmp_evt_handler+0xc8>)
10003970:	683d      	ldr	r5, [r7, #0]
10003972:	2d00      	cmp	r5, #0
10003974:	d13f      	bne.n	100039f6 <ble_gapc_cmp_evt_handler+0x9e>
10003976:	9b00      	ldr	r3, [sp, #0]
10003978:	9901      	ldr	r1, [sp, #4]
1000397a:	785a      	ldrb	r2, [r3, #1]
1000397c:	4829      	ldr	r0, [pc, #164]	; (10003a24 <ble_gapc_cmp_evt_handler+0xcc>)
1000397e:	4b2a      	ldr	r3, [pc, #168]	; (10003a28 <ble_gapc_cmp_evt_handler+0xd0>)
10003980:	4798      	blx	r3
10003982:	e01e      	b.n	100039c2 <ble_gapc_cmp_evt_handler+0x6a>
10003984:	7c23      	ldrb	r3, [r4, #16]
10003986:	9a01      	ldr	r2, [sp, #4]
10003988:	4293      	cmp	r3, r2
1000398a:	d131      	bne.n	100039f0 <ble_gapc_cmp_evt_handler+0x98>
1000398c:	68e5      	ldr	r5, [r4, #12]
1000398e:	2d00      	cmp	r5, #0
10003990:	d01a      	beq.n	100039c8 <ble_gapc_cmp_evt_handler+0x70>
10003992:	792b      	ldrb	r3, [r5, #4]
10003994:	42b3      	cmp	r3, r6
10003996:	d12c      	bne.n	100039f2 <ble_gapc_cmp_evt_handler+0x9a>
10003998:	9b00      	ldr	r3, [sp, #0]
1000399a:	7858      	ldrb	r0, [r3, #1]
1000399c:	4b23      	ldr	r3, [pc, #140]	; (10003a2c <ble_gapc_cmp_evt_handler+0xd4>)
1000399e:	4798      	blx	r3
100039a0:	8068      	strh	r0, [r5, #2]
100039a2:	6863      	ldr	r3, [r4, #4]
100039a4:	0030      	movs	r0, r6
100039a6:	0029      	movs	r1, r5
100039a8:	68a2      	ldr	r2, [r4, #8]
100039aa:	4798      	blx	r3
100039ac:	0028      	movs	r0, r5
100039ae:	4b20      	ldr	r3, [pc, #128]	; (10003a30 <ble_gapc_cmp_evt_handler+0xd8>)
100039b0:	4798      	blx	r3
100039b2:	481a      	ldr	r0, [pc, #104]	; (10003a1c <ble_gapc_cmp_evt_handler+0xc4>)
100039b4:	0022      	movs	r2, r4
100039b6:	0039      	movs	r1, r7
100039b8:	4b1e      	ldr	r3, [pc, #120]	; (10003a34 <ble_gapc_cmp_evt_handler+0xdc>)
100039ba:	4798      	blx	r3
100039bc:	0020      	movs	r0, r4
100039be:	4b1c      	ldr	r3, [pc, #112]	; (10003a30 <ble_gapc_cmp_evt_handler+0xd8>)
100039c0:	4798      	blx	r3
100039c2:	2000      	movs	r0, #0
100039c4:	b00b      	add	sp, #44	; 0x2c
100039c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
100039c8:	0029      	movs	r1, r5
100039ca:	221a      	movs	r2, #26
100039cc:	4b1a      	ldr	r3, [pc, #104]	; (10003a38 <ble_gapc_cmp_evt_handler+0xe0>)
100039ce:	a803      	add	r0, sp, #12
100039d0:	4798      	blx	r3
100039d2:	9a01      	ldr	r2, [sp, #4]
100039d4:	ab02      	add	r3, sp, #8
100039d6:	711a      	strb	r2, [r3, #4]
100039d8:	9b00      	ldr	r3, [sp, #0]
100039da:	7858      	ldrb	r0, [r3, #1]
100039dc:	4b13      	ldr	r3, [pc, #76]	; (10003a2c <ble_gapc_cmp_evt_handler+0xd4>)
100039de:	4798      	blx	r3
100039e0:	ab02      	add	r3, sp, #8
100039e2:	80d8      	strh	r0, [r3, #6]
100039e4:	68a2      	ldr	r2, [r4, #8]
100039e6:	0030      	movs	r0, r6
100039e8:	6863      	ldr	r3, [r4, #4]
100039ea:	a903      	add	r1, sp, #12
100039ec:	4798      	blx	r3
100039ee:	e7e0      	b.n	100039b2 <ble_gapc_cmp_evt_handler+0x5a>
100039f0:	0027      	movs	r7, r4
100039f2:	6824      	ldr	r4, [r4, #0]
100039f4:	e7b9      	b.n	1000396a <ble_gapc_cmp_evt_handler+0x12>
100039f6:	7b2b      	ldrb	r3, [r5, #12]
100039f8:	9a01      	ldr	r2, [sp, #4]
100039fa:	4293      	cmp	r3, r2
100039fc:	d10b      	bne.n	10003a16 <ble_gapc_cmp_evt_handler+0xbe>
100039fe:	0030      	movs	r0, r6
10003a00:	68aa      	ldr	r2, [r5, #8]
10003a02:	9900      	ldr	r1, [sp, #0]
10003a04:	686b      	ldr	r3, [r5, #4]
10003a06:	4798      	blx	r3
10003a08:	0038      	movs	r0, r7
10003a0a:	002a      	movs	r2, r5
10003a0c:	0021      	movs	r1, r4
10003a0e:	4b09      	ldr	r3, [pc, #36]	; (10003a34 <ble_gapc_cmp_evt_handler+0xdc>)
10003a10:	4798      	blx	r3
10003a12:	0028      	movs	r0, r5
10003a14:	e7d3      	b.n	100039be <ble_gapc_cmp_evt_handler+0x66>
10003a16:	002c      	movs	r4, r5
10003a18:	682d      	ldr	r5, [r5, #0]
10003a1a:	e7aa      	b.n	10003972 <ble_gapc_cmp_evt_handler+0x1a>
10003a1c:	20014e10 	.word	0x20014e10
10003a20:	20014e38 	.word	0x20014e38
10003a24:	10006032 	.word	0x10006032
10003a28:	000066b1 	.word	0x000066b1
10003a2c:	10004569 	.word	0x10004569
10003a30:	000014ed 	.word	0x000014ed
10003a34:	00002789 	.word	0x00002789
10003a38:	00005859 	.word	0x00005859

10003a3c <ble_gapc_bond_ind_handler>:
10003a3c:	2000      	movs	r0, #0
10003a3e:	4770      	bx	lr

10003a40 <ble_gapc_bond_req_ind_handler>:
10003a40:	2000      	movs	r0, #0
10003a42:	4770      	bx	lr

10003a44 <ble_gapc_push_cb>:
10003a44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003a46:	0007      	movs	r7, r0
10003a48:	000e      	movs	r6, r1
10003a4a:	001c      	movs	r4, r3
10003a4c:	2102      	movs	r1, #2
10003a4e:	4b06      	ldr	r3, [pc, #24]	; (10003a68 <ble_gapc_push_cb+0x24>)
10003a50:	2014      	movs	r0, #20
10003a52:	0015      	movs	r5, r2
10003a54:	4798      	blx	r3
10003a56:	4b05      	ldr	r3, [pc, #20]	; (10003a6c <ble_gapc_push_cb+0x28>)
10003a58:	6047      	str	r7, [r0, #4]
10003a5a:	7406      	strb	r6, [r0, #16]
10003a5c:	6085      	str	r5, [r0, #8]
10003a5e:	0001      	movs	r1, r0
10003a60:	60c4      	str	r4, [r0, #12]
10003a62:	4803      	ldr	r0, [pc, #12]	; (10003a70 <ble_gapc_push_cb+0x2c>)
10003a64:	4798      	blx	r3
10003a66:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003a68:	000013b9 	.word	0x000013b9
10003a6c:	0000268f 	.word	0x0000268f
10003a70:	20014e10 	.word	0x20014e10

10003a74 <ble_gap_evt_cb_call>:
10003a74:	b570      	push	{r4, r5, r6, lr}
10003a76:	000d      	movs	r5, r1
10003a78:	4b06      	ldr	r3, [pc, #24]	; (10003a94 <ble_gap_evt_cb_call+0x20>)
10003a7a:	7008      	strb	r0, [r1, #0]
10003a7c:	681c      	ldr	r4, [r3, #0]
10003a7e:	2c00      	cmp	r4, #0
10003a80:	d100      	bne.n	10003a84 <ble_gap_evt_cb_call+0x10>
10003a82:	bd70      	pop	{r4, r5, r6, pc}
10003a84:	0028      	movs	r0, r5
10003a86:	6863      	ldr	r3, [r4, #4]
10003a88:	4798      	blx	r3
10003a8a:	2800      	cmp	r0, #0
10003a8c:	d1f9      	bne.n	10003a82 <ble_gap_evt_cb_call+0xe>
10003a8e:	6824      	ldr	r4, [r4, #0]
10003a90:	e7f5      	b.n	10003a7e <ble_gap_evt_cb_call+0xa>
10003a92:	46c0      	nop			; (mov r8, r8)
10003a94:	20014dfc 	.word	0x20014dfc

10003a98 <ble_gapc_pkt_size_ind_handler>:
10003a98:	200a      	movs	r0, #10
10003a9a:	b510      	push	{r4, lr}
10003a9c:	b08a      	sub	sp, #40	; 0x28
10003a9e:	ac01      	add	r4, sp, #4
10003aa0:	0a1b      	lsrs	r3, r3, #8
10003aa2:	2208      	movs	r2, #8
10003aa4:	7123      	strb	r3, [r4, #4]
10003aa6:	4468      	add	r0, sp
10003aa8:	4b04      	ldr	r3, [pc, #16]	; (10003abc <ble_gapc_pkt_size_ind_handler+0x24>)
10003aaa:	4798      	blx	r3
10003aac:	0021      	movs	r1, r4
10003aae:	200f      	movs	r0, #15
10003ab0:	4b03      	ldr	r3, [pc, #12]	; (10003ac0 <ble_gapc_pkt_size_ind_handler+0x28>)
10003ab2:	4798      	blx	r3
10003ab4:	2000      	movs	r0, #0
10003ab6:	b00a      	add	sp, #40	; 0x28
10003ab8:	bd10      	pop	{r4, pc}
10003aba:	46c0      	nop			; (mov r8, r8)
10003abc:	00005821 	.word	0x00005821
10003ac0:	10003a75 	.word	0x10003a75

10003ac4 <ble_gapc_le_phy_ind_handler>:
10003ac4:	b5f0      	push	{r4, r5, r6, r7, lr}
10003ac6:	0a1f      	lsrs	r7, r3, #8
10003ac8:	000e      	movs	r6, r1
10003aca:	0038      	movs	r0, r7
10003acc:	2118      	movs	r1, #24
10003ace:	4b28      	ldr	r3, [pc, #160]	; (10003b70 <ble_gapc_le_phy_ind_handler+0xac>)
10003ad0:	b08b      	sub	sp, #44	; 0x2c
10003ad2:	4798      	blx	r3
10003ad4:	1e04      	subs	r4, r0, #0
10003ad6:	d023      	beq.n	10003b20 <ble_gapc_le_phy_ind_handler+0x5c>
10003ad8:	7207      	strb	r7, [r0, #8]
10003ada:	7830      	ldrb	r0, [r6, #0]
10003adc:	2802      	cmp	r0, #2
10003ade:	d003      	beq.n	10003ae8 <ble_gapc_le_phy_ind_handler+0x24>
10003ae0:	2803      	cmp	r0, #3
10003ae2:	d001      	beq.n	10003ae8 <ble_gapc_le_phy_ind_handler+0x24>
10003ae4:	2801      	cmp	r0, #1
10003ae6:	d10b      	bne.n	10003b00 <ble_gapc_le_phy_ind_handler+0x3c>
10003ae8:	7260      	strb	r0, [r4, #9]
10003aea:	7870      	ldrb	r0, [r6, #1]
10003aec:	2802      	cmp	r0, #2
10003aee:	d003      	beq.n	10003af8 <ble_gapc_le_phy_ind_handler+0x34>
10003af0:	2803      	cmp	r0, #3
10003af2:	d001      	beq.n	10003af8 <ble_gapc_le_phy_ind_handler+0x34>
10003af4:	2801      	cmp	r0, #1
10003af6:	d10b      	bne.n	10003b10 <ble_gapc_le_phy_ind_handler+0x4c>
10003af8:	72a0      	strb	r0, [r4, #10]
10003afa:	2000      	movs	r0, #0
10003afc:	b00b      	add	sp, #44	; 0x2c
10003afe:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003b00:	23e2      	movs	r3, #226	; 0xe2
10003b02:	2100      	movs	r1, #0
10003b04:	4a1b      	ldr	r2, [pc, #108]	; (10003b74 <ble_gapc_le_phy_ind_handler+0xb0>)
10003b06:	4d1c      	ldr	r5, [pc, #112]	; (10003b78 <ble_gapc_le_phy_ind_handler+0xb4>)
10003b08:	47a8      	blx	r5
10003b0a:	2301      	movs	r3, #1
10003b0c:	7263      	strb	r3, [r4, #9]
10003b0e:	e7ec      	b.n	10003aea <ble_gapc_le_phy_ind_handler+0x26>
10003b10:	23e2      	movs	r3, #226	; 0xe2
10003b12:	2100      	movs	r1, #0
10003b14:	4a17      	ldr	r2, [pc, #92]	; (10003b74 <ble_gapc_le_phy_ind_handler+0xb0>)
10003b16:	4d18      	ldr	r5, [pc, #96]	; (10003b78 <ble_gapc_le_phy_ind_handler+0xb4>)
10003b18:	47a8      	blx	r5
10003b1a:	2301      	movs	r3, #1
10003b1c:	72a3      	strb	r3, [r4, #10]
10003b1e:	e7ec      	b.n	10003afa <ble_gapc_le_phy_ind_handler+0x36>
10003b20:	7830      	ldrb	r0, [r6, #0]
10003b22:	ad01      	add	r5, sp, #4
10003b24:	712f      	strb	r7, [r5, #4]
10003b26:	2802      	cmp	r0, #2
10003b28:	d003      	beq.n	10003b32 <ble_gapc_le_phy_ind_handler+0x6e>
10003b2a:	2803      	cmp	r0, #3
10003b2c:	d001      	beq.n	10003b32 <ble_gapc_le_phy_ind_handler+0x6e>
10003b2e:	2801      	cmp	r0, #1
10003b30:	d10d      	bne.n	10003b4e <ble_gapc_le_phy_ind_handler+0x8a>
10003b32:	7168      	strb	r0, [r5, #5]
10003b34:	7870      	ldrb	r0, [r6, #1]
10003b36:	2802      	cmp	r0, #2
10003b38:	d003      	beq.n	10003b42 <ble_gapc_le_phy_ind_handler+0x7e>
10003b3a:	2803      	cmp	r0, #3
10003b3c:	d001      	beq.n	10003b42 <ble_gapc_le_phy_ind_handler+0x7e>
10003b3e:	2801      	cmp	r0, #1
10003b40:	d10d      	bne.n	10003b5e <ble_gapc_le_phy_ind_handler+0x9a>
10003b42:	71a8      	strb	r0, [r5, #6]
10003b44:	0029      	movs	r1, r5
10003b46:	200d      	movs	r0, #13
10003b48:	4b0c      	ldr	r3, [pc, #48]	; (10003b7c <ble_gapc_le_phy_ind_handler+0xb8>)
10003b4a:	4798      	blx	r3
10003b4c:	e7d5      	b.n	10003afa <ble_gapc_le_phy_ind_handler+0x36>
10003b4e:	23e2      	movs	r3, #226	; 0xe2
10003b50:	0021      	movs	r1, r4
10003b52:	4a08      	ldr	r2, [pc, #32]	; (10003b74 <ble_gapc_le_phy_ind_handler+0xb0>)
10003b54:	4c08      	ldr	r4, [pc, #32]	; (10003b78 <ble_gapc_le_phy_ind_handler+0xb4>)
10003b56:	47a0      	blx	r4
10003b58:	2301      	movs	r3, #1
10003b5a:	716b      	strb	r3, [r5, #5]
10003b5c:	e7ea      	b.n	10003b34 <ble_gapc_le_phy_ind_handler+0x70>
10003b5e:	23e2      	movs	r3, #226	; 0xe2
10003b60:	2100      	movs	r1, #0
10003b62:	4a04      	ldr	r2, [pc, #16]	; (10003b74 <ble_gapc_le_phy_ind_handler+0xb0>)
10003b64:	4c04      	ldr	r4, [pc, #16]	; (10003b78 <ble_gapc_le_phy_ind_handler+0xb4>)
10003b66:	47a0      	blx	r4
10003b68:	2301      	movs	r3, #1
10003b6a:	71ab      	strb	r3, [r5, #6]
10003b6c:	e7ea      	b.n	10003b44 <ble_gapc_le_phy_ind_handler+0x80>
10003b6e:	46c0      	nop			; (mov r8, r8)
10003b70:	10003595 	.word	0x10003595
10003b74:	10006016 	.word	0x10006016
10003b78:	00006641 	.word	0x00006641
10003b7c:	10003a75 	.word	0x10003a75

10003b80 <ble_gapc_param_update_req_ind_handler>:
10003b80:	b510      	push	{r4, lr}
10003b82:	0a1b      	lsrs	r3, r3, #8
10003b84:	b08a      	sub	sp, #40	; 0x28
10003b86:	b2da      	uxtb	r2, r3
10003b88:	2bff      	cmp	r3, #255	; 0xff
10003b8a:	d105      	bne.n	10003b98 <ble_gapc_param_update_req_ind_handler+0x18>
10003b8c:	4808      	ldr	r0, [pc, #32]	; (10003bb0 <ble_gapc_param_update_req_ind_handler+0x30>)
10003b8e:	4b09      	ldr	r3, [pc, #36]	; (10003bb4 <ble_gapc_param_update_req_ind_handler+0x34>)
10003b90:	4798      	blx	r3
10003b92:	2000      	movs	r0, #0
10003b94:	b00a      	add	sp, #40	; 0x28
10003b96:	bd10      	pop	{r4, pc}
10003b98:	200a      	movs	r0, #10
10003b9a:	ac01      	add	r4, sp, #4
10003b9c:	7122      	strb	r2, [r4, #4]
10003b9e:	4b06      	ldr	r3, [pc, #24]	; (10003bb8 <ble_gapc_param_update_req_ind_handler+0x38>)
10003ba0:	2208      	movs	r2, #8
10003ba2:	4468      	add	r0, sp
10003ba4:	4798      	blx	r3
10003ba6:	0021      	movs	r1, r4
10003ba8:	200c      	movs	r0, #12
10003baa:	4b04      	ldr	r3, [pc, #16]	; (10003bbc <ble_gapc_param_update_req_ind_handler+0x3c>)
10003bac:	4798      	blx	r3
10003bae:	e7f0      	b.n	10003b92 <ble_gapc_param_update_req_ind_handler+0x12>
10003bb0:	1000605d 	.word	0x1000605d
10003bb4:	000066b1 	.word	0x000066b1
10003bb8:	00005821 	.word	0x00005821
10003bbc:	10003a75 	.word	0x10003a75

10003bc0 <ble_gapc_default_handler>:
10003bc0:	b5f0      	push	{r4, r5, r6, r7, lr}
10003bc2:	b08d      	sub	sp, #52	; 0x34
10003bc4:	9201      	str	r2, [sp, #4]
10003bc6:	0a1a      	lsrs	r2, r3, #8
10003bc8:	9200      	str	r2, [sp, #0]
10003bca:	466a      	mov	r2, sp
10003bcc:	7817      	ldrb	r7, [r2, #0]
10003bce:	4a65      	ldr	r2, [pc, #404]	; (10003d64 <ble_gapc_default_handler+0x1a4>)
10003bd0:	0006      	movs	r6, r0
10003bd2:	000c      	movs	r4, r1
10003bd4:	4290      	cmp	r0, r2
10003bd6:	d11a      	bne.n	10003c0e <ble_gapc_default_handler+0x4e>
10003bd8:	200a      	movs	r0, #10
10003bda:	ad03      	add	r5, sp, #12
10003bdc:	ab02      	add	r3, sp, #8
10003bde:	18c0      	adds	r0, r0, r3
10003be0:	2212      	movs	r2, #18
10003be2:	4b61      	ldr	r3, [pc, #388]	; (10003d68 <ble_gapc_default_handler+0x1a8>)
10003be4:	712f      	strb	r7, [r5, #4]
10003be6:	4798      	blx	r3
10003be8:	0029      	movs	r1, r5
10003bea:	2005      	movs	r0, #5
10003bec:	4b5f      	ldr	r3, [pc, #380]	; (10003d6c <ble_gapc_default_handler+0x1ac>)
10003bee:	4798      	blx	r3
10003bf0:	0023      	movs	r3, r4
10003bf2:	9a01      	ldr	r2, [sp, #4]
10003bf4:	3b0c      	subs	r3, #12
10003bf6:	80da      	strh	r2, [r3, #6]
10003bf8:	9a00      	ldr	r2, [sp, #0]
10003bfa:	0020      	movs	r0, r4
10003bfc:	0211      	lsls	r1, r2, #8
10003bfe:	22ff      	movs	r2, #255	; 0xff
10003c00:	430a      	orrs	r2, r1
10003c02:	809e      	strh	r6, [r3, #4]
10003c04:	811a      	strh	r2, [r3, #8]
10003c06:	4b5a      	ldr	r3, [pc, #360]	; (10003d70 <ble_gapc_default_handler+0x1b0>)
10003c08:	4798      	blx	r3
10003c0a:	2001      	movs	r0, #1
10003c0c:	e0a7      	b.n	10003d5e <ble_gapc_default_handler+0x19e>
10003c0e:	4a59      	ldr	r2, [pc, #356]	; (10003d74 <ble_gapc_default_handler+0x1b4>)
10003c10:	4290      	cmp	r0, r2
10003c12:	d107      	bne.n	10003c24 <ble_gapc_default_handler+0x64>
10003c14:	8823      	ldrh	r3, [r4, #0]
10003c16:	a903      	add	r1, sp, #12
10003c18:	710f      	strb	r7, [r1, #4]
10003c1a:	80cb      	strh	r3, [r1, #6]
10003c1c:	78a3      	ldrb	r3, [r4, #2]
10003c1e:	2006      	movs	r0, #6
10003c20:	810b      	strh	r3, [r1, #8]
10003c22:	e7e3      	b.n	10003bec <ble_gapc_default_handler+0x2c>
10003c24:	4a54      	ldr	r2, [pc, #336]	; (10003d78 <ble_gapc_default_handler+0x1b8>)
10003c26:	4290      	cmp	r0, r2
10003c28:	d10c      	bne.n	10003c44 <ble_gapc_default_handler+0x84>
10003c2a:	200a      	movs	r0, #10
10003c2c:	ad03      	add	r5, sp, #12
10003c2e:	ab02      	add	r3, sp, #8
10003c30:	18c0      	adds	r0, r0, r3
10003c32:	2206      	movs	r2, #6
10003c34:	4b4c      	ldr	r3, [pc, #304]	; (10003d68 <ble_gapc_default_handler+0x1a8>)
10003c36:	712f      	strb	r7, [r5, #4]
10003c38:	4798      	blx	r3
10003c3a:	0029      	movs	r1, r5
10003c3c:	2009      	movs	r0, #9
10003c3e:	4b4b      	ldr	r3, [pc, #300]	; (10003d6c <ble_gapc_default_handler+0x1ac>)
10003c40:	4798      	blx	r3
10003c42:	e03e      	b.n	10003cc2 <ble_gapc_default_handler+0x102>
10003c44:	4a4d      	ldr	r2, [pc, #308]	; (10003d7c <ble_gapc_default_handler+0x1bc>)
10003c46:	4290      	cmp	r0, r2
10003c48:	d125      	bne.n	10003c96 <ble_gapc_default_handler+0xd6>
10003c4a:	ad03      	add	r5, sp, #12
10003c4c:	0038      	movs	r0, r7
10003c4e:	4b4c      	ldr	r3, [pc, #304]	; (10003d80 <ble_gapc_default_handler+0x1c0>)
10003c50:	712f      	strb	r7, [r5, #4]
10003c52:	4798      	blx	r3
10003c54:	0007      	movs	r7, r0
10003c56:	200a      	movs	r0, #10
10003c58:	ab02      	add	r3, sp, #8
10003c5a:	18c0      	adds	r0, r0, r3
10003c5c:	2206      	movs	r2, #6
10003c5e:	2100      	movs	r1, #0
10003c60:	4b48      	ldr	r3, [pc, #288]	; (10003d84 <ble_gapc_default_handler+0x1c4>)
10003c62:	4798      	blx	r3
10003c64:	7820      	ldrb	r0, [r4, #0]
10003c66:	3f03      	subs	r7, #3
10003c68:	81af      	strh	r7, [r5, #12]
10003c6a:	2803      	cmp	r0, #3
10003c6c:	d80c      	bhi.n	10003c88 <ble_gapc_default_handler+0xc8>
10003c6e:	f000 fff7 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10003c72:	0204      	.short	0x0204
10003c74:	0907      	.short	0x0907
10003c76:	2301      	movs	r3, #1
10003c78:	71ab      	strb	r3, [r5, #6]
10003c7a:	2010      	movs	r0, #16
10003c7c:	a903      	add	r1, sp, #12
10003c7e:	e7de      	b.n	10003c3e <ble_gapc_default_handler+0x7e>
10003c80:	2302      	movs	r3, #2
10003c82:	e7f9      	b.n	10003c78 <ble_gapc_default_handler+0xb8>
10003c84:	2303      	movs	r3, #3
10003c86:	e7f7      	b.n	10003c78 <ble_gapc_default_handler+0xb8>
10003c88:	4b3f      	ldr	r3, [pc, #252]	; (10003d88 <ble_gapc_default_handler+0x1c8>)
10003c8a:	2100      	movs	r1, #0
10003c8c:	4a3f      	ldr	r2, [pc, #252]	; (10003d8c <ble_gapc_default_handler+0x1cc>)
10003c8e:	4f40      	ldr	r7, [pc, #256]	; (10003d90 <ble_gapc_default_handler+0x1d0>)
10003c90:	47b8      	blx	r7
10003c92:	2300      	movs	r3, #0
10003c94:	e7f0      	b.n	10003c78 <ble_gapc_default_handler+0xb8>
10003c96:	4a3f      	ldr	r2, [pc, #252]	; (10003d94 <ble_gapc_default_handler+0x1d4>)
10003c98:	4290      	cmp	r0, r2
10003c9a:	d14b      	bne.n	10003d34 <ble_gapc_default_handler+0x174>
10003c9c:	210b      	movs	r1, #11
10003c9e:	0038      	movs	r0, r7
10003ca0:	4b3d      	ldr	r3, [pc, #244]	; (10003d98 <ble_gapc_default_handler+0x1d8>)
10003ca2:	4798      	blx	r3
10003ca4:	1e05      	subs	r5, r0, #0
10003ca6:	d023      	beq.n	10003cf0 <ble_gapc_default_handler+0x130>
10003ca8:	7187      	strb	r7, [r0, #6]
10003caa:	7820      	ldrb	r0, [r4, #0]
10003cac:	2809      	cmp	r0, #9
10003cae:	d818      	bhi.n	10003ce2 <ble_gapc_default_handler+0x122>
10003cb0:	f000 ffd6 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10003cb4:	1717051c 	.word	0x1717051c
10003cb8:	1717110f 	.word	0x1717110f
10003cbc:	1513      	.short	0x1513
10003cbe:	2301      	movs	r3, #1
10003cc0:	71eb      	strb	r3, [r5, #7]
10003cc2:	2204      	movs	r2, #4
10003cc4:	4b35      	ldr	r3, [pc, #212]	; (10003d9c <ble_gapc_default_handler+0x1dc>)
10003cc6:	18f3      	adds	r3, r6, r3
10003cc8:	4393      	bics	r3, r2
10003cca:	b29b      	uxth	r3, r3
10003ccc:	2b00      	cmp	r3, #0
10003cce:	d145      	bne.n	10003d5c <ble_gapc_default_handler+0x19c>
10003cd0:	e78e      	b.n	10003bf0 <ble_gapc_default_handler+0x30>
10003cd2:	2304      	movs	r3, #4
10003cd4:	e7f4      	b.n	10003cc0 <ble_gapc_default_handler+0x100>
10003cd6:	2305      	movs	r3, #5
10003cd8:	e7f2      	b.n	10003cc0 <ble_gapc_default_handler+0x100>
10003cda:	230c      	movs	r3, #12
10003cdc:	e7f0      	b.n	10003cc0 <ble_gapc_default_handler+0x100>
10003cde:	230d      	movs	r3, #13
10003ce0:	e7ee      	b.n	10003cc0 <ble_gapc_default_handler+0x100>
10003ce2:	2100      	movs	r1, #0
10003ce4:	4b2e      	ldr	r3, [pc, #184]	; (10003da0 <ble_gapc_default_handler+0x1e0>)
10003ce6:	4a29      	ldr	r2, [pc, #164]	; (10003d8c <ble_gapc_default_handler+0x1cc>)
10003ce8:	4f29      	ldr	r7, [pc, #164]	; (10003d90 <ble_gapc_default_handler+0x1d0>)
10003cea:	47b8      	blx	r7
10003cec:	2300      	movs	r3, #0
10003cee:	e7e7      	b.n	10003cc0 <ble_gapc_default_handler+0x100>
10003cf0:	ab03      	add	r3, sp, #12
10003cf2:	80d8      	strh	r0, [r3, #6]
10003cf4:	7820      	ldrb	r0, [r4, #0]
10003cf6:	711f      	strb	r7, [r3, #4]
10003cf8:	2809      	cmp	r0, #9
10003cfa:	d813      	bhi.n	10003d24 <ble_gapc_default_handler+0x164>
10003cfc:	f000 ffb0 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10003d00:	12120518 	.word	0x12120518
10003d04:	12120c0a 	.word	0x12120c0a
10003d08:	100e      	.short	0x100e
10003d0a:	2201      	movs	r2, #1
10003d0c:	2011      	movs	r0, #17
10003d0e:	721a      	strb	r2, [r3, #8]
10003d10:	a903      	add	r1, sp, #12
10003d12:	e794      	b.n	10003c3e <ble_gapc_default_handler+0x7e>
10003d14:	2204      	movs	r2, #4
10003d16:	e7f9      	b.n	10003d0c <ble_gapc_default_handler+0x14c>
10003d18:	2205      	movs	r2, #5
10003d1a:	e7f7      	b.n	10003d0c <ble_gapc_default_handler+0x14c>
10003d1c:	220c      	movs	r2, #12
10003d1e:	e7f5      	b.n	10003d0c <ble_gapc_default_handler+0x14c>
10003d20:	220d      	movs	r2, #13
10003d22:	e7f3      	b.n	10003d0c <ble_gapc_default_handler+0x14c>
10003d24:	4b1e      	ldr	r3, [pc, #120]	; (10003da0 <ble_gapc_default_handler+0x1e0>)
10003d26:	2100      	movs	r1, #0
10003d28:	4a18      	ldr	r2, [pc, #96]	; (10003d8c <ble_gapc_default_handler+0x1cc>)
10003d2a:	4d19      	ldr	r5, [pc, #100]	; (10003d90 <ble_gapc_default_handler+0x1d0>)
10003d2c:	47a8      	blx	r5
10003d2e:	ab03      	add	r3, sp, #12
10003d30:	2200      	movs	r2, #0
10003d32:	e7eb      	b.n	10003d0c <ble_gapc_default_handler+0x14c>
10003d34:	4a1b      	ldr	r2, [pc, #108]	; (10003da4 <ble_gapc_default_handler+0x1e4>)
10003d36:	6815      	ldr	r5, [r2, #0]
10003d38:	2d00      	cmp	r5, #0
10003d3a:	d007      	beq.n	10003d4c <ble_gapc_default_handler+0x18c>
10003d3c:	b2da      	uxtb	r2, r3
10003d3e:	3aff      	subs	r2, #255	; 0xff
10003d40:	4253      	negs	r3, r2
10003d42:	415a      	adcs	r2, r3
10003d44:	000b      	movs	r3, r1
10003d46:	b2d2      	uxtb	r2, r2
10003d48:	0039      	movs	r1, r7
10003d4a:	47a8      	blx	r5
10003d4c:	4b16      	ldr	r3, [pc, #88]	; (10003da8 <ble_gapc_default_handler+0x1e8>)
10003d4e:	429e      	cmp	r6, r3
10003d50:	d1b7      	bne.n	10003cc2 <ble_gapc_default_handler+0x102>
10003d52:	7823      	ldrb	r3, [r4, #0]
10003d54:	3b02      	subs	r3, #2
10003d56:	2b01      	cmp	r3, #1
10003d58:	d800      	bhi.n	10003d5c <ble_gapc_default_handler+0x19c>
10003d5a:	e749      	b.n	10003bf0 <ble_gapc_default_handler+0x30>
10003d5c:	2000      	movs	r0, #0
10003d5e:	b00d      	add	sp, #52	; 0x34
10003d60:	bdf0      	pop	{r4, r5, r6, r7, pc}
10003d62:	46c0      	nop			; (mov r8, r8)
10003d64:	00000e01 	.word	0x00000e01
10003d68:	00005821 	.word	0x00005821
10003d6c:	10003a75 	.word	0x10003a75
10003d70:	000011a9 	.word	0x000011a9
10003d74:	00000e03 	.word	0x00000e03
10003d78:	00000e11 	.word	0x00000e11
10003d7c:	00000e0a 	.word	0x00000e0a
10003d80:	00020dfd 	.word	0x00020dfd
10003d84:	00005859 	.word	0x00005859
10003d88:	00000297 	.word	0x00000297
10003d8c:	10006016 	.word	0x10006016
10003d90:	00006641 	.word	0x00006641
10003d94:	00000e19 	.word	0x00000e19
10003d98:	10003595 	.word	0x10003595
10003d9c:	fffff1eb 	.word	0xfffff1eb
10003da0:	00000379 	.word	0x00000379
10003da4:	20014e4c 	.word	0x20014e4c
10003da8:	00000e15 	.word	0x00000e15

10003dac <ble_gapm_ext_adv_report_ind_handler>:
10003dac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10003dae:	8b0e      	ldrh	r6, [r1, #24]
10003db0:	4b18      	ldr	r3, [pc, #96]	; (10003e14 <ble_gapm_ext_adv_report_ind_handler+0x68>)
10003db2:	0030      	movs	r0, r6
10003db4:	3024      	adds	r0, #36	; 0x24
10003db6:	000d      	movs	r5, r1
10003db8:	4798      	blx	r3
10003dba:	2707      	movs	r7, #7
10003dbc:	0004      	movs	r4, r0
10003dbe:	786b      	ldrb	r3, [r5, #1]
10003dc0:	003a      	movs	r2, r7
10003dc2:	1ca9      	adds	r1, r5, #2
10003dc4:	7103      	strb	r3, [r0, #4]
10003dc6:	4b14      	ldr	r3, [pc, #80]	; (10003e18 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10003dc8:	3005      	adds	r0, #5
10003dca:	4798      	blx	r3
10003dcc:	0029      	movs	r1, r5
10003dce:	0020      	movs	r0, r4
10003dd0:	003a      	movs	r2, r7
10003dd2:	4b11      	ldr	r3, [pc, #68]	; (10003e18 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10003dd4:	3109      	adds	r1, #9
10003dd6:	300c      	adds	r0, #12
10003dd8:	4798      	blx	r3
10003dda:	0029      	movs	r1, r5
10003ddc:	0020      	movs	r0, r4
10003dde:	7c2b      	ldrb	r3, [r5, #16]
10003de0:	0032      	movs	r2, r6
10003de2:	74e3      	strb	r3, [r4, #19]
10003de4:	7c6b      	ldrb	r3, [r5, #17]
10003de6:	8366      	strh	r6, [r4, #26]
10003de8:	7523      	strb	r3, [r4, #20]
10003dea:	7cab      	ldrb	r3, [r5, #18]
10003dec:	311a      	adds	r1, #26
10003dee:	7563      	strb	r3, [r4, #21]
10003df0:	7ceb      	ldrb	r3, [r5, #19]
10003df2:	301c      	adds	r0, #28
10003df4:	75a3      	strb	r3, [r4, #22]
10003df6:	7d2b      	ldrb	r3, [r5, #20]
10003df8:	75e3      	strb	r3, [r4, #23]
10003dfa:	8aeb      	ldrh	r3, [r5, #22]
10003dfc:	8323      	strh	r3, [r4, #24]
10003dfe:	4b06      	ldr	r3, [pc, #24]	; (10003e18 <ble_gapm_ext_adv_report_ind_handler+0x6c>)
10003e00:	4798      	blx	r3
10003e02:	0021      	movs	r1, r4
10003e04:	2004      	movs	r0, #4
10003e06:	4b05      	ldr	r3, [pc, #20]	; (10003e1c <ble_gapm_ext_adv_report_ind_handler+0x70>)
10003e08:	4798      	blx	r3
10003e0a:	0020      	movs	r0, r4
10003e0c:	4b04      	ldr	r3, [pc, #16]	; (10003e20 <ble_gapm_ext_adv_report_ind_handler+0x74>)
10003e0e:	4798      	blx	r3
10003e10:	2000      	movs	r0, #0
10003e12:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10003e14:	0002f615 	.word	0x0002f615
10003e18:	00005821 	.word	0x00005821
10003e1c:	10003a75 	.word	0x10003a75
10003e20:	0002f629 	.word	0x0002f629

10003e24 <ble_gapm_activity_stopped_ind_handler>:
10003e24:	b530      	push	{r4, r5, lr}
10003e26:	000c      	movs	r4, r1
10003e28:	4b25      	ldr	r3, [pc, #148]	; (10003ec0 <ble_gapm_activity_stopped_ind_handler+0x9c>)
10003e2a:	b08b      	sub	sp, #44	; 0x2c
10003e2c:	681b      	ldr	r3, [r3, #0]
10003e2e:	2b00      	cmp	r3, #0
10003e30:	d106      	bne.n	10003e40 <ble_gapm_activity_stopped_ind_handler+0x1c>
10003e32:	7860      	ldrb	r0, [r4, #1]
10003e34:	2803      	cmp	r0, #3
10003e36:	d83d      	bhi.n	10003eb4 <ble_gapm_activity_stopped_ind_handler+0x90>
10003e38:	f000 ff12 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10003e3c:	0a2b1a0d 	.word	0x0a2b1a0d
10003e40:	7c1a      	ldrb	r2, [r3, #16]
10003e42:	2aa5      	cmp	r2, #165	; 0xa5
10003e44:	d1f2      	bne.n	10003e2c <ble_gapm_activity_stopped_ind_handler+0x8>
10003e46:	68da      	ldr	r2, [r3, #12]
10003e48:	7911      	ldrb	r1, [r2, #4]
10003e4a:	7822      	ldrb	r2, [r4, #0]
10003e4c:	4291      	cmp	r1, r2
10003e4e:	d1ed      	bne.n	10003e2c <ble_gapm_activity_stopped_ind_handler+0x8>
10003e50:	2000      	movs	r0, #0
10003e52:	b00b      	add	sp, #44	; 0x2c
10003e54:	bd30      	pop	{r4, r5, pc}
10003e56:	4b1b      	ldr	r3, [pc, #108]	; (10003ec4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10003e58:	78a0      	ldrb	r0, [r4, #2]
10003e5a:	7825      	ldrb	r5, [r4, #0]
10003e5c:	4798      	blx	r3
10003e5e:	a901      	add	r1, sp, #4
10003e60:	78e3      	ldrb	r3, [r4, #3]
10003e62:	80c8      	strh	r0, [r1, #6]
10003e64:	2000      	movs	r0, #0
10003e66:	710d      	strb	r5, [r1, #4]
10003e68:	720b      	strb	r3, [r1, #8]
10003e6a:	4b17      	ldr	r3, [pc, #92]	; (10003ec8 <ble_gapm_activity_stopped_ind_handler+0xa4>)
10003e6c:	4798      	blx	r3
10003e6e:	e7ef      	b.n	10003e50 <ble_gapm_activity_stopped_ind_handler+0x2c>
10003e70:	78a0      	ldrb	r0, [r4, #2]
10003e72:	4b14      	ldr	r3, [pc, #80]	; (10003ec4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10003e74:	7825      	ldrb	r5, [r4, #0]
10003e76:	4798      	blx	r3
10003e78:	0004      	movs	r4, r0
10003e7a:	2009      	movs	r0, #9
10003e7c:	2100      	movs	r1, #0
10003e7e:	4b13      	ldr	r3, [pc, #76]	; (10003ecc <ble_gapm_activity_stopped_ind_handler+0xa8>)
10003e80:	2205      	movs	r2, #5
10003e82:	4468      	add	r0, sp
10003e84:	4798      	blx	r3
10003e86:	466b      	mov	r3, sp
10003e88:	2001      	movs	r0, #1
10003e8a:	721d      	strb	r5, [r3, #8]
10003e8c:	815c      	strh	r4, [r3, #10]
10003e8e:	a901      	add	r1, sp, #4
10003e90:	e7eb      	b.n	10003e6a <ble_gapm_activity_stopped_ind_handler+0x46>
10003e92:	78a0      	ldrb	r0, [r4, #2]
10003e94:	4b0b      	ldr	r3, [pc, #44]	; (10003ec4 <ble_gapm_activity_stopped_ind_handler+0xa0>)
10003e96:	7825      	ldrb	r5, [r4, #0]
10003e98:	4798      	blx	r3
10003e9a:	0004      	movs	r4, r0
10003e9c:	2009      	movs	r0, #9
10003e9e:	2100      	movs	r1, #0
10003ea0:	4b0a      	ldr	r3, [pc, #40]	; (10003ecc <ble_gapm_activity_stopped_ind_handler+0xa8>)
10003ea2:	2205      	movs	r2, #5
10003ea4:	4468      	add	r0, sp
10003ea6:	4798      	blx	r3
10003ea8:	466b      	mov	r3, sp
10003eaa:	2002      	movs	r0, #2
10003eac:	721d      	strb	r5, [r3, #8]
10003eae:	815c      	strh	r4, [r3, #10]
10003eb0:	a901      	add	r1, sp, #4
10003eb2:	e7da      	b.n	10003e6a <ble_gapm_activity_stopped_ind_handler+0x46>
10003eb4:	4a06      	ldr	r2, [pc, #24]	; (10003ed0 <ble_gapm_activity_stopped_ind_handler+0xac>)
10003eb6:	4907      	ldr	r1, [pc, #28]	; (10003ed4 <ble_gapm_activity_stopped_ind_handler+0xb0>)
10003eb8:	4807      	ldr	r0, [pc, #28]	; (10003ed8 <ble_gapm_activity_stopped_ind_handler+0xb4>)
10003eba:	4b08      	ldr	r3, [pc, #32]	; (10003edc <ble_gapm_activity_stopped_ind_handler+0xb8>)
10003ebc:	4798      	blx	r3
10003ebe:	e7c7      	b.n	10003e50 <ble_gapm_activity_stopped_ind_handler+0x2c>
10003ec0:	20014e24 	.word	0x20014e24
10003ec4:	10004569 	.word	0x10004569
10003ec8:	10003a75 	.word	0x10003a75
10003ecc:	00005859 	.word	0x00005859
10003ed0:	00000617 	.word	0x00000617
10003ed4:	10006016 	.word	0x10006016
10003ed8:	10004cec 	.word	0x10004cec
10003edc:	00006609 	.word	0x00006609

10003ee0 <ble_gap_evt_func_reg>:
10003ee0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10003ee2:	0005      	movs	r5, r0
10003ee4:	0016      	movs	r6, r2
10003ee6:	4f0c      	ldr	r7, [pc, #48]	; (10003f18 <ble_gap_evt_func_reg+0x38>)
10003ee8:	9101      	str	r1, [sp, #4]
10003eea:	683c      	ldr	r4, [r7, #0]
10003eec:	2c00      	cmp	r4, #0
10003eee:	d10d      	bne.n	10003f0c <ble_gap_evt_func_reg+0x2c>
10003ef0:	2102      	movs	r1, #2
10003ef2:	4b0a      	ldr	r3, [pc, #40]	; (10003f1c <ble_gap_evt_func_reg+0x3c>)
10003ef4:	200c      	movs	r0, #12
10003ef6:	4798      	blx	r3
10003ef8:	9b01      	ldr	r3, [sp, #4]
10003efa:	6046      	str	r6, [r0, #4]
10003efc:	7245      	strb	r5, [r0, #9]
10003efe:	0002      	movs	r2, r0
10003f00:	7203      	strb	r3, [r0, #8]
10003f02:	0021      	movs	r1, r4
10003f04:	0038      	movs	r0, r7
10003f06:	4b06      	ldr	r3, [pc, #24]	; (10003f20 <ble_gap_evt_func_reg+0x40>)
10003f08:	4798      	blx	r3
10003f0a:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10003f0c:	7a63      	ldrb	r3, [r4, #9]
10003f0e:	42ab      	cmp	r3, r5
10003f10:	d2ee      	bcs.n	10003ef0 <ble_gap_evt_func_reg+0x10>
10003f12:	6824      	ldr	r4, [r4, #0]
10003f14:	e7ea      	b.n	10003eec <ble_gap_evt_func_reg+0xc>
10003f16:	46c0      	nop			; (mov r8, r8)
10003f18:	20014dfc 	.word	0x20014dfc
10003f1c:	000013b9 	.word	0x000013b9
10003f20:	0000282d 	.word	0x0000282d

10003f24 <ble_gapc_disconnect>:
10003f24:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10003f26:	000f      	movs	r7, r1
10003f28:	2109      	movs	r1, #9
10003f2a:	0200      	lsls	r0, r0, #8
10003f2c:	4301      	orrs	r1, r0
10003f2e:	4c0d      	ldr	r4, [pc, #52]	; (10003f64 <ble_gapc_disconnect+0x40>)
10003f30:	9301      	str	r3, [sp, #4]
10003f32:	0015      	movs	r5, r2
10003f34:	2302      	movs	r3, #2
10003f36:	2204      	movs	r2, #4
10003f38:	480b      	ldr	r0, [pc, #44]	; (10003f68 <ble_gapc_disconnect+0x44>)
10003f3a:	47a0      	blx	r4
10003f3c:	2601      	movs	r6, #1
10003f3e:	0004      	movs	r4, r0
10003f40:	7006      	strb	r6, [r0, #0]
10003f42:	4b0a      	ldr	r3, [pc, #40]	; (10003f6c <ble_gapc_disconnect+0x48>)
10003f44:	0038      	movs	r0, r7
10003f46:	4798      	blx	r3
10003f48:	7060      	strb	r0, [r4, #1]
10003f4a:	2d00      	cmp	r5, #0
10003f4c:	d005      	beq.n	10003f5a <ble_gapc_disconnect+0x36>
10003f4e:	0028      	movs	r0, r5
10003f50:	2300      	movs	r3, #0
10003f52:	0031      	movs	r1, r6
10003f54:	9a01      	ldr	r2, [sp, #4]
10003f56:	4d06      	ldr	r5, [pc, #24]	; (10003f70 <ble_gapc_disconnect+0x4c>)
10003f58:	47a8      	blx	r5
10003f5a:	0020      	movs	r0, r4
10003f5c:	4b05      	ldr	r3, [pc, #20]	; (10003f74 <ble_gapc_disconnect+0x50>)
10003f5e:	4798      	blx	r3
10003f60:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10003f62:	46c0      	nop			; (mov r8, r8)
10003f64:	00001171 	.word	0x00001171
10003f68:	00000e04 	.word	0x00000e04
10003f6c:	10004b4d 	.word	0x10004b4d
10003f70:	10003a45 	.word	0x10003a45
10003f74:	000011a9 	.word	0x000011a9

10003f78 <ble_gapc_param_update_cfm>:
10003f78:	b570      	push	{r4, r5, r6, lr}
10003f7a:	000d      	movs	r5, r1
10003f7c:	2109      	movs	r1, #9
10003f7e:	0200      	lsls	r0, r0, #8
10003f80:	2204      	movs	r2, #4
10003f82:	4301      	orrs	r1, r0
10003f84:	20e1      	movs	r0, #225	; 0xe1
10003f86:	2306      	movs	r3, #6
10003f88:	4090      	lsls	r0, r2
10003f8a:	4c05      	ldr	r4, [pc, #20]	; (10003fa0 <ble_gapc_param_update_cfm+0x28>)
10003f8c:	47a0      	blx	r4
10003f8e:	0004      	movs	r4, r0
10003f90:	0029      	movs	r1, r5
10003f92:	2206      	movs	r2, #6
10003f94:	4b03      	ldr	r3, [pc, #12]	; (10003fa4 <ble_gapc_param_update_cfm+0x2c>)
10003f96:	4798      	blx	r3
10003f98:	0020      	movs	r0, r4
10003f9a:	4b03      	ldr	r3, [pc, #12]	; (10003fa8 <ble_gapc_param_update_cfm+0x30>)
10003f9c:	4798      	blx	r3
10003f9e:	bd70      	pop	{r4, r5, r6, pc}
10003fa0:	00001171 	.word	0x00001171
10003fa4:	00005821 	.word	0x00005821
10003fa8:	000011a9 	.word	0x000011a9

10003fac <ble_gapc_get_dev_info_cfm>:
10003fac:	b570      	push	{r4, r5, r6, lr}
10003fae:	000d      	movs	r5, r1
10003fb0:	2109      	movs	r1, #9
10003fb2:	782b      	ldrb	r3, [r5, #0]
10003fb4:	0200      	lsls	r0, r0, #8
10003fb6:	4c25      	ldr	r4, [pc, #148]	; (1000404c <ble_gapc_get_dev_info_cfm+0xa0>)
10003fb8:	4301      	orrs	r1, r0
10003fba:	2b00      	cmp	r3, #0
10003fbc:	d125      	bne.n	1000400a <ble_gapc_get_dev_info_cfm+0x5e>
10003fbe:	892b      	ldrh	r3, [r5, #8]
10003fc0:	2b00      	cmp	r3, #0
10003fc2:	d022      	beq.n	1000400a <ble_gapc_get_dev_info_cfm+0x5e>
10003fc4:	330a      	adds	r3, #10
10003fc6:	b29b      	uxth	r3, r3
10003fc8:	2204      	movs	r2, #4
10003fca:	4821      	ldr	r0, [pc, #132]	; (10004050 <ble_gapc_get_dev_info_cfm+0xa4>)
10003fcc:	47a0      	blx	r4
10003fce:	0004      	movs	r4, r0
10003fd0:	7828      	ldrb	r0, [r5, #0]
10003fd2:	2801      	cmp	r0, #1
10003fd4:	d010      	beq.n	10003ff8 <ble_gapc_get_dev_info_cfm+0x4c>
10003fd6:	2802      	cmp	r0, #2
10003fd8:	d019      	beq.n	1000400e <ble_gapc_get_dev_info_cfm+0x62>
10003fda:	2800      	cmp	r0, #0
10003fdc:	d11d      	bne.n	1000401a <ble_gapc_get_dev_info_cfm+0x6e>
10003fde:	892a      	ldrh	r2, [r5, #8]
10003fe0:	2a00      	cmp	r2, #0
10003fe2:	d004      	beq.n	10003fee <ble_gapc_get_dev_info_cfm+0x42>
10003fe4:	0029      	movs	r1, r5
10003fe6:	4b1b      	ldr	r3, [pc, #108]	; (10004054 <ble_gapc_get_dev_info_cfm+0xa8>)
10003fe8:	1d20      	adds	r0, r4, #4
10003fea:	310a      	adds	r1, #10
10003fec:	4798      	blx	r3
10003fee:	892a      	ldrh	r2, [r5, #8]
10003ff0:	4919      	ldr	r1, [pc, #100]	; (10004058 <ble_gapc_get_dev_info_cfm+0xac>)
10003ff2:	481a      	ldr	r0, [pc, #104]	; (1000405c <ble_gapc_get_dev_info_cfm+0xb0>)
10003ff4:	4b1a      	ldr	r3, [pc, #104]	; (10004060 <ble_gapc_get_dev_info_cfm+0xb4>)
10003ff6:	4798      	blx	r3
10003ff8:	892b      	ldrh	r3, [r5, #8]
10003ffa:	8063      	strh	r3, [r4, #2]
10003ffc:	7828      	ldrb	r0, [r5, #0]
10003ffe:	2803      	cmp	r0, #3
10004000:	d81c      	bhi.n	1000403c <ble_gapc_get_dev_info_cfm+0x90>
10004002:	f000 fe2d 	bl	10004c60 <____gnu_thumb1_case_uqi_veneer>
10004006:	1120      	.short	0x1120
10004008:	1917      	.short	0x1917
1000400a:	230a      	movs	r3, #10
1000400c:	e7dc      	b.n	10003fc8 <ble_gapc_get_dev_info_cfm+0x1c>
1000400e:	2208      	movs	r2, #8
10004010:	4b10      	ldr	r3, [pc, #64]	; (10004054 <ble_gapc_get_dev_info_cfm+0xa8>)
10004012:	1ca0      	adds	r0, r4, #2
10004014:	18a9      	adds	r1, r5, r2
10004016:	4798      	blx	r3
10004018:	e7f0      	b.n	10003ffc <ble_gapc_get_dev_info_cfm+0x50>
1000401a:	2388      	movs	r3, #136	; 0x88
1000401c:	2100      	movs	r1, #0
1000401e:	4a11      	ldr	r2, [pc, #68]	; (10004064 <ble_gapc_get_dev_info_cfm+0xb8>)
10004020:	4e11      	ldr	r6, [pc, #68]	; (10004068 <ble_gapc_get_dev_info_cfm+0xbc>)
10004022:	00db      	lsls	r3, r3, #3
10004024:	47b0      	blx	r6
10004026:	e7e9      	b.n	10003ffc <ble_gapc_get_dev_info_cfm+0x50>
10004028:	2301      	movs	r3, #1
1000402a:	7023      	strb	r3, [r4, #0]
1000402c:	0020      	movs	r0, r4
1000402e:	4b0f      	ldr	r3, [pc, #60]	; (1000406c <ble_gapc_get_dev_info_cfm+0xc0>)
10004030:	4798      	blx	r3
10004032:	bd70      	pop	{r4, r5, r6, pc}
10004034:	2302      	movs	r3, #2
10004036:	e7f8      	b.n	1000402a <ble_gapc_get_dev_info_cfm+0x7e>
10004038:	2303      	movs	r3, #3
1000403a:	e7f6      	b.n	1000402a <ble_gapc_get_dev_info_cfm+0x7e>
1000403c:	2100      	movs	r1, #0
1000403e:	4b0c      	ldr	r3, [pc, #48]	; (10004070 <ble_gapc_get_dev_info_cfm+0xc4>)
10004040:	4a08      	ldr	r2, [pc, #32]	; (10004064 <ble_gapc_get_dev_info_cfm+0xb8>)
10004042:	4d09      	ldr	r5, [pc, #36]	; (10004068 <ble_gapc_get_dev_info_cfm+0xbc>)
10004044:	47a8      	blx	r5
10004046:	2300      	movs	r3, #0
10004048:	e7ef      	b.n	1000402a <ble_gapc_get_dev_info_cfm+0x7e>
1000404a:	46c0      	nop			; (mov r8, r8)
1000404c:	00001171 	.word	0x00001171
10004050:	00000e0b 	.word	0x00000e0b
10004054:	00005821 	.word	0x00005821
10004058:	100060bc 	.word	0x100060bc
1000405c:	10006073 	.word	0x10006073
10004060:	000066b1 	.word	0x000066b1
10004064:	10006016 	.word	0x10006016
10004068:	00006641 	.word	0x00006641
1000406c:	000011a9 	.word	0x000011a9
10004070:	000002b5 	.word	0x000002b5

10004074 <ble_gapm_reset_cmd>:
10004074:	2201      	movs	r2, #1
10004076:	b570      	push	{r4, r5, r6, lr}
10004078:	0014      	movs	r4, r2
1000407a:	4b0f      	ldr	r3, [pc, #60]	; (100040b8 <ble_gapm_reset_cmd+0x44>)
1000407c:	000e      	movs	r6, r1
1000407e:	7819      	ldrb	r1, [r3, #0]
10004080:	0005      	movs	r5, r0
10004082:	480e      	ldr	r0, [pc, #56]	; (100040bc <ble_gapm_reset_cmd+0x48>)
10004084:	404c      	eors	r4, r1
10004086:	6004      	str	r4, [r0, #0]
10004088:	2900      	cmp	r1, #0
1000408a:	d100      	bne.n	1000408e <ble_gapm_reset_cmd+0x1a>
1000408c:	701a      	strb	r2, [r3, #0]
1000408e:	2108      	movs	r1, #8
10004090:	4c0b      	ldr	r4, [pc, #44]	; (100040c0 <ble_gapm_reset_cmd+0x4c>)
10004092:	2301      	movs	r3, #1
10004094:	2204      	movs	r2, #4
10004096:	480b      	ldr	r0, [pc, #44]	; (100040c4 <ble_gapm_reset_cmd+0x50>)
10004098:	47a0      	blx	r4
1000409a:	2101      	movs	r1, #1
1000409c:	0004      	movs	r4, r0
1000409e:	7001      	strb	r1, [r0, #0]
100040a0:	2d00      	cmp	r5, #0
100040a2:	d004      	beq.n	100040ae <ble_gapm_reset_cmd+0x3a>
100040a4:	0028      	movs	r0, r5
100040a6:	2300      	movs	r3, #0
100040a8:	0032      	movs	r2, r6
100040aa:	4d07      	ldr	r5, [pc, #28]	; (100040c8 <ble_gapm_reset_cmd+0x54>)
100040ac:	47a8      	blx	r5
100040ae:	0020      	movs	r0, r4
100040b0:	4b06      	ldr	r3, [pc, #24]	; (100040cc <ble_gapm_reset_cmd+0x58>)
100040b2:	4798      	blx	r3
100040b4:	bd70      	pop	{r4, r5, r6, pc}
100040b6:	46c0      	nop			; (mov r8, r8)
100040b8:	20014e50 	.word	0x20014e50
100040bc:	20000ff8 	.word	0x20000ff8
100040c0:	00001171 	.word	0x00001171
100040c4:	00000d02 	.word	0x00000d02
100040c8:	100035cd 	.word	0x100035cd
100040cc:	000011a9 	.word	0x000011a9

100040d0 <ble_gapm_set_device_config>:
100040d0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
100040d2:	2334      	movs	r3, #52	; 0x34
100040d4:	0005      	movs	r5, r0
100040d6:	4c32      	ldr	r4, [pc, #200]	; (100041a0 <ble_gapm_set_device_config+0xd0>)
100040d8:	9201      	str	r2, [sp, #4]
100040da:	000f      	movs	r7, r1
100040dc:	2204      	movs	r2, #4
100040de:	2108      	movs	r1, #8
100040e0:	4830      	ldr	r0, [pc, #192]	; (100041a4 <ble_gapm_set_device_config+0xd4>)
100040e2:	47a0      	blx	r4
100040e4:	2303      	movs	r3, #3
100040e6:	0004      	movs	r4, r0
100040e8:	7003      	strb	r3, [r0, #0]
100040ea:	782b      	ldrb	r3, [r5, #0]
100040ec:	4e2e      	ldr	r6, [pc, #184]	; (100041a8 <ble_gapm_set_device_config+0xd8>)
100040ee:	7043      	strb	r3, [r0, #1]
100040f0:	886b      	ldrh	r3, [r5, #2]
100040f2:	2206      	movs	r2, #6
100040f4:	8043      	strh	r3, [r0, #2]
100040f6:	1d29      	adds	r1, r5, #4
100040f8:	3004      	adds	r0, #4
100040fa:	47b0      	blx	r6
100040fc:	0020      	movs	r0, r4
100040fe:	0029      	movs	r1, r5
10004100:	2210      	movs	r2, #16
10004102:	300a      	adds	r0, #10
10004104:	310a      	adds	r1, #10
10004106:	47b0      	blx	r6
10004108:	22e0      	movs	r2, #224	; 0xe0
1000410a:	7eab      	ldrb	r3, [r5, #26]
1000410c:	0112      	lsls	r2, r2, #4
1000410e:	76a3      	strb	r3, [r4, #26]
10004110:	7eeb      	ldrb	r3, [r5, #27]
10004112:	76e3      	strb	r3, [r4, #27]
10004114:	8bab      	ldrh	r3, [r5, #28]
10004116:	83a3      	strh	r3, [r4, #28]
10004118:	8beb      	ldrh	r3, [r5, #30]
1000411a:	83e3      	strh	r3, [r4, #30]
1000411c:	8c2e      	ldrh	r6, [r5, #32]
1000411e:	4216      	tst	r6, r2
10004120:	d008      	beq.n	10004134 <ble_gapm_set_device_config+0x64>
10004122:	0031      	movs	r1, r6
10004124:	4b21      	ldr	r3, [pc, #132]	; (100041ac <ble_gapm_set_device_config+0xdc>)
10004126:	4822      	ldr	r0, [pc, #136]	; (100041b0 <ble_gapm_set_device_config+0xe0>)
10004128:	4798      	blx	r3
1000412a:	4a22      	ldr	r2, [pc, #136]	; (100041b4 <ble_gapm_set_device_config+0xe4>)
1000412c:	4922      	ldr	r1, [pc, #136]	; (100041b8 <ble_gapm_set_device_config+0xe8>)
1000412e:	4823      	ldr	r0, [pc, #140]	; (100041bc <ble_gapm_set_device_config+0xec>)
10004130:	4b23      	ldr	r3, [pc, #140]	; (100041c0 <ble_gapm_set_device_config+0xf0>)
10004132:	4798      	blx	r3
10004134:	233f      	movs	r3, #63	; 0x3f
10004136:	2240      	movs	r2, #64	; 0x40
10004138:	4033      	ands	r3, r6
1000413a:	4216      	tst	r6, r2
1000413c:	d000      	beq.n	10004140 <ble_gapm_set_device_config+0x70>
1000413e:	4313      	orrs	r3, r2
10004140:	2280      	movs	r2, #128	; 0x80
10004142:	4216      	tst	r6, r2
10004144:	d000      	beq.n	10004148 <ble_gapm_set_device_config+0x78>
10004146:	4313      	orrs	r3, r2
10004148:	8423      	strh	r3, [r4, #32]
1000414a:	8c6b      	ldrh	r3, [r5, #34]	; 0x22
1000414c:	8463      	strh	r3, [r4, #34]	; 0x22
1000414e:	8cab      	ldrh	r3, [r5, #36]	; 0x24
10004150:	84a3      	strh	r3, [r4, #36]	; 0x24
10004152:	8ceb      	ldrh	r3, [r5, #38]	; 0x26
10004154:	84e3      	strh	r3, [r4, #38]	; 0x26
10004156:	8d2b      	ldrh	r3, [r5, #40]	; 0x28
10004158:	8523      	strh	r3, [r4, #40]	; 0x28
1000415a:	002b      	movs	r3, r5
1000415c:	332a      	adds	r3, #42	; 0x2a
1000415e:	781a      	ldrb	r2, [r3, #0]
10004160:	0023      	movs	r3, r4
10004162:	332a      	adds	r3, #42	; 0x2a
10004164:	701a      	strb	r2, [r3, #0]
10004166:	2300      	movs	r3, #0
10004168:	002a      	movs	r2, r5
1000416a:	85a3      	strh	r3, [r4, #44]	; 0x2c
1000416c:	322b      	adds	r2, #43	; 0x2b
1000416e:	7811      	ldrb	r1, [r2, #0]
10004170:	0022      	movs	r2, r4
10004172:	322e      	adds	r2, #46	; 0x2e
10004174:	7011      	strb	r1, [r2, #0]
10004176:	002a      	movs	r2, r5
10004178:	322c      	adds	r2, #44	; 0x2c
1000417a:	7811      	ldrb	r1, [r2, #0]
1000417c:	0022      	movs	r2, r4
1000417e:	322f      	adds	r2, #47	; 0x2f
10004180:	7011      	strb	r1, [r2, #0]
10004182:	8dea      	ldrh	r2, [r5, #46]	; 0x2e
10004184:	8622      	strh	r2, [r4, #48]	; 0x30
10004186:	8e2a      	ldrh	r2, [r5, #48]	; 0x30
10004188:	8662      	strh	r2, [r4, #50]	; 0x32
1000418a:	429f      	cmp	r7, r3
1000418c:	d004      	beq.n	10004198 <ble_gapm_set_device_config+0xc8>
1000418e:	2103      	movs	r1, #3
10004190:	0038      	movs	r0, r7
10004192:	9a01      	ldr	r2, [sp, #4]
10004194:	4d0b      	ldr	r5, [pc, #44]	; (100041c4 <ble_gapm_set_device_config+0xf4>)
10004196:	47a8      	blx	r5
10004198:	0020      	movs	r0, r4
1000419a:	4b0b      	ldr	r3, [pc, #44]	; (100041c8 <ble_gapm_set_device_config+0xf8>)
1000419c:	4798      	blx	r3
1000419e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100041a0:	00001171 	.word	0x00001171
100041a4:	00000d04 	.word	0x00000d04
100041a8:	00005821 	.word	0x00005821
100041ac:	000066b1 	.word	0x000066b1
100041b0:	10006083 	.word	0x10006083
100041b4:	000004e1 	.word	0x000004e1
100041b8:	10006016 	.word	0x10006016
100041bc:	100060a1 	.word	0x100060a1
100041c0:	00006609 	.word	0x00006609
100041c4:	100035cd 	.word	0x100035cd
100041c8:	000011a9 	.word	0x000011a9

100041cc <ble_gapm_delete_activity>:
100041cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100041ce:	0007      	movs	r7, r0
100041d0:	4c0b      	ldr	r4, [pc, #44]	; (10004200 <ble_gapm_delete_activity+0x34>)
100041d2:	000e      	movs	r6, r1
100041d4:	0015      	movs	r5, r2
100041d6:	2108      	movs	r1, #8
100041d8:	2302      	movs	r3, #2
100041da:	2204      	movs	r2, #4
100041dc:	4809      	ldr	r0, [pc, #36]	; (10004204 <ble_gapm_delete_activity+0x38>)
100041de:	47a0      	blx	r4
100041e0:	21a7      	movs	r1, #167	; 0xa7
100041e2:	0004      	movs	r4, r0
100041e4:	7001      	strb	r1, [r0, #0]
100041e6:	7047      	strb	r7, [r0, #1]
100041e8:	2d00      	cmp	r5, #0
100041ea:	d004      	beq.n	100041f6 <ble_gapm_delete_activity+0x2a>
100041ec:	0028      	movs	r0, r5
100041ee:	2300      	movs	r3, #0
100041f0:	0032      	movs	r2, r6
100041f2:	4d05      	ldr	r5, [pc, #20]	; (10004208 <ble_gapm_delete_activity+0x3c>)
100041f4:	47a8      	blx	r5
100041f6:	0020      	movs	r0, r4
100041f8:	4b04      	ldr	r3, [pc, #16]	; (1000420c <ble_gapm_delete_activity+0x40>)
100041fa:	4798      	blx	r3
100041fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100041fe:	46c0      	nop			; (mov r8, r8)
10004200:	00001171 	.word	0x00001171
10004204:	00000da3 	.word	0x00000da3
10004208:	100035cd 	.word	0x100035cd
1000420c:	000011a9 	.word	0x000011a9

10004210 <ble_gapm_create_adv_activity>:
10004210:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10004212:	0005      	movs	r5, r0
10004214:	0016      	movs	r6, r2
10004216:	20da      	movs	r0, #218	; 0xda
10004218:	2204      	movs	r2, #4
1000421a:	9100      	str	r1, [sp, #0]
1000421c:	4090      	lsls	r0, r2
1000421e:	9301      	str	r3, [sp, #4]
10004220:	2108      	movs	r1, #8
10004222:	2328      	movs	r3, #40	; 0x28
10004224:	4c0d      	ldr	r4, [pc, #52]	; (1000425c <ble_gapm_create_adv_activity+0x4c>)
10004226:	47a0      	blx	r4
10004228:	27a0      	movs	r7, #160	; 0xa0
1000422a:	9900      	ldr	r1, [sp, #0]
1000422c:	7007      	strb	r7, [r0, #0]
1000422e:	7045      	strb	r5, [r0, #1]
10004230:	1d03      	adds	r3, r0, #4
10004232:	0004      	movs	r4, r0
10004234:	c925      	ldmia	r1!, {r0, r2, r5}
10004236:	c325      	stmia	r3!, {r0, r2, r5}
10004238:	c925      	ldmia	r1!, {r0, r2, r5}
1000423a:	c325      	stmia	r3!, {r0, r2, r5}
1000423c:	c925      	ldmia	r1!, {r0, r2, r5}
1000423e:	c325      	stmia	r3!, {r0, r2, r5}
10004240:	4b07      	ldr	r3, [pc, #28]	; (10004260 <ble_gapm_create_adv_activity+0x50>)
10004242:	2000      	movs	r0, #0
10004244:	4798      	blx	r3
10004246:	0032      	movs	r2, r6
10004248:	0039      	movs	r1, r7
1000424a:	0003      	movs	r3, r0
1000424c:	4d05      	ldr	r5, [pc, #20]	; (10004264 <ble_gapm_create_adv_activity+0x54>)
1000424e:	9801      	ldr	r0, [sp, #4]
10004250:	47a8      	blx	r5
10004252:	0020      	movs	r0, r4
10004254:	4b04      	ldr	r3, [pc, #16]	; (10004268 <ble_gapm_create_adv_activity+0x58>)
10004256:	4798      	blx	r3
10004258:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000425a:	46c0      	nop			; (mov r8, r8)
1000425c:	00001171 	.word	0x00001171
10004260:	100035bd 	.word	0x100035bd
10004264:	100035cd 	.word	0x100035cd
10004268:	000011a9 	.word	0x000011a9

1000426c <ble_gapm_create_scan_activity>:
1000426c:	b510      	push	{r4, lr}
1000426e:	0013      	movs	r3, r2
10004270:	000a      	movs	r2, r1
10004272:	4c02      	ldr	r4, [pc, #8]	; (1000427c <ble_gapm_create_scan_activity+0x10>)
10004274:	21a1      	movs	r1, #161	; 0xa1
10004276:	47a0      	blx	r4
10004278:	bd10      	pop	{r4, pc}
1000427a:	46c0      	nop			; (mov r8, r8)
1000427c:	100035fd 	.word	0x100035fd

10004280 <ble_gapm_set_adv_data>:
10004280:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
10004282:	0016      	movs	r6, r2
10004284:	9301      	str	r3, [sp, #4]
10004286:	0004      	movs	r4, r0
10004288:	4b16      	ldr	r3, [pc, #88]	; (100042e4 <ble_gapm_set_adv_data+0x64>)
1000428a:	4817      	ldr	r0, [pc, #92]	; (100042e8 <ble_gapm_set_adv_data+0x68>)
1000428c:	000f      	movs	r7, r1
1000428e:	4798      	blx	r3
10004290:	1d33      	adds	r3, r6, #4
10004292:	2204      	movs	r2, #4
10004294:	2108      	movs	r1, #8
10004296:	4d15      	ldr	r5, [pc, #84]	; (100042ec <ble_gapm_set_adv_data+0x6c>)
10004298:	b29b      	uxth	r3, r3
1000429a:	4815      	ldr	r0, [pc, #84]	; (100042f0 <ble_gapm_set_adv_data+0x70>)
1000429c:	47a8      	blx	r5
1000429e:	0005      	movs	r5, r0
100042a0:	0032      	movs	r2, r6
100042a2:	9901      	ldr	r1, [sp, #4]
100042a4:	4b13      	ldr	r3, [pc, #76]	; (100042f4 <ble_gapm_set_adv_data+0x74>)
100042a6:	3004      	adds	r0, #4
100042a8:	4798      	blx	r3
100042aa:	806e      	strh	r6, [r5, #2]
100042ac:	2c02      	cmp	r4, #2
100042ae:	d80f      	bhi.n	100042d0 <ble_gapm_set_adv_data+0x50>
100042b0:	3c57      	subs	r4, #87	; 0x57
100042b2:	b2e1      	uxtb	r1, r4
100042b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
100042b6:	7029      	strb	r1, [r5, #0]
100042b8:	706f      	strb	r7, [r5, #1]
100042ba:	2b00      	cmp	r3, #0
100042bc:	d004      	beq.n	100042c8 <ble_gapm_set_adv_data+0x48>
100042be:	2300      	movs	r3, #0
100042c0:	9a08      	ldr	r2, [sp, #32]
100042c2:	9809      	ldr	r0, [sp, #36]	; 0x24
100042c4:	4c0c      	ldr	r4, [pc, #48]	; (100042f8 <ble_gapm_set_adv_data+0x78>)
100042c6:	47a0      	blx	r4
100042c8:	0028      	movs	r0, r5
100042ca:	4b0c      	ldr	r3, [pc, #48]	; (100042fc <ble_gapm_set_adv_data+0x7c>)
100042cc:	4798      	blx	r3
100042ce:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
100042d0:	23da      	movs	r3, #218	; 0xda
100042d2:	2100      	movs	r1, #0
100042d4:	0020      	movs	r0, r4
100042d6:	4a0a      	ldr	r2, [pc, #40]	; (10004300 <ble_gapm_set_adv_data+0x80>)
100042d8:	4c0a      	ldr	r4, [pc, #40]	; (10004304 <ble_gapm_set_adv_data+0x84>)
100042da:	33ff      	adds	r3, #255	; 0xff
100042dc:	47a0      	blx	r4
100042de:	2100      	movs	r1, #0
100042e0:	e7e8      	b.n	100042b4 <ble_gapm_set_adv_data+0x34>
100042e2:	46c0      	nop			; (mov r8, r8)
100042e4:	000066b1 	.word	0x000066b1
100042e8:	100060a7 	.word	0x100060a7
100042ec:	00001171 	.word	0x00001171
100042f0:	00000da6 	.word	0x00000da6
100042f4:	00005821 	.word	0x00005821
100042f8:	100035cd 	.word	0x100035cd
100042fc:	000011a9 	.word	0x000011a9
10004300:	10006016 	.word	0x10006016
10004304:	00006641 	.word	0x00006641

10004308 <ble_gapm_start_adv>:
10004308:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000430a:	000e      	movs	r6, r1
1000430c:	001d      	movs	r5, r3
1000430e:	0004      	movs	r4, r0
10004310:	4f07      	ldr	r7, [pc, #28]	; (10004330 <ble_gapm_start_adv+0x28>)
10004312:	9201      	str	r2, [sp, #4]
10004314:	233a      	movs	r3, #58	; 0x3a
10004316:	2204      	movs	r2, #4
10004318:	2108      	movs	r1, #8
1000431a:	4806      	ldr	r0, [pc, #24]	; (10004334 <ble_gapm_start_adv+0x2c>)
1000431c:	47b8      	blx	r7
1000431e:	9b01      	ldr	r3, [sp, #4]
10004320:	002a      	movs	r2, r5
10004322:	0021      	movs	r1, r4
10004324:	8046      	strh	r6, [r0, #2]
10004326:	7103      	strb	r3, [r0, #4]
10004328:	4c03      	ldr	r4, [pc, #12]	; (10004338 <ble_gapm_start_adv+0x30>)
1000432a:	9b08      	ldr	r3, [sp, #32]
1000432c:	47a0      	blx	r4
1000432e:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
10004330:	00001171 	.word	0x00001171
10004334:	00000da1 	.word	0x00000da1
10004338:	10003649 	.word	0x10003649

1000433c <ble_gapm_start_scan>:
1000433c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
1000433e:	000f      	movs	r7, r1
10004340:	0015      	movs	r5, r2
10004342:	001e      	movs	r6, r3
10004344:	9001      	str	r0, [sp, #4]
10004346:	233a      	movs	r3, #58	; 0x3a
10004348:	2204      	movs	r2, #4
1000434a:	2108      	movs	r1, #8
1000434c:	4c07      	ldr	r4, [pc, #28]	; (1000436c <ble_gapm_start_scan+0x30>)
1000434e:	4808      	ldr	r0, [pc, #32]	; (10004370 <ble_gapm_start_scan+0x34>)
10004350:	47a0      	blx	r4
10004352:	0004      	movs	r4, r0
10004354:	0039      	movs	r1, r7
10004356:	2210      	movs	r2, #16
10004358:	4b06      	ldr	r3, [pc, #24]	; (10004374 <ble_gapm_start_scan+0x38>)
1000435a:	3002      	adds	r0, #2
1000435c:	4798      	blx	r3
1000435e:	0033      	movs	r3, r6
10004360:	002a      	movs	r2, r5
10004362:	0020      	movs	r0, r4
10004364:	9901      	ldr	r1, [sp, #4]
10004366:	4c04      	ldr	r4, [pc, #16]	; (10004378 <ble_gapm_start_scan+0x3c>)
10004368:	47a0      	blx	r4
1000436a:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
1000436c:	00001171 	.word	0x00001171
10004370:	00000da1 	.word	0x00000da1
10004374:	00005821 	.word	0x00005821
10004378:	10003649 	.word	0x10003649

1000437c <ble_gapc_reg_ind>:
1000437c:	4b01      	ldr	r3, [pc, #4]	; (10004384 <ble_gapc_reg_ind+0x8>)
1000437e:	6018      	str	r0, [r3, #0]
10004380:	4770      	bx	lr
10004382:	46c0      	nop			; (mov r8, r8)
10004384:	20014e4c 	.word	0x20014e4c

10004388 <ble_gap_init>:
10004388:	b510      	push	{r4, lr}
1000438a:	4807      	ldr	r0, [pc, #28]	; (100043a8 <ble_gap_init+0x20>)
1000438c:	4c07      	ldr	r4, [pc, #28]	; (100043ac <ble_gap_init+0x24>)
1000438e:	47a0      	blx	r4
10004390:	4807      	ldr	r0, [pc, #28]	; (100043b0 <ble_gap_init+0x28>)
10004392:	47a0      	blx	r4
10004394:	4807      	ldr	r0, [pc, #28]	; (100043b4 <ble_gap_init+0x2c>)
10004396:	47a0      	blx	r4
10004398:	4c07      	ldr	r4, [pc, #28]	; (100043b8 <ble_gap_init+0x30>)
1000439a:	200d      	movs	r0, #13
1000439c:	4907      	ldr	r1, [pc, #28]	; (100043bc <ble_gap_init+0x34>)
1000439e:	47a0      	blx	r4
100043a0:	200e      	movs	r0, #14
100043a2:	4907      	ldr	r1, [pc, #28]	; (100043c0 <ble_gap_init+0x38>)
100043a4:	47a0      	blx	r4
100043a6:	bd10      	pop	{r4, pc}
100043a8:	20014e38 	.word	0x20014e38
100043ac:	00002657 	.word	0x00002657
100043b0:	20014e24 	.word	0x20014e24
100043b4:	20014e10 	.word	0x20014e10
100043b8:	100044c1 	.word	0x100044c1
100043bc:	10006144 	.word	0x10006144
100043c0:	100060dc 	.word	0x100060dc

100043c4 <ble_msg_handler>:
100043c4:	b5f0      	push	{r4, r5, r6, r7, lr}
100043c6:	001d      	movs	r5, r3
100043c8:	b087      	sub	sp, #28
100043ca:	0a03      	lsrs	r3, r0, #8
100043cc:	9302      	str	r3, [sp, #8]
100043ce:	b2eb      	uxtb	r3, r5
100043d0:	9304      	str	r3, [sp, #16]
100043d2:	3bff      	subs	r3, #255	; 0xff
100043d4:	425a      	negs	r2, r3
100043d6:	4153      	adcs	r3, r2
100043d8:	b2db      	uxtb	r3, r3
100043da:	9303      	str	r3, [sp, #12]
100043dc:	2300      	movs	r3, #0
100043de:	0004      	movs	r4, r0
100043e0:	4f28      	ldr	r7, [pc, #160]	; (10004484 <ble_msg_handler+0xc0>)
100043e2:	9105      	str	r1, [sp, #20]
100043e4:	9300      	str	r3, [sp, #0]
100043e6:	4b28      	ldr	r3, [pc, #160]	; (10004488 <ble_msg_handler+0xc4>)
100043e8:	9a00      	ldr	r2, [sp, #0]
100043ea:	881b      	ldrh	r3, [r3, #0]
100043ec:	4293      	cmp	r3, r2
100043ee:	dc0a      	bgt.n	10004406 <ble_msg_handler+0x42>
100043f0:	9b04      	ldr	r3, [sp, #16]
100043f2:	2600      	movs	r6, #0
100043f4:	2bff      	cmp	r3, #255	; 0xff
100043f6:	d03f      	beq.n	10004478 <ble_msg_handler+0xb4>
100043f8:	0022      	movs	r2, r4
100043fa:	002b      	movs	r3, r5
100043fc:	4923      	ldr	r1, [pc, #140]	; (1000448c <ble_msg_handler+0xc8>)
100043fe:	4c24      	ldr	r4, [pc, #144]	; (10004490 <ble_msg_handler+0xcc>)
10004400:	4824      	ldr	r0, [pc, #144]	; (10004494 <ble_msg_handler+0xd0>)
10004402:	47a0      	blx	r4
10004404:	e038      	b.n	10004478 <ble_msg_handler+0xb4>
10004406:	9a02      	ldr	r2, [sp, #8]
10004408:	883b      	ldrh	r3, [r7, #0]
1000440a:	9301      	str	r3, [sp, #4]
1000440c:	1a9b      	subs	r3, r3, r2
1000440e:	425a      	negs	r2, r3
10004410:	4153      	adcs	r3, r2
10004412:	9a03      	ldr	r2, [sp, #12]
10004414:	4293      	cmp	r3, r2
10004416:	d104      	bne.n	10004422 <ble_msg_handler+0x5e>
10004418:	9b00      	ldr	r3, [sp, #0]
1000441a:	3708      	adds	r7, #8
1000441c:	3301      	adds	r3, #1
1000441e:	9300      	str	r3, [sp, #0]
10004420:	e7e1      	b.n	100043e6 <ble_msg_handler+0x22>
10004422:	4a1d      	ldr	r2, [pc, #116]	; (10004498 <ble_msg_handler+0xd4>)
10004424:	6879      	ldr	r1, [r7, #4]
10004426:	4694      	mov	ip, r2
10004428:	888b      	ldrh	r3, [r1, #4]
1000442a:	3b01      	subs	r3, #1
1000442c:	1c5a      	adds	r2, r3, #1
1000442e:	d107      	bne.n	10004440 <ble_msg_handler+0x7c>
10004430:	4e17      	ldr	r6, [pc, #92]	; (10004490 <ble_msg_handler+0xcc>)
10004432:	002b      	movs	r3, r5
10004434:	0022      	movs	r2, r4
10004436:	4919      	ldr	r1, [pc, #100]	; (1000449c <ble_msg_handler+0xd8>)
10004438:	4816      	ldr	r0, [pc, #88]	; (10004494 <ble_msg_handler+0xd0>)
1000443a:	47b0      	blx	r6
1000443c:	2600      	movs	r6, #0
1000443e:	e017      	b.n	10004470 <ble_msg_handler+0xac>
10004440:	680e      	ldr	r6, [r1, #0]
10004442:	6808      	ldr	r0, [r1, #0]
10004444:	00da      	lsls	r2, r3, #3
10004446:	18b6      	adds	r6, r6, r2
10004448:	5a82      	ldrh	r2, [r0, r2]
1000444a:	4294      	cmp	r4, r2
1000444c:	d001      	beq.n	10004452 <ble_msg_handler+0x8e>
1000444e:	4562      	cmp	r2, ip
10004450:	d115      	bne.n	1000447e <ble_msg_handler+0xba>
10004452:	6873      	ldr	r3, [r6, #4]
10004454:	2b00      	cmp	r3, #0
10004456:	d104      	bne.n	10004462 <ble_msg_handler+0x9e>
10004458:	2239      	movs	r2, #57	; 0x39
1000445a:	4911      	ldr	r1, [pc, #68]	; (100044a0 <ble_msg_handler+0xdc>)
1000445c:	4811      	ldr	r0, [pc, #68]	; (100044a4 <ble_msg_handler+0xe0>)
1000445e:	4b12      	ldr	r3, [pc, #72]	; (100044a8 <ble_msg_handler+0xe4>)
10004460:	4798      	blx	r3
10004462:	6876      	ldr	r6, [r6, #4]
10004464:	002b      	movs	r3, r5
10004466:	2204      	movs	r2, #4
10004468:	0020      	movs	r0, r4
1000446a:	9905      	ldr	r1, [sp, #20]
1000446c:	47b0      	blx	r6
1000446e:	0006      	movs	r6, r0
10004470:	9b01      	ldr	r3, [sp, #4]
10004472:	9a02      	ldr	r2, [sp, #8]
10004474:	4293      	cmp	r3, r2
10004476:	d1cf      	bne.n	10004418 <ble_msg_handler+0x54>
10004478:	0030      	movs	r0, r6
1000447a:	b007      	add	sp, #28
1000447c:	bdf0      	pop	{r4, r5, r6, r7, pc}
1000447e:	3b01      	subs	r3, #1
10004480:	e7d4      	b.n	1000442c <ble_msg_handler+0x68>
10004482:	46c0      	nop			; (mov r8, r8)
10004484:	20014e58 	.word	0x20014e58
10004488:	20014e52 	.word	0x20014e52
1000448c:	100062d0 	.word	0x100062d0
10004490:	000066b1 	.word	0x000066b1
10004494:	100061ad 	.word	0x100061ad
10004498:	0000ffff 	.word	0x0000ffff
1000449c:	100062c0 	.word	0x100062c0
100044a0:	10006194 	.word	0x10006194
100044a4:	1000619f 	.word	0x1000619f
100044a8:	00006609 	.word	0x00006609

100044ac <ble_task_init>:
100044ac:	b510      	push	{r4, lr}
100044ae:	2004      	movs	r0, #4
100044b0:	4901      	ldr	r1, [pc, #4]	; (100044b8 <ble_task_init+0xc>)
100044b2:	4b02      	ldr	r3, [pc, #8]	; (100044bc <ble_task_init+0x10>)
100044b4:	4798      	blx	r3
100044b6:	bd10      	pop	{r4, pc}
100044b8:	100062b4 	.word	0x100062b4
100044bc:	00001775 	.word	0x00001775

100044c0 <ble_task_register_handler>:
100044c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100044c2:	4e11      	ldr	r6, [pc, #68]	; (10004508 <ble_task_register_handler+0x48>)
100044c4:	0005      	movs	r5, r0
100044c6:	8833      	ldrh	r3, [r6, #0]
100044c8:	000f      	movs	r7, r1
100044ca:	2b04      	cmp	r3, #4
100044cc:	d904      	bls.n	100044d8 <ble_task_register_handler+0x18>
100044ce:	227a      	movs	r2, #122	; 0x7a
100044d0:	490e      	ldr	r1, [pc, #56]	; (1000450c <ble_task_register_handler+0x4c>)
100044d2:	480f      	ldr	r0, [pc, #60]	; (10004510 <ble_task_register_handler+0x50>)
100044d4:	4b0f      	ldr	r3, [pc, #60]	; (10004514 <ble_task_register_handler+0x54>)
100044d6:	4798      	blx	r3
100044d8:	2400      	movs	r4, #0
100044da:	8833      	ldrh	r3, [r6, #0]
100044dc:	4a0e      	ldr	r2, [pc, #56]	; (10004518 <ble_task_register_handler+0x58>)
100044de:	429c      	cmp	r4, r3
100044e0:	d306      	bcc.n	100044f0 <ble_task_register_handler+0x30>
100044e2:	00d9      	lsls	r1, r3, #3
100044e4:	1850      	adds	r0, r2, r1
100044e6:	3301      	adds	r3, #1
100044e8:	6047      	str	r7, [r0, #4]
100044ea:	5255      	strh	r5, [r2, r1]
100044ec:	8033      	strh	r3, [r6, #0]
100044ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
100044f0:	00e3      	lsls	r3, r4, #3
100044f2:	5ad3      	ldrh	r3, [r2, r3]
100044f4:	42ab      	cmp	r3, r5
100044f6:	d104      	bne.n	10004502 <ble_task_register_handler+0x42>
100044f8:	227e      	movs	r2, #126	; 0x7e
100044fa:	4904      	ldr	r1, [pc, #16]	; (1000450c <ble_task_register_handler+0x4c>)
100044fc:	4807      	ldr	r0, [pc, #28]	; (1000451c <ble_task_register_handler+0x5c>)
100044fe:	4b05      	ldr	r3, [pc, #20]	; (10004514 <ble_task_register_handler+0x54>)
10004500:	4798      	blx	r3
10004502:	3401      	adds	r4, #1
10004504:	b2e4      	uxtb	r4, r4
10004506:	e7e8      	b.n	100044da <ble_task_register_handler+0x1a>
10004508:	20014e52 	.word	0x20014e52
1000450c:	10006194 	.word	0x10006194
10004510:	100061cf 	.word	0x100061cf
10004514:	00006609 	.word	0x00006609
10004518:	20014e58 	.word	0x20014e58
1000451c:	100061fa 	.word	0x100061fa

10004520 <ble_task_msg_handler_validate>:
10004520:	b510      	push	{r4, lr}
10004522:	4b09      	ldr	r3, [pc, #36]	; (10004548 <ble_task_msg_handler_validate+0x28>)
10004524:	8819      	ldrh	r1, [r3, #0]
10004526:	2905      	cmp	r1, #5
10004528:	d90c      	bls.n	10004544 <ble_task_msg_handler_validate+0x24>
1000452a:	4c08      	ldr	r4, [pc, #32]	; (1000454c <ble_task_msg_handler_validate+0x2c>)
1000452c:	4808      	ldr	r0, [pc, #32]	; (10004550 <ble_task_msg_handler_validate+0x30>)
1000452e:	47a0      	blx	r4
10004530:	2105      	movs	r1, #5
10004532:	4808      	ldr	r0, [pc, #32]	; (10004554 <ble_task_msg_handler_validate+0x34>)
10004534:	47a0      	blx	r4
10004536:	4808      	ldr	r0, [pc, #32]	; (10004558 <ble_task_msg_handler_validate+0x38>)
10004538:	47a0      	blx	r4
1000453a:	228f      	movs	r2, #143	; 0x8f
1000453c:	4907      	ldr	r1, [pc, #28]	; (1000455c <ble_task_msg_handler_validate+0x3c>)
1000453e:	4808      	ldr	r0, [pc, #32]	; (10004560 <ble_task_msg_handler_validate+0x40>)
10004540:	4b08      	ldr	r3, [pc, #32]	; (10004564 <ble_task_msg_handler_validate+0x44>)
10004542:	4798      	blx	r3
10004544:	bd10      	pop	{r4, pc}
10004546:	46c0      	nop			; (mov r8, r8)
10004548:	20014e52 	.word	0x20014e52
1000454c:	000066b1 	.word	0x000066b1
10004550:	1000621e 	.word	0x1000621e
10004554:	10006257 	.word	0x10006257
10004558:	10006289 	.word	0x10006289
1000455c:	10006194 	.word	0x10006194
10004560:	10004cec 	.word	0x10004cec
10004564:	00006609 	.word	0x00006609

10004568 <porting_ble_err_code_t>:
10004568:	b510      	push	{r4, lr}
1000456a:	28ff      	cmp	r0, #255	; 0xff
1000456c:	d900      	bls.n	10004570 <porting_ble_err_code_t+0x8>
1000456e:	e2db      	b.n	10004b28 <porting_ble_err_code_t+0x5c0>
10004570:	f000 fb6e 	bl	10004c50 <____gnu_thumb1_case_uhi_veneer>
10004574:	019102e1 	.word	0x019102e1
10004578:	01950193 	.word	0x01950193
1000457c:	019a0197 	.word	0x019a0197
10004580:	019e019c 	.word	0x019e019c
10004584:	01a301a0 	.word	0x01a301a0
10004588:	01a701a5 	.word	0x01a701a5
1000458c:	01ac01a9 	.word	0x01ac01a9
10004590:	01b001ae 	.word	0x01b001ae
10004594:	01b501b2 	.word	0x01b501b2
10004598:	02da02da 	.word	0x02da02da
1000459c:	02da02da 	.word	0x02da02da
100045a0:	02da02da 	.word	0x02da02da
100045a4:	02da02da 	.word	0x02da02da
100045a8:	02da02da 	.word	0x02da02da
100045ac:	02da02da 	.word	0x02da02da
100045b0:	02da02da 	.word	0x02da02da
100045b4:	01880186 	.word	0x01880186
100045b8:	018d018b 	.word	0x018d018b
100045bc:	02da018f 	.word	0x02da018f
100045c0:	02da02da 	.word	0x02da02da
100045c4:	02da02da 	.word	0x02da02da
100045c8:	02da02da 	.word	0x02da02da
100045cc:	02da02da 	.word	0x02da02da
100045d0:	02da02da 	.word	0x02da02da
100045d4:	011f011d 	.word	0x011f011d
100045d8:	01250122 	.word	0x01250122
100045dc:	012b0128 	.word	0x012b0128
100045e0:	0131012e 	.word	0x0131012e
100045e4:	01370134 	.word	0x01370134
100045e8:	013d013a 	.word	0x013d013a
100045ec:	0142013f 	.word	0x0142013f
100045f0:	013d0145 	.word	0x013d0145
100045f4:	01020100 	.word	0x01020100
100045f8:	01060104 	.word	0x01060104
100045fc:	010a0108 	.word	0x010a0108
10004600:	010e010c 	.word	0x010e010c
10004604:	01130111 	.word	0x01130111
10004608:	01170115 	.word	0x01170115
1000460c:	011b0119 	.word	0x011b0119
10004610:	02da02da 	.word	0x02da02da
10004614:	01b201ac 	.word	0x01b201ac
10004618:	01ba01ba 	.word	0x01ba01ba
1000461c:	01bc01bc 	.word	0x01bc01bc
10004620:	02da01be 	.word	0x02da01be
10004624:	02da02da 	.word	0x02da02da
10004628:	02da02da 	.word	0x02da02da
1000462c:	02da02da 	.word	0x02da02da
10004630:	02da02da 	.word	0x02da02da
10004634:	014802da 	.word	0x014802da
10004638:	014c014a 	.word	0x014c014a
1000463c:	0151014e 	.word	0x0151014e
10004640:	01550153 	.word	0x01550153
10004644:	015a0157 	.word	0x015a0157
10004648:	015e015c 	.word	0x015e015c
1000464c:	01630160 	.word	0x01630160
10004650:	02da0165 	.word	0x02da0165
10004654:	016702da 	.word	0x016702da
10004658:	016b0169 	.word	0x016b0169
1000465c:	0170016d 	.word	0x0170016d
10004660:	01740172 	.word	0x01740172
10004664:	01790176 	.word	0x01790176
10004668:	017d017b 	.word	0x017d017b
1000466c:	0182017f 	.word	0x0182017f
10004670:	02da0184 	.word	0x02da0184
10004674:	01c101b7 	.word	0x01c101b7
10004678:	01c501c3 	.word	0x01c501c3
1000467c:	01ca01c7 	.word	0x01ca01c7
10004680:	01ce01cc 	.word	0x01ce01cc
10004684:	01d301d0 	.word	0x01d301d0
10004688:	01d701d5 	.word	0x01d701d5
1000468c:	01dc01d9 	.word	0x01dc01d9
10004690:	01e001de 	.word	0x01e001de
10004694:	01e802da 	.word	0x01e802da
10004698:	01ec01ea 	.word	0x01ec01ea
1000469c:	01f001ee 	.word	0x01f001ee
100046a0:	01f401f2 	.word	0x01f401f2
100046a4:	01f801f6 	.word	0x01f801f6
100046a8:	01fc01fa 	.word	0x01fc01fa
100046ac:	020001fe 	.word	0x020001fe
100046b0:	02040202 	.word	0x02040202
100046b4:	02080206 	.word	0x02080206
100046b8:	020c020a 	.word	0x020c020a
100046bc:	0210020e 	.word	0x0210020e
100046c0:	02140212 	.word	0x02140212
100046c4:	02180216 	.word	0x02180216
100046c8:	021c021a 	.word	0x021c021a
100046cc:	0220021e 	.word	0x0220021e
100046d0:	02240222 	.word	0x02240222
100046d4:	02280226 	.word	0x02280226
100046d8:	022c022a 	.word	0x022c022a
100046dc:	0230022e 	.word	0x0230022e
100046e0:	02340232 	.word	0x02340232
100046e4:	02380236 	.word	0x02380236
100046e8:	02da023a 	.word	0x02da023a
100046ec:	023e023c 	.word	0x023e023c
100046f0:	02420240 	.word	0x02420240
100046f4:	02da0244 	.word	0x02da0244
100046f8:	02da0246 	.word	0x02da0246
100046fc:	024a0248 	.word	0x024a0248
10004700:	02c0024c 	.word	0x02c0024c
10004704:	02da02c2 	.word	0x02da02c2
10004708:	02c602c4 	.word	0x02c602c4
1000470c:	02ca02c8 	.word	0x02ca02c8
10004710:	02ce02cc 	.word	0x02ce02cc
10004714:	02d202d0 	.word	0x02d202d0
10004718:	02d602d4 	.word	0x02d602d4
1000471c:	02da02d8 	.word	0x02da02d8
10004720:	02da02da 	.word	0x02da02da
10004724:	02da02da 	.word	0x02da02da
10004728:	02da02da 	.word	0x02da02da
1000472c:	02da02da 	.word	0x02da02da
10004730:	02da02da 	.word	0x02da02da
10004734:	02da02da 	.word	0x02da02da
10004738:	02da02da 	.word	0x02da02da
1000473c:	02da02da 	.word	0x02da02da
10004740:	02da02da 	.word	0x02da02da
10004744:	02da02da 	.word	0x02da02da
10004748:	02da02da 	.word	0x02da02da
1000474c:	02da02da 	.word	0x02da02da
10004750:	02da02da 	.word	0x02da02da
10004754:	02da02da 	.word	0x02da02da
10004758:	02da02da 	.word	0x02da02da
1000475c:	02da02da 	.word	0x02da02da
10004760:	02da02da 	.word	0x02da02da
10004764:	02da02da 	.word	0x02da02da
10004768:	02da02da 	.word	0x02da02da
1000476c:	01e202da 	.word	0x01e202da
10004770:	01e601e4 	.word	0x01e601e4
10004774:	48a6      	ldr	r0, [pc, #664]	; (10004a10 <porting_ble_err_code_t+0x4a8>)
10004776:	bd10      	pop	{r4, pc}
10004778:	48a6      	ldr	r0, [pc, #664]	; (10004a14 <porting_ble_err_code_t+0x4ac>)
1000477a:	e7fc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000477c:	48a6      	ldr	r0, [pc, #664]	; (10004a18 <porting_ble_err_code_t+0x4b0>)
1000477e:	e7fa      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004780:	48a6      	ldr	r0, [pc, #664]	; (10004a1c <porting_ble_err_code_t+0x4b4>)
10004782:	e7f8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004784:	48a6      	ldr	r0, [pc, #664]	; (10004a20 <porting_ble_err_code_t+0x4b8>)
10004786:	e7f6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004788:	48a6      	ldr	r0, [pc, #664]	; (10004a24 <porting_ble_err_code_t+0x4bc>)
1000478a:	e7f4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000478c:	48a6      	ldr	r0, [pc, #664]	; (10004a28 <porting_ble_err_code_t+0x4c0>)
1000478e:	e7f2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004790:	2081      	movs	r0, #129	; 0x81
10004792:	00c0      	lsls	r0, r0, #3
10004794:	e7ef      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004796:	48a5      	ldr	r0, [pc, #660]	; (10004a2c <porting_ble_err_code_t+0x4c4>)
10004798:	e7ed      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000479a:	48a5      	ldr	r0, [pc, #660]	; (10004a30 <porting_ble_err_code_t+0x4c8>)
1000479c:	e7eb      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000479e:	48a5      	ldr	r0, [pc, #660]	; (10004a34 <porting_ble_err_code_t+0x4cc>)
100047a0:	e7e9      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047a2:	48a5      	ldr	r0, [pc, #660]	; (10004a38 <porting_ble_err_code_t+0x4d0>)
100047a4:	e7e7      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047a6:	48a5      	ldr	r0, [pc, #660]	; (10004a3c <porting_ble_err_code_t+0x4d4>)
100047a8:	e7e5      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047aa:	48a5      	ldr	r0, [pc, #660]	; (10004a40 <porting_ble_err_code_t+0x4d8>)
100047ac:	e7e3      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047ae:	48a5      	ldr	r0, [pc, #660]	; (10004a44 <porting_ble_err_code_t+0x4dc>)
100047b0:	e7e1      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047b2:	2081      	movs	r0, #129	; 0x81
100047b4:	0040      	lsls	r0, r0, #1
100047b6:	e7de      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047b8:	2012      	movs	r0, #18
100047ba:	30ff      	adds	r0, #255	; 0xff
100047bc:	e7db      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047be:	2004      	movs	r0, #4
100047c0:	30ff      	adds	r0, #255	; 0xff
100047c2:	e7d8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047c4:	2089      	movs	r0, #137	; 0x89
100047c6:	0040      	lsls	r0, r0, #1
100047c8:	e7d5      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047ca:	2083      	movs	r0, #131	; 0x83
100047cc:	0040      	lsls	r0, r0, #1
100047ce:	e7d2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047d0:	2008      	movs	r0, #8
100047d2:	30ff      	adds	r0, #255	; 0xff
100047d4:	e7cf      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047d6:	2084      	movs	r0, #132	; 0x84
100047d8:	0040      	lsls	r0, r0, #1
100047da:	e7cc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047dc:	200a      	movs	r0, #10
100047de:	30ff      	adds	r0, #255	; 0xff
100047e0:	e7c9      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047e2:	2085      	movs	r0, #133	; 0x85
100047e4:	0040      	lsls	r0, r0, #1
100047e6:	e7c6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047e8:	2006      	movs	r0, #6
100047ea:	30ff      	adds	r0, #255	; 0xff
100047ec:	e7c3      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047ee:	4895      	ldr	r0, [pc, #596]	; (10004a44 <porting_ble_err_code_t+0x4dc>)
100047f0:	e7c1      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047f2:	2002      	movs	r0, #2
100047f4:	30ff      	adds	r0, #255	; 0xff
100047f6:	e7be      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047f8:	2014      	movs	r0, #20
100047fa:	30ff      	adds	r0, #255	; 0xff
100047fc:	e7bb      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100047fe:	2086      	movs	r0, #134	; 0x86
10004800:	0040      	lsls	r0, r0, #1
10004802:	e7b8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004804:	4890      	ldr	r0, [pc, #576]	; (10004a48 <porting_ble_err_code_t+0x4e0>)
10004806:	e7b6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004808:	4890      	ldr	r0, [pc, #576]	; (10004a4c <porting_ble_err_code_t+0x4e4>)
1000480a:	e7b4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000480c:	4890      	ldr	r0, [pc, #576]	; (10004a50 <porting_ble_err_code_t+0x4e8>)
1000480e:	e7b2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004810:	20c1      	movs	r0, #193	; 0xc1
10004812:	0080      	lsls	r0, r0, #2
10004814:	e7af      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004816:	488f      	ldr	r0, [pc, #572]	; (10004a54 <porting_ble_err_code_t+0x4ec>)
10004818:	e7ad      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000481a:	488f      	ldr	r0, [pc, #572]	; (10004a58 <porting_ble_err_code_t+0x4f0>)
1000481c:	e7ab      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000481e:	488f      	ldr	r0, [pc, #572]	; (10004a5c <porting_ble_err_code_t+0x4f4>)
10004820:	e7a9      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004822:	20c2      	movs	r0, #194	; 0xc2
10004824:	0080      	lsls	r0, r0, #2
10004826:	e7a6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004828:	488d      	ldr	r0, [pc, #564]	; (10004a60 <porting_ble_err_code_t+0x4f8>)
1000482a:	e7a4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000482c:	488d      	ldr	r0, [pc, #564]	; (10004a64 <porting_ble_err_code_t+0x4fc>)
1000482e:	e7a2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004830:	488d      	ldr	r0, [pc, #564]	; (10004a68 <porting_ble_err_code_t+0x500>)
10004832:	e7a0      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004834:	20c3      	movs	r0, #195	; 0xc3
10004836:	0080      	lsls	r0, r0, #2
10004838:	e79d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000483a:	488c      	ldr	r0, [pc, #560]	; (10004a6c <porting_ble_err_code_t+0x504>)
1000483c:	e79b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000483e:	488c      	ldr	r0, [pc, #560]	; (10004a70 <porting_ble_err_code_t+0x508>)
10004840:	e799      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004842:	4881      	ldr	r0, [pc, #516]	; (10004a48 <porting_ble_err_code_t+0x4e0>)
10004844:	e797      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004846:	4881      	ldr	r0, [pc, #516]	; (10004a4c <porting_ble_err_code_t+0x4e4>)
10004848:	e795      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000484a:	4881      	ldr	r0, [pc, #516]	; (10004a50 <porting_ble_err_code_t+0x4e8>)
1000484c:	e793      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000484e:	20c1      	movs	r0, #193	; 0xc1
10004850:	0080      	lsls	r0, r0, #2
10004852:	e790      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004854:	487f      	ldr	r0, [pc, #508]	; (10004a54 <porting_ble_err_code_t+0x4ec>)
10004856:	e78e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004858:	487f      	ldr	r0, [pc, #508]	; (10004a58 <porting_ble_err_code_t+0x4f0>)
1000485a:	e78c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000485c:	487f      	ldr	r0, [pc, #508]	; (10004a5c <porting_ble_err_code_t+0x4f4>)
1000485e:	e78a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004860:	20c2      	movs	r0, #194	; 0xc2
10004862:	0080      	lsls	r0, r0, #2
10004864:	e787      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004866:	487e      	ldr	r0, [pc, #504]	; (10004a60 <porting_ble_err_code_t+0x4f8>)
10004868:	e785      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000486a:	487e      	ldr	r0, [pc, #504]	; (10004a64 <porting_ble_err_code_t+0x4fc>)
1000486c:	e783      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000486e:	487e      	ldr	r0, [pc, #504]	; (10004a68 <porting_ble_err_code_t+0x500>)
10004870:	e781      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004872:	20c3      	movs	r0, #195	; 0xc3
10004874:	0080      	lsls	r0, r0, #2
10004876:	e77e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004878:	487c      	ldr	r0, [pc, #496]	; (10004a6c <porting_ble_err_code_t+0x504>)
1000487a:	e77c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000487c:	487c      	ldr	r0, [pc, #496]	; (10004a70 <porting_ble_err_code_t+0x508>)
1000487e:	e77a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004880:	487c      	ldr	r0, [pc, #496]	; (10004a74 <porting_ble_err_code_t+0x50c>)
10004882:	e778      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004884:	20c4      	movs	r0, #196	; 0xc4
10004886:	0080      	lsls	r0, r0, #2
10004888:	e775      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000488a:	487b      	ldr	r0, [pc, #492]	; (10004a78 <porting_ble_err_code_t+0x510>)
1000488c:	e773      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000488e:	487b      	ldr	r0, [pc, #492]	; (10004a7c <porting_ble_err_code_t+0x514>)
10004890:	e771      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004892:	487b      	ldr	r0, [pc, #492]	; (10004a80 <porting_ble_err_code_t+0x518>)
10004894:	e76f      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004896:	487b      	ldr	r0, [pc, #492]	; (10004a84 <porting_ble_err_code_t+0x51c>)
10004898:	e76d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000489a:	487b      	ldr	r0, [pc, #492]	; (10004a88 <porting_ble_err_code_t+0x520>)
1000489c:	e76b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000489e:	487b      	ldr	r0, [pc, #492]	; (10004a8c <porting_ble_err_code_t+0x524>)
100048a0:	e769      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048a2:	2081      	movs	r0, #129	; 0x81
100048a4:	0080      	lsls	r0, r0, #2
100048a6:	e766      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048a8:	4879      	ldr	r0, [pc, #484]	; (10004a90 <porting_ble_err_code_t+0x528>)
100048aa:	e764      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048ac:	4879      	ldr	r0, [pc, #484]	; (10004a94 <porting_ble_err_code_t+0x52c>)
100048ae:	e762      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048b0:	4879      	ldr	r0, [pc, #484]	; (10004a98 <porting_ble_err_code_t+0x530>)
100048b2:	e760      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048b4:	2082      	movs	r0, #130	; 0x82
100048b6:	0080      	lsls	r0, r0, #2
100048b8:	e75d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048ba:	4878      	ldr	r0, [pc, #480]	; (10004a9c <porting_ble_err_code_t+0x534>)
100048bc:	e75b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048be:	4878      	ldr	r0, [pc, #480]	; (10004aa0 <porting_ble_err_code_t+0x538>)
100048c0:	e759      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048c2:	4878      	ldr	r0, [pc, #480]	; (10004aa4 <porting_ble_err_code_t+0x53c>)
100048c4:	e757      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048c6:	2083      	movs	r0, #131	; 0x83
100048c8:	0080      	lsls	r0, r0, #2
100048ca:	e754      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048cc:	4876      	ldr	r0, [pc, #472]	; (10004aa8 <porting_ble_err_code_t+0x540>)
100048ce:	e752      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048d0:	4876      	ldr	r0, [pc, #472]	; (10004aac <porting_ble_err_code_t+0x544>)
100048d2:	e750      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048d4:	4876      	ldr	r0, [pc, #472]	; (10004ab0 <porting_ble_err_code_t+0x548>)
100048d6:	e74e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048d8:	2084      	movs	r0, #132	; 0x84
100048da:	0080      	lsls	r0, r0, #2
100048dc:	e74b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048de:	4875      	ldr	r0, [pc, #468]	; (10004ab4 <porting_ble_err_code_t+0x54c>)
100048e0:	e749      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048e2:	20a0      	movs	r0, #160	; 0xa0
100048e4:	0080      	lsls	r0, r0, #2
100048e6:	e746      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048e8:	4868      	ldr	r0, [pc, #416]	; (10004a8c <porting_ble_err_code_t+0x524>)
100048ea:	e744      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048ec:	486c      	ldr	r0, [pc, #432]	; (10004aa0 <porting_ble_err_code_t+0x538>)
100048ee:	e742      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048f0:	20a4      	movs	r0, #164	; 0xa4
100048f2:	0080      	lsls	r0, r0, #2
100048f4:	e73f      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048f6:	4870      	ldr	r0, [pc, #448]	; (10004ab8 <porting_ble_err_code_t+0x550>)
100048f8:	e73d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048fa:	4870      	ldr	r0, [pc, #448]	; (10004abc <porting_ble_err_code_t+0x554>)
100048fc:	e73b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100048fe:	4870      	ldr	r0, [pc, #448]	; (10004ac0 <porting_ble_err_code_t+0x558>)
10004900:	e739      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004902:	20a1      	movs	r0, #161	; 0xa1
10004904:	0080      	lsls	r0, r0, #2
10004906:	e736      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004908:	486e      	ldr	r0, [pc, #440]	; (10004ac4 <porting_ble_err_code_t+0x55c>)
1000490a:	e734      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000490c:	486e      	ldr	r0, [pc, #440]	; (10004ac8 <porting_ble_err_code_t+0x560>)
1000490e:	e732      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004910:	486e      	ldr	r0, [pc, #440]	; (10004acc <porting_ble_err_code_t+0x564>)
10004912:	e730      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004914:	20a2      	movs	r0, #162	; 0xa2
10004916:	0080      	lsls	r0, r0, #2
10004918:	e72d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000491a:	486d      	ldr	r0, [pc, #436]	; (10004ad0 <porting_ble_err_code_t+0x568>)
1000491c:	e72b      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000491e:	486d      	ldr	r0, [pc, #436]	; (10004ad4 <porting_ble_err_code_t+0x56c>)
10004920:	e729      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004922:	486d      	ldr	r0, [pc, #436]	; (10004ad8 <porting_ble_err_code_t+0x570>)
10004924:	e727      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004926:	20a3      	movs	r0, #163	; 0xa3
10004928:	0080      	lsls	r0, r0, #2
1000492a:	e724      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000492c:	486b      	ldr	r0, [pc, #428]	; (10004adc <porting_ble_err_code_t+0x574>)
1000492e:	e722      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004930:	486b      	ldr	r0, [pc, #428]	; (10004ae0 <porting_ble_err_code_t+0x578>)
10004932:	e720      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004934:	486b      	ldr	r0, [pc, #428]	; (10004ae4 <porting_ble_err_code_t+0x57c>)
10004936:	e71e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004938:	486b      	ldr	r0, [pc, #428]	; (10004ae8 <porting_ble_err_code_t+0x580>)
1000493a:	e71c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000493c:	486b      	ldr	r0, [pc, #428]	; (10004aec <porting_ble_err_code_t+0x584>)
1000493e:	e71a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004940:	486b      	ldr	r0, [pc, #428]	; (10004af0 <porting_ble_err_code_t+0x588>)
10004942:	e718      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004944:	2001      	movs	r0, #1
10004946:	e716      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004948:	2002      	movs	r0, #2
1000494a:	e714      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000494c:	2003      	movs	r0, #3
1000494e:	e712      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004950:	2004      	movs	r0, #4
10004952:	e710      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004954:	2005      	movs	r0, #5
10004956:	e70e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004958:	2006      	movs	r0, #6
1000495a:	e70c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000495c:	2007      	movs	r0, #7
1000495e:	e70a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004960:	2008      	movs	r0, #8
10004962:	e708      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004964:	2009      	movs	r0, #9
10004966:	e706      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004968:	200a      	movs	r0, #10
1000496a:	e704      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000496c:	200b      	movs	r0, #11
1000496e:	e702      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004970:	200c      	movs	r0, #12
10004972:	e700      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004974:	200d      	movs	r0, #13
10004976:	e6fe      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004978:	200e      	movs	r0, #14
1000497a:	e6fc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000497c:	200f      	movs	r0, #15
1000497e:	e6fa      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004980:	2010      	movs	r0, #16
10004982:	e6f8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004984:	2011      	movs	r0, #17
10004986:	e6f6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004988:	2012      	movs	r0, #18
1000498a:	e6f4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000498c:	2013      	movs	r0, #19
1000498e:	e6f2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004990:	2014      	movs	r0, #20
10004992:	e6f0      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004994:	2015      	movs	r0, #21
10004996:	e6ee      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004998:	2016      	movs	r0, #22
1000499a:	e6ec      	b.n	10004776 <porting_ble_err_code_t+0x20e>
1000499c:	2017      	movs	r0, #23
1000499e:	e6ea      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049a0:	2018      	movs	r0, #24
100049a2:	e6e8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049a4:	2019      	movs	r0, #25
100049a6:	e6e6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049a8:	201a      	movs	r0, #26
100049aa:	e6e4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049ac:	201b      	movs	r0, #27
100049ae:	e6e2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049b0:	201c      	movs	r0, #28
100049b2:	e6e0      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049b4:	201d      	movs	r0, #29
100049b6:	e6de      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049b8:	201e      	movs	r0, #30
100049ba:	e6dc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049bc:	201f      	movs	r0, #31
100049be:	e6da      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049c0:	2020      	movs	r0, #32
100049c2:	e6d8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049c4:	2021      	movs	r0, #33	; 0x21
100049c6:	e6d6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049c8:	2022      	movs	r0, #34	; 0x22
100049ca:	e6d4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049cc:	2023      	movs	r0, #35	; 0x23
100049ce:	e6d2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049d0:	2024      	movs	r0, #36	; 0x24
100049d2:	e6d0      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049d4:	2025      	movs	r0, #37	; 0x25
100049d6:	e6ce      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049d8:	2026      	movs	r0, #38	; 0x26
100049da:	e6cc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049dc:	2027      	movs	r0, #39	; 0x27
100049de:	e6ca      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049e0:	2028      	movs	r0, #40	; 0x28
100049e2:	e6c8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049e4:	2029      	movs	r0, #41	; 0x29
100049e6:	e6c6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049e8:	202a      	movs	r0, #42	; 0x2a
100049ea:	e6c4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049ec:	202c      	movs	r0, #44	; 0x2c
100049ee:	e6c2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049f0:	202d      	movs	r0, #45	; 0x2d
100049f2:	e6c0      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049f4:	202e      	movs	r0, #46	; 0x2e
100049f6:	e6be      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049f8:	202f      	movs	r0, #47	; 0x2f
100049fa:	e6bc      	b.n	10004776 <porting_ble_err_code_t+0x20e>
100049fc:	2030      	movs	r0, #48	; 0x30
100049fe:	e6ba      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004a00:	2032      	movs	r0, #50	; 0x32
10004a02:	e6b8      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004a04:	2034      	movs	r0, #52	; 0x34
10004a06:	e6b6      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004a08:	2035      	movs	r0, #53	; 0x35
10004a0a:	e6b4      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004a0c:	2036      	movs	r0, #54	; 0x36
10004a0e:	e6b2      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004a10:	00000401 	.word	0x00000401
10004a14:	00000402 	.word	0x00000402
10004a18:	00000403 	.word	0x00000403
10004a1c:	00000404 	.word	0x00000404
10004a20:	00000405 	.word	0x00000405
10004a24:	00000406 	.word	0x00000406
10004a28:	00000407 	.word	0x00000407
10004a2c:	00000409 	.word	0x00000409
10004a30:	0000040a 	.word	0x0000040a
10004a34:	0000040b 	.word	0x0000040b
10004a38:	0000040c 	.word	0x0000040c
10004a3c:	0000040d 	.word	0x0000040d
10004a40:	000004ff 	.word	0x000004ff
10004a44:	000001ff 	.word	0x000001ff
10004a48:	00000301 	.word	0x00000301
10004a4c:	00000302 	.word	0x00000302
10004a50:	00000303 	.word	0x00000303
10004a54:	00000305 	.word	0x00000305
10004a58:	00000306 	.word	0x00000306
10004a5c:	00000307 	.word	0x00000307
10004a60:	00000309 	.word	0x00000309
10004a64:	0000030a 	.word	0x0000030a
10004a68:	0000030b 	.word	0x0000030b
10004a6c:	0000030d 	.word	0x0000030d
10004a70:	0000030e 	.word	0x0000030e
10004a74:	000003ff 	.word	0x000003ff
10004a78:	00000311 	.word	0x00000311
10004a7c:	00000312 	.word	0x00000312
10004a80:	00000313 	.word	0x00000313
10004a84:	00000201 	.word	0x00000201
10004a88:	00000202 	.word	0x00000202
10004a8c:	00000203 	.word	0x00000203
10004a90:	00000205 	.word	0x00000205
10004a94:	00000206 	.word	0x00000206
10004a98:	00000207 	.word	0x00000207
10004a9c:	00000209 	.word	0x00000209
10004aa0:	0000020a 	.word	0x0000020a
10004aa4:	0000020b 	.word	0x0000020b
10004aa8:	0000020d 	.word	0x0000020d
10004aac:	0000020e 	.word	0x0000020e
10004ab0:	0000020f 	.word	0x0000020f
10004ab4:	00000211 	.word	0x00000211
10004ab8:	00000281 	.word	0x00000281
10004abc:	00000282 	.word	0x00000282
10004ac0:	00000283 	.word	0x00000283
10004ac4:	00000285 	.word	0x00000285
10004ac8:	00000286 	.word	0x00000286
10004acc:	00000287 	.word	0x00000287
10004ad0:	00000289 	.word	0x00000289
10004ad4:	0000028a 	.word	0x0000028a
10004ad8:	0000028b 	.word	0x0000028b
10004adc:	0000028d 	.word	0x0000028d
10004ae0:	0000028e 	.word	0x0000028e
10004ae4:	0000028f 	.word	0x0000028f
10004ae8:	000002fd 	.word	0x000002fd
10004aec:	000002fe 	.word	0x000002fe
10004af0:	000002ff 	.word	0x000002ff
10004af4:	2037      	movs	r0, #55	; 0x37
10004af6:	e63e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004af8:	2038      	movs	r0, #56	; 0x38
10004afa:	e63c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004afc:	203a      	movs	r0, #58	; 0x3a
10004afe:	e63a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b00:	203b      	movs	r0, #59	; 0x3b
10004b02:	e638      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b04:	203c      	movs	r0, #60	; 0x3c
10004b06:	e636      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b08:	203d      	movs	r0, #61	; 0x3d
10004b0a:	e634      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b0c:	203e      	movs	r0, #62	; 0x3e
10004b0e:	e632      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b10:	20ff      	movs	r0, #255	; 0xff
10004b12:	e630      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b14:	2040      	movs	r0, #64	; 0x40
10004b16:	e62e      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b18:	2041      	movs	r0, #65	; 0x41
10004b1a:	e62c      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b1c:	2042      	movs	r0, #66	; 0x42
10004b1e:	e62a      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b20:	2043      	movs	r0, #67	; 0x43
10004b22:	e628      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b24:	2044      	movs	r0, #68	; 0x44
10004b26:	e626      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b28:	2100      	movs	r1, #0
10004b2a:	4b04      	ldr	r3, [pc, #16]	; (10004b3c <porting_ble_err_code_t+0x5d4>)
10004b2c:	4a04      	ldr	r2, [pc, #16]	; (10004b40 <porting_ble_err_code_t+0x5d8>)
10004b2e:	4c05      	ldr	r4, [pc, #20]	; (10004b44 <porting_ble_err_code_t+0x5dc>)
10004b30:	47a0      	blx	r4
10004b32:	4805      	ldr	r0, [pc, #20]	; (10004b48 <porting_ble_err_code_t+0x5e0>)
10004b34:	e61f      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b36:	2000      	movs	r0, #0
10004b38:	e61d      	b.n	10004776 <porting_ble_err_code_t+0x20e>
10004b3a:	46c0      	nop			; (mov r8, r8)
10004b3c:	00000223 	.word	0x00000223
10004b40:	100062e8 	.word	0x100062e8
10004b44:	00006641 	.word	0x00006641
10004b48:	000004ff 	.word	0x000004ff

10004b4c <porting_co_error>:
10004b4c:	b570      	push	{r4, r5, r6, lr}
10004b4e:	0a03      	lsrs	r3, r0, #8
10004b50:	0004      	movs	r4, r0
10004b52:	2b00      	cmp	r3, #0
10004b54:	d006      	beq.n	10004b64 <porting_co_error+0x18>
10004b56:	2b03      	cmp	r3, #3
10004b58:	d006      	beq.n	10004b68 <porting_co_error+0x1c>
10004b5a:	2100      	movs	r1, #0
10004b5c:	4b09      	ldr	r3, [pc, #36]	; (10004b84 <porting_co_error+0x38>)
10004b5e:	4a0a      	ldr	r2, [pc, #40]	; (10004b88 <porting_co_error+0x3c>)
10004b60:	4d0a      	ldr	r5, [pc, #40]	; (10004b8c <porting_co_error+0x40>)
10004b62:	47a8      	blx	r5
10004b64:	b2e0      	uxtb	r0, r4
10004b66:	e00b      	b.n	10004b80 <porting_co_error+0x34>
10004b68:	0001      	movs	r1, r0
10004b6a:	2202      	movs	r2, #2
10004b6c:	4b08      	ldr	r3, [pc, #32]	; (10004b90 <porting_co_error+0x44>)
10004b6e:	2011      	movs	r0, #17
10004b70:	4391      	bics	r1, r2
10004b72:	4299      	cmp	r1, r3
10004b74:	d004      	beq.n	10004b80 <porting_co_error+0x34>
10004b76:	4b07      	ldr	r3, [pc, #28]	; (10004b94 <porting_co_error+0x48>)
10004b78:	2011      	movs	r0, #17
10004b7a:	429c      	cmp	r4, r3
10004b7c:	d000      	beq.n	10004b80 <porting_co_error+0x34>
10004b7e:	380c      	subs	r0, #12
10004b80:	bd70      	pop	{r4, r5, r6, pc}
10004b82:	46c0      	nop			; (mov r8, r8)
10004b84:	00000422 	.word	0x00000422
10004b88:	100062e8 	.word	0x100062e8
10004b8c:	00006641 	.word	0x00006641
10004b90:	00000305 	.word	0x00000305
10004b94:	00000312 	.word	0x00000312

10004b98 <framework_set_llm_env_rand_addr>:
10004b98:	b510      	push	{r4, lr}
10004b9a:	0001      	movs	r1, r0
10004b9c:	4803      	ldr	r0, [pc, #12]	; (10004bac <framework_set_llm_env_rand_addr+0x14>)
10004b9e:	2206      	movs	r2, #6
10004ba0:	308f      	adds	r0, #143	; 0x8f
10004ba2:	30ff      	adds	r0, #255	; 0xff
10004ba4:	f000 f84c 	bl	10004c40 <__memcpy_veneer>
10004ba8:	bd10      	pop	{r4, pc}
10004baa:	46c0      	nop			; (mov r8, r8)
10004bac:	200012cc 	.word	0x200012cc

10004bb0 <__gnu_thumb1_case_sqi>:
10004bb0:	b402      	push	{r1}
10004bb2:	4671      	mov	r1, lr
10004bb4:	0849      	lsrs	r1, r1, #1
10004bb6:	0049      	lsls	r1, r1, #1
10004bb8:	5609      	ldrsb	r1, [r1, r0]
10004bba:	0049      	lsls	r1, r1, #1
10004bbc:	448e      	add	lr, r1
10004bbe:	bc02      	pop	{r1}
10004bc0:	4770      	bx	lr
10004bc2:	46c0      	nop			; (mov r8, r8)

10004bc4 <__popcountsi2>:
10004bc4:	4a09      	ldr	r2, [pc, #36]	; (10004bec <__popcountsi2+0x28>)
10004bc6:	0843      	lsrs	r3, r0, #1
10004bc8:	4013      	ands	r3, r2
10004bca:	1ac0      	subs	r0, r0, r3
10004bcc:	0003      	movs	r3, r0
10004bce:	4a08      	ldr	r2, [pc, #32]	; (10004bf0 <__popcountsi2+0x2c>)
10004bd0:	0880      	lsrs	r0, r0, #2
10004bd2:	4010      	ands	r0, r2
10004bd4:	4013      	ands	r3, r2
10004bd6:	181b      	adds	r3, r3, r0
10004bd8:	0918      	lsrs	r0, r3, #4
10004bda:	18c0      	adds	r0, r0, r3
10004bdc:	4b05      	ldr	r3, [pc, #20]	; (10004bf4 <__popcountsi2+0x30>)
10004bde:	4003      	ands	r3, r0
10004be0:	0218      	lsls	r0, r3, #8
10004be2:	18c0      	adds	r0, r0, r3
10004be4:	0403      	lsls	r3, r0, #16
10004be6:	18c0      	adds	r0, r0, r3
10004be8:	0e00      	lsrs	r0, r0, #24
10004bea:	4770      	bx	lr
10004bec:	55555555 	.word	0x55555555
10004bf0:	33333333 	.word	0x33333333
10004bf4:	0f0f0f0f 	.word	0x0f0f0f0f

10004bf8 <__libc_init_array>:
10004bf8:	b570      	push	{r4, r5, r6, lr}
10004bfa:	4d0c      	ldr	r5, [pc, #48]	; (10004c2c <__libc_init_array+0x34>)
10004bfc:	4e0c      	ldr	r6, [pc, #48]	; (10004c30 <__libc_init_array+0x38>)
10004bfe:	1b76      	subs	r6, r6, r5
10004c00:	10b6      	asrs	r6, r6, #2
10004c02:	d005      	beq.n	10004c10 <__libc_init_array+0x18>
10004c04:	2400      	movs	r4, #0
10004c06:	cd08      	ldmia	r5!, {r3}
10004c08:	3401      	adds	r4, #1
10004c0a:	4798      	blx	r3
10004c0c:	42a6      	cmp	r6, r4
10004c0e:	d1fa      	bne.n	10004c06 <__libc_init_array+0xe>
10004c10:	f7fb fa2e 	bl	10000070 <_init>
10004c14:	4d07      	ldr	r5, [pc, #28]	; (10004c34 <__libc_init_array+0x3c>)
10004c16:	4e08      	ldr	r6, [pc, #32]	; (10004c38 <__libc_init_array+0x40>)
10004c18:	1b76      	subs	r6, r6, r5
10004c1a:	10b6      	asrs	r6, r6, #2
10004c1c:	d005      	beq.n	10004c2a <__libc_init_array+0x32>
10004c1e:	2400      	movs	r4, #0
10004c20:	cd08      	ldmia	r5!, {r3}
10004c22:	3401      	adds	r4, #1
10004c24:	4798      	blx	r3
10004c26:	42a6      	cmp	r6, r4
10004c28:	d1fa      	bne.n	10004c20 <__libc_init_array+0x28>
10004c2a:	bd70      	pop	{r4, r5, r6, pc}
10004c2c:	20014af0 	.word	0x20014af0
10004c30:	20014af0 	.word	0x20014af0
10004c34:	20014af0 	.word	0x20014af0
10004c38:	20014b2c 	.word	0x20014b2c
10004c3c:	00000000 	.word	0x00000000

10004c40 <__memcpy_veneer>:
10004c40:	b401      	push	{r0}
10004c42:	4802      	ldr	r0, [pc, #8]	; (10004c4c <__memcpy_veneer+0xc>)
10004c44:	4684      	mov	ip, r0
10004c46:	bc01      	pop	{r0}
10004c48:	4760      	bx	ip
10004c4a:	bf00      	nop
10004c4c:	00005821 	.word	0x00005821

10004c50 <____gnu_thumb1_case_uhi_veneer>:
10004c50:	b401      	push	{r0}
10004c52:	4802      	ldr	r0, [pc, #8]	; (10004c5c <____gnu_thumb1_case_uhi_veneer+0xc>)
10004c54:	4684      	mov	ip, r0
10004c56:	bc01      	pop	{r0}
10004c58:	4760      	bx	ip
10004c5a:	bf00      	nop
10004c5c:	0002ed29 	.word	0x0002ed29

10004c60 <____gnu_thumb1_case_uqi_veneer>:
10004c60:	b401      	push	{r0}
10004c62:	4802      	ldr	r0, [pc, #8]	; (10004c6c <____gnu_thumb1_case_uqi_veneer+0xc>)
10004c64:	4684      	mov	ip, r0
10004c66:	bc01      	pop	{r0}
10004c68:	4760      	bx	ip
10004c6a:	bf00      	nop
10004c6c:	0002ed01 	.word	0x0002ed01

10004c70 <app_version>:
10004c70:	76655224 6f697369 41203a6e 56207070     $Revision: App V
10004c80:	69737265 30206e6f 302e302e 2420392e     ersion 0.0.0.9 $
	...

10004c91 <atmosic_sdk_ver>:
10004c91:	76655224 6f697369 53203a6e 56204b44     $Revision: SDK V
10004ca1:	69737265 35206e6f 302e332e 5b002420     ersion 5.3.0 $.[
10004cb1:	2e303125 5d733031 395b1b5b 1b576d35     %10.10s][.[95mW.
10004cc1:	5d6d305b 6e49203a 696c6176 61442064     [0m]: Invalid Da
10004cd1:	50206174 656b6361                        ta Packet.

10004cdb <M_NAME>:
10004cdb:	636e756c 61705f68 72657372 332e3500     lunch_parser.5.3
10004ceb:	5300302e 56204b44 69737265 203a6e6f     .0.SDK Version: 
10004cfb:	30007325 302e302e 4100392e 56205050     %s.0.0.0.9.APP V
10004d0b:	69737265 203a6e6f 5b007325 2e303125     ersion: %s.[%10.
10004d1b:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
10004d2b:	7325203a 31255b00 30312e30 1b5b5d73     : %s.[%10.10s][.
10004d3b:	6d32395b 305b1b44 203a5d6d 20454c42     [92mD.[0m]: BLE 
10004d4b:	74736572 20747261 61727564 6e6f6974     restart duration
10004d5b:	736d2820 25203a29 5b00756c 2e303125      (ms): %lu.[%10.
10004d6b:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
10004d7b:	6e55203a 646e6168 2064656c 74617473     : Unhandled stat
10004d8b:	203d2065 5b006425 2e303125 5d733031     e = %d.[%10.10s]
10004d9b:	395b1b5b 1b456d31 5d6d305b 7325203a     [.[91mE.[0m]: %s
10004dab:	69614620 6f74206c 61747320 73207472      Fail to start s
10004dbb:	206e6163 5b006425 2e303125 5d733031     can %d.[%10.10s]
10004dcb:	395b1b5b 1b456d31 5d6d305b 7325203a     [.[91mE.[0m]: %s
10004ddb:	69614620 6f74206c 6c656420 20657465      Fail to delete 
10004deb:	20766461 00782325 3031255b 7330312e     adv %#x.[%10.10s
10004dfb:	5b1b5b5d 446d3239 6d305b1b 25203a5d     ][.[92mD.[0m]: %
10004e0b:	4e203a73 20534456 20676174 20726f66     s: NVDS tag for 
10004e1b:	20766461 72617473 61702074 206d6172     adv start param 
10004e2b:	20746f6e 6e756f66 55202e64 676e6973     not found. Using
10004e3b:	66654420 746c7561 31255b00 30312e30      Default.[%10.10
10004e4b:	1b5b5d73 6d31395b 305b1b45 203a5d6d     s][.[91mE.[0m]: 
10004e5b:	203a7325 6c696146 74206465 7473206f     %s: Failed to st
10004e6b:	20747261 20766461 68746977 61747320     art adv with sta
10004e7b:	20737574 00782325 3031255b 7330312e     tus %#x.[%10.10s
10004e8b:	5b1b5b5d 456d3139 6d305b1b 4e203a5d     ][.[91mE.[0m]: N
10004e9b:	6164206f 69206174 616d206e 255b0070     o data in map.[%
10004eab:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
10004ebb:	3a5d6d30 67766120 00642520 3031255b     0m]: avg %d.[%10
10004ecb:	7330312e 5b1b5b5d 446d3239 6d305b1b     .10s][.[92mD.[0m
10004edb:	49203a5d 73692044 00732520 3031255b     ]: ID is %s.[%10
10004eeb:	7330312e 5b1b5b5d 456d3139 6d305b1b     .10s][.[91mE.[0m
10004efb:	25203a5d 53203a73 61207465 64207664     ]: %s: Set adv d
10004f0b:	20617461 6c696166 203a6465 00782325     ata failed: %#x.
10004f1b:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
10004f2b:	6d305b1b 25203a5d 4e203a73 20534456     .[0m]: %s: NVDS 
10004f3b:	20676174 20726f66 61657263 61206574     tag for create a
10004f4b:	70207664 6d617261 746f6e20 756f6620     dv param not fou
10004f5b:	202e646e 6e697355 65442067 6c756166     nd. Using Defaul
10004f6b:	255b0074 312e3031 5b5d7330 31395b1b     t.[%10.10s][.[91
10004f7b:	5b1b456d 3a5d6d30 3a732520 69614620     mE.[0m]: %s: Fai
10004f8b:	2064656c 63206f74 74616572 64612065     led to create ad
10004f9b:	23252076 255b0078 312e3031 5b5d7330     v %#x.[%10.10s][
10004fab:	31395b1b 5b1b456d 3a5d6d30 20732520     .[91mE.[0m]: %s 
10004fbb:	6c696146 206f7420 61657263 61206574     Fail to create a
10004fcb:	7320646e 74726174 61637320 6425206e     nd start scan %d
10004fdb:	6e756c00 735f6863 6e6e6163 705f7265     .lunch_scanner_p
10004feb:	70697265 61726568 00632e6c 3031255b     eripheral.c.[%10
10004ffb:	7330312e 5b1b5b5d 446d3239 6d305b1b     .10s][.[92mD.[0m
1000500b:	67203a5d 69747465 2520676e 255b0073     ]: getting %s.[%
1000501b:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
1000502b:	3a5d6d30 74657320 206f7420 75007325     0m]: set to %s.u
1000503b:	5f726573 6e69616d 64202928 00656e6f     ser_main() done.

1000504b <M_NAME>:
1000504b:	5f454c42 6e616373 7664615f               BLE_scan_adv.

10005058 <__ac_prime_list>:
10005058:	00000000 00000003 0000000b 00000017     ................
10005068:	00000035 00000061 000000c1 00000185     5...a...........
10005078:	00000301 00000607 00000c07 00001807     ................
10005088:	00003001 00006011 0000c005 0001800d     .0...`..........
10005098:	00030005 00060019 000c0001 00180005     ................
100050a8:	0030000b 0060000d 00c00005 01800013     ..0...`.........
100050b8:	03000005 06000017 0c000013 18000005     ................
100050c8:	30000059 60000005 c0000001 fffffffb     Y..0...`........

100050d8 <__func__.1>:
100050d8:	5f617362 72617473 63735f74               bsa_start_scan.

100050e7 <__func__.10>:
100050e7:	5f617362 656c6564 615f6574               bsa_delete_adv.

100050f6 <__func__.11>:
100050f6:	5f617362 74736572 5f747261 6e616373     bsa_restart_scan
	...

10005107 <__func__.3>:
10005107:	5f617362 6e616373 006e6f5f              bsa_scan_on.

10005113 <__func__.4>:
10005113:	5f617362 6f6c6e75 685f6b63 72656269     bsa_unlock_hiber
10005123:	6974616e                                 nation.

1000512a <__func__.5>:
1000512a:	5f617362 61657263 615f6574               bsa_create_adv.

10005139 <__func__.6>:
10005139:	5f617362 5f746573 5f766461 61746164     bsa_set_adv_data
	...

1000514a <__func__.8>:
1000514a:	5f617362 72617473 64615f74               bsa_start_adv.

10005158 <__func__.9>:
10005158:	5f617362 5f766461 00006e6f              bsa_adv_on..

10005164 <gap_callbacks.0>:
10005164:	10000919 00000000 00000000 00000000     ................
10005174:	1000036d 00000000 00000000 00000000     m...............
10005184:	00000000                                ....

10005188 <s_tbl.12>:
10005188:	00020000 10000659 00030102 100005e9     ....Y...........
10005198:	00040803 100008d1 00010904 10000879     ............y...
100051a8:	00050a04 10000595 00060205 10000441     ............A...
100051b8:	00070306 100003f1 00080507 1000020d     ................
100051c8:	00090608 100003bd 00010709 10000879     ............y...
100051d8:	00030b01 1000037d                       ....}...

100051e0 <scan_callbacks.2>:
	...
100051e8:	10000629 10000859 44524148 55414620     )...Y...HARD FAU
100051f8:	0021544c 3a307220 38302520 2020786c     LT!. r0: %08lx  
10005208:	203a3172 6c383025 72202078 25203a32     r1: %08lx  r2: %
10005218:	786c3830 20202020 203a3372 6c383025     08lx    r3: %08l
10005228:	72000a78 203a3231 6c383025 6c202078     x..r12: %08lx  l
10005238:	25203a72 786c3830 63702020 3025203a     r: %08lx  pc: %0
10005248:	20786c38 53507820 25203a52 786c3830     8lx  xPSR: %08lx
10005258:	4f52000a 72655f4d 61746172 2e30315f     ..ROM_errata_10.
10005268:	52410063 5f594152 284e454c 63746170     c.ARRAY_LEN(patc
10005278:	5f646568 5f636c6c 5f67736d 5f6c6468     hed_llc_msg_hdl_
10005288:	29626174 203d3d20 4b534154 5345445f     tab) == TASK_DES
10005298:	4c4c5f43 736d2e43 6e635f67 79640074     C_LLC.msg_cnt.dy
100052a8:	696d616e 6f6d2063 25206564 70202c64     namic mode %d, p
100052b8:	6f4d6572 25206564 4f520064 72655f4d     reMode %d.ROM_er
100052c8:	61746172 2e36315f 52410063 5f594152     rata_16.c.ARRAY_
100052d8:	284e454c 63746170 5f646568 5f6d6c6c     LEN(patched_llm_
100052e8:	5f67736d 5f6c6468 29626174 203d3d20     msg_hdl_tab) == 
100052f8:	4b534154 5345445f 4c4c5f43 736d2e4d     TASK_DESC_LLM.ms
10005308:	6e635f67 77730074 6d69745f 203a7265     g_cnt.sw_timer: 
10005318:	2067736d 75206f74 6f6e6b6e 69206e77     msg to unknown i
10005328:	75252064 74736420 20752520 6d6f7266     d %u dst %u from
10005338:	00752520 745f7773 72656d69 736d203a      %u.sw_timer: ms
10005348:	69772067 62206874 74206461 72656d69     g with bad timer
10005358:	2064695f 73007525 69745f77 3a72656d     _id %u.sw_timer:
10005368:	67736d20 74697720 72662068 74206565      msg with free t
10005378:	72656d69 2064695f 73007525 69745f77     imer_id %u.sw_ti
10005388:	2e72656d 77730063 6d69745f 665f7265     mer.c.sw_timer_f
10005398:	5f656572 64616568 203d3d20 4c4c554e     ree_head == NULL
100053a8:	5f777300 656d6974 72665f72 685f6565     .sw_timer_free_h
100053b8:	00646165 00727563 2d727563 6e61683e     ead.cur.cur->han
100053c8:	72656c64 32444900 454d4954 69742852     dler.ID2TIMER(ti
100053d8:	5f72656d 2d296469 6e61683e 72656c64     mer_id)->handler
100053e8:	00000000                                ....

100053ec <TASK_DESC_USER1>:
100053ec:	100053f8 20014ce4 00010001              .S...L. ....

100053f8 <sw_timer_msg_handler_tab>:
100053f8:	0000ffff 10000e0d 5f6d7461 632e6d70     ........atm_pm.c
10005408:	61282100 6c5f6d74 736b636f 6573755f     .!(atm_locks_use
10005418:	79745b64 205d6570 69282026 64692e64     d[type] & (id.id
10005428:	61002929 6c5f6d74 736b636f 6573755f     )).atm_locks_use
10005438:	79745b64 205d6570 30203d21 66666678     d[type] != 0xfff
10005448:	66666666 64690066 7079742e 203c2065     fffff.id.type < 
10005458:	4c5f4d50 5f4b434f 45505954 58414d5f     PM_LOCK_TYPE_MAX
10005468:	6d746100 636f6c5f 755f736b 5b646573     .atm_locks_used[
10005478:	742e6469 5d657079 69202620 64692e64     id.type] & id.id
10005488:	5f776800 2e676663 74720063 203d3d20     .hw_cfg.c.rt == 
10005498:	00337472 203a7325 61766e49 2064696c     rt3.%s: Invalid 
100054a8:	61726170                                 params.

100054af <__func__.0>:
100054af:	635f7768 725f6766 6f747365 725f6572     hw_cfg_restore_r
100054bf:	63735f78                                 x_scan.

100054c6 <__func__.1>:
100054c6:	635f7768 6f5f6766 6d697470 5f657a69     hw_cfg_optimize_
100054d6:	735f7872 006e6163 75736e55 726f7070     rx_scan.Unsuppor
100054e6:	20646574 72616f62 326d0064 00313032     ted board.m2201.
100054f6:	3032336d 326d0031 00313332 3532326d     m3201.m2231.m225
10005506:	336d0031 00313332 3232336d 326d0031     1.m3231.m3221.m2
10005516:	00313232 3032326d 336d0032 00323032     221.m2202.m3202.
10005526:	78656e55 74636570 66206465 6873616c     Unexpected flash
10005536:	70797420 6e550065 65707865 64657463      type.Unexpected
10005546:	63617020 6567616b 70797420 6e550065      package type.Un
10005556:	65707865 64657463 6e697020 72726120     expected pin arr
10005566:	65676e61 746e656d 656e5500 63657078     angement.Unexpec
10005576:	20646574 76726168 69747365 7320676e     ted harvesting s
10005586:	6f707075 28007472 29302828 203c3c20     upport.(((0) << 
10005596:	20293131 2828207c 3c202933 2933203c     11) | ((3) << 3)
100055a6:	28207c20 20293128 30203c3c 207c2029      | ((1) << 0) | 
100055b6:	29322828 203c3c20 7c202938 32282820     ((2) << 8) | ((2
100055c6:	3c3c2029 29333120 28207c20 20293128     ) << 13) | ((1) 
100055d6:	36203c3c 42002929 6472616f 6e6f6320     << 6)).Board con
100055e6:	75676966 69746172 62206e6f 676e6965     figuration being
100055f6:	65737520 6e692064 65687420 4b445320      used in the SDK
10005606:	73252820 6f642029 6e207365 6d20746f      (%s) does not m
10005616:	68637461 65687420 6e6f6320 7463656e     atch the connect
10005626:	62206465 6472616f 23252820 2e29786c     ed board (%#lx).
10005636:	74655320 414f4220 253d4452 75642073      Set BOARD=%s du
10005646:	676e6972 65687420 69756220 7020646c     ring the build p
10005656:	65636f72 202e7373 65666552 6f742072     rocess. Refer to
10005666:	6d746120 6369736f 6b64735f 6178652f      atmosic_sdk/exa
10005676:	656c706d 45522f73 454d4441 726f6620     mples/README for
10005686:	6c206120 20747369 7320666f 6f707075      a list of suppo
10005696:	64657472 616f6220 2e736472 6e697000     rted boards..pin
100056a6:	2e78756d 78650063 6c665f74 5f687361     mux.c.ext_flash_
100056b6:	5f706d63 74697277 25402865 2c786c23     cmp_write(@%#lx,
100056c6:	756c2520 20003a29 78323025 2e2e2000      %lu):. %02x. ..
100056d6:	7865002e 6c665f74 5f687361 74697277     ..ext_flash_writ
100056e6:	25402865 2c786c23 756c2520 41462029     e(@%#lx, %lu) FA
100056f6:	25204c49 75252075 6c232520 43000a78     IL %u %u %#lx..C
10005706:	35005053 37003578 36003778 20003678     SP.5x5.7x7.6x6. 
10005716:	63617453 2064656b 73616c66 20003a68     Stacked flash:. 
10005726:	5f545845 53414c46 65003a48 665f7478     EXT_FLASH:.ext_f
10005736:	6873616c 6165725f 20292864 4c494146     lash_read() FAIL
10005746:	25204445 70000a75 632e756d 73657200     ED %u..pmu.c.res
10005756:	632e7465 61747300 00737574 746f6f62     et.c.status.boot
10005766:	6174735f 20737574 7825203d 6c6f4300     _status = %x.Col
10005776:	6f622064 5300746f 65747379 6572206d     d boot.System re
10005786:	00746573 65626948 69746172 77206e6f     set.Hiberation w
10005796:	75656b61 4f530070 666f2043 61772066     akeup.SOC off wa
100057a6:	7075656b 6f724200 756f6e77 6f432074     keup.Brownout Co
100057b6:	7469646e 206e6f69 65746564 64657463     ndition detected
100057c6:	6e45203a 69726574 5320676e 4f5f434f     : Entering SOC_O
100057d6:	62004646 6f6e7772 632e7475 64252300     FF.brwnout.c.#%d
100057e6:	25783020 786c3830 540a000a 65636172      0x%08lx...Trace
100057f6:	6b636162 6d6f6320 74656c70 25203a65     back complete: %
10005806:	5b000a64 2e303125 5d733031 395b1b5b     d..[%10.10s][.[9
10005816:	1b456d31 5d6d305b 6469203a 75253a78     1mE.[0m]: idx:%u
10005826:	7473203a 73757461 78232520 31255b00     : status %#x.[%1
10005836:	30312e30 1b5b5d73 6d31395b 305b1b45     0.10s][.[91mE.[0
10005846:	203a5d6d 20766461 696e6173 65207974     m]: adv sanity e
10005856:	2d207272 70797420 23253d65 70202c78     rr - type=%#x, p
10005866:	3d706f72 2c782325 79687020 7823253d     rop=%#x, phy=%#x
10005876:	6964202c 6d5f6373 3d65646f 2c782325     , disc_mode=%#x,
10005886:	61657220 3d6e6f73 00782325 5f6d7461      reason=%#x.atm_
10005896:	2e766461 255b0063 312e3031 5b5d7330     adv.c.[%10.10s][
100058a6:	32395b1b 5b1b446d 3a5d6d30 76644120     .[92mD.[0m]: Adv
100058b6:	203a7525 5b004e4f 2e303125 5d733031     %u: ON.[%10.10s]
100058c6:	395b1b5b 1b566d37 5d6d305b 6461203a     [.[97mV.[0m]: ad
100058d6:	72632076 65746165 75252864 255b0029     v created(%u).[%
100058e6:	312e3031 5b5d7330 32395b1b 5b1b446d     10.10s][.[92mD.[
100058f6:	3a5d6d30 76644120 203a7525 2046464f     0m]: Adv%u: OFF 
10005906:	78232528 255b0029 312e3031 5b5d7330     (%#x).[%10.10s][
10005916:	31395b1b 5b1b456d 3a5d6d30 6f725720     .[91mE.[0m]: Wro
10005926:	6f20676e 72656472 64610021 62635f76     ng order!.adv_cb
10005936:	31255b00 30312e30 1b5b5d73 6d31395b     .[%10.10s][.[91m
10005946:	305b1b45 203a5d6d 61686e55 656c646e     E.[0m]: Unhandle
10005956:	79742064 253d6570 5b007823 2e303125     d type=%#x.[%10.
10005966:	5d733031 395b1b5b 1b446d32 5d6d305b     10s][.[92mD.[0m]
10005976:	6263203a 202c6425 74736e69 202c6425     : cb%d, inst%d, 
10005986:	61746164 5b006425 2e303125 5d733031     data%d.[%10.10s]
10005996:	395b1b5b 1b4e6d34 5d6d305b 7075203a     [.[94mN.[0m]: up
100059a6:	69746164 5620676e 20444941 74206f74     dating VAID to t
100059b6:	61206568 64207664 00617461 3031255b     he adv data.[%10
100059c6:	7330312e 5b1b5b5d 566d3739 6d305b1b     .10s][.[97mV.[0m
100059d6:	65203a5d 656d656c 6c20746e 203a6e65     ]: element len: 
100059e6:	58323025 20746120 5d64255b 31255b00     %02X at [%d].[%1
100059f6:	30312e30 1b5b5d73 6d32395b 305b1b44     0.10s][.[92mD.[0
10005a06:	203a5d6d 6e756f66 616d2064 61642066     m]: found maf da
10005a16:	73206174 74726174 20746120 5d64255b     ta start at [%d]
10005a26:	31255b00 30312e30 1b5b5d73 6d32395b     .[%10.10s][.[92m
10005a36:	305b1b44 203a5d6d 70206f6e 20687461     D.[0m]: no path 
10005a46:	75206f74 74616470 61762065 5b006469     to update vaid.[
10005a56:	2e303125 5d733031 395b1b5b 1b446d32     %10.10s][.[92mD.
10005a66:	5d6d305b 6f6e203a 70616320 74696369     [0m]: no capicit
10005a76:	6f662079 41502072 495f4854 5245534e     y for PATH_INSER
10005a86:	454e5f54 255b0057 312e3031 5b5d7330     T_NEW.[%10.10s][
10005a96:	32395b1b 5b1b446d 3a5d6d30 206f6e20     .[92mD.[0m]: no 
10005aa6:	69706163 79746963 726f6620 54415020     capicity for PAT
10005ab6:	4e495f48 54524553 5050415f 00444e45     H_INSERT_APPEND.
10005ac6:	3031255b 7330312e 5b1b5b5d 446d3239     [%10.10s][.[92mD
10005ad6:	6d305b1b 63203a5d 676e6168 61762065     .[0m]: change va
10005ae6:	485f6469 3a6f7420 00642520 3031255b     id_H to: %d.[%10
10005af6:	7330312e 5b1b5b5d 566d3739 6d305b1b     .10s][.[97mV.[0m
10005b06:	61203a5d 64207664 5b617461 3a5d6425     ]: adv data[%d]:
10005b16:	32302520 255b0058 312e3031 5b5d7330      %02X.[%10.10s][
10005b26:	34395b1b 5b1b4e6d 3a5d6d30 64707520     .[94mN.[0m]: upd
10005b36:	64657461 49415620 6f742044 65687420     ated VAID to the
10005b46:	76646120 74616420                         adv data.

10005b50 <M_NAME>:
10005b50:	5f6d7461 00766461 5f6d7461 2e6d7361     atm_adv.atm_asm.
10005b60:	255b0063 312e3031 5b5d7330 32395b1b     c.[%10.10s][.[92
10005b70:	5b1b446d 3a5d6d30 73696420 3a6e6f63     mD.[0m]: discon:
10005b80:	61747320 3d737574 00782325 5f6d7461      status=%#x.atm_
10005b90:	2e706167 255b0063 312e3031 5b5d7330     gap.c.[%10.10s][
10005ba0:	35395b1b 5b1b576d 3a5d6d30 686e5520     .[95mW.[0m]: Unh
10005bb0:	6c646e61 47206465 20435041 2067736d     andled GAPC msg 
10005bc0:	00782325 3031255b 7330312e 5b1b5b5d     %#x.[%10.10s][.[
10005bd0:	576d3539 6d305b1b 25203a5d 49203a73     95mW.[0m]: %s: I
10005be0:	6c61766e 63206469 64696e6f 696c0078     nvalid conidx.li
10005bf0:	006f666e 3031255b 7330312e 5b1b5b5d     nfo.[%10.10s][.[
10005c00:	456d3139 6d305b1b 6d203a5d 20737369     91mE.[0m]: miss 
10005c10:	25206263 69640073 6e6f6373 4d005300     cb %s.discon.S.M
10005c20:	74786500 7664615f 31255b00 30312e30     .ext_adv.[%10.10
10005c30:	1b5b5d73 6d32395b 305b1b44 203a5d6d     s][.[92mD.[0m]: 
10005c40:	6e6e6f43 20646e49 3d786469 72206425     ConnInd idx=%d r
10005c50:	3d656c6f 5b007325 2e303125 5d733031     ole=%s.[%10.10s]
10005c60:	395b1b5b 1b446d32 5d6d305b 6944203a     [.[92mD.[0m]: Di
10005c70:	6e6f6373 646e4920 5823253d 6e6f6300     scon Ind=%#X.con
10005c80:	6470755f 00657461 3031255b 7330312e     _update.[%10.10s
10005c90:	5b1b5b5d 446d3239 6d305b1b 55203a5d     ][.[92mD.[0m]: U
10005ca0:	74616470 65722065 6d203a71 253d6e69     pdate req: min=%
10005cb0:	2e312864 736d3532 616d2029 64253d78     d(1.25ms) max=%d
10005cc0:	322e3128 29736d35 74616c20 2064253d     (1.25ms) lat=%d 
10005cd0:	253d6f74 30312864 0029736d 00796870     to=%d(10ms).phy.
10005ce0:	3031255b 7330312e 5b1b5b5d 576d3539     [%10.10s][.[95mW
10005cf0:	6d305b1b 6d203a5d 20737369 25206263     .[0m]: miss cb %
10005d00:	656c0073 746b705f 7a69735f 255b0065     s.le_pkt_size.[%
10005d10:	312e3031 5b5d7330 37395b1b 5b1b566d     10.10s][.[97mV.[
10005d20:	3a5d6d30 76656420 666e695f 7165725f     0m]: dev_inf_req
10005d30:	666f203a 74657366 2064253d 3d78616d     : offset=%d max=
10005d40:	6e206425 5f656d61 3a6e656c 5b006425     %d name_len:%d.[
10005d50:	2e303125 5d733031 395b1b5b 1b446d32     %10.10s][.[92mD.
10005d60:	5d6d305b 6564203a 6e695f76 203a6f66     [0m]: dev_info: 
10005d70:	3d716572 5b006425 2e303125 5d733031     req=%d.[%10.10s]
10005d80:	395b1b5b 1b456d31 5d6d305b 6e55203a     [.[91mE.[0m]: Un
10005d90:	646e6168 2064656c 3d444945 00782325     handled EID=%#x.
10005da0:	00000000                                 ......

10005da6 <M_NAME>:
10005da6:	5f6d7461 00706167                       atm_gap.

10005dae <cfm.0>:
10005dae:	00000001                                 ......

10005db4 <zero.1>:
	...

10005dbc <default_bt_init_param.2>:
10005dbc:	10005e0e 0000120b 00090009 01f4001d     .^..............
10005dcc:	00000000 10005ddc 00000000 00000000     .....]..........

10005ddc <default_dev_conf.1>:
10005ddc:	0384000f 00000000 00000000 00000000     ................
	...
10005df4:	01000000 00000000 00fb0000 00a00848     ............H...
10005e04:	00000017 00000000                        ..........

10005e0e <dname.0>:
10005e0e:	6f6d7441 20636973 00005442 00000000     Atmosic BT......
10005e1e:	255b0000 312e3031 5b5d7330 31395b1b     ..[%10.10s][.[91
10005e2e:	5b1b456d 3a5d6d30 3a732520 766e4920     mE.[0m]: %s: Inv
10005e3e:	64696c61 72617020 20736d61 7320726f     alid params or s
10005e4e:	65746174 31255b00 30312e30 1b5b5d73     tate.[%10.10s][.
10005e5e:	6d31395b 305b1b45 203a5d6d 6e616353     [91mE.[0m]: Scan
10005e6e:	61747320 66207472 656c6961 25203a64      start failed: %
10005e7e:	25202c75 255b0075 312e3031 5b5d7330     u, %u.[%10.10s][
10005e8e:	31395b1b 5b1b456d 3a5d6d30 3a732520     .[91mE.[0m]: %s:
10005e9e:	206f4e20 6f6d656d 61007972 735f6d74      No memory.atm_s
10005eae:	2e6e6163 6e690063 3e2d7473 72617473     can.c.inst->star
10005ebe:	3d3d2074 4c554e20 255b004c 312e3031     t == NULL.[%10.1
10005ece:	5b5d7330 31395b1b 5b1b456d 3a5d6d30     0s][.[91mE.[0m]:
10005ede:	20732520 74617473 203a7375 5b006425      %s status: %d.[
10005eee:	2e303125 5d733031 395b1b5b 1b456d31     %10.10s][.[91mE.
10005efe:	5d6d305b 7325203a 766e4920 64696c61     [0m]: %s Invalid
10005f0e:	72617020 20736d61 7320726f 65746174      params or state
10005f1e:	6425203a 31255b00 30312e30 1b5b5d73     : %d.[%10.10s][.
10005f2e:	6d31395b 305b1b45 203a5d6d 6e616353     [91mE.[0m]: Scan
10005f3e:	65726320 6f697461 6166206e 64656c69      creation failed
10005f4e:	7525203a 7525202c 31255b00 30312e30     : %u, %u.[%10.10
10005f5e:	1b5b5d73 6d31395b 305b1b45 203a5d6d     s][.[91mE.[0m]: 
10005f6e:	203a7325 61766e49 2064696c 61726170     %s: Invalid para
10005f7e:	6f20736d 74732072 3a657461 00642520     ms or state: %d.

10005f8e <M_NAME>:
10005f8e:	5f6d7461 6e616373                        atm_scan.

10005f97 <__func__.0>:
10005f97:	5f6d7461 6e616373 6f74735f 64657070     atm_scan_stopped
10005fa7:	646e695f                                 _ind.

10005fac <__func__.5>:
10005fac:	6d706167 706d635f 7476655f 6163735f     gapm_cmp_evt_sca
10005fbc:	74735f6e 00747261                       n_start.

10005fc4 <__func__.6>:
10005fc4:	5f6d7461 6e616373 6174735f               atm_scan_start.

10005fd3 <__func__.7>:
10005fd3:	6d706167 706d635f 7476655f 6572635f     gapm_cmp_evt_cre
10005fe3:	5f657461 6e616373                        ate_scan.

10005fec <__func__.8>:
10005fec:	5f6d7461 6e616373 6572635f 00657461     atm_scan_create.

10005ffc <__func__.9>:
10005ffc:	5f6d7461 6e616373 6572635f 5f657461     atm_scan_create_
1000600c:	5f646e61 72617473 6c620074 61675f65     and_start.ble_ga
1000601c:	00632e70 61686e55 656c646e 6d632064     p.c.Unhandled cm
1000602c:	76652070 6e550074 646e6168 2064656c     p evt.Unhandled 
1000603c:	63706167 706d635f 7476655f 28706f20     gapc_cmp_evt op(
1000604c:	29782325 7473202c 73757461 29752528     %#x), status(%u)
1000605c:	766e6900 64696c61 64707520 20657461     .invalid update 
1000606c:	696e6f63 25007864 6e203a73 20656d61     conidx.%s: name 
1000607c:	3d6e656c 46006425 75746165 6e206572     len=%d.Feature n
1000608c:	7320746f 6f707075 202c7472 76206425     ot support, %d v
1000609c:	64252073 6c616600 61006573 5f767463     s %d.false.actv_
100060ac:	3a786469 20752520 3a6e656c 00752520     idx: %u len: %u.

100060bc <__func__.2>:
100060bc:	74726f70 5f676e69 63706167 7465675f     porting_gapc_get
100060cc:	7665645f 666e695f 66635f6f 0000006d     _dev_info_cfm...

100060dc <ble_gapc_handlers>:
100060dc:	100060e4 0000000c                       .`......

100060e4 <ble_gapc_msg_handler_list>:
100060e4:	0000ffff 10003bc1 00000e0f 10003b81     .....;.......;..
100060f4:	00000e15 10003a3d 00000e13 10003a41     ....=:......A:..
10006104:	00000e00 10003959 00000e07 10003775     ....Y9......u7..
10006114:	00000e08 1000372d 00000e09 100036f1     ....-7.......6..
10006124:	00000e1d 100036ad 00000e29 10003671     .....6..)...q6..
10006134:	00000e30 10003ac5 00000e2c 10003a99     0....:..,....:..

10006144 <ble_gapm_handlers>:
10006144:	1000614c 00000009                       La......

1000614c <ble_gapm_msg_handler_list>:
1000614c:	0000ffff 100035b9 00000da4 10003859     .....5......Y8..
1000615c:	00000d00 100037bd 00000d27 10003859     .....7..'...Y8..
1000616c:	00000d15 10003859 00000d08 10003859     ....Y8......Y8..
1000617c:	00000d1c 10003859 00000da5 10003e25     ....Y8......%>..
1000618c:	00000da7 10003dad 5f656c62 6b736174     .....=..ble_task
1000619c:	6800632e 6c646e61 3e2d7265 636e7566     .c.handler->func
100061ac:	20732500 6e55202d 646e6168 2064656c     .%s - Unhandled 
100061bc:	6967736d 23252064 72662078 25206d6f     msgid %#x from %
100061cc:	62007823 745f656c 5f6b7361 6e756f63     #x.ble_task_coun
100061dc:	203c2074 5f454c42 5f47534d 444e4148     t < BLE_MSG_HAND
100061ec:	5f52454c 5453494c 5a49535f 62700045     LER_LIST_SIZE.pb
100061fc:	685f656c 6c646e61 5b737265 742e5d69     le_handlers[i].t
1000620c:	5f6b7361 21206469 6174203d 695f6b73     ask_id != task_i
1000621c:	70410064 63696c70 6f697461 7263206e     d.Application cr
1000622c:	65746165 75252073 73656d20 65676173     eates %u message
1000623c:	6e616820 72656c64 6f662073 4c422072      handlers for BL
1000624c:	65732045 63697672 62007365 6f207475     E services.but o
1000625c:	20796c6e 766f7270 73656469 20642520     nly provides %d 
1000626c:	20726f66 6e697375 50202e67 7361656c     for using. Pleas
1000627c:	6f6d2065 79666964 65687420 6c617600     e modify the.val
1000628c:	64206575 6e696665 62206465 4c422079     ue defined by BL
1000629c:	534d5f45 41485f47 454c444e 494c5f52     E_MSG_HANDLER_LI
100062ac:	535f5453 00455a49                       ST_SIZE.

100062b4 <TASK_DESC_APP>:
100062b4:	100062e0 20014e54 00010001              .b..TN. ....

100062c0 <__func__.0>:
100062c0:	5f656c62 5f746567 646e6168 0072656c     ble_get_handler.

100062d0 <__func__.1>:
100062d0:	5f656c62 5f67736d 646e6168 0072656c     ble_msg_handler.

100062e0 <ble_msg_handler_tab>:
100062e0:	0000ffff 100043c5 74726f70 5f676e69     .....C..porting_
100062f0:	2e656c62                                 ble.c.

Disassembly of section .data:

20014000 <user_rv_appm_init.0>:
20014000:	10000125 00000000                       %.......

20014008 <user_rv_appm_init.13>:
20014008:	10000239 00000000                       9.......

20014010 <HFH_Stopper>:
20014010:	10000bed                                ....

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
20014048:	10000c85 00000000                       ........

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
20014174:	20014c3b 	.word	0x20014c3b
20014178:	20014c40 	.word	0x20014c40
2001417c:	20014c38 	.word	0x20014c38
20014180:	200142dd 	.word	0x200142dd
20014184:	20014c3c 	.word	0x20014c3c
20014188:	0002ee49 	.word	0x0002ee49
2001418c:	10004bc5 	.word	0x10004bc5
20014190:	20014269 	.word	0x20014269

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
200141cc:	10000d79 00000000                       y.......

200141d4 <user_rv_appm_init.0>:
200141d4:	10000df5 00000000                       ........

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
200141f0:	20014d48 	.word	0x20014d48

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
20014238:	20014d54 	.word	0x20014d54
2001423c:	20014d50 	.word	0x20014d50

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
20014254:	20014d54 	.word	0x20014d54

20014258 <user_rv_plf_prevent_hibernation.2>:
20014258:	20014205 00000000                       .B. ....

20014260 <user_rv_plf_prevent_retention.1>:
20014260:	20014241 00000000                       AB. ....

20014268 <hw_cfg_max_interference_perf>:
20014268:	b570      	push	{r4, r5, r6, lr}
2001426a:	2501      	movs	r5, #1
2001426c:	4a14      	ldr	r2, [pc, #80]	; (200142c0 <hw_cfg_max_interference_perf+0x58>)
2001426e:	4815      	ldr	r0, [pc, #84]	; (200142c4 <hw_cfg_max_interference_perf+0x5c>)
20014270:	6814      	ldr	r4, [r2, #0]
20014272:	6015      	str	r5, [r2, #0]
20014274:	7801      	ldrb	r1, [r0, #0]
20014276:	4b14      	ldr	r3, [pc, #80]	; (200142c8 <hw_cfg_max_interference_perf+0x60>)
20014278:	2900      	cmp	r1, #0
2001427a:	d10a      	bne.n	20014292 <hw_cfg_max_interference_perf+0x2a>
2001427c:	6ed9      	ldr	r1, [r3, #108]	; 0x6c
2001427e:	4e13      	ldr	r6, [pc, #76]	; (200142cc <hw_cfg_max_interference_perf+0x64>)
20014280:	400e      	ands	r6, r1
20014282:	4913      	ldr	r1, [pc, #76]	; (200142d0 <hw_cfg_max_interference_perf+0x68>)
20014284:	4331      	orrs	r1, r6
20014286:	66d9      	str	r1, [r3, #108]	; 0x6c
20014288:	6b19      	ldr	r1, [r3, #48]	; 0x30
2001428a:	4e12      	ldr	r6, [pc, #72]	; (200142d4 <hw_cfg_max_interference_perf+0x6c>)
2001428c:	4031      	ands	r1, r6
2001428e:	6319      	str	r1, [r3, #48]	; 0x30
20014290:	7005      	strb	r5, [r0, #0]
20014292:	6c19      	ldr	r1, [r3, #64]	; 0x40
20014294:	4810      	ldr	r0, [pc, #64]	; (200142d8 <hw_cfg_max_interference_perf+0x70>)
20014296:	4008      	ands	r0, r1
20014298:	21c0      	movs	r1, #192	; 0xc0
2001429a:	0089      	lsls	r1, r1, #2
2001429c:	4301      	orrs	r1, r0
2001429e:	207f      	movs	r0, #127	; 0x7f
200142a0:	6419      	str	r1, [r3, #64]	; 0x40
200142a2:	69d9      	ldr	r1, [r3, #28]
200142a4:	4381      	bics	r1, r0
200142a6:	0008      	movs	r0, r1
200142a8:	2162      	movs	r1, #98	; 0x62
200142aa:	4301      	orrs	r1, r0
200142ac:	207c      	movs	r0, #124	; 0x7c
200142ae:	61d9      	str	r1, [r3, #28]
200142b0:	6a19      	ldr	r1, [r3, #32]
200142b2:	4381      	bics	r1, r0
200142b4:	0008      	movs	r0, r1
200142b6:	2130      	movs	r1, #48	; 0x30
200142b8:	4301      	orrs	r1, r0
200142ba:	6219      	str	r1, [r3, #32]
200142bc:	6014      	str	r4, [r2, #0]
200142be:	bd70      	pop	{r4, r5, r6, pc}
200142c0:	50003018 	.word	0x50003018
200142c4:	20014d74 	.word	0x20014d74
200142c8:	50006000 	.word	0x50006000
200142cc:	00fffc3f 	.word	0x00fffc3f
200142d0:	320001c0 	.word	0x320001c0
200142d4:	dfffffff 	.word	0xdfffffff
200142d8:	fffffc1f 	.word	0xfffffc1f

200142dc <hw_cfg_max_range_perf>:
200142dc:	2301      	movs	r3, #1
200142de:	b510      	push	{r4, lr}
200142e0:	4a0d      	ldr	r2, [pc, #52]	; (20014318 <hw_cfg_max_range_perf+0x3c>)
200142e2:	480e      	ldr	r0, [pc, #56]	; (2001431c <hw_cfg_max_range_perf+0x40>)
200142e4:	6814      	ldr	r4, [r2, #0]
200142e6:	6013      	str	r3, [r2, #0]
200142e8:	4b0d      	ldr	r3, [pc, #52]	; (20014320 <hw_cfg_max_range_perf+0x44>)
200142ea:	6c19      	ldr	r1, [r3, #64]	; 0x40
200142ec:	4008      	ands	r0, r1
200142ee:	21c8      	movs	r1, #200	; 0xc8
200142f0:	0089      	lsls	r1, r1, #2
200142f2:	4301      	orrs	r1, r0
200142f4:	207f      	movs	r0, #127	; 0x7f
200142f6:	6419      	str	r1, [r3, #64]	; 0x40
200142f8:	69d9      	ldr	r1, [r3, #28]
200142fa:	4381      	bics	r1, r0
200142fc:	0008      	movs	r0, r1
200142fe:	2168      	movs	r1, #104	; 0x68
20014300:	4301      	orrs	r1, r0
20014302:	207c      	movs	r0, #124	; 0x7c
20014304:	61d9      	str	r1, [r3, #28]
20014306:	6a19      	ldr	r1, [r3, #32]
20014308:	4381      	bics	r1, r0
2001430a:	0008      	movs	r0, r1
2001430c:	2118      	movs	r1, #24
2001430e:	4301      	orrs	r1, r0
20014310:	6219      	str	r1, [r3, #32]
20014312:	6014      	str	r4, [r2, #0]
20014314:	bd10      	pop	{r4, pc}
20014316:	46c0      	nop			; (mov r8, r8)
20014318:	50003018 	.word	0x50003018
2001431c:	fffffc1f 	.word	0xfffffc1f
20014320:	50006000 	.word	0x50006000

20014324 <NMI_Handler>:
20014324:	b510      	push	{r4, lr}
20014326:	4b0b      	ldr	r3, [pc, #44]	; (20014354 <NMI_Handler+0x30>)
20014328:	681a      	ldr	r2, [r3, #0]
2001432a:	1c51      	adds	r1, r2, #1
2001432c:	6019      	str	r1, [r3, #0]
2001432e:	2a00      	cmp	r2, #0
20014330:	d108      	bne.n	20014344 <NMI_Handler+0x20>
20014332:	21c0      	movs	r1, #192	; 0xc0
20014334:	4b08      	ldr	r3, [pc, #32]	; (20014358 <NMI_Handler+0x34>)
20014336:	4809      	ldr	r0, [pc, #36]	; (2001435c <NMI_Handler+0x38>)
20014338:	0109      	lsls	r1, r1, #4
2001433a:	5058      	str	r0, [r3, r1]
2001433c:	2001      	movs	r0, #1
2001433e:	60d8      	str	r0, [r3, #12]
20014340:	505a      	str	r2, [r3, r1]
20014342:	bd10      	pop	{r4, pc}
20014344:	b672      	cpsid	i
20014346:	4b06      	ldr	r3, [pc, #24]	; (20014360 <NMI_Handler+0x3c>)
20014348:	2100      	movs	r1, #0
2001434a:	6818      	ldr	r0, [r3, #0]
2001434c:	4b05      	ldr	r3, [pc, #20]	; (20014364 <NMI_Handler+0x40>)
2001434e:	4798      	blx	r3
20014350:	e7fe      	b.n	20014350 <NMI_Handler+0x2c>
20014352:	46c0      	nop			; (mov r8, r8)
20014354:	20000bf8 	.word	0x20000bf8
20014358:	40008000 	.word	0x40008000
2001435c:	1acce551 	.word	0x1acce551
20014360:	20001280 	.word	0x20001280
20014364:	0000672d 	.word	0x0000672d

20014368 <ext_flash_write_page>:
20014368:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
2001436a:	0004      	movs	r4, r0
2001436c:	9100      	str	r1, [sp, #0]
2001436e:	9201      	str	r2, [sp, #4]
20014370:	f3ef 8c10 	mrs	ip, PRIMASK
20014374:	b672      	cpsid	i
20014376:	2301      	movs	r3, #1
20014378:	4a75      	ldr	r2, [pc, #468]	; (20014550 <ext_flash_write_page+0x1e8>)
2001437a:	2580      	movs	r5, #128	; 0x80
2001437c:	6013      	str	r3, [r2, #0]
2001437e:	2280      	movs	r2, #128	; 0x80
20014380:	4b74      	ldr	r3, [pc, #464]	; (20014554 <ext_flash_write_page+0x1ec>)
20014382:	0492      	lsls	r2, r2, #18
20014384:	69d8      	ldr	r0, [r3, #28]
20014386:	2680      	movs	r6, #128	; 0x80
20014388:	0200      	lsls	r0, r0, #8
2001438a:	0a00      	lsrs	r0, r0, #8
2001438c:	601a      	str	r2, [r3, #0]
2001438e:	2280      	movs	r2, #128	; 0x80
20014390:	4060      	eors	r0, r4
20014392:	2106      	movs	r1, #6
20014394:	2408      	movs	r4, #8
20014396:	0092      	lsls	r2, r2, #2
20014398:	046d      	lsls	r5, r5, #17
2001439a:	0076      	lsls	r6, r6, #1
2001439c:	601a      	str	r2, [r3, #0]
2001439e:	0049      	lsls	r1, r1, #1
200143a0:	432a      	orrs	r2, r5
200143a2:	3c01      	subs	r4, #1
200143a4:	601a      	str	r2, [r3, #0]
200143a6:	b2c9      	uxtb	r1, r1
200143a8:	2c00      	cmp	r4, #0
200143aa:	d000      	beq.n	200143ae <ext_flash_write_page+0x46>
200143ac:	e0ba      	b.n	20014524 <ext_flash_write_page+0x1bc>
200143ae:	2280      	movs	r2, #128	; 0x80
200143b0:	0492      	lsls	r2, r2, #18
200143b2:	601c      	str	r4, [r3, #0]
200143b4:	2580      	movs	r5, #128	; 0x80
200143b6:	601a      	str	r2, [r3, #0]
200143b8:	2680      	movs	r6, #128	; 0x80
200143ba:	601a      	str	r2, [r3, #0]
200143bc:	2280      	movs	r2, #128	; 0x80
200143be:	2132      	movs	r1, #50	; 0x32
200143c0:	3408      	adds	r4, #8
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
200143d6:	d000      	beq.n	200143da <ext_flash_write_page+0x72>
200143d8:	e0ab      	b.n	20014532 <ext_flash_write_page+0x1ca>
200143da:	2680      	movs	r6, #128	; 0x80
200143dc:	2580      	movs	r5, #128	; 0x80
200143de:	0c01      	lsrs	r1, r0, #16
200143e0:	b2c9      	uxtb	r1, r1
200143e2:	3408      	adds	r4, #8
200143e4:	0076      	lsls	r6, r6, #1
200143e6:	046d      	lsls	r5, r5, #17
200143e8:	2780      	movs	r7, #128	; 0x80
200143ea:	b24a      	sxtb	r2, r1
200143ec:	17d2      	asrs	r2, r2, #31
200143ee:	4032      	ands	r2, r6
200143f0:	00bf      	lsls	r7, r7, #2
200143f2:	19d2      	adds	r2, r2, r7
200143f4:	601a      	str	r2, [r3, #0]
200143f6:	0049      	lsls	r1, r1, #1
200143f8:	432a      	orrs	r2, r5
200143fa:	3c01      	subs	r4, #1
200143fc:	601a      	str	r2, [r3, #0]
200143fe:	b2c9      	uxtb	r1, r1
20014400:	2c00      	cmp	r4, #0
20014402:	d1f1      	bne.n	200143e8 <ext_flash_write_page+0x80>
20014404:	2680      	movs	r6, #128	; 0x80
20014406:	2580      	movs	r5, #128	; 0x80
20014408:	0a01      	lsrs	r1, r0, #8
2001440a:	b2c9      	uxtb	r1, r1
2001440c:	3408      	adds	r4, #8
2001440e:	0076      	lsls	r6, r6, #1
20014410:	046d      	lsls	r5, r5, #17
20014412:	2780      	movs	r7, #128	; 0x80
20014414:	b24a      	sxtb	r2, r1
20014416:	17d2      	asrs	r2, r2, #31
20014418:	4032      	ands	r2, r6
2001441a:	00bf      	lsls	r7, r7, #2
2001441c:	19d2      	adds	r2, r2, r7
2001441e:	601a      	str	r2, [r3, #0]
20014420:	0049      	lsls	r1, r1, #1
20014422:	432a      	orrs	r2, r5
20014424:	3c01      	subs	r4, #1
20014426:	601a      	str	r2, [r3, #0]
20014428:	b2c9      	uxtb	r1, r1
2001442a:	2c00      	cmp	r4, #0
2001442c:	d1f1      	bne.n	20014412 <ext_flash_write_page+0xaa>
2001442e:	2580      	movs	r5, #128	; 0x80
20014430:	2480      	movs	r4, #128	; 0x80
20014432:	2108      	movs	r1, #8
20014434:	b2c0      	uxtb	r0, r0
20014436:	006d      	lsls	r5, r5, #1
20014438:	0464      	lsls	r4, r4, #17
2001443a:	2680      	movs	r6, #128	; 0x80
2001443c:	b242      	sxtb	r2, r0
2001443e:	17d2      	asrs	r2, r2, #31
20014440:	402a      	ands	r2, r5
20014442:	00b6      	lsls	r6, r6, #2
20014444:	1992      	adds	r2, r2, r6
20014446:	601a      	str	r2, [r3, #0]
20014448:	0040      	lsls	r0, r0, #1
2001444a:	4322      	orrs	r2, r4
2001444c:	3901      	subs	r1, #1
2001444e:	601a      	str	r2, [r3, #0]
20014450:	b2c0      	uxtb	r0, r0
20014452:	2900      	cmp	r1, #0
20014454:	d1f1      	bne.n	2001443a <ext_flash_write_page+0xd2>
20014456:	9a00      	ldr	r2, [sp, #0]
20014458:	9801      	ldr	r0, [sp, #4]
2001445a:	1882      	adds	r2, r0, r2
2001445c:	9200      	str	r2, [sp, #0]
2001445e:	2510      	movs	r5, #16
20014460:	2680      	movs	r6, #128	; 0x80
20014462:	7802      	ldrb	r2, [r0, #0]
20014464:	0076      	lsls	r6, r6, #1
20014466:	0914      	lsrs	r4, r2, #4
20014468:	00e1      	lsls	r1, r4, #3
2001446a:	4029      	ands	r1, r5
2001446c:	01a5      	lsls	r5, r4, #6
2001446e:	4035      	ands	r5, r6
20014470:	430d      	orrs	r5, r1
20014472:	2780      	movs	r7, #128	; 0x80
20014474:	2101      	movs	r1, #1
20014476:	017f      	lsls	r7, r7, #5
20014478:	4021      	ands	r1, r4
2001447a:	0264      	lsls	r4, r4, #9
2001447c:	403c      	ands	r4, r7
2001447e:	4329      	orrs	r1, r5
20014480:	4321      	orrs	r1, r4
20014482:	4d35      	ldr	r5, [pc, #212]	; (20014558 <ext_flash_write_page+0x1f0>)
20014484:	4c35      	ldr	r4, [pc, #212]	; (2001455c <ext_flash_write_page+0x1f4>)
20014486:	0209      	lsls	r1, r1, #8
20014488:	430c      	orrs	r4, r1
2001448a:	4329      	orrs	r1, r5
2001448c:	601c      	str	r4, [r3, #0]
2001448e:	6019      	str	r1, [r3, #0]
20014490:	210f      	movs	r1, #15
20014492:	2410      	movs	r4, #16
20014494:	4011      	ands	r1, r2
20014496:	00cf      	lsls	r7, r1, #3
20014498:	4027      	ands	r7, r4
2001449a:	018c      	lsls	r4, r1, #6
2001449c:	4034      	ands	r4, r6
2001449e:	433c      	orrs	r4, r7
200144a0:	2780      	movs	r7, #128	; 0x80
200144a2:	3eff      	subs	r6, #255	; 0xff
200144a4:	4032      	ands	r2, r6
200144a6:	0249      	lsls	r1, r1, #9
200144a8:	017f      	lsls	r7, r7, #5
200144aa:	4314      	orrs	r4, r2
200144ac:	4039      	ands	r1, r7
200144ae:	4e2b      	ldr	r6, [pc, #172]	; (2001455c <ext_flash_write_page+0x1f4>)
200144b0:	430c      	orrs	r4, r1
200144b2:	0224      	lsls	r4, r4, #8
200144b4:	4326      	orrs	r6, r4
200144b6:	432c      	orrs	r4, r5
200144b8:	601e      	str	r6, [r3, #0]
200144ba:	601c      	str	r4, [r3, #0]
200144bc:	9a00      	ldr	r2, [sp, #0]
200144be:	3001      	adds	r0, #1
200144c0:	4282      	cmp	r2, r0
200144c2:	d1cc      	bne.n	2001445e <ext_flash_write_page+0xf6>
200144c4:	2080      	movs	r0, #128	; 0x80
200144c6:	2200      	movs	r2, #0
200144c8:	2580      	movs	r5, #128	; 0x80
200144ca:	0480      	lsls	r0, r0, #18
200144cc:	601a      	str	r2, [r3, #0]
200144ce:	046d      	lsls	r5, r5, #17
200144d0:	6018      	str	r0, [r3, #0]
200144d2:	2180      	movs	r1, #128	; 0x80
200144d4:	2208      	movs	r2, #8
200144d6:	2405      	movs	r4, #5
200144d8:	6018      	str	r0, [r3, #0]
200144da:	0089      	lsls	r1, r1, #2
200144dc:	6019      	str	r1, [r3, #0]
200144de:	0064      	lsls	r4, r4, #1
200144e0:	4329      	orrs	r1, r5
200144e2:	3a01      	subs	r2, #1
200144e4:	6019      	str	r1, [r3, #0]
200144e6:	b2e4      	uxtb	r4, r4
200144e8:	2a00      	cmp	r2, #0
200144ea:	d129      	bne.n	20014540 <ext_flash_write_page+0x1d8>
200144ec:	2108      	movs	r1, #8
200144ee:	2480      	movs	r4, #128	; 0x80
200144f0:	2702      	movs	r7, #2
200144f2:	2600      	movs	r6, #0
200144f4:	601e      	str	r6, [r3, #0]
200144f6:	4e1a      	ldr	r6, [pc, #104]	; (20014560 <ext_flash_write_page+0x1f8>)
200144f8:	601d      	str	r5, [r3, #0]
200144fa:	601e      	str	r6, [r3, #0]
200144fc:	685e      	ldr	r6, [r3, #4]
200144fe:	423e      	tst	r6, r7
20014500:	d000      	beq.n	20014504 <ext_flash_write_page+0x19c>
20014502:	4322      	orrs	r2, r4
20014504:	3901      	subs	r1, #1
20014506:	0864      	lsrs	r4, r4, #1
20014508:	2900      	cmp	r1, #0
2001450a:	d1f2      	bne.n	200144f2 <ext_flash_write_page+0x18a>
2001450c:	6019      	str	r1, [r3, #0]
2001450e:	6018      	str	r0, [r3, #0]
20014510:	07d2      	lsls	r2, r2, #31
20014512:	d4de      	bmi.n	200144d2 <ext_flash_write_page+0x16a>
20014514:	2290      	movs	r2, #144	; 0x90
20014516:	0552      	lsls	r2, r2, #21
20014518:	601a      	str	r2, [r3, #0]
2001451a:	4b0d      	ldr	r3, [pc, #52]	; (20014550 <ext_flash_write_page+0x1e8>)
2001451c:	6019      	str	r1, [r3, #0]
2001451e:	f38c 8810 	msr	PRIMASK, ip
20014522:	bdf7      	pop	{r0, r1, r2, r4, r5, r6, r7, pc}
20014524:	2780      	movs	r7, #128	; 0x80
20014526:	b24a      	sxtb	r2, r1
20014528:	17d2      	asrs	r2, r2, #31
2001452a:	4032      	ands	r2, r6
2001452c:	00bf      	lsls	r7, r7, #2
2001452e:	19d2      	adds	r2, r2, r7
20014530:	e734      	b.n	2001439c <ext_flash_write_page+0x34>
20014532:	2780      	movs	r7, #128	; 0x80
20014534:	b24a      	sxtb	r2, r1
20014536:	17d2      	asrs	r2, r2, #31
20014538:	4032      	ands	r2, r6
2001453a:	00bf      	lsls	r7, r7, #2
2001453c:	19d2      	adds	r2, r2, r7
2001453e:	e743      	b.n	200143c8 <ext_flash_write_page+0x60>
20014540:	2680      	movs	r6, #128	; 0x80
20014542:	b261      	sxtb	r1, r4
20014544:	0076      	lsls	r6, r6, #1
20014546:	17c9      	asrs	r1, r1, #31
20014548:	4031      	ands	r1, r6
2001454a:	19b6      	adds	r6, r6, r6
2001454c:	1989      	adds	r1, r1, r6
2001454e:	e7c5      	b.n	200144dc <ext_flash_write_page+0x174>
20014550:	4000303c 	.word	0x4000303c
20014554:	4000f000 	.word	0x4000f000
20014558:	01222200 	.word	0x01222200
2001455c:	00222200 	.word	0x00222200
20014560:	01000002 	.word	0x01000002

20014564 <macronix_exit_deep_power_down>:
20014564:	2301      	movs	r3, #1
20014566:	2280      	movs	r2, #128	; 0x80
20014568:	b5f0      	push	{r4, r5, r6, r7, lr}
2001456a:	2680      	movs	r6, #128	; 0x80
2001456c:	2580      	movs	r5, #128	; 0x80
2001456e:	2008      	movs	r0, #8
20014570:	21eb      	movs	r1, #235	; 0xeb
20014572:	4c20      	ldr	r4, [pc, #128]	; (200145f4 <macronix_exit_deep_power_down+0x90>)
20014574:	0492      	lsls	r2, r2, #18
20014576:	6023      	str	r3, [r4, #0]
20014578:	4b1f      	ldr	r3, [pc, #124]	; (200145f8 <macronix_exit_deep_power_down+0x94>)
2001457a:	0076      	lsls	r6, r6, #1
2001457c:	601a      	str	r2, [r3, #0]
2001457e:	046d      	lsls	r5, r5, #17
20014580:	2780      	movs	r7, #128	; 0x80
20014582:	b24a      	sxtb	r2, r1
20014584:	17d2      	asrs	r2, r2, #31
20014586:	4032      	ands	r2, r6
20014588:	00bf      	lsls	r7, r7, #2
2001458a:	19d2      	adds	r2, r2, r7
2001458c:	601a      	str	r2, [r3, #0]
2001458e:	0049      	lsls	r1, r1, #1
20014590:	432a      	orrs	r2, r5
20014592:	3801      	subs	r0, #1
20014594:	601a      	str	r2, [r3, #0]
20014596:	b2c9      	uxtb	r1, r1
20014598:	2800      	cmp	r0, #0
2001459a:	d1f1      	bne.n	20014580 <macronix_exit_deep_power_down+0x1c>
2001459c:	2206      	movs	r2, #6
2001459e:	4817      	ldr	r0, [pc, #92]	; (200145fc <macronix_exit_deep_power_down+0x98>)
200145a0:	4917      	ldr	r1, [pc, #92]	; (20014600 <macronix_exit_deep_power_down+0x9c>)
200145a2:	3a01      	subs	r2, #1
200145a4:	6018      	str	r0, [r3, #0]
200145a6:	6019      	str	r1, [r3, #0]
200145a8:	2a00      	cmp	r2, #0
200145aa:	d1fa      	bne.n	200145a2 <macronix_exit_deep_power_down+0x3e>
200145ac:	4915      	ldr	r1, [pc, #84]	; (20014604 <macronix_exit_deep_power_down+0xa0>)
200145ae:	4816      	ldr	r0, [pc, #88]	; (20014608 <macronix_exit_deep_power_down+0xa4>)
200145b0:	6019      	str	r1, [r3, #0]
200145b2:	4916      	ldr	r1, [pc, #88]	; (2001460c <macronix_exit_deep_power_down+0xa8>)
200145b4:	6019      	str	r1, [r3, #0]
200145b6:	4916      	ldr	r1, [pc, #88]	; (20014610 <macronix_exit_deep_power_down+0xac>)
200145b8:	6019      	str	r1, [r3, #0]
200145ba:	4916      	ldr	r1, [pc, #88]	; (20014614 <macronix_exit_deep_power_down+0xb0>)
200145bc:	6019      	str	r1, [r3, #0]
200145be:	2180      	movs	r1, #128	; 0x80
200145c0:	0449      	lsls	r1, r1, #17
200145c2:	601a      	str	r2, [r3, #0]
200145c4:	6019      	str	r1, [r3, #0]
200145c6:	601a      	str	r2, [r3, #0]
200145c8:	6019      	str	r1, [r3, #0]
200145ca:	601a      	str	r2, [r3, #0]
200145cc:	6019      	str	r1, [r3, #0]
200145ce:	601a      	str	r2, [r3, #0]
200145d0:	6019      	str	r1, [r3, #0]
200145d2:	601a      	str	r2, [r3, #0]
200145d4:	6019      	str	r1, [r3, #0]
200145d6:	6018      	str	r0, [r3, #0]
200145d8:	601a      	str	r2, [r3, #0]
200145da:	6019      	str	r1, [r3, #0]
200145dc:	490e      	ldr	r1, [pc, #56]	; (20014618 <macronix_exit_deep_power_down+0xb4>)
200145de:	2001      	movs	r0, #1
200145e0:	6019      	str	r1, [r3, #0]
200145e2:	2180      	movs	r1, #128	; 0x80
200145e4:	0489      	lsls	r1, r1, #18
200145e6:	601a      	str	r2, [r3, #0]
200145e8:	6019      	str	r1, [r3, #0]
200145ea:	2190      	movs	r1, #144	; 0x90
200145ec:	0549      	lsls	r1, r1, #21
200145ee:	6019      	str	r1, [r3, #0]
200145f0:	6022      	str	r2, [r4, #0]
200145f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
200145f4:	4000303c 	.word	0x4000303c
200145f8:	4000f000 	.word	0x4000f000
200145fc:	00222200 	.word	0x00222200
20014600:	01222200 	.word	0x01222200
20014604:	00232300 	.word	0x00232300
20014608:	010000f0 	.word	0x010000f0
2001460c:	01232300 	.word	0x01232300
20014610:	00323200 	.word	0x00323200
20014614:	01323200 	.word	0x01323200
20014618:	0100000f 	.word	0x0100000f

2001461c <winbond_deep_power_down>:
2001461c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001461e:	2388      	movs	r3, #136	; 0x88
20014620:	2401      	movs	r4, #1
20014622:	4d09      	ldr	r5, [pc, #36]	; (20014648 <winbond_deep_power_down+0x2c>)
20014624:	4e09      	ldr	r6, [pc, #36]	; (2001464c <winbond_deep_power_down+0x30>)
20014626:	4f0a      	ldr	r7, [pc, #40]	; (20014650 <winbond_deep_power_down+0x34>)
20014628:	059b      	lsls	r3, r3, #22
2001462a:	602c      	str	r4, [r5, #0]
2001462c:	4809      	ldr	r0, [pc, #36]	; (20014654 <winbond_deep_power_down+0x38>)
2001462e:	6033      	str	r3, [r6, #0]
20014630:	603c      	str	r4, [r7, #0]
20014632:	4b09      	ldr	r3, [pc, #36]	; (20014658 <winbond_deep_power_down+0x3c>)
20014634:	4798      	blx	r3
20014636:	2302      	movs	r3, #2
20014638:	603b      	str	r3, [r7, #0]
2001463a:	2390      	movs	r3, #144	; 0x90
2001463c:	055b      	lsls	r3, r3, #21
2001463e:	6033      	str	r3, [r6, #0]
20014640:	2300      	movs	r3, #0
20014642:	0020      	movs	r0, r4
20014644:	602b      	str	r3, [r5, #0]
20014646:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
20014648:	4000303c 	.word	0x4000303c
2001464c:	4000f000 	.word	0x4000f000
20014650:	4000302c 	.word	0x4000302c
20014654:	0003cd70 	.word	0x0003cd70
20014658:	00007a05 	.word	0x00007a05

2001465c <macronix_deep_power_down>:
2001465c:	2188      	movs	r1, #136	; 0x88
2001465e:	b570      	push	{r4, r5, r6, lr}
20014660:	2401      	movs	r4, #1
20014662:	4b0a      	ldr	r3, [pc, #40]	; (2001468c <macronix_deep_power_down+0x30>)
20014664:	4a0a      	ldr	r2, [pc, #40]	; (20014690 <macronix_deep_power_down+0x34>)
20014666:	0589      	lsls	r1, r1, #22
20014668:	601c      	str	r4, [r3, #0]
2001466a:	6011      	str	r1, [r2, #0]
2001466c:	2200      	movs	r2, #0
2001466e:	4e09      	ldr	r6, [pc, #36]	; (20014694 <macronix_deep_power_down+0x38>)
20014670:	4d09      	ldr	r5, [pc, #36]	; (20014698 <macronix_deep_power_down+0x3c>)
20014672:	601a      	str	r2, [r3, #0]
20014674:	0030      	movs	r0, r6
20014676:	602c      	str	r4, [r5, #0]
20014678:	4b08      	ldr	r3, [pc, #32]	; (2001469c <macronix_deep_power_down+0x40>)
2001467a:	4798      	blx	r3
2001467c:	0030      	movs	r0, r6
2001467e:	4b08      	ldr	r3, [pc, #32]	; (200146a0 <macronix_deep_power_down+0x44>)
20014680:	4798      	blx	r3
20014682:	2302      	movs	r3, #2
20014684:	0020      	movs	r0, r4
20014686:	602b      	str	r3, [r5, #0]
20014688:	bd70      	pop	{r4, r5, r6, pc}
2001468a:	46c0      	nop			; (mov r8, r8)
2001468c:	4000303c 	.word	0x4000303c
20014690:	4000f000 	.word	0x4000f000
20014694:	0003cd70 	.word	0x0003cd70
20014698:	4000302c 	.word	0x4000302c
2001469c:	00007971 	.word	0x00007971
200146a0:	00007a05 	.word	0x00007a05

200146a4 <macronix_rv_plf_back_from_retain_all>:
200146a4:	20014565 00000000                       eE. ....

200146ac <macronix_rv_plf_retain_all>:
200146ac:	2001465d 00000000                       ]F. ....

200146b4 <winbond_rv_plf_retain_all>:
200146b4:	2001461d 00000000                       .F. ....

200146bc <pmu_soc_off>:
200146bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
200146be:	4b17      	ldr	r3, [pc, #92]	; (2001471c <pmu_soc_off+0x60>)
200146c0:	781b      	ldrb	r3, [r3, #0]
200146c2:	2b00      	cmp	r3, #0
200146c4:	d129      	bne.n	2001471a <pmu_soc_off+0x5e>
200146c6:	2401      	movs	r4, #1
200146c8:	4b15      	ldr	r3, [pc, #84]	; (20014720 <pmu_soc_off+0x64>)
200146ca:	4d16      	ldr	r5, [pc, #88]	; (20014724 <pmu_soc_off+0x68>)
200146cc:	2218      	movs	r2, #24
200146ce:	2109      	movs	r1, #9
200146d0:	0028      	movs	r0, r5
200146d2:	4f15      	ldr	r7, [pc, #84]	; (20014728 <pmu_soc_off+0x6c>)
200146d4:	601c      	str	r4, [r3, #0]
200146d6:	47b8      	blx	r7
200146d8:	4220      	tst	r0, r4
200146da:	d118      	bne.n	2001470e <pmu_soc_off+0x52>
200146dc:	2240      	movs	r2, #64	; 0x40
200146de:	2109      	movs	r1, #9
200146e0:	0028      	movs	r0, r5
200146e2:	47b8      	blx	r7
200146e4:	4c11      	ldr	r4, [pc, #68]	; (2001472c <pmu_soc_off+0x70>)
200146e6:	2240      	movs	r2, #64	; 0x40
200146e8:	4004      	ands	r4, r0
200146ea:	0023      	movs	r3, r4
200146ec:	2109      	movs	r1, #9
200146ee:	0028      	movs	r0, r5
200146f0:	4e0f      	ldr	r6, [pc, #60]	; (20014730 <pmu_soc_off+0x74>)
200146f2:	47b0      	blx	r6
200146f4:	2109      	movs	r1, #9
200146f6:	2240      	movs	r2, #64	; 0x40
200146f8:	0028      	movs	r0, r5
200146fa:	47b8      	blx	r7
200146fc:	0001      	movs	r1, r0
200146fe:	4284      	cmp	r4, r0
20014700:	d005      	beq.n	2001470e <pmu_soc_off+0x52>
20014702:	2376      	movs	r3, #118	; 0x76
20014704:	0020      	movs	r0, r4
20014706:	4a0b      	ldr	r2, [pc, #44]	; (20014734 <pmu_soc_off+0x78>)
20014708:	4c0b      	ldr	r4, [pc, #44]	; (20014738 <pmu_soc_off+0x7c>)
2001470a:	33ff      	adds	r3, #255	; 0xff
2001470c:	47a0      	blx	r4
2001470e:	2300      	movs	r3, #0
20014710:	4a03      	ldr	r2, [pc, #12]	; (20014720 <pmu_soc_off+0x64>)
20014712:	6013      	str	r3, [r2, #0]
20014714:	4a01      	ldr	r2, [pc, #4]	; (2001471c <pmu_soc_off+0x60>)
20014716:	3301      	adds	r3, #1
20014718:	7013      	strb	r3, [r2, #0]
2001471a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
2001471c:	20014d94 	.word	0x20014d94
20014720:	5000301c 	.word	0x5000301c
20014724:	0003cd78 	.word	0x0003cd78
20014728:	0000777f 	.word	0x0000777f
2001472c:	fffff7ff 	.word	0xfffff7ff
20014730:	0000779f 	.word	0x0000779f
20014734:	1000574d 	.word	0x1000574d
20014738:	00006641 	.word	0x00006641

2001473c <pmu_hibernate>:
2001473c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
2001473e:	4b22      	ldr	r3, [pc, #136]	; (200147c8 <pmu_hibernate+0x8c>)
20014740:	0014      	movs	r4, r2
20014742:	781b      	ldrb	r3, [r3, #0]
20014744:	2b04      	cmp	r3, #4
20014746:	d939      	bls.n	200147bc <pmu_hibernate+0x80>
20014748:	2301      	movs	r3, #1
2001474a:	4a20      	ldr	r2, [pc, #128]	; (200147cc <pmu_hibernate+0x90>)
2001474c:	4820      	ldr	r0, [pc, #128]	; (200147d0 <pmu_hibernate+0x94>)
2001474e:	6013      	str	r3, [r2, #0]
20014750:	6806      	ldr	r6, [r0, #0]
20014752:	2000      	movs	r0, #0
20014754:	401e      	ands	r6, r3
20014756:	4b1f      	ldr	r3, [pc, #124]	; (200147d4 <pmu_hibernate+0x98>)
20014758:	6010      	str	r0, [r2, #0]
2001475a:	681b      	ldr	r3, [r3, #0]
2001475c:	2b01      	cmp	r3, #1
2001475e:	d103      	bne.n	20014768 <pmu_hibernate+0x2c>
20014760:	4b1d      	ldr	r3, [pc, #116]	; (200147d8 <pmu_hibernate+0x9c>)
20014762:	6818      	ldr	r0, [r3, #0]
20014764:	1e43      	subs	r3, r0, #1
20014766:	4198      	sbcs	r0, r3
20014768:	4b1c      	ldr	r3, [pc, #112]	; (200147dc <pmu_hibernate+0xa0>)
2001476a:	0c24      	lsrs	r4, r4, #16
2001476c:	681a      	ldr	r2, [r3, #0]
2001476e:	2301      	movs	r3, #1
20014770:	2c00      	cmp	r4, #0
20014772:	d107      	bne.n	20014784 <pmu_hibernate+0x48>
20014774:	4c1a      	ldr	r4, [pc, #104]	; (200147e0 <pmu_hibernate+0xa4>)
20014776:	6aa4      	ldr	r4, [r4, #40]	; 0x28
20014778:	2c00      	cmp	r4, #0
2001477a:	d103      	bne.n	20014784 <pmu_hibernate+0x48>
2001477c:	4b19      	ldr	r3, [pc, #100]	; (200147e4 <pmu_hibernate+0xa8>)
2001477e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
20014780:	1e5c      	subs	r4, r3, #1
20014782:	41a3      	sbcs	r3, r4
20014784:	2e00      	cmp	r6, #0
20014786:	d000      	beq.n	2001478a <pmu_hibernate+0x4e>
20014788:	2640      	movs	r6, #64	; 0x40
2001478a:	3a01      	subs	r2, #1
2001478c:	4254      	negs	r4, r2
2001478e:	4162      	adcs	r2, r4
20014790:	4c15      	ldr	r4, [pc, #84]	; (200147e8 <pmu_hibernate+0xac>)
20014792:	0140      	lsls	r0, r0, #5
20014794:	7825      	ldrb	r5, [r4, #0]
20014796:	0112      	lsls	r2, r2, #4
20014798:	1e6c      	subs	r4, r5, #1
2001479a:	41a5      	sbcs	r5, r4
2001479c:	4c13      	ldr	r4, [pc, #76]	; (200147ec <pmu_hibernate+0xb0>)
2001479e:	00ed      	lsls	r5, r5, #3
200147a0:	7827      	ldrb	r7, [r4, #0]
200147a2:	2f00      	cmp	r7, #0
200147a4:	d10c      	bne.n	200147c0 <pmu_hibernate+0x84>
200147a6:	1e0c      	subs	r4, r1, #0
200147a8:	d000      	beq.n	200147ac <pmu_hibernate+0x70>
200147aa:	003c      	movs	r4, r7
200147ac:	4333      	orrs	r3, r6
200147ae:	4303      	orrs	r3, r0
200147b0:	4313      	orrs	r3, r2
200147b2:	432b      	orrs	r3, r5
200147b4:	4323      	orrs	r3, r4
200147b6:	d101      	bne.n	200147bc <pmu_hibernate+0x80>
200147b8:	4b0d      	ldr	r3, [pc, #52]	; (200147f0 <pmu_hibernate+0xb4>)
200147ba:	4798      	blx	r3
200147bc:	2001      	movs	r0, #1
200147be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
200147c0:	2900      	cmp	r1, #0
200147c2:	d0fb      	beq.n	200147bc <pmu_hibernate+0x80>
200147c4:	2404      	movs	r4, #4
200147c6:	e7f1      	b.n	200147ac <pmu_hibernate+0x70>
200147c8:	20000fde 	.word	0x20000fde
200147cc:	50003020 	.word	0x50003020
200147d0:	500080f8 	.word	0x500080f8
200147d4:	40003028 	.word	0x40003028
200147d8:	4000a0c4 	.word	0x4000a0c4
200147dc:	40003030 	.word	0x40003030
200147e0:	40010000 	.word	0x40010000
200147e4:	40011000 	.word	0x40011000
200147e8:	200012c8 	.word	0x200012c8
200147ec:	200012c9 	.word	0x200012c9
200147f0:	200146bd 	.word	0x200146bd

200147f4 <user_rv_plf_hibernate.0>:
200147f4:	2001473d 00000000                       =G. ....

200147fc <user_init_check_brwnout>:
200147fc:	b5f0      	push	{r4, r5, r6, r7, lr}
200147fe:	b087      	sub	sp, #28
20014800:	9302      	str	r3, [sp, #8]
20014802:	4b71      	ldr	r3, [pc, #452]	; (200149c8 <user_init_check_brwnout+0x1cc>)
20014804:	9004      	str	r0, [sp, #16]
20014806:	7818      	ldrb	r0, [r3, #0]
20014808:	9101      	str	r1, [sp, #4]
2001480a:	9205      	str	r2, [sp, #20]
2001480c:	2800      	cmp	r0, #0
2001480e:	d002      	beq.n	20014816 <user_init_check_brwnout+0x1a>
20014810:	2001      	movs	r0, #1
20014812:	b007      	add	sp, #28
20014814:	bdf0      	pop	{r4, r5, r6, r7, pc}
20014816:	2301      	movs	r3, #1
20014818:	4c6c      	ldr	r4, [pc, #432]	; (200149cc <user_init_check_brwnout+0x1d0>)
2001481a:	4a6d      	ldr	r2, [pc, #436]	; (200149d0 <user_init_check_brwnout+0x1d4>)
2001481c:	6023      	str	r3, [r4, #0]
2001481e:	6852      	ldr	r2, [r2, #4]
20014820:	496c      	ldr	r1, [pc, #432]	; (200149d4 <user_init_check_brwnout+0x1d8>)
20014822:	40da      	lsrs	r2, r3
20014824:	4393      	bics	r3, r2
20014826:	700b      	strb	r3, [r1, #0]
20014828:	6020      	str	r0, [r4, #0]
2001482a:	780b      	ldrb	r3, [r1, #0]
2001482c:	2b00      	cmp	r3, #0
2001482e:	d103      	bne.n	20014838 <user_init_check_brwnout+0x3c>
20014830:	4b69      	ldr	r3, [pc, #420]	; (200149d8 <user_init_check_brwnout+0x1dc>)
20014832:	781b      	ldrb	r3, [r3, #0]
20014834:	2b00      	cmp	r3, #0
20014836:	d0eb      	beq.n	20014810 <user_init_check_brwnout+0x14>
20014838:	4b68      	ldr	r3, [pc, #416]	; (200149dc <user_init_check_brwnout+0x1e0>)
2001483a:	4869      	ldr	r0, [pc, #420]	; (200149e0 <user_init_check_brwnout+0x1e4>)
2001483c:	4798      	blx	r3
2001483e:	f3ef 8310 	mrs	r3, PRIMASK
20014842:	9303      	str	r3, [sp, #12]
20014844:	b672      	cpsid	i
20014846:	2301      	movs	r3, #1
20014848:	4a66      	ldr	r2, [pc, #408]	; (200149e4 <user_init_check_brwnout+0x1e8>)
2001484a:	4d67      	ldr	r5, [pc, #412]	; (200149e8 <user_init_check_brwnout+0x1ec>)
2001484c:	6013      	str	r3, [r2, #0]
2001484e:	2109      	movs	r1, #9
20014850:	2240      	movs	r2, #64	; 0x40
20014852:	0028      	movs	r0, r5
20014854:	2480      	movs	r4, #128	; 0x80
20014856:	4e65      	ldr	r6, [pc, #404]	; (200149ec <user_init_check_brwnout+0x1f0>)
20014858:	47b0      	blx	r6
2001485a:	01e4      	lsls	r4, r4, #7
2001485c:	4220      	tst	r0, r4
2001485e:	d112      	bne.n	20014886 <user_init_check_brwnout+0x8a>
20014860:	4304      	orrs	r4, r0
20014862:	0023      	movs	r3, r4
20014864:	2240      	movs	r2, #64	; 0x40
20014866:	2109      	movs	r1, #9
20014868:	0028      	movs	r0, r5
2001486a:	4f61      	ldr	r7, [pc, #388]	; (200149f0 <user_init_check_brwnout+0x1f4>)
2001486c:	47b8      	blx	r7
2001486e:	2109      	movs	r1, #9
20014870:	2240      	movs	r2, #64	; 0x40
20014872:	0028      	movs	r0, r5
20014874:	47b0      	blx	r6
20014876:	0001      	movs	r1, r0
20014878:	4284      	cmp	r4, r0
2001487a:	d004      	beq.n	20014886 <user_init_check_brwnout+0x8a>
2001487c:	0020      	movs	r0, r4
2001487e:	2342      	movs	r3, #66	; 0x42
20014880:	4a5c      	ldr	r2, [pc, #368]	; (200149f4 <user_init_check_brwnout+0x1f8>)
20014882:	4c5d      	ldr	r4, [pc, #372]	; (200149f8 <user_init_check_brwnout+0x1fc>)
20014884:	47a0      	blx	r4
20014886:	4d58      	ldr	r5, [pc, #352]	; (200149e8 <user_init_check_brwnout+0x1ec>)
20014888:	2218      	movs	r2, #24
2001488a:	2109      	movs	r1, #9
2001488c:	0028      	movs	r0, r5
2001488e:	4e57      	ldr	r6, [pc, #348]	; (200149ec <user_init_check_brwnout+0x1f0>)
20014890:	47b0      	blx	r6
20014892:	2401      	movs	r4, #1
20014894:	4220      	tst	r0, r4
20014896:	d112      	bne.n	200148be <user_init_check_brwnout+0xc2>
20014898:	4304      	orrs	r4, r0
2001489a:	0023      	movs	r3, r4
2001489c:	2218      	movs	r2, #24
2001489e:	2109      	movs	r1, #9
200148a0:	0028      	movs	r0, r5
200148a2:	4f53      	ldr	r7, [pc, #332]	; (200149f0 <user_init_check_brwnout+0x1f4>)
200148a4:	47b8      	blx	r7
200148a6:	2109      	movs	r1, #9
200148a8:	2218      	movs	r2, #24
200148aa:	0028      	movs	r0, r5
200148ac:	47b0      	blx	r6
200148ae:	0001      	movs	r1, r0
200148b0:	4284      	cmp	r4, r0
200148b2:	d004      	beq.n	200148be <user_init_check_brwnout+0xc2>
200148b4:	0020      	movs	r0, r4
200148b6:	2348      	movs	r3, #72	; 0x48
200148b8:	4a4e      	ldr	r2, [pc, #312]	; (200149f4 <user_init_check_brwnout+0x1f8>)
200148ba:	4c4f      	ldr	r4, [pc, #316]	; (200149f8 <user_init_check_brwnout+0x1fc>)
200148bc:	47a0      	blx	r4
200148be:	4d4a      	ldr	r5, [pc, #296]	; (200149e8 <user_init_check_brwnout+0x1ec>)
200148c0:	2238      	movs	r2, #56	; 0x38
200148c2:	2109      	movs	r1, #9
200148c4:	0028      	movs	r0, r5
200148c6:	2480      	movs	r4, #128	; 0x80
200148c8:	4e48      	ldr	r6, [pc, #288]	; (200149ec <user_init_check_brwnout+0x1f0>)
200148ca:	47b0      	blx	r6
200148cc:	0264      	lsls	r4, r4, #9
200148ce:	4220      	tst	r0, r4
200148d0:	d114      	bne.n	200148fc <user_init_check_brwnout+0x100>
200148d2:	4b4a      	ldr	r3, [pc, #296]	; (200149fc <user_init_check_brwnout+0x200>)
200148d4:	2238      	movs	r2, #56	; 0x38
200148d6:	4018      	ands	r0, r3
200148d8:	4304      	orrs	r4, r0
200148da:	0023      	movs	r3, r4
200148dc:	2109      	movs	r1, #9
200148de:	0028      	movs	r0, r5
200148e0:	4f43      	ldr	r7, [pc, #268]	; (200149f0 <user_init_check_brwnout+0x1f4>)
200148e2:	47b8      	blx	r7
200148e4:	2109      	movs	r1, #9
200148e6:	2238      	movs	r2, #56	; 0x38
200148e8:	0028      	movs	r0, r5
200148ea:	47b0      	blx	r6
200148ec:	0001      	movs	r1, r0
200148ee:	4284      	cmp	r4, r0
200148f0:	d004      	beq.n	200148fc <user_init_check_brwnout+0x100>
200148f2:	0020      	movs	r0, r4
200148f4:	234f      	movs	r3, #79	; 0x4f
200148f6:	4a3f      	ldr	r2, [pc, #252]	; (200149f4 <user_init_check_brwnout+0x1f8>)
200148f8:	4c3f      	ldr	r4, [pc, #252]	; (200149f8 <user_init_check_brwnout+0x1fc>)
200148fa:	47a0      	blx	r4
200148fc:	4d3a      	ldr	r5, [pc, #232]	; (200149e8 <user_init_check_brwnout+0x1ec>)
200148fe:	2200      	movs	r2, #0
20014900:	210c      	movs	r1, #12
20014902:	4e3a      	ldr	r6, [pc, #232]	; (200149ec <user_init_check_brwnout+0x1f0>)
20014904:	0028      	movs	r0, r5
20014906:	47b0      	blx	r6
20014908:	2401      	movs	r4, #1
2001490a:	4304      	orrs	r4, r0
2001490c:	0023      	movs	r3, r4
2001490e:	2200      	movs	r2, #0
20014910:	210c      	movs	r1, #12
20014912:	0028      	movs	r0, r5
20014914:	4f36      	ldr	r7, [pc, #216]	; (200149f0 <user_init_check_brwnout+0x1f4>)
20014916:	47b8      	blx	r7
20014918:	210c      	movs	r1, #12
2001491a:	2200      	movs	r2, #0
2001491c:	0028      	movs	r0, r5
2001491e:	47b0      	blx	r6
20014920:	0001      	movs	r1, r0
20014922:	4284      	cmp	r4, r0
20014924:	d004      	beq.n	20014930 <user_init_check_brwnout+0x134>
20014926:	0020      	movs	r0, r4
20014928:	2354      	movs	r3, #84	; 0x54
2001492a:	4a32      	ldr	r2, [pc, #200]	; (200149f4 <user_init_check_brwnout+0x1f8>)
2001492c:	4c32      	ldr	r4, [pc, #200]	; (200149f8 <user_init_check_brwnout+0x1fc>)
2001492e:	47a0      	blx	r4
20014930:	4d2d      	ldr	r5, [pc, #180]	; (200149e8 <user_init_check_brwnout+0x1ec>)
20014932:	2204      	movs	r2, #4
20014934:	210c      	movs	r1, #12
20014936:	4e2d      	ldr	r6, [pc, #180]	; (200149ec <user_init_check_brwnout+0x1f0>)
20014938:	0028      	movs	r0, r5
2001493a:	2480      	movs	r4, #128	; 0x80
2001493c:	47b0      	blx	r6
2001493e:	01a4      	lsls	r4, r4, #6
20014940:	4304      	orrs	r4, r0
20014942:	0023      	movs	r3, r4
20014944:	2204      	movs	r2, #4
20014946:	210c      	movs	r1, #12
20014948:	0028      	movs	r0, r5
2001494a:	4f29      	ldr	r7, [pc, #164]	; (200149f0 <user_init_check_brwnout+0x1f4>)
2001494c:	47b8      	blx	r7
2001494e:	210c      	movs	r1, #12
20014950:	2204      	movs	r2, #4
20014952:	0028      	movs	r0, r5
20014954:	47b0      	blx	r6
20014956:	0001      	movs	r1, r0
20014958:	4284      	cmp	r4, r0
2001495a:	d004      	beq.n	20014966 <user_init_check_brwnout+0x16a>
2001495c:	0020      	movs	r0, r4
2001495e:	2358      	movs	r3, #88	; 0x58
20014960:	4a24      	ldr	r2, [pc, #144]	; (200149f4 <user_init_check_brwnout+0x1f8>)
20014962:	4c25      	ldr	r4, [pc, #148]	; (200149f8 <user_init_check_brwnout+0x1fc>)
20014964:	47a0      	blx	r4
20014966:	2300      	movs	r3, #0
20014968:	4a1e      	ldr	r2, [pc, #120]	; (200149e4 <user_init_check_brwnout+0x1e8>)
2001496a:	6013      	str	r3, [r2, #0]
2001496c:	4b24      	ldr	r3, [pc, #144]	; (20014a00 <user_init_check_brwnout+0x204>)
2001496e:	681c      	ldr	r4, [r3, #0]
20014970:	2c00      	cmp	r4, #0
20014972:	d010      	beq.n	20014996 <user_init_check_brwnout+0x19a>
20014974:	6823      	ldr	r3, [r4, #0]
20014976:	4a23      	ldr	r2, [pc, #140]	; (20014a04 <user_init_check_brwnout+0x208>)
20014978:	4293      	cmp	r3, r2
2001497a:	d103      	bne.n	20014984 <user_init_check_brwnout+0x188>
2001497c:	2300      	movs	r3, #0
2001497e:	9302      	str	r3, [sp, #8]
20014980:	6864      	ldr	r4, [r4, #4]
20014982:	e7f5      	b.n	20014970 <user_init_check_brwnout+0x174>
20014984:	9a02      	ldr	r2, [sp, #8]
20014986:	2a00      	cmp	r2, #0
20014988:	d1fa      	bne.n	20014980 <user_init_check_brwnout+0x184>
2001498a:	9a05      	ldr	r2, [sp, #20]
2001498c:	9901      	ldr	r1, [sp, #4]
2001498e:	9804      	ldr	r0, [sp, #16]
20014990:	4798      	blx	r3
20014992:	2800      	cmp	r0, #0
20014994:	d1f2      	bne.n	2001497c <user_init_check_brwnout+0x180>
20014996:	4b1c      	ldr	r3, [pc, #112]	; (20014a08 <user_init_check_brwnout+0x20c>)
20014998:	4798      	blx	r3
2001499a:	9b01      	ldr	r3, [sp, #4]
2001499c:	2b00      	cmp	r3, #0
2001499e:	d00b      	beq.n	200149b8 <user_init_check_brwnout+0x1bc>
200149a0:	2301      	movs	r3, #1
200149a2:	4a0a      	ldr	r2, [pc, #40]	; (200149cc <user_init_check_brwnout+0x1d0>)
200149a4:	2102      	movs	r1, #2
200149a6:	6013      	str	r3, [r2, #0]
200149a8:	9801      	ldr	r0, [sp, #4]
200149aa:	4b18      	ldr	r3, [pc, #96]	; (20014a0c <user_init_check_brwnout+0x210>)
200149ac:	4798      	blx	r3
200149ae:	9b03      	ldr	r3, [sp, #12]
200149b0:	f383 8810 	msr	PRIMASK, r3
200149b4:	2000      	movs	r0, #0
200149b6:	e72c      	b.n	20014812 <user_init_check_brwnout+0x16>
200149b8:	4b07      	ldr	r3, [pc, #28]	; (200149d8 <user_init_check_brwnout+0x1dc>)
200149ba:	781b      	ldrb	r3, [r3, #0]
200149bc:	2b00      	cmp	r3, #0
200149be:	d1ef      	bne.n	200149a0 <user_init_check_brwnout+0x1a4>
200149c0:	23fa      	movs	r3, #250	; 0xfa
200149c2:	00db      	lsls	r3, r3, #3
200149c4:	9301      	str	r3, [sp, #4]
200149c6:	e7eb      	b.n	200149a0 <user_init_check_brwnout+0x1a4>
200149c8:	20014d96 	.word	0x20014d96
200149cc:	50003020 	.word	0x50003020
200149d0:	500080fc 	.word	0x500080fc
200149d4:	20014d97 	.word	0x20014d97
200149d8:	20014d95 	.word	0x20014d95
200149dc:	000066b1 	.word	0x000066b1
200149e0:	100057ab 	.word	0x100057ab
200149e4:	5000301c 	.word	0x5000301c
200149e8:	0003cd78 	.word	0x0003cd78
200149ec:	0000777f 	.word	0x0000777f
200149f0:	0000779f 	.word	0x0000779f
200149f4:	100057d9 	.word	0x100057d9
200149f8:	00006641 	.word	0x00006641
200149fc:	fffdffff 	.word	0xfffdffff
20014a00:	200012a0 	.word	0x200012a0
20014a04:	20014a21 	.word	0x20014a21
20014a08:	200146bd 	.word	0x200146bd
20014a0c:	000061e5 	.word	0x000061e5

20014a10 <user_init_check_brwnout_retain_all>:
20014a10:	b510      	push	{r4, lr}
20014a12:	2300      	movs	r3, #0
20014a14:	4c01      	ldr	r4, [pc, #4]	; (20014a1c <user_init_check_brwnout_retain_all+0xc>)
20014a16:	47a0      	blx	r4
20014a18:	bd10      	pop	{r4, pc}
20014a1a:	46c0      	nop			; (mov r8, r8)
20014a1c:	200147fd 	.word	0x200147fd

20014a20 <user_init_check_brwnout_hibernate>:
20014a20:	b510      	push	{r4, lr}
20014a22:	2301      	movs	r3, #1
20014a24:	4c01      	ldr	r4, [pc, #4]	; (20014a2c <user_init_check_brwnout_hibernate+0xc>)
20014a26:	47a0      	blx	r4
20014a28:	bd10      	pop	{r4, pc}
20014a2a:	46c0      	nop			; (mov r8, r8)
20014a2c:	200147fd 	.word	0x200147fd

20014a30 <user_rv_plf_hibernate.0>:
20014a30:	20014a21 00000000                       !J. ....

20014a38 <user_rv_plf_retain_all.1>:
20014a38:	20014a11 00000000                       .J. ....

20014a40 <swd_dbg_prevent>:
20014a40:	2301      	movs	r3, #1
20014a42:	b510      	push	{r4, lr}
20014a44:	2400      	movs	r4, #0
20014a46:	0002      	movs	r2, r0
20014a48:	4805      	ldr	r0, [pc, #20]	; (20014a60 <swd_dbg_prevent+0x20>)
20014a4a:	4906      	ldr	r1, [pc, #24]	; (20014a64 <swd_dbg_prevent+0x24>)
20014a4c:	6003      	str	r3, [r0, #0]
20014a4e:	6809      	ldr	r1, [r1, #0]
20014a50:	6004      	str	r4, [r0, #0]
20014a52:	0b89      	lsrs	r1, r1, #14
20014a54:	0018      	movs	r0, r3
20014a56:	4219      	tst	r1, r3
20014a58:	d001      	beq.n	20014a5e <swd_dbg_prevent+0x1e>
20014a5a:	0020      	movs	r0, r4
20014a5c:	7013      	strb	r3, [r2, #0]
20014a5e:	bd10      	pop	{r4, pc}
20014a60:	50003020 	.word	0x50003020
20014a64:	500080f0 	.word	0x500080f0

20014a68 <user_rv_plf_prevent_hibernation.0>:
20014a68:	20014a41 00000000                       AJ. ....

20014a70 <user_rv_plf_prevent_retention.1>:
20014a70:	20014a41 00000000                       AJ. ....

20014a78 <__compound_literal.0>:
20014a78:	00000018 20014ab0                       .....J. 

20014a80 <__compound_literal.1>:
20014a80:	0000000a 20014acc                       .....J. 

20014a88 <default_adv_create_param>:
20014a88:	00000000 00020100 00000000 00000000     ................
20014a98:	00000000 000000a0 000000a0 00000107     ................
20014aa8:	00000100 00500050                       ....P.P.

20014ab0 <default_adv_data0>:
20014ab0:	30b0ff19 30303030 30303030 3030b000     ...000000000..00
20014ac0:	30303030 00303030                       0000000.

20014ac8 <default_adv_start_param>:
20014ac8:	00000064                                d...

20014acc <default_scan_data0>:
20014acc:	6000ff09 424d5441 0000454c              ...`ATMBLE..

20014ad8 <default_set_adv_data>:
20014ad8:	20014a78 20014a80                       xJ. .J. 

20014ae0 <default_scan_params>:
20014ae0:	00010102 00a000a0 00100010 00000064     ............d...

20014af0 <__init_array_start>:
20014af0:	10001761 	.word	0x10001761
20014af4:	10000bd1 	.word	0x10000bd1
20014af8:	100015cd 	.word	0x100015cd
20014afc:	10000135 	.word	0x10000135
20014b00:	10000c75 	.word	0x10000c75
20014b04:	10000ce9 	.word	0x10000ce9
20014b08:	10000d51 	.word	0x10000d51
20014b0c:	10000ddd 	.word	0x10000ddd
20014b10:	10000e61 	.word	0x10000e61
20014b14:	10001029 	.word	0x10001029
20014b18:	10001051 	.word	0x10001051
20014b1c:	10001ca9 	.word	0x10001ca9
20014b20:	10001ec1 	.word	0x10001ec1
20014b24:	10001f15 	.word	0x10001f15
20014b28:	10001f3d 	.word	0x10001f3d
