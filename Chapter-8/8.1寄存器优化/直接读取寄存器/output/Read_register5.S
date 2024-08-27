
../output/Read_register5:	file format elf64-littleriscv

Disassembly of section .text:

00000000000101c8 <exit>:
   101c8: 39 71        	addi	sp, sp, -64
   101ca: 06 fc        	sd	ra, 56(sp)
   101cc: 22 f8        	sd	s0, 48(sp)
   101ce: 26 f4        	sd	s1, 40(sp)
   101d0: 4a f0        	sd	s2, 32(sp)
   101d2: 4e ec        	sd	s3, 24(sp)
   101d4: 52 e8        	sd	s4, 16(sp)
   101d6: 56 e4        	sd	s5, 8(sp)
   101d8: 5a e0        	sd	s6, 0(sp)
   101da: 83 b5 81 87  	ld	a1, -1928(gp)
   101de: 2a 89        	mv	s2, a0
   101e0: 63 96 05 00  	bnez	a1, 0x101ec <exit+0x24>
   101e4: 13 05 09 00  	mv	a0, s2
   101e8: ef 00 d0 58  	jal	0x10f74 <_exit>
   101ec: 93 09 10 00  	li	s3, 1
   101f0: 83 aa 85 00  	lw	s5, 8(a1)
   101f4: e3 58 50 ff  	blez	s5, 0x101e4 <exit+0x1c>
   101f8: 2e 8a        	mv	s4, a1
   101fa: 13 95 3a 00  	slli	a0, s5, 3
   101fe: 2e 95        	add	a0, a0, a1
   10200: 13 04 85 10  	addi	s0, a0, 264
   10204: d6 84        	mv	s1, s5
   10206: 56 8b        	mv	s6, s5
   10208: 03 36 04 f0  	ld	a2, -256(s0)
   1020c: 13 15 0b 02  	slli	a0, s6, 32
   10210: 13 55 05 02  	srli	a0, a0, 32
   10214: 63 99 a4 00  	bne	s1, a0, 0x10226 <exit+0x5e>
   10218: 7d 3b        	addiw	s6, s6, -1
   1021a: 23 24 6a 01  	sw	s6, 8(s4)
   1021e: fd 3a        	addiw	s5, s5, -1
   10220: 63 17 06 00  	bnez	a2, 0x1022e <exit+0x66>
   10224: 91 a0        	j	0x10268 <exit+0xa0>
   10226: 23 30 04 f0  	sd	zero, -256(s0)
   1022a: fd 3a        	addiw	s5, s5, -1
   1022c: 15 ce        	beqz	a2, 0x10268 <exit+0xa0>
   1022e: 83 25 0a 31  	lw	a1, 784(s4)
   10232: 3b 95 59 01  	sllw	a0, s3, s5
   10236: e9 8d        	and	a1, a1, a0
   10238: 99 c9        	beqz	a1, 0x1024e <exit+0x86>
   1023a: 83 26 4a 31  	lw	a3, 788(s4)
   1023e: 0c 60        	ld	a1, 0(s0)
   10240: 75 8d        	and	a0, a0, a3
   10242: 63 08 05 00  	beqz	a0, 0x10252 <exit+0x8a>
   10246: 13 85 05 00  	mv	a0, a1
   1024a: 02 96        	jalr	a2
   1024c: 31 a0        	j	0x10258 <exit+0x90>
   1024e: 02 96        	jalr	a2
   10250: 21 a0        	j	0x10258 <exit+0x90>
   10252: 13 05 09 00  	mv	a0, s2
   10256: 02 96        	jalr	a2
   10258: 03 25 8a 00  	lw	a0, 8(s4)
   1025c: 83 b5 81 87  	ld	a1, -1928(gp)
   10260: 63 19 ab 00  	bne	s6, a0, 0x10272 <exit+0xaa>
   10264: 63 97 45 01  	bne	a1, s4, 0x10272 <exit+0xaa>
   10268: 61 14        	addi	s0, s0, -8
   1026a: fd 14        	addi	s1, s1, -1
   1026c: e3 4e 50 f9  	bgtz	s5, 0x10208 <exit+0x40>
   10270: 95 bf        	j	0x101e4 <exit+0x1c>
   10272: bd fd        	bnez	a1, 0x101f0 <exit+0x28>
   10274: 85 bf        	j	0x101e4 <exit+0x1c>

0000000000010276 <_start>:
   10276: 97 51 00 00  	auipc	gp, 5
   1027a: 93 81 a1 d9  	addi	gp, gp, -614
   1027e: 17 05 ff ff  	auipc	a0, 1048560
   10282: 13 05 25 d8  	addi	a0, a0, -638
   10286: 19 c1        	beqz	a0, 0x1028c <_start+0x16>
   10288: 73 10 75 01  	csrw	23, a0
   1028c: 13 85 01 87  	addi	a0, gp, -1936
   10290: 13 86 81 06  	addi	a2, gp, 104
   10294: 09 8e        	sub	a2, a2, a0
   10296: 81 45        	li	a1, 0
   10298: ef 00 00 11  	jal	0x103a8 <memset>
   1029c: 17 15 00 00  	auipc	a0, 1
   102a0: 13 05 05 ca  	addi	a0, a0, -864
   102a4: ef 00 90 04  	jal	0x10aec <atexit>
   102a8: ef 00 50 43  	jal	0x10edc <__libc_init_array>
   102ac: 02 45        	lw	a0, 0(sp)
   102ae: 2c 00        	addi	a1, sp, 8
   102b0: 13 16 35 00  	slli	a2, a0, 3
   102b4: 21 06        	addi	a2, a2, 8
   102b6: 2e 96        	add	a2, a2, a1
   102b8: ef 00 60 00  	jal	0x102be <main>
   102bc: 31 b7        	j	0x101c8 <exit>

00000000000102be <main>:
   102be: 5d 71        	addi	sp, sp, -80
   102c0: a2 e4        	sd	s0, 72(sp)
   102c2: a6 e0        	sd	s1, 64(sp)
   102c4: 4a fc        	sd	s2, 56(sp)
   102c6: 4e f8        	sd	s3, 48(sp)
   102c8: 52 f4        	sd	s4, 40(sp)
   102ca: 56 f0        	sd	s5, 32(sp)
   102cc: 5a ec        	sd	s6, 24(sp)
   102ce: 5e e8        	sd	s7, 16(sp)
   102d0: 62 e4        	sd	s8, 8(sp)
   102d2: 93 86 01 8a  	addi	a3, gp, -1888
   102d6: 13 85 41 a4  	addi	a0, gp, -1468
   102da: 93 85 41 bd  	addi	a1, gp, -1068
   102de: 13 86 46 01  	addi	a2, a3, 20
   102e2: 13 88 46 1a  	addi	a6, a3, 420
   102e6: 83 22 c6 fe  	lw	t0, -20(a2)
   102ea: 83 23 c5 fe  	lw	t2, -20(a0)
   102ee: 83 28 06 ff  	lw	a7, -16(a2)
   102f2: 03 23 05 ff  	lw	t1, -16(a0)
   102f6: 03 2e 46 ff  	lw	t3, -12(a2)
   102fa: 03 2f 45 ff  	lw	t5, -12(a0)
   102fe: 83 2e 86 ff  	lw	t4, -8(a2)
   10302: 83 2f 85 ff  	lw	t6, -8(a0)
   10306: 83 29 c6 ff  	lw	s3, -4(a2)
   1030a: 03 2a c5 ff  	lw	s4, -4(a0)
   1030e: 03 29 06 00  	lw	s2, 0(a2)
   10312: 83 2a 05 00  	lw	s5, 0(a0)
   10316: 03 2b 46 00  	lw	s6, 4(a2)
   1031a: 83 2b 45 00  	lw	s7, 4(a0)
   1031e: b3 82 53 02  	mul	t0, t2, t0
   10322: 83 23 86 00  	lw	t2, 8(a2)
   10326: b3 08 13 03  	mul	a7, t1, a7
   1032a: 03 2c 85 00  	lw	s8, 8(a0)
   1032e: 33 03 cf 03  	mul	t1, t5, t3
   10332: 03 2f c6 00  	lw	t5, 12(a2)
   10336: 33 8e df 03  	mul	t3, t6, t4
   1033a: 44 45        	lw	s1, 12(a0)
   1033c: b3 0e 3a 03  	mul	t4, s4, s3
   10340: 18 4a        	lw	a4, 16(a2)
   10342: b3 8f 2a 03  	mul	t6, s5, s2
   10346: 00 49        	lw	s0, 16(a0)
   10348: b3 86 6b 03  	mul	a3, s7, s6
   1034c: b3 07 7c 02  	mul	a5, s8, t2
   10350: b3 84 e4 03  	mul	s1, s1, t5
   10354: 33 07 e4 02  	mul	a4, s0, a4
   10358: 23 a6 55 fe  	sw	t0, -20(a1)
   1035c: 23 a8 15 ff  	sw	a7, -16(a1)
   10360: 23 aa 65 fe  	sw	t1, -12(a1)
   10364: 23 ac c5 ff  	sw	t3, -8(a1)
   10368: 23 ae d5 ff  	sw	t4, -4(a1)
   1036c: 23 a0 f5 01  	sw	t6, 0(a1)
   10370: d4 c1        	sw	a3, 4(a1)
   10372: 9c c5        	sw	a5, 8(a1)
   10374: 13 06 86 02  	addi	a2, a2, 40
   10378: 13 05 85 02  	addi	a0, a0, 40
   1037c: c4 c5        	sw	s1, 12(a1)
   1037e: 98 c9        	sw	a4, 16(a1)
   10380: 93 85 85 02  	addi	a1, a1, 40
   10384: e3 11 06 f7  	bne	a2, a6, 0x102e6 <main+0x28>
   10388: 93 05 40 06  	li	a1, 100
   1038c: 23 a8 b1 86  	sw	a1, -1936(gp)
   10390: 01 45        	li	a0, 0
   10392: 26 64        	ld	s0, 72(sp)
   10394: 86 64        	ld	s1, 64(sp)
   10396: 62 79        	ld	s2, 56(sp)
   10398: c2 79        	ld	s3, 48(sp)
   1039a: 22 7a        	ld	s4, 40(sp)
   1039c: 82 7a        	ld	s5, 32(sp)
   1039e: 62 6b        	ld	s6, 24(sp)
   103a0: c2 6b        	ld	s7, 16(sp)
   103a2: 22 6c        	ld	s8, 8(sp)
   103a4: 61 61        	addi	sp, sp, 80
   103a6: 82 80        	ret

00000000000103a8 <memset>:
   103a8: 3d 43        	li	t1, 15
   103aa: 2a 87        	mv	a4, a0
   103ac: 63 71 c3 02  	bgeu	t1, a2, 0x103ce <memset+0x26>
   103b0: 93 77 f7 00  	andi	a5, a4, 15
   103b4: c1 e3        	bnez	a5, 0x10434 <memset+0x8c>
   103b6: bd e1        	bnez	a1, 0x1041c <memset+0x74>
   103b8: 93 76 06 ff  	andi	a3, a2, -16
   103bc: 3d 8a        	andi	a2, a2, 15
   103be: ba 96        	add	a3, a3, a4
   103c0: 0c e3        	sd	a1, 0(a4)
   103c2: 0c e7        	sd	a1, 8(a4)
   103c4: 41 07        	addi	a4, a4, 16
   103c6: e3 6d d7 fe  	bltu	a4, a3, 0x103c0 <memset+0x18>
   103ca: 11 e2        	bnez	a2, 0x103ce <memset+0x26>
   103cc: 82 80        	ret
   103ce: b3 06 c3 40  	sub	a3, t1, a2
   103d2: 8a 06        	slli	a3, a3, 2
   103d4: 97 02 00 00  	auipc	t0, 0
   103d8: 96 96        	add	a3, a3, t0
   103da: 67 80 a6 00  	jr	10(a3)
   103de: 23 07 b7 00  	sb	a1, 14(a4)
   103e2: a3 06 b7 00  	sb	a1, 13(a4)
   103e6: 23 06 b7 00  	sb	a1, 12(a4)
   103ea: a3 05 b7 00  	sb	a1, 11(a4)
   103ee: 23 05 b7 00  	sb	a1, 10(a4)
   103f2: a3 04 b7 00  	sb	a1, 9(a4)
   103f6: 23 04 b7 00  	sb	a1, 8(a4)
   103fa: a3 03 b7 00  	sb	a1, 7(a4)
   103fe: 23 03 b7 00  	sb	a1, 6(a4)
   10402: a3 02 b7 00  	sb	a1, 5(a4)
   10406: 23 02 b7 00  	sb	a1, 4(a4)
   1040a: a3 01 b7 00  	sb	a1, 3(a4)
   1040e: 23 01 b7 00  	sb	a1, 2(a4)
   10412: a3 00 b7 00  	sb	a1, 1(a4)
   10416: 23 00 b7 00  	sb	a1, 0(a4)
   1041a: 82 80        	ret
   1041c: 93 f5 f5 0f  	andi	a1, a1, 255
   10420: 93 96 85 00  	slli	a3, a1, 8
   10424: d5 8d        	or	a1, a1, a3
   10426: 93 96 05 01  	slli	a3, a1, 16
   1042a: d5 8d        	or	a1, a1, a3
   1042c: 93 96 05 02  	slli	a3, a1, 32
   10430: d5 8d        	or	a1, a1, a3
   10432: 59 b7        	j	0x103b8 <memset+0x10>
   10434: 93 96 27 00  	slli	a3, a5, 2
   10438: 97 02 00 00  	auipc	t0, 0
   1043c: 96 96        	add	a3, a3, t0
   1043e: 86 82        	mv	t0, ra
   10440: e7 80 26 fa  	jalr	-94(a3)
   10444: 96 80        	mv	ra, t0
   10446: c1 17        	addi	a5, a5, -16
   10448: 1d 8f        	sub	a4, a4, a5
   1044a: 3e 96        	add	a2, a2, a5
   1044c: e3 71 c3 f8  	bgeu	t1, a2, 0x103ce <memset+0x26>
   10450: 9d b7        	j	0x103b6 <memset+0xe>

0000000000010452 <__netf2>:
   10452: fd 57        	li	a5, -1
   10454: 37 f7 ff 07  	lui	a4, 32767
   10458: 85 83        	srli	a5, a5, 1
   1045a: b3 f8 f5 00  	and	a7, a1, a5
   1045e: 12 17        	slli	a4, a4, 36
   10460: 63 88 e8 00  	beq	a7, a4, 0x10470 <__netf2+0x1e>
   10464: b3 32 17 01  	sltu	t0, a4, a7
   10468: 05 48        	li	a6, 1
   1046a: 63 88 02 00  	beqz	t0, 0x1047a <__netf2+0x28>
   1046e: b1 a8        	j	0x104ca <__netf2+0x78>
   10470: b3 32 a0 00  	snez	t0, a0
   10474: 05 48        	li	a6, 1
   10476: 63 9a 02 04  	bnez	t0, 0x104ca <__netf2+0x78>
   1047a: f5 8f        	and	a5, a5, a3
   1047c: 63 86 e7 00  	beq	a5, a4, 0x10488 <__netf2+0x36>
   10480: 33 37 f7 00  	sltu	a4, a4, a5
   10484: 09 c7        	beqz	a4, 0x1048e <__netf2+0x3c>
   10486: 91 a0        	j	0x104ca <__netf2+0x78>
   10488: 33 37 c0 00  	snez	a4, a2
   1048c: 1d ef        	bnez	a4, 0x104ca <__netf2+0x78>
   1048e: 33 67 a6 00  	or	a4, a2, a0
   10492: b3 e7 17 01  	or	a5, a5, a7
   10496: 5d 8f        	or	a4, a4, a5
   10498: 01 cf        	beqz	a4, 0x104b0 <__netf2+0x5e>
   1049a: 33 f7 b6 00  	and	a4, a3, a1
   1049e: 63 4b 07 00  	bltz	a4, 0x104b4 <__netf2+0x62>
   104a2: 63 80 d5 02  	beq	a1, a3, 0x104c2 <__netf2+0x70>
   104a6: 33 a7 d5 00  	slt	a4, a1, a3
   104aa: 7d 58        	li	a6, -1
   104ac: 19 ef        	bnez	a4, 0x104ca <__netf2+0x78>
   104ae: 25 a0        	j	0x104d6 <__netf2+0x84>
   104b0: 01 45        	li	a0, 0
   104b2: 82 80        	ret
   104b4: 63 8d d5 00  	beq	a1, a3, 0x104ce <__netf2+0x7c>
   104b8: 33 a7 b6 00  	slt	a4, a3, a1
   104bc: 7d 58        	li	a6, -1
   104be: 11 e7        	bnez	a4, 0x104ca <__netf2+0x78>
   104c0: 19 a8        	j	0x104d6 <__netf2+0x84>
   104c2: 33 37 c5 00  	sltu	a4, a0, a2
   104c6: 7d 58        	li	a6, -1
   104c8: 19 c7        	beqz	a4, 0x104d6 <__netf2+0x84>
   104ca: 42 85        	mv	a0, a6
   104cc: 82 80        	ret
   104ce: 33 37 a6 00  	sltu	a4, a2, a0
   104d2: 7d 58        	li	a6, -1
   104d4: 7d fb        	bnez	a4, 0x104ca <__netf2+0x78>
   104d6: 31 8d        	xor	a0, a0, a2
   104d8: b5 8d        	xor	a1, a1, a3
   104da: 4d 8d        	or	a0, a0, a1
   104dc: 33 38 a0 00  	snez	a6, a0
   104e0: 42 85        	mv	a0, a6
   104e2: 82 80        	ret

00000000000104e4 <__gttf2>:
   104e4: 7d 58        	li	a6, -1
   104e6: 37 f7 ff 07  	lui	a4, 32767
   104ea: 93 57 18 00  	srli	a5, a6, 1
   104ee: b3 f8 f5 00  	and	a7, a1, a5
   104f2: 12 17        	slli	a4, a4, 36
   104f4: 63 87 e8 00  	beq	a7, a4, 0x10502 <__gttf2+0x1e>
   104f8: b3 32 17 01  	sltu	t0, a4, a7
   104fc: 63 87 02 00  	beqz	t0, 0x1050a <__gttf2+0x26>
   10500: 85 a0        	j	0x10560 <__gttf2+0x7c>
   10502: b3 32 a0 00  	snez	t0, a0
   10506: 63 9d 02 04  	bnez	t0, 0x10560 <__gttf2+0x7c>
   1050a: f5 8f        	and	a5, a5, a3
   1050c: 63 86 e7 00  	beq	a5, a4, 0x10518 <__gttf2+0x34>
   10510: 33 37 f7 00  	sltu	a4, a4, a5
   10514: 09 c7        	beqz	a4, 0x1051e <__gttf2+0x3a>
   10516: a9 a0        	j	0x10560 <__gttf2+0x7c>
   10518: 33 37 c0 00  	snez	a4, a2
   1051c: 31 e3        	bnez	a4, 0x10560 <__gttf2+0x7c>
   1051e: 33 67 a6 00  	or	a4, a2, a0
   10522: b3 e7 17 01  	or	a5, a5, a7
   10526: 5d 8f        	or	a4, a4, a5
   10528: 0d c3        	beqz	a4, 0x1054a <__gttf2+0x66>
   1052a: 33 f7 b6 00  	and	a4, a3, a1
   1052e: 63 40 07 02  	bltz	a4, 0x1054e <__gttf2+0x6a>
   10532: 63 84 d5 02  	beq	a1, a3, 0x1055a <__gttf2+0x76>
   10536: 33 a7 d5 00  	slt	a4, a1, a3
   1053a: 1d e3        	bnez	a4, 0x10560 <__gttf2+0x7c>
   1053c: 31 8d        	xor	a0, a0, a2
   1053e: b5 8d        	xor	a1, a1, a3
   10540: 4d 8d        	or	a0, a0, a1
   10542: 33 38 a0 00  	snez	a6, a0
   10546: 42 85        	mv	a0, a6
   10548: 82 80        	ret
   1054a: 01 45        	li	a0, 0
   1054c: 82 80        	ret
   1054e: 63 8b d5 00  	beq	a1, a3, 0x10564 <__gttf2+0x80>
   10552: 33 a7 b6 00  	slt	a4, a3, a1
   10556: 7d d3        	beqz	a4, 0x1053c <__gttf2+0x58>
   10558: 21 a0        	j	0x10560 <__gttf2+0x7c>
   1055a: 33 37 c5 00  	sltu	a4, a0, a2
   1055e: 79 df        	beqz	a4, 0x1053c <__gttf2+0x58>
   10560: 42 85        	mv	a0, a6
   10562: 82 80        	ret
   10564: 33 37 a6 00  	sltu	a4, a2, a0
   10568: 71 db        	beqz	a4, 0x1053c <__gttf2+0x58>
   1056a: dd bf        	j	0x10560 <__gttf2+0x7c>

000000000001056c <__unordtf2>:
   1056c: 7d 57        	li	a4, -1
   1056e: 37 f8 ff 07  	lui	a6, 32767
   10572: 05 83        	srli	a4, a4, 1
   10574: b3 f7 e5 00  	and	a5, a1, a4
   10578: 93 15 48 02  	slli	a1, a6, 36
   1057c: f9 8e        	and	a3, a3, a4
   1057e: 63 8a b7 00  	beq	a5, a1, 0x10592 <__unordtf2+0x26>
   10582: 33 b5 f5 00  	sltu	a0, a1, a5
   10586: 63 9a b6 00  	bne	a3, a1, 0x1059a <__unordtf2+0x2e>
   1058a: b3 35 c0 00  	snez	a1, a2
   1058e: 4d 8d        	or	a0, a0, a1
   10590: 82 80        	ret
   10592: 33 35 a0 00  	snez	a0, a0
   10596: e3 8a b6 fe  	beq	a3, a1, 0x1058a <__unordtf2+0x1e>
   1059a: b3 b5 d5 00  	sltu	a1, a1, a3
   1059e: 4d 8d        	or	a0, a0, a1
   105a0: 82 80        	ret

00000000000105a2 <__multf3>:
   105a2: 1d 71        	addi	sp, sp, -96
   105a4: a2 ec        	sd	s0, 88(sp)
   105a6: a6 e8        	sd	s1, 80(sp)
   105a8: ca e4        	sd	s2, 72(sp)
   105aa: ce e0        	sd	s3, 64(sp)
   105ac: 52 fc        	sd	s4, 56(sp)
   105ae: 56 f8        	sd	s5, 48(sp)
   105b0: 5a f4        	sd	s6, 40(sp)
   105b2: 5e f0        	sd	s7, 32(sp)
   105b4: 62 ec        	sd	s8, 24(sp)
   105b6: 66 e8        	sd	s9, 16(sp)
   105b8: 6a e4        	sd	s10, 8(sp)
   105ba: 2e 87        	mv	a4, a1
   105bc: 7d 58        	li	a6, -1
   105be: 86 05        	slli	a1, a1, 1
   105c0: 93 97 16 00  	slli	a5, a3, 1
   105c4: b3 c4 e6 00  	xor	s1, a3, a4
   105c8: e1 7e        	lui	t4, 1048568
   105ca: aa 83        	mv	t2, a0
   105cc: 93 58 08 01  	srli	a7, a6, 16
   105d0: 13 d3 15 03  	srli	t1, a1, 49
   105d4: 93 d2 17 03  	srli	t0, a5, 49
   105d8: 93 d5 f4 03  	srli	a1, s1, 63
   105dc: 1b 84 1e 00  	addiw	s0, t4, 1
   105e0: fe 15        	slli	a1, a1, 63
   105e2: b3 79 17 01  	and	s3, a4, a7
   105e6: 33 fe 16 01  	and	t3, a3, a7
   105ea: b3 04 83 00  	add	s1, t1, s0
   105ee: 9b 87 2e 00  	addiw	a5, t4, 2
   105f2: 93 de 09 02  	srli	t4, s3, 32
   105f6: 63 e4 f4 16  	bltu	s1, a5, 0x1075e <__multf3+0x1bc>
   105fa: b3 87 82 00  	add	a5, t0, s0
   105fe: 63 70 f4 16  	bgeu	s0, a5, 0x1075e <__multf3+0x1bc>
   10602: 01 4f        	li	t5, 0
   10604: 13 1a f6 00  	slli	s4, a2, 15
   10608: 13 59 16 03  	srli	s2, a2, 49
   1060c: 93 14 fe 00  	slli	s1, t3, 15
   10610: 05 4e        	li	t3, 1
   10612: c1 6f        	lui	t6, 16
   10614: 82 19        	slli	s3, s3, 32
   10616: 93 da 03 02  	srli	s5, t2, 32
   1061a: 82 13        	slli	t2, t2, 32
   1061c: 9a 92        	add	t0, t0, t1
   1061e: 71 73        	lui	t1, 1048572
   10620: 13 d4 04 02  	srli	s0, s1, 32
   10624: 13 17 fe 01  	slli	a4, t3, 31
   10628: b3 e6 fe 01  	or	a3, t4, t6
   1062c: b3 64 99 00  	or	s1, s2, s1
   10630: 13 55 0a 02  	srli	a0, s4, 32
   10634: 02 1a        	slli	s4, s4, 32
   10636: 93 d7 09 02  	srli	a5, s3, 32
   1063a: 13 d6 03 02  	srli	a2, t2, 32
   1063e: 05 03        	addi	t1, t1, 1
   10640: 41 8f        	or	a4, a4, s0
   10642: 82 14        	slli	s1, s1, 32
   10644: b3 0e d5 02  	mul	t4, a0, a3
   10648: 13 54 0a 02  	srli	s0, s4, 32
   1064c: b3 0f f5 02  	mul	t6, a0, a5
   10650: 33 39 3a 03  	mulhu	s2, s4, s3
   10654: 33 0b 55 03  	mul	s6, a0, s5
   10658: 33 0c c5 02  	mul	s8, a0, a2
   1065c: 33 3a 7a 02  	mulhu	s4, s4, t2
   10660: b3 0b d7 02  	mul	s7, a4, a3
   10664: 13 d5 04 02  	srli	a0, s1, 32
   10668: b3 0c d4 02  	mul	s9, s0, a3
   1066c: 33 0d f7 02  	mul	s10, a4, a5
   10670: b3 b9 34 03  	mulhu	s3, s1, s3
   10674: 33 06 c7 02  	mul	a2, a4, a2
   10678: 33 07 57 03  	mul	a4, a4, s5
   1067c: 33 04 54 03  	mul	s0, s0, s5
   10680: b3 b4 74 02  	mulhu	s1, s1, t2
   10684: 4a 9b        	add	s6, s6, s2
   10686: b3 06 d5 02  	mul	a3, a0, a3
   1068a: b3 03 55 03  	mul	t2, a0, s5
   1068e: 22 9c        	add	s8, s8, s0
   10690: b3 37 2b 01  	sltu	a5, s6, s2
   10694: da 94        	add	s1, s1, s6
   10696: e6 9f        	add	t6, t6, s9
   10698: ba 9e        	add	t4, t4, a4
   1069a: 33 34 8c 00  	sltu	s0, s8, s0
   1069e: 33 b5 64 01  	sltu	a0, s1, s6
   106a2: 33 b9 9f 01  	sltu	s2, t6, s9
   106a6: 7e 96        	add	a2, a2, t6
   106a8: 36 9d        	add	s10, s10, a3
   106aa: 93 5a 0c 02  	srli	s5, s8, 32
   106ae: 02 1c        	slli	s8, s8, 32
   106b0: 33 b7 ee 00  	sltu	a4, t4, a4
   106b4: f6 99        	add	s3, s3, t4
   106b6: 33 8b a7 00  	add	s6, a5, a0
   106ba: b3 37 f6 01  	sltu	a5, a2, t6
   106be: b2 93        	add	t2, t2, a2
   106c0: b3 36 dd 00  	sltu	a3, s10, a3
   106c4: 02 14        	slli	s0, s0, 32
   106c6: 62 9a        	add	s4, s4, s8
   106c8: 93 5f 0d 02  	srli	t6, s10, 32
   106cc: 02 1d        	slli	s10, s10, 32
   106ce: 33 b5 d9 01  	sltu	a0, s3, t4
   106d2: 5e 97        	add	a4, a4, s7
   106d4: ca 97        	add	a5, a5, s2
   106d6: 33 b6 c3 00  	sltu	a2, t2, a2
   106da: b3 3e 8a 01  	sltu	t4, s4, s8
   106de: 13 d9 03 02  	srli	s2, t2, 32
   106e2: 82 13        	slli	t2, t2, 32
   106e4: 33 e4 8a 00  	or	s0, s5, s0
   106e8: 82 16        	slli	a3, a3, 32
   106ea: 3a 95        	add	a0, a0, a4
   106ec: 4e 9b        	add	s6, s6, s3
   106ee: 3e 96        	add	a2, a2, a5
   106f0: 26 94        	add	s0, s0, s1
   106f2: b3 e6 f6 01  	or	a3, a3, t6
   106f6: 33 37 3b 01  	sltu	a4, s6, s3
   106fa: 5a 9d        	add	s10, s10, s6
   106fc: 02 16        	slli	a2, a2, 32
   106fe: b3 37 94 00  	sltu	a5, s0, s1
   10702: a2 93        	add	t2, t2, s0
   10704: 3a 95        	add	a0, a0, a4
   10706: b3 34 6d 01  	sltu	s1, s10, s6
   1070a: 33 b4 83 00  	sltu	s0, t2, s0
   1070e: 33 87 7e 00  	add	a4, t4, t2
   10712: 33 66 c9 00  	or	a2, s2, a2
   10716: 36 95        	add	a0, a0, a3
   10718: a2 97        	add	a5, a5, s0
   1071a: 26 95        	add	a0, a0, s1
   1071c: b3 06 cd 00  	add	a3, s10, a2
   10720: b3 b4 a6 01  	sltu	s1, a3, s10
   10724: b3 8e f6 00  	add	t4, a3, a5
   10728: 26 95        	add	a0, a0, s1
   1072a: b3 b7 de 00  	sltu	a5, t4, a3
   1072e: aa 97        	add	a5, a5, a0
   10730: 7a 93        	add	t1, t1, t5
   10732: 13 95 f7 00  	slli	a0, a5, 15
   10736: 3b 84 62 00  	addw	s0, t0, t1
   1073a: 63 4d 05 04  	bltz	a0, 0x10794 <__multf3+0x1f2>
   1073e: 13 d5 fe 03  	srli	a0, t4, 63
   10742: 86 07        	slli	a5, a5, 1
   10744: 13 96 1e 00  	slli	a2, t4, 1
   10748: c9 8f        	or	a5, a5, a0
   1074a: 13 55 f7 03  	srli	a0, a4, 63
   1074e: b3 6e a6 00  	or	t4, a2, a0
   10752: 13 55 fa 03  	srli	a0, s4, 63
   10756: 06 07        	slli	a4, a4, 1
   10758: 49 8f        	or	a4, a4, a0
   1075a: 06 0a        	slli	s4, s4, 1
   1075c: 2d a8        	j	0x10796 <__multf3+0x1f4>
   1075e: 93 57 18 00  	srli	a5, a6, 1
   10762: 37 f4 ff 07  	lui	s0, 32767
   10766: 33 7f f7 00  	and	t5, a4, a5
   1076a: 12 14        	slli	s0, s0, 36
   1076c: 63 0e 8f 06  	beq	t5, s0, 0x107e8 <__multf3+0x246>
   10770: b3 34 8f 00  	sltu	s1, t5, s0
   10774: ad cc        	beqz	s1, 0x107ee <__multf3+0x24c>
   10776: 33 f7 f6 00  	and	a4, a3, a5
   1077a: 63 0e 87 06  	beq	a4, s0, 0x107f6 <__multf3+0x254>
   1077e: b3 37 87 00  	sltu	a5, a4, s0
   10782: ad cf        	beqz	a5, 0x107fc <__multf3+0x25a>
   10784: b3 46 8f 00  	xor	a3, t5, s0
   10788: c9 8e        	or	a3, a3, a0
   1078a: dd e2        	bnez	a3, 0x10830 <__multf3+0x28e>
   1078c: 59 8e        	or	a2, a2, a4
   1078e: 45 ea        	bnez	a2, 0x1083e <__multf3+0x29c>
   10790: 01 45        	li	a0, 0
   10792: 4d a8        	j	0x10844 <__multf3+0x2a2>
   10794: 05 24        	addiw	s0, s0, 1
   10796: 21 65        	lui	a0, 8
   10798: 7d 35        	addiw	a0, a0, -1
   1079a: 63 48 a4 00  	blt	s0, a0, 0x107aa <__multf3+0x208>
   1079e: 01 45        	li	a0, 0
   107a0: 37 f6 ff 07  	lui	a2, 32767
   107a4: 12 16        	slli	a2, a2, 36
   107a6: d1 8d        	or	a1, a1, a2
   107a8: 65 aa        	j	0x10960 <__multf3+0x3be>
   107aa: 63 5f 80 04  	blez	s0, 0x10808 <__multf3+0x266>
   107ae: 33 f5 0e 01  	and	a0, t4, a6
   107b2: 33 f6 17 01  	and	a2, a5, a7
   107b6: 42 14        	slli	s0, s0, 48
   107b8: 41 8e        	or	a2, a2, s0
   107ba: 7e 18        	slli	a6, a6, 63
   107bc: 63 09 07 19  	beq	a4, a6, 0x1094e <__multf3+0x3ac>
   107c0: 93 26 07 00  	slti	a3, a4, 0
   107c4: 93 c7 16 00  	xori	a5, a3, 1
   107c8: d1 8d        	or	a1, a1, a2
   107ca: 63 87 07 18  	beqz	a5, 0x10958 <__multf3+0x3b6>
   107ce: 33 46 07 01  	xor	a2, a4, a6
   107d2: 33 66 ca 00  	or	a2, s4, a2
   107d6: 63 15 06 18  	bnez	a2, 0x10960 <__multf3+0x3be>
   107da: 13 76 15 00  	andi	a2, a0, 1
   107de: 2a 96        	add	a2, a2, a0
   107e0: 33 35 a6 00  	sltu	a0, a2, a0
   107e4: aa 95        	add	a1, a1, a0
   107e6: 39 a8        	j	0x10804 <__multf3+0x262>
   107e8: 93 34 15 00  	seqz	s1, a0
   107ec: c9 f4        	bnez	s1, 0x10776 <__multf3+0x1d4>
   107ee: 85 45        	li	a1, 1
   107f0: be 15        	slli	a1, a1, 47
   107f2: d9 8d        	or	a1, a1, a4
   107f4: b5 a2        	j	0x10960 <__multf3+0x3be>
   107f6: 93 37 16 00  	seqz	a5, a2
   107fa: c9 f7        	bnez	a5, 0x10784 <__multf3+0x1e2>
   107fc: 05 45        	li	a0, 1
   107fe: 3e 15        	slli	a0, a0, 47
   10800: b3 e5 a6 00  	or	a1, a3, a0
   10804: 32 85        	mv	a0, a2
   10806: a9 aa        	j	0x10960 <__multf3+0x3be>
   10808: bb 08 8e 40  	subw	a7, t3, s0
   1080c: 13 05 f0 07  	li	a0, 127
   10810: 63 69 15 09  	bltu	a0, a7, 0x108a2 <__multf3+0x300>
   10814: 13 05 f4 07  	addi	a0, s0, 127
   10818: 93 14 05 02  	slli	s1, a0, 32
   1081c: 81 90        	srli	s1, s1, 32
   1081e: 13 84 04 fc  	addi	s0, s1, -64
   10822: 93 c2 f4 ff  	not	t0, s1
   10826: 63 40 04 08  	bltz	s0, 0x108a6 <__multf3+0x304>
   1082a: 33 13 9a 00  	sll	t1, s4, s1
   1082e: 61 a0        	j	0x108b6 <__multf3+0x314>
   10830: b3 46 87 00  	xor	a3, a4, s0
   10834: d1 8e        	or	a3, a3, a2
   10836: 99 ea        	bnez	a3, 0x1084c <__multf3+0x2aa>
   10838: 33 65 e5 01  	or	a0, a0, t5
   1083c: 01 c5        	beqz	a0, 0x10844 <__multf3+0x2a2>
   1083e: 01 45        	li	a0, 0
   10840: c1 8d        	or	a1, a1, s0
   10842: 39 aa        	j	0x10960 <__multf3+0x3be>
   10844: b7 f5 ff 0f  	lui	a1, 65535
   10848: 8e 15        	slli	a1, a1, 35
   1084a: 19 aa        	j	0x10960 <__multf3+0x3be>
   1084c: b3 66 e5 01  	or	a3, a0, t5
   10850: a9 ca        	beqz	a3, 0x108a2 <__multf3+0x300>
   10852: b3 66 e6 00  	or	a3, a2, a4
   10856: b1 c6        	beqz	a3, 0x108a2 <__multf3+0x300>
   10858: 93 56 0f 03  	srli	a3, t5, 48
   1085c: 63 9f 06 10  	bnez	a3, 0x1097a <__multf3+0x3d8>
   10860: 63 9f 09 10  	bnez	s3, 0x1097e <__multf3+0x3dc>
   10864: 93 de 03 02  	srli	t4, t2, 32
   10868: 63 80 0e 12  	beqz	t4, 0x10988 <__multf3+0x3e6>
   1086c: 13 df 03 03  	srli	t5, t2, 48
   10870: 63 01 0f 12  	beqz	t5, 0x10992 <__multf3+0x3f0>
   10874: 93 d6 83 03  	srli	a3, t2, 56
   10878: 63 82 06 12  	beqz	a3, 0x1099c <__multf3+0x3fa>
   1087c: 93 d7 c3 03  	srli	a5, t2, 60
   10880: 63 83 07 12  	beqz	a5, 0x109a6 <__multf3+0x404>
   10884: 93 df e3 03  	srli	t6, t2, 62
   10888: 63 84 0f 12  	beqz	t6, 0x109b0 <__multf3+0x40e>
   1088c: 13 04 10 02  	li	s0, 33
   10890: 63 85 0e 12  	beqz	t4, 0x109ba <__multf3+0x418>
   10894: 05 44        	li	s0, 1
   10896: 63 14 0f 12  	bnez	t5, 0x109be <__multf3+0x41c>
   1089a: 41 04        	addi	s0, s0, 16
   1089c: 63 82 06 12  	beqz	a3, 0x109c0 <__multf3+0x41e>
   108a0: 0d a2        	j	0x109c2 <__multf3+0x420>
   108a2: 01 45        	li	a0, 0
   108a4: 75 a8        	j	0x10960 <__multf3+0x3be>
   108a6: 33 13 a7 00  	sll	t1, a4, a0
   108aa: 93 56 1a 00  	srli	a3, s4, 1
   108ae: b3 d6 56 00  	srl	a3, a3, t0
   108b2: 33 63 d3 00  	or	t1, t1, a3
   108b6: b3 16 aa 00  	sll	a3, s4, a0
   108ba: 93 53 f4 43  	srai	t2, s0, 63
   108be: 33 fe d3 00  	and	t3, t2, a3
   108c2: 63 45 04 00  	bltz	s0, 0x108cc <__multf3+0x32a>
   108c6: b3 92 9e 00  	sll	t0, t4, s1
   108ca: 09 a8        	j	0x108dc <__multf3+0x33a>
   108cc: b3 96 a7 00  	sll	a3, a5, a0
   108d0: 13 d6 1e 00  	srli	a2, t4, 1
   108d4: 33 56 56 00  	srl	a2, a2, t0
   108d8: b3 e2 c6 00  	or	t0, a3, a2
   108dc: b3 64 6e 00  	or	s1, t3, t1
   108e0: 33 95 ae 00  	sll	a0, t4, a0
   108e4: 13 96 08 02  	slli	a2, a7, 32
   108e8: b3 f3 a3 00  	and	t2, t2, a0
   108ec: 13 55 06 02  	srli	a0, a2, 32
   108f0: 13 04 05 fc  	addi	s0, a0, -64
   108f4: 13 43 f5 ff  	not	t1, a0
   108f8: 63 45 04 00  	bltz	s0, 0x10902 <__multf3+0x360>
   108fc: b3 56 a7 00  	srl	a3, a4, a0
   10900: 01 a8        	j	0x10910 <__multf3+0x36e>
   10902: 33 56 1a 01  	srl	a2, s4, a7
   10906: 93 16 17 00  	slli	a3, a4, 1
   1090a: b3 96 66 00  	sll	a3, a3, t1
   1090e: d1 8e        	or	a3, a3, a2
   10910: 33 3e 90 00  	snez	t3, s1
   10914: 33 57 17 01  	srl	a4, a4, a7
   10918: 93 54 f4 43  	srai	s1, s0, 63
   1091c: 65 8f        	and	a4, a4, s1
   1091e: b3 e6 d3 00  	or	a3, t2, a3
   10922: 63 45 04 00  	bltz	s0, 0x1092c <__multf3+0x38a>
   10926: 33 d5 a7 00  	srl	a0, a5, a0
   1092a: 01 a8        	j	0x1093a <__multf3+0x398>
   1092c: 33 d5 1e 01  	srl	a0, t4, a7
   10930: 13 96 17 00  	slli	a2, a5, 1
   10934: 33 16 66 00  	sll	a2, a2, t1
   10938: 51 8d        	or	a0, a0, a2
   1093a: 33 e7 e2 00  	or	a4, t0, a4
   1093e: 33 ea c6 01  	or	s4, a3, t3
   10942: 33 d6 17 01  	srl	a2, a5, a7
   10946: 65 8e        	and	a2, a2, s1
   10948: 7e 18        	slli	a6, a6, 63
   1094a: e3 1b 07 e7  	bne	a4, a6, 0x107c0 <__multf3+0x21e>
   1094e: 93 37 1a 00  	seqz	a5, s4
   10952: d1 8d        	or	a1, a1, a2
   10954: e3 9d 07 e6  	bnez	a5, 0x107ce <__multf3+0x22c>
   10958: 05 05        	addi	a0, a0, 1
   1095a: 13 36 15 00  	seqz	a2, a0
   1095e: b2 95        	add	a1, a1, a2
   10960: 66 64        	ld	s0, 88(sp)
   10962: c6 64        	ld	s1, 80(sp)
   10964: 26 69        	ld	s2, 72(sp)
   10966: 86 69        	ld	s3, 64(sp)
   10968: 62 7a        	ld	s4, 56(sp)
   1096a: c2 7a        	ld	s5, 48(sp)
   1096c: 22 7b        	ld	s6, 40(sp)
   1096e: 82 7b        	ld	s7, 32(sp)
   10970: 62 6c        	ld	s8, 24(sp)
   10972: c2 6c        	ld	s9, 16(sp)
   10974: 22 6d        	ld	s10, 8(sp)
   10976: 25 61        	addi	sp, sp, 96
   10978: 82 80        	ret
   1097a: 01 4f        	li	t5, 0
   1097c: 45 a0        	j	0x10a1c <__multf3+0x47a>
   1097e: ce 83        	mv	t2, s3
   10980: 93 de 09 02  	srli	t4, s3, 32
   10984: e3 94 0e ee  	bnez	t4, 0x1086c <__multf3+0x2ca>
   10988: 82 13        	slli	t2, t2, 32
   1098a: 13 df 03 03  	srli	t5, t2, 48
   1098e: e3 13 0f ee  	bnez	t5, 0x10874 <__multf3+0x2d2>
   10992: c2 03        	slli	t2, t2, 16
   10994: 93 d6 83 03  	srli	a3, t2, 56
   10998: e3 92 06 ee  	bnez	a3, 0x1087c <__multf3+0x2da>
   1099c: a2 03        	slli	t2, t2, 8
   1099e: 93 d7 c3 03  	srli	a5, t2, 60
   109a2: e3 91 07 ee  	bnez	a5, 0x10884 <__multf3+0x2e2>
   109a6: 92 03        	slli	t2, t2, 4
   109a8: 93 df e3 03  	srli	t6, t2, 62
   109ac: e3 90 0f ee  	bnez	t6, 0x1088c <__multf3+0x2ea>
   109b0: 8a 03        	slli	t2, t2, 2
   109b2: 13 04 10 02  	li	s0, 33
   109b6: e3 9f 0e ec  	bnez	t4, 0x10894 <__multf3+0x2f2>
   109ba: e3 00 0f ee  	beqz	t5, 0x1089a <__multf3+0x2f8>
   109be: 91 e2        	bnez	a3, 0x109c2 <__multf3+0x420>
   109c0: 21 04        	addi	s0, s0, 8
   109c2: 93 b6 19 00  	seqz	a3, s3
   109c6: 91 e3        	bnez	a5, 0x109ca <__multf3+0x428>
   109c8: 11 04        	addi	s0, s0, 4
   109ca: 9a 06        	slli	a3, a3, 6
   109cc: 93 d7 f3 43  	srai	a5, t2, 63
   109d0: 63 93 0f 00  	bnez	t6, 0x109d6 <__multf3+0x434>
   109d4: 09 04        	addi	s0, s0, 2
   109d6: a2 97        	add	a5, a5, s0
   109d8: 33 e4 d7 00  	or	s0, a5, a3
   109dc: 93 06 14 ff  	addi	a3, s0, -15
   109e0: b3 13 d5 00  	sll	t2, a0, a3
   109e4: 93 97 06 02  	slli	a5, a3, 32
   109e8: 81 93        	srli	a5, a5, 32
   109ea: 93 84 07 fc  	addi	s1, a5, -64
   109ee: 93 de f4 43  	srai	t4, s1, 63
   109f2: 63 c5 04 00  	bltz	s1, 0x109fc <__multf3+0x45a>
   109f6: b3 19 f5 00  	sll	s3, a0, a5
   109fa: 11 a8        	j	0x10a0e <__multf3+0x46c>
   109fc: b3 96 d9 00  	sll	a3, s3, a3
   10a00: 93 c7 f7 ff  	not	a5, a5
   10a04: 05 81        	srli	a0, a0, 1
   10a06: 33 55 f5 00  	srl	a0, a0, a5
   10a0a: b3 e9 a6 00  	or	s3, a3, a0
   10a0e: b3 f3 7e 00  	and	t2, t4, t2
   10a12: 41 45        	li	a0, 16
   10a14: 33 0f 85 40  	sub	t5, a0, s0
   10a18: 93 de 09 02  	srli	t4, s3, 32
   10a1c: 41 93        	srli	a4, a4, 48
   10a1e: e3 13 07 be  	bnez	a4, 0x10604 <__multf3+0x62>
   10a22: 32 85        	mv	a0, a2
   10a24: 63 1d 0e 02  	bnez	t3, 0x10a5e <__multf3+0x4bc>
   10a28: 93 5f 05 02  	srli	t6, a0, 32
   10a2c: 63 8e 0f 02  	beqz	t6, 0x10a68 <__multf3+0x4c6>
   10a30: 13 59 05 03  	srli	s2, a0, 48
   10a34: 63 0f 09 02  	beqz	s2, 0x10a72 <__multf3+0x4d0>
   10a38: 13 54 85 03  	srli	s0, a0, 56
   10a3c: 1d cc        	beqz	s0, 0x10a7a <__multf3+0x4d8>
   10a3e: 93 54 c5 03  	srli	s1, a0, 60
   10a42: a1 c0        	beqz	s1, 0x10a82 <__multf3+0x4e0>
   10a44: 93 57 e5 03  	srli	a5, a0, 62
   10a48: a9 c3        	beqz	a5, 0x10a8a <__multf3+0x4e8>
   10a4a: 13 07 10 02  	li	a4, 33
   10a4e: 63 83 0f 04  	beqz	t6, 0x10a94 <__multf3+0x4f2>
   10a52: 05 47        	li	a4, 1
   10a54: 63 12 09 04  	bnez	s2, 0x10a98 <__multf3+0x4f6>
   10a58: 41 07        	addi	a4, a4, 16
   10a5a: 21 c0        	beqz	s0, 0x10a9a <__multf3+0x4f8>
   10a5c: 81 a0        	j	0x10a9c <__multf3+0x4fa>
   10a5e: 72 85        	mv	a0, t3
   10a60: 93 5f 0e 02  	srli	t6, t3, 32
   10a64: e3 96 0f fc  	bnez	t6, 0x10a30 <__multf3+0x48e>
   10a68: 02 15        	slli	a0, a0, 32
   10a6a: 13 59 05 03  	srli	s2, a0, 48
   10a6e: e3 15 09 fc  	bnez	s2, 0x10a38 <__multf3+0x496>
   10a72: 42 05        	slli	a0, a0, 16
   10a74: 13 54 85 03  	srli	s0, a0, 56
   10a78: 79 f0        	bnez	s0, 0x10a3e <__multf3+0x49c>
   10a7a: 22 05        	slli	a0, a0, 8
   10a7c: 93 54 c5 03  	srli	s1, a0, 60
   10a80: f1 f0        	bnez	s1, 0x10a44 <__multf3+0x4a2>
   10a82: 12 05        	slli	a0, a0, 4
   10a84: 93 57 e5 03  	srli	a5, a0, 62
   10a88: e9 f3        	bnez	a5, 0x10a4a <__multf3+0x4a8>
   10a8a: 0a 05        	slli	a0, a0, 2
   10a8c: 13 07 10 02  	li	a4, 33
   10a90: e3 91 0f fc  	bnez	t6, 0x10a52 <__multf3+0x4b0>
   10a94: e3 02 09 fc  	beqz	s2, 0x10a58 <__multf3+0x4b6>
   10a98: 11 e0        	bnez	s0, 0x10a9c <__multf3+0x4fa>
   10a9a: 21 07        	addi	a4, a4, 8
   10a9c: 93 36 1e 00  	seqz	a3, t3
   10aa0: 91 e0        	bnez	s1, 0x10aa4 <__multf3+0x502>
   10aa2: 11 07        	addi	a4, a4, 4
   10aa4: 9a 06        	slli	a3, a3, 6
   10aa6: 7d 95        	srai	a0, a0, 63
   10aa8: 91 e3        	bnez	a5, 0x10aac <__multf3+0x50a>
   10aaa: 09 07        	addi	a4, a4, 2
   10aac: 3a 95        	add	a0, a0, a4
   10aae: 55 8d        	or	a0, a0, a3
   10ab0: 93 06 15 ff  	addi	a3, a0, -15
   10ab4: 93 97 06 02  	slli	a5, a3, 32
   10ab8: 81 93        	srli	a5, a5, 32
   10aba: 13 87 07 fc  	addi	a4, a5, -64
   10abe: 63 45 07 00  	bltz	a4, 0x10ac8 <__multf3+0x526>
   10ac2: 33 1e f6 00  	sll	t3, a2, a5
   10ac6: 19 a8        	j	0x10adc <__multf3+0x53a>
   10ac8: b3 14 de 00  	sll	s1, t3, a3
   10acc: 93 c7 f7 ff  	not	a5, a5
   10ad0: 13 54 16 00  	srli	s0, a2, 1
   10ad4: b3 57 f4 00  	srl	a5, s0, a5
   10ad8: 33 ee f4 00  	or	t3, s1, a5
   10adc: 33 16 d6 00  	sll	a2, a2, a3
   10ae0: 7d 97        	srai	a4, a4, 63
   10ae2: 3b 0f af 40  	subw	t5, t5, a0
   10ae6: 79 8e        	and	a2, a2, a4
   10ae8: 41 0f        	addi	t5, t5, 16
   10aea: 29 be        	j	0x10604 <__multf3+0x62>

0000000000010aec <atexit>:
   10aec: 03 b6 81 87  	ld	a2, -1928(gp)
   10af0: 63 0b 06 00  	beqz	a2, 0x10b06 <atexit+0x1a>
   10af4: 14 46        	lw	a3, 8(a2)
   10af6: 7d 47        	li	a4, 31
   10af8: 93 05 f0 ff  	li	a1, -1
   10afc: 63 5f d7 00  	bge	a4, a3, 0x10b1a <atexit+0x2e>
   10b00: 13 85 05 00  	mv	a0, a1
   10b04: 82 80        	ret
   10b06: 13 86 01 d5  	addi	a2, gp, -688
   10b0a: 23 bc c1 86  	sd	a2, -1928(gp)
   10b0e: 14 46        	lw	a3, 8(a2)
   10b10: 7d 47        	li	a4, 31
   10b12: 93 05 f0 ff  	li	a1, -1
   10b16: e3 45 d7 fe  	blt	a4, a3, 0x10b00 <atexit+0x14>
   10b1a: 81 45        	li	a1, 0
   10b1c: 13 87 16 00  	addi	a4, a3, 1
   10b20: 18 c6        	sw	a4, 8(a2)
   10b22: 8e 06        	slli	a3, a3, 3
   10b24: 36 96        	add	a2, a2, a3
   10b26: 08 ea        	sd	a0, 16(a2)
   10b28: 2e 85        	mv	a0, a1
   10b2a: 82 80        	ret

0000000000010b2c <register_fini>:
   10b2c: 17 25 00 00  	auipc	a0, 2
   10b30: 03 35 45 4e  	ld	a0, 1252(a0)
   10b34: 63 04 05 02  	beqz	a0, 0x10b5c <register_fini+0x30>
   10b38: 03 b5 81 87  	ld	a0, -1928(gp)
   10b3c: 63 01 05 02  	beqz	a0, 0x10b5e <register_fini+0x32>
   10b40: 0c 45        	lw	a1, 8(a0)
   10b42: 7d 46        	li	a2, 31
   10b44: 63 4c b6 00  	blt	a2, a1, 0x10b5c <register_fini+0x30>
   10b48: 13 96 35 00  	slli	a2, a1, 3
   10b4c: 85 05        	addi	a1, a1, 1
   10b4e: 0c c5        	sw	a1, 8(a0)
   10b50: 97 05 00 00  	auipc	a1, 0
   10b54: 32 95        	add	a0, a0, a2
   10b56: 93 85 c5 3e  	addi	a1, a1, 1004
   10b5a: 0c e9        	sd	a1, 16(a0)
   10b5c: 82 80        	ret
   10b5e: 13 85 01 d5  	addi	a0, gp, -688
   10b62: 23 bc a1 86  	sd	a0, -1928(gp)
   10b66: 0c 45        	lw	a1, 8(a0)
   10b68: 7d 46        	li	a2, 31
   10b6a: e3 5f b6 fc  	bge	a2, a1, 0x10b48 <register_fini+0x1c>
   10b6e: fd b7        	j	0x10b5c <register_fini+0x30>

0000000000010b70 <_free_r>:
   10b70: 63 04 05 28  	beqz	a0, 0x10df8 <_free_r+0x288>
   10b74: 83 35 85 ff  	ld	a1, -8(a0)
   10b78: 17 36 00 00  	auipc	a2, 3
   10b7c: 93 02 86 48  	addi	t0, a2, 1160
   10b80: 93 f8 e5 ff  	andi	a7, a1, -2
   10b84: 33 06 15 01  	add	a2, a0, a7
   10b88: 83 37 86 ff  	ld	a5, -8(a2)
   10b8c: 83 b6 02 01  	ld	a3, 16(t0)
   10b90: 13 08 05 ff  	addi	a6, a0, -16
   10b94: 13 07 06 ff  	addi	a4, a2, -16
   10b98: f1 9b        	andi	a5, a5, -4
   10b9a: 85 89        	andi	a1, a1, 1
   10b9c: 63 0c d7 04  	beq	a4, a3, 0x10bf4 <_free_r+0x84>
   10ba0: 1c e7        	sd	a5, 8(a4)
   10ba2: 3e 96        	add	a2, a2, a5
   10ba4: 63 92 05 02  	bnez	a1, 0x10bc8 <_free_r+0x58>
   10ba8: 83 35 05 ff  	ld	a1, -16(a0)
   10bac: 33 08 b5 40  	sub	a6, a0, a1
   10bb0: 03 35 08 00  	ld	a0, 0(a6)
   10bb4: ae 98        	add	a7, a7, a1
   10bb6: 93 85 02 01  	addi	a1, t0, 16
   10bba: 41 18        	addi	a6, a6, -16
   10bbc: 63 08 b5 12  	beq	a0, a1, 0x10cec <_free_r+0x17c>
   10bc0: 83 35 88 01  	ld	a1, 24(a6)
   10bc4: 0c ed        	sd	a1, 24(a0)
   10bc6: 88 e9        	sd	a0, 16(a1)
   10bc8: 03 45 86 ff  	lbu	a0, -8(a2)
   10bcc: 05 89        	andi	a0, a0, 1
   10bce: 63 16 05 10  	bnez	a0, 0x10cda <_free_r+0x16a>
   10bd2: 10 6b        	ld	a2, 16(a4)
   10bd4: be 98        	add	a7, a7, a5
   10bd6: 93 85 02 01  	addi	a1, t0, 16
   10bda: 13 05 10 00  	li	a0, 1
   10bde: 63 1d b6 10  	bne	a2, a1, 0x10cf8 <_free_r+0x188>
   10be2: 23 b4 02 03  	sd	a6, 40(t0)
   10be6: 23 b0 02 03  	sd	a6, 32(t0)
   10bea: 23 3c b8 00  	sd	a1, 24(a6)
   10bee: 23 38 b8 00  	sd	a1, 16(a6)
   10bf2: 25 aa        	j	0x10d2a <_free_r+0x1ba>
   10bf4: b3 86 17 01  	add	a3, a5, a7
   10bf8: 63 9c 05 00  	bnez	a1, 0x10c10 <_free_r+0xa0>
   10bfc: 83 35 05 ff  	ld	a1, -16(a0)
   10c00: 0d 8d        	sub	a0, a0, a1
   10c02: 10 65        	ld	a2, 8(a0)
   10c04: 18 61        	ld	a4, 0(a0)
   10c06: ae 96        	add	a3, a3, a1
   10c08: 13 08 05 ff  	addi	a6, a0, -16
   10c0c: 10 ef        	sd	a2, 24(a4)
   10c0e: 18 ea        	sd	a4, 16(a2)
   10c10: 13 e5 16 00  	ori	a0, a3, 1
   10c14: 23 34 a8 00  	sd	a0, 8(a6)
   10c18: 13 d5 16 01  	srli	a0, a3, 17
   10c1c: 23 b8 02 01  	sd	a6, 16(t0)
   10c20: 63 0c 05 1c  	beqz	a0, 0x10df8 <_free_r+0x288>
   10c24: f1 9a        	andi	a3, a3, -4
   10c26: 7d 77        	lui	a4, 1048575
   10c28: 13 85 f6 7f  	addi	a0, a3, 2047
   10c2c: 93 07 05 7e  	addi	a5, a0, 2016
   10c30: f9 8f        	and	a5, a5, a4
   10c32: 3e 97        	add	a4, a4, a5
   10c34: 37 18 00 00  	lui	a6, 1
   10c38: 63 40 07 1d  	blt	a4, a6, 0x10df8 <_free_r+0x288>
   10c3c: 83 b5 81 89  	ld	a1, -1896(gp)
   10c40: 63 9e 05 00  	bnez	a1, 0x10c5c <_free_r+0xec>
   10c44: 93 08 60 0d  	li	a7, 214
   10c48: 7d 56        	li	a2, -1
   10c4a: 01 45        	li	a0, 0
   10c4c: 73 00 00 00  	ecall	
   10c50: 63 00 c5 02  	beq	a0, a2, 0x10c70 <_free_r+0x100>
   10c54: 93 05 05 00  	mv	a1, a0
   10c58: 23 bc b1 88  	sd	a1, -1896(gp)
   10c5c: 2e 85        	mv	a0, a1
   10c5e: 93 08 60 0d  	li	a7, 214
   10c62: 73 00 00 00  	ecall	
   10c66: 7d 56        	li	a2, -1
   10c68: 63 14 b5 00  	bne	a0, a1, 0x10c70 <_free_r+0x100>
   10c6c: 03 b6 81 89  	ld	a2, -1896(gp)
   10c70: 03 b5 02 01  	ld	a0, 16(t0)
   10c74: 33 05 d5 00  	add	a0, a0, a3
   10c78: 63 10 a6 18  	bne	a2, a0, 0x10df8 <_free_r+0x288>
   10c7c: 03 b5 81 89  	ld	a0, -1896(gp)
   10c80: 63 1c 05 00  	bnez	a0, 0x10c98 <_free_r+0x128>
   10c84: 93 08 60 0d  	li	a7, 214
   10c88: 93 05 f0 ff  	li	a1, -1
   10c8c: 73 00 00 00  	ecall	
   10c90: 63 08 b5 10  	beq	a0, a1, 0x10da0 <_free_r+0x230>
   10c94: 23 bc a1 88  	sd	a0, -1896(gp)
   10c98: 33 06 f8 40  	sub	a2, a6, a5
   10c9c: b3 05 c5 00  	add	a1, a0, a2
   10ca0: 93 08 60 0d  	li	a7, 214
   10ca4: 13 85 05 00  	mv	a0, a1
   10ca8: 73 00 00 00  	ecall	
   10cac: 63 1a b5 0e  	bne	a0, a1, 0x10da0 <_free_r+0x230>
   10cb0: 03 b5 81 89  	ld	a0, -1896(gp)
   10cb4: b3 05 c5 00  	add	a1, a0, a2
   10cb8: 13 06 f0 ff  	li	a2, -1
   10cbc: 23 bc b1 88  	sd	a1, -1896(gp)
   10cc0: 63 02 c5 0e  	beq	a0, a2, 0x10da4 <_free_r+0x234>
   10cc4: 03 b5 02 01  	ld	a0, 16(t0)
   10cc8: 83 a5 01 89  	lw	a1, -1904(gp)
   10ccc: 99 8e        	sub	a3, a3, a4
   10cce: 85 06        	addi	a3, a3, 1
   10cd0: 14 e5        	sd	a3, 8(a0)
   10cd2: 99 9d        	subw	a1, a1, a4
   10cd4: 23 a8 b1 88  	sw	a1, -1904(gp)
   10cd8: 82 80        	ret
   10cda: 13 e5 18 00  	ori	a0, a7, 1
   10cde: 23 34 a8 00  	sd	a0, 8(a6)
   10ce2: 33 05 18 01  	add	a0, a6, a7
   10ce6: 23 30 15 01  	sd	a7, 0(a0)
   10cea: 1d a0        	j	0x10d10 <_free_r+0x1a0>
   10cec: 03 45 86 ff  	lbu	a0, -8(a2)
   10cf0: 05 89        	andi	a0, a0, 1
   10cf2: 05 ed        	bnez	a0, 0x10d2a <_free_r+0x1ba>
   10cf4: 10 6b        	ld	a2, 16(a4)
   10cf6: be 98        	add	a7, a7, a5
   10cf8: 0c 6f        	ld	a1, 24(a4)
   10cfa: 0c ee        	sd	a1, 24(a2)
   10cfc: 90 e9        	sd	a2, 16(a1)
   10cfe: 93 e5 18 00  	ori	a1, a7, 1
   10d02: 33 06 18 01  	add	a2, a6, a7
   10d06: 23 34 b8 00  	sd	a1, 8(a6)
   10d0a: 23 30 16 01  	sd	a7, 0(a2)
   10d0e: 6d c5        	beqz	a0, 0x10df8 <_free_r+0x288>
   10d10: 13 d5 98 00  	srli	a0, a7, 9
   10d14: 63 04 05 02  	beqz	a0, 0x10d3c <_free_r+0x1cc>
   10d18: 93 05 40 00  	li	a1, 4
   10d1c: 63 e9 a5 04  	bltu	a1, a0, 0x10d6e <_free_r+0x1fe>
   10d20: 13 d5 68 00  	srli	a0, a7, 6
   10d24: 93 07 85 03  	addi	a5, a0, 56
   10d28: e5 a0        	j	0x10e10 <_free_r+0x2a0>
   10d2a: 13 e5 18 00  	ori	a0, a7, 1
   10d2e: 23 34 a8 00  	sd	a0, 8(a6)
   10d32: 33 08 18 01  	add	a6, a6, a7
   10d36: 23 30 18 01  	sd	a7, 0(a6)
   10d3a: 82 80        	ret
   10d3c: 13 d5 58 00  	srli	a0, a7, 5
   10d40: 85 45        	li	a1, 1
   10d42: 03 b6 82 00  	ld	a2, 8(t0)
   10d46: 86 08        	slli	a7, a7, 1
   10d48: 33 95 a5 00  	sll	a0, a1, a0
   10d4c: 93 f5 08 3f  	andi	a1, a7, 1008
   10d50: 96 95        	add	a1, a1, t0
   10d52: 94 69        	ld	a3, 16(a1)
   10d54: 33 65 a6 00  	or	a0, a2, a0
   10d58: 23 3c b8 00  	sd	a1, 24(a6)
   10d5c: 23 b4 a2 00  	sd	a0, 8(t0)
   10d60: 23 38 d8 00  	sd	a3, 16(a6)
   10d64: 23 b8 05 01  	sd	a6, 16(a1)
   10d68: 23 bc 06 01  	sd	a6, 24(a3)
   10d6c: 82 80        	ret
   10d6e: 93 05 40 01  	li	a1, 20
   10d72: 63 e5 a5 00  	bltu	a1, a0, 0x10d7c <_free_r+0x20c>
   10d76: 93 07 b5 05  	addi	a5, a0, 91
   10d7a: 59 a8        	j	0x10e10 <_free_r+0x2a0>
   10d7c: 93 05 40 05  	li	a1, 84
   10d80: 63 e7 a5 00  	bltu	a1, a0, 0x10d8e <_free_r+0x21e>
   10d84: 13 d5 c8 00  	srli	a0, a7, 12
   10d88: 93 07 e5 06  	addi	a5, a0, 110
   10d8c: 51 a0        	j	0x10e10 <_free_r+0x2a0>
   10d8e: 93 05 40 15  	li	a1, 340
   10d92: 63 e4 a5 06  	bltu	a1, a0, 0x10dfa <_free_r+0x28a>
   10d96: 13 d5 f8 00  	srli	a0, a7, 15
   10d9a: 93 07 75 07  	addi	a5, a0, 119
   10d9e: 8d a8        	j	0x10e10 <_free_r+0x2a0>
   10da0: 83 b5 81 89  	ld	a1, -1896(gp)
   10da4: 63 9e 05 00  	bnez	a1, 0x10dc0 <_free_r+0x250>
   10da8: 93 08 60 0d  	li	a7, 214
   10dac: 7d 56        	li	a2, -1
   10dae: 01 45        	li	a0, 0
   10db0: 73 00 00 00  	ecall	
   10db4: 63 02 c5 02  	beq	a0, a2, 0x10dd8 <_free_r+0x268>
   10db8: 93 05 05 00  	mv	a1, a0
   10dbc: 23 bc b1 88  	sd	a1, -1896(gp)
   10dc0: 2e 85        	mv	a0, a1
   10dc2: 93 08 60 0d  	li	a7, 214
   10dc6: 73 00 00 00  	ecall	
   10dca: 03 b6 81 89  	ld	a2, -1896(gp)
   10dce: 2d 8d        	xor	a0, a0, a1
   10dd0: 13 35 15 00  	seqz	a0, a0
   10dd4: 7d 15        	addi	a0, a0, -1
   10dd6: 49 8e        	or	a2, a2, a0
   10dd8: 03 b5 02 01  	ld	a0, 16(t0)
   10ddc: b3 05 a6 40  	sub	a1, a2, a0
   10de0: 93 06 00 02  	li	a3, 32
   10de4: 63 ca d5 00  	blt	a1, a3, 0x10df8 <_free_r+0x288>
   10de8: 83 b6 01 86  	ld	a3, -1952(gp)
   10dec: 15 9e        	subw	a2, a2, a3
   10dee: 93 e5 15 00  	ori	a1, a1, 1
   10df2: 23 a8 c1 88  	sw	a2, -1904(gp)
   10df6: 0c e5        	sd	a1, 8(a0)
   10df8: 82 80        	ret
   10dfa: 93 05 50 55  	li	a1, 1365
   10dfe: 63 65 b5 00  	bltu	a0, a1, 0x10e08 <_free_r+0x298>
   10e02: 93 07 e0 07  	li	a5, 126
   10e06: 29 a0        	j	0x10e10 <_free_r+0x2a0>
   10e08: 13 d5 28 01  	srli	a0, a7, 18
   10e0c: 93 07 c5 07  	addi	a5, a0, 124
   10e10: 1b 95 17 00  	slliw	a0, a5, 1
   10e14: 0e 05        	slli	a0, a0, 3
   10e16: 33 87 a2 00  	add	a4, t0, a0
   10e1a: 08 6b        	ld	a0, 16(a4)
   10e1c: 63 07 e5 08  	beq	a0, a4, 0x10eaa <_free_r+0x33a>
   10e20: 0c 65        	ld	a1, 8(a0)
   10e22: f1 99        	andi	a1, a1, -4
   10e24: 63 f0 b8 08  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e28: 03 35 05 01  	ld	a0, 16(a0)
   10e2c: 63 0a e5 06  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e30: 0c 65        	ld	a1, 8(a0)
   10e32: f1 99        	andi	a1, a1, -4
   10e34: 63 f8 b8 06  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e38: 03 35 05 01  	ld	a0, 16(a0)
   10e3c: 63 02 e5 06  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e40: 0c 65        	ld	a1, 8(a0)
   10e42: f1 99        	andi	a1, a1, -4
   10e44: 63 f0 b8 06  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e48: 03 35 05 01  	ld	a0, 16(a0)
   10e4c: 63 0a e5 04  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e50: 0c 65        	ld	a1, 8(a0)
   10e52: f1 99        	andi	a1, a1, -4
   10e54: 63 f8 b8 04  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e58: 03 35 05 01  	ld	a0, 16(a0)
   10e5c: 63 02 e5 04  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e60: 0c 65        	ld	a1, 8(a0)
   10e62: f1 99        	andi	a1, a1, -4
   10e64: 63 f0 b8 04  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e68: 03 35 05 01  	ld	a0, 16(a0)
   10e6c: 63 0a e5 02  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e70: 0c 65        	ld	a1, 8(a0)
   10e72: f1 99        	andi	a1, a1, -4
   10e74: 63 f8 b8 02  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e78: 03 35 05 01  	ld	a0, 16(a0)
   10e7c: 63 02 e5 02  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e80: 0c 65        	ld	a1, 8(a0)
   10e82: f1 99        	andi	a1, a1, -4
   10e84: 63 f0 b8 02  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e88: 03 35 05 01  	ld	a0, 16(a0)
   10e8c: 63 0a e5 00  	beq	a0, a4, 0x10ea0 <_free_r+0x330>
   10e90: 0c 65        	ld	a1, 8(a0)
   10e92: f1 99        	andi	a1, a1, -4
   10e94: 63 f8 b8 00  	bgeu	a7, a1, 0x10ea4 <_free_r+0x334>
   10e98: 03 35 05 01  	ld	a0, 16(a0)
   10e9c: e3 12 e5 f8  	bne	a0, a4, 0x10e20 <_free_r+0x2b0>
   10ea0: 13 05 07 00  	mv	a0, a4
   10ea4: 03 37 85 01  	ld	a4, 24(a0)
   10ea8: 0d a0        	j	0x10eca <_free_r+0x35a>
   10eaa: 1b d5 f7 41  	sraiw	a0, a5, 31
   10eae: 83 b5 82 00  	ld	a1, 8(t0)
   10eb2: 1b 55 e5 01  	srliw	a0, a0, 30
   10eb6: 3e 95        	add	a0, a0, a5
   10eb8: 1b 55 25 40  	sraiw	a0, a0, 2
   10ebc: 05 46        	li	a2, 1
   10ebe: 33 15 a6 00  	sll	a0, a2, a0
   10ec2: 4d 8d        	or	a0, a0, a1
   10ec4: 23 b4 a2 00  	sd	a0, 8(t0)
   10ec8: 3a 85        	mv	a0, a4
   10eca: 23 3c e8 00  	sd	a4, 24(a6)
   10ece: 23 38 a8 00  	sd	a0, 16(a6)
   10ed2: 23 38 07 01  	sd	a6, 16(a4)
   10ed6: 23 3c 05 01  	sd	a6, 24(a0)
   10eda: 82 80        	ret

0000000000010edc <__libc_init_array>:
   10edc: 01 11        	addi	sp, sp, -32
   10ede: 06 ec        	sd	ra, 24(sp)
   10ee0: 22 e8        	sd	s0, 16(sp)
   10ee2: 26 e4        	sd	s1, 8(sp)
   10ee4: 17 25 00 00  	auipc	a0, 2
   10ee8: 97 25 00 00  	auipc	a1, 2
   10eec: 03 34 45 13  	ld	s0, 308(a0)
   10ef0: 03 b5 85 13  	ld	a0, 312(a1)
   10ef4: 01 8d        	sub	a0, a0, s0
   10ef6: 11 c9        	beqz	a0, 0x10f0a <__libc_init_array+0x2e>
   10ef8: 0d 85        	srai	a0, a0, 3
   10efa: 93 34 15 00  	seqz	s1, a0
   10efe: aa 94        	add	s1, s1, a0
   10f00: 08 60        	ld	a0, 0(s0)
   10f02: 02 95        	jalr	a0
   10f04: fd 14        	addi	s1, s1, -1
   10f06: 21 04        	addi	s0, s0, 8
   10f08: e5 fc        	bnez	s1, 0x10f00 <__libc_init_array+0x24>
   10f0a: 17 25 00 00  	auipc	a0, 2
   10f0e: 97 25 00 00  	auipc	a1, 2
   10f12: 03 34 e5 11  	ld	s0, 286(a0)
   10f16: 03 b5 25 12  	ld	a0, 290(a1)
   10f1a: 01 8d        	sub	a0, a0, s0
   10f1c: 11 c9        	beqz	a0, 0x10f30 <__libc_init_array+0x54>
   10f1e: 0d 85        	srai	a0, a0, 3
   10f20: 93 34 15 00  	seqz	s1, a0
   10f24: aa 94        	add	s1, s1, a0
   10f26: 08 60        	ld	a0, 0(s0)
   10f28: 02 95        	jalr	a0
   10f2a: fd 14        	addi	s1, s1, -1
   10f2c: 21 04        	addi	s0, s0, 8
   10f2e: e5 fc        	bnez	s1, 0x10f26 <__libc_init_array+0x4a>
   10f30: e2 60        	ld	ra, 24(sp)
   10f32: 42 64        	ld	s0, 16(sp)
   10f34: a2 64        	ld	s1, 8(sp)
   10f36: 05 61        	addi	sp, sp, 32
   10f38: 82 80        	ret
   10f3a: 00 00        	unimp	

0000000000010f3c <__libc_fini_array>:
   10f3c: 01 11        	addi	sp, sp, -32
   10f3e: 06 ec        	sd	ra, 24(sp)
   10f40: 22 e8        	sd	s0, 16(sp)
   10f42: 26 e4        	sd	s1, 8(sp)
   10f44: 17 25 00 00  	auipc	a0, 2
   10f48: 97 25 00 00  	auipc	a1, 2
   10f4c: 03 35 45 0f  	ld	a0, 244(a0)
   10f50: 83 b4 85 0f  	ld	s1, 248(a1)
   10f54: 33 84 a4 40  	sub	s0, s1, a0
   10f58: 63 09 04 00  	beqz	s0, 0x10f6a <__libc_fini_array+0x2e>
   10f5c: 0d 84        	srai	s0, s0, 3
   10f5e: e1 14        	addi	s1, s1, -8
   10f60: 88 60        	ld	a0, 0(s1)
   10f62: 7d 14        	addi	s0, s0, -1
   10f64: 02 95        	jalr	a0
   10f66: e1 14        	addi	s1, s1, -8
   10f68: 65 fc        	bnez	s0, 0x10f60 <__libc_fini_array+0x24>
   10f6a: e2 60        	ld	ra, 24(sp)
   10f6c: 42 64        	ld	s0, 16(sp)
   10f6e: a2 64        	ld	s1, 8(sp)
   10f70: 05 61        	addi	sp, sp, 32
   10f72: 82 80        	ret

0000000000010f74 <_exit>:
   10f74: 93 08 d0 05  	li	a7, 93
   10f78: 73 00 00 00  	ecall	
   10f7c: 01 a0        	j	0x10f7c <_exit+0x8>
   10f7e: 00 00        	unimp	

0000000000010f80 <copysignf>:
   10f80: 53 05 b5 20  	fsgnj.s	fa0, fa0, fa1
   10f84: 82 80        	ret
   10f86: 00 00        	unimp	

0000000000010f88 <copysign>:
   10f88: 53 05 b5 22  	fsgnj.d	fa0, fa0, fa1
   10f8c: 82 80        	ret
   10f8e: 00 00        	unimp	

0000000000010f90 <ldexpf>:
   10f90: d3 07 00 f0  	fmv.w.x	fa5, zero
   10f94: 53 26 f5 a0  	feq.s	a2, fa0, fa5
   10f98: d3 15 05 e0  	fclass.s	a1, fa0
   10f9c: 63 1a 06 08  	bnez	a2, 0x11030 <ldexpf+0xa0>
   10fa0: 93 f5 15 38  	andi	a1, a1, 897
   10fa4: 63 96 05 08  	bnez	a1, 0x11030 <ldexpf+0xa0>
   10fa8: d3 05 05 e0  	fmv.x.w	a1, fa0
   10fac: 93 96 15 02  	slli	a3, a1, 33
   10fb0: 13 d7 16 02  	srli	a4, a3, 33
   10fb4: 63 0c 07 06  	beqz	a4, 0x1102c <ldexpf+0x9c>
   10fb8: 13 57 77 01  	srli	a4, a4, 23
   10fbc: 13 06 f0 0f  	li	a2, 255
   10fc0: 63 74 c7 02  	bgeu	a4, a2, 0x10fe8 <ldexpf+0x58>
   10fc4: 63 15 07 02  	bnez	a4, 0x10fee <ldexpf+0x5e>
   10fc8: b7 05 00 4c  	lui	a1, 311296
   10fcc: d3 87 05 f0  	fmv.w.x	fa5, a1
   10fd0: d1 75        	lui	a1, 1048564
   10fd2: 9b 85 f5 ca  	addiw	a1, a1, -849
   10fd6: 53 75 f5 10  	fmul.s	fa0, fa0, fa5
   10fda: 63 c3 a5 02  	blt	a1, a0, 0x11000 <ldexpf+0x70>
   10fde: 87 a7 01 80  	flw	fa5, -2048(gp)
   10fe2: 53 75 f5 10  	fmul.s	fa0, fa0, fa5
   10fe6: 99 a0        	j	0x1102c <ldexpf+0x9c>
   10fe8: 53 75 a5 00  	fadd.s	fa0, fa0, fa0
   10fec: 81 a0        	j	0x1102c <ldexpf+0x9c>
   10fee: e1 92        	srli	a3, a3, 56
   10ff0: 31 67        	lui	a4, 12
   10ff2: 1b 07 17 35  	addiw	a4, a4, 849
   10ff6: 63 41 e5 02  	blt	a0, a4, 0x11018 <ldexpf+0x88>
   10ffa: 87 a7 41 80  	flw	fa5, -2044(gp)
   10ffe: 1d a0        	j	0x11024 <ldexpf+0x94>
   11000: d3 05 05 e0  	fmv.x.w	a1, fa0
   11004: 93 96 15 02  	slli	a3, a1, 33
   11008: e1 92        	srli	a3, a3, 56
   1100a: 9d 16        	addi	a3, a3, -25
   1100c: 37 c7 00 00  	lui	a4, 12
   11010: 1b 07 17 35  	addiw	a4, a4, 849
   11014: e3 53 e5 fe  	bge	a0, a4, 0x10ffa <ldexpf+0x6a>
   11018: 3b 85 a6 00  	addw	a0, a3, a0
   1101c: 63 4b c5 00  	blt	a0, a2, 0x11032 <ldexpf+0xa2>
   11020: 87 a7 41 80  	flw	fa5, -2044(gp)
   11024: 53 87 a7 20  	fsgnj.s	fa4, fa5, fa0
   11028: 53 75 f7 10  	fmul.s	fa0, fa4, fa5
   1102c: 53 15 05 e0  	fclass.s	a0, fa0
   11030: 82 80        	ret
   11032: 63 5c a0 00  	blez	a0, 0x1104a <ldexpf+0xba>
   11036: 37 06 80 80  	lui	a2, 526336
   1103a: 7d 16        	addi	a2, a2, -1
   1103c: f1 8d        	and	a1, a1, a2
   1103e: 5e 05        	slli	a0, a0, 23
   11040: 33 65 b5 00  	or	a0, a0, a1
   11044: 53 05 05 f0  	fmv.w.x	fa0, a0
   11048: d5 b7        	j	0x1102c <ldexpf+0x9c>
   1104a: 13 06 90 fe  	li	a2, -23
   1104e: 63 45 a6 00  	blt	a2, a0, 0x11058 <ldexpf+0xc8>
   11052: 87 a7 01 80  	flw	fa5, -2048(gp)
   11056: f9 b7        	j	0x11024 <ldexpf+0x94>
   11058: 5e 05        	slli	a0, a0, 23
   1105a: 37 06 80 0c  	lui	a2, 51200
   1105e: 32 95        	add	a0, a0, a2
   11060: 37 06 80 80  	lui	a2, 526336
   11064: 7d 16        	addi	a2, a2, -1
   11066: f1 8d        	and	a1, a1, a2
   11068: 37 06 00 33  	lui	a2, 208896
   1106c: 4d 8d        	or	a0, a0, a1
   1106e: d3 07 05 f0  	fmv.w.x	fa5, a0
   11072: 53 07 06 f0  	fmv.w.x	fa4, a2
   11076: 53 f5 e7 10  	fmul.s	fa0, fa5, fa4
   1107a: 4d bf        	j	0x1102c <ldexpf+0x9c>

000000000001107c <ldexp>:
   1107c: d3 07 00 f2  	fmv.d.x	fa5, zero
   11080: 53 26 f5 a2  	feq.d	a2, fa0, fa5
   11084: d3 15 05 e2  	fclass.d	a1, fa0
   11088: 63 19 06 08  	bnez	a2, 0x1111a <ldexp+0x9e>
   1108c: 93 f5 15 38  	andi	a1, a1, 897
   11090: 63 95 05 08  	bnez	a1, 0x1111a <ldexp+0x9e>
   11094: 53 07 05 e2  	fmv.x.d	a4, fa0
   11098: 93 16 17 00  	slli	a3, a4, 1
   1109c: 93 d6 56 03  	srli	a3, a3, 53
   110a0: 13 06 f0 7f  	li	a2, 2047
   110a4: 63 8b c6 02  	beq	a3, a2, 0x110da <ldexp+0x5e>
   110a8: 93 55 07 02  	srli	a1, a4, 32
   110ac: 63 92 06 04  	bnez	a3, 0x110f0 <ldexp+0x74>
   110b0: 86 15        	slli	a1, a1, 33
   110b2: 85 91        	srli	a1, a1, 33
   110b4: d9 8d        	or	a1, a1, a4
   110b6: 81 25        	sext.w	a1, a1
   110b8: 63 8f 05 04  	beqz	a1, 0x11116 <ldexp+0x9a>
   110bc: 87 b7 81 80  	fld	fa5, -2040(gp)
   110c0: b7 45 ff ff  	lui	a1, 1048564
   110c4: 9b 85 f5 ca  	addiw	a1, a1, -849
   110c8: 53 75 f5 12  	fmul.d	fa0, fa0, fa5
   110cc: 63 ca a5 00  	blt	a1, a0, 0x110e0 <ldexp+0x64>
   110d0: 87 b7 01 81  	fld	fa5, -2032(gp)
   110d4: 53 75 f5 12  	fmul.d	fa0, fa0, fa5
   110d8: 3d a8        	j	0x11116 <ldexp+0x9a>
   110da: 53 75 a5 02  	fadd.d	fa0, fa0, fa0
   110de: 25 a8        	j	0x11116 <ldexp+0x9a>
   110e0: d3 06 05 e2  	fmv.x.d	a3, fa0
   110e4: 93 d5 06 02  	srli	a1, a3, 32
   110e8: 86 06        	slli	a3, a3, 1
   110ea: d5 92        	srli	a3, a3, 53
   110ec: 93 86 a6 fc  	addi	a3, a3, -54
   110f0: 37 c7 00 00  	lui	a4, 12
   110f4: 1b 07 17 35  	addiw	a4, a4, 849
   110f8: 63 45 e5 00  	blt	a0, a4, 0x11102 <ldexp+0x86>
   110fc: 87 b7 01 82  	fld	fa5, -2016(gp)
   11100: 39 a0        	j	0x1110e <ldexp+0x92>
   11102: 3b 85 a6 00  	addw	a0, a3, a0
   11106: 63 4b c5 00  	blt	a0, a2, 0x1111c <ldexp+0xa0>
   1110a: 87 b7 01 82  	fld	fa5, -2016(gp)
   1110e: 53 87 a7 22  	fsgnj.d	fa4, fa5, fa0
   11112: 53 75 f7 12  	fmul.d	fa0, fa4, fa5
   11116: 53 15 05 e2  	fclass.d	a0, fa0
   1111a: 82 80        	ret
   1111c: 63 52 a0 02  	blez	a0, 0x11140 <ldexp+0xc4>
   11120: 37 06 10 80  	lui	a2, 524544
   11124: 7d 16        	addi	a2, a2, -1
   11126: f1 8d        	and	a1, a1, a2
   11128: 53 06 05 e2  	fmv.x.d	a2, fa0
   1112c: 52 15        	slli	a0, a0, 52
   1112e: 02 16        	slli	a2, a2, 32
   11130: 82 15        	slli	a1, a1, 32
   11132: 01 92        	srli	a2, a2, 32
   11134: d1 8d        	or	a1, a1, a2
   11136: 33 65 b5 00  	or	a0, a0, a1
   1113a: 53 05 05 f2  	fmv.d.x	fa0, a0
   1113e: e1 bf        	j	0x11116 <ldexp+0x9a>
   11140: 13 06 a0 fc  	li	a2, -54
   11144: 63 45 a6 00  	blt	a2, a0, 0x1114e <ldexp+0xd2>
   11148: 87 b7 01 81  	fld	fa5, -2032(gp)
   1114c: c9 b7        	j	0x1110e <ldexp+0x92>
   1114e: 52 05        	slli	a0, a0, 20
   11150: 37 06 60 03  	lui	a2, 13824
   11154: 32 95        	add	a0, a0, a2
   11156: 87 b7 81 81  	fld	fa5, -2024(gp)
   1115a: 37 06 10 80  	lui	a2, 524544
   1115e: 7d 16        	addi	a2, a2, -1
   11160: f1 8d        	and	a1, a1, a2
   11162: 53 06 05 e2  	fmv.x.d	a2, fa0
   11166: 02 16        	slli	a2, a2, 32
   11168: 4d 8d        	or	a0, a0, a1
   1116a: 02 15        	slli	a0, a0, 32
   1116c: 01 92        	srli	a2, a2, 32
   1116e: 51 8d        	or	a0, a0, a2
   11170: 53 07 05 f2  	fmv.d.x	fa4, a0
   11174: 79 bf        	j	0x11112 <ldexp+0x96>
   11176: 00 00        	unimp	

0000000000011178 <frexpf>:
   11178: 53 06 05 e0  	fmv.x.w	a2, fa0
   1117c: b7 05 80 80  	lui	a1, 526336
   11180: 06 16        	slli	a2, a2, 33
   11182: 93 56 16 02  	srli	a3, a2, 33
   11186: 3b 86 b6 00  	addw	a2, a3, a1
   1118a: 1b 87 15 00  	addiw	a4, a1, 1
   1118e: 23 20 05 00  	sw	zero, 0(a0)
   11192: 63 65 e6 04  	bltu	a2, a4, 0x111dc <frexpf+0x64>
   11196: 13 d7 76 01  	srli	a4, a3, 23
   1119a: 33 36 e0 00  	snez	a2, a4
   1119e: 7d 16        	addi	a2, a2, -1
   111a0: 1d 9a        	andi	a2, a2, -25
   111a2: 63 1e 07 00  	bnez	a4, 0x111be <frexpf+0x46>
   111a6: b7 06 00 4c  	lui	a3, 311296
   111aa: d3 87 06 f0  	fmv.w.x	fa5, a3
   111ae: 53 75 f5 10  	fmul.s	fa0, fa0, fa5
   111b2: d3 06 05 e0  	fmv.x.w	a3, fa0
   111b6: 37 07 80 7f  	lui	a4, 522240
   111ba: b3 f6 e6 00  	and	a3, a3, a4
   111be: 53 07 05 e0  	fmv.x.w	a4, fa0
   111c2: dd 82        	srli	a3, a3, 23
   111c4: fd 15        	addi	a1, a1, -1
   111c6: 36 96        	add	a2, a2, a3
   111c8: b7 06 00 3f  	lui	a3, 258048
   111cc: f9 8d        	and	a1, a1, a4
   111ce: 13 06 26 f8  	addi	a2, a2, -126
   111d2: d5 8d        	or	a1, a1, a3
   111d4: 23 20 c5 00  	sw	a2, 0(a0)
   111d8: 53 85 05 f0  	fmv.w.x	fa0, a1
   111dc: 82 80        	ret
   111de: 00 00        	unimp	

00000000000111e0 <frexp>:
   111e0: 37 07 00 80  	lui	a4, 524288
   111e4: 53 06 05 e2  	fmv.x.d	a2, fa0
   111e8: 7d 37        	addiw	a4, a4, -1
   111ea: 93 58 06 02  	srli	a7, a2, 32
   111ee: b3 f6 e8 00  	and	a3, a7, a4
   111f2: 93 d7 46 01  	srli	a5, a3, 20
   111f6: 13 08 e0 7f  	li	a6, 2046
   111fa: 23 20 05 00  	sw	zero, 0(a0)
   111fe: 63 6c f8 04  	bltu	a6, a5, 0x11256 <frexp+0x76>
   11202: b3 e5 c6 00  	or	a1, a3, a2
   11206: 81 25        	sext.w	a1, a1
   11208: b9 c5        	beqz	a1, 0x11256 <frexp+0x76>
   1120a: 63 9f 07 00  	bnez	a5, 0x11228 <frexp+0x48>
   1120e: 87 b7 81 82  	fld	fa5, -2008(gp)
   11212: d3 77 f5 12  	fmul.d	fa5, fa0, fa5
   11216: 53 86 07 e2  	fmv.x.d	a2, fa5
   1121a: 93 58 06 02  	srli	a7, a2, 32
   1121e: b3 f6 e8 00  	and	a3, a7, a4
   11222: 13 07 a0 fc  	li	a4, -54
   11226: 19 a0        	j	0x1122c <frexp+0x4c>
   11228: 13 07 00 00  	li	a4, 0
   1122c: d1 82        	srli	a3, a3, 20
   1122e: 82 18        	slli	a7, a7, 32
   11230: ba 96        	add	a3, a3, a4
   11232: b7 05 10 80  	lui	a1, 524544
   11236: 02 16        	slli	a2, a2, 32
   11238: 93 86 26 c0  	addi	a3, a3, -1022
   1123c: 14 c1        	sw	a3, 0(a0)
   1123e: 13 05 f0 1f  	li	a0, 511
   11242: fd 15        	addi	a1, a1, -1
   11244: 01 92        	srli	a2, a2, 32
   11246: 56 15        	slli	a0, a0, 53
   11248: 82 15        	slli	a1, a1, 32
   1124a: b3 f5 b8 00  	and	a1, a7, a1
   1124e: 51 8d        	or	a0, a0, a2
   11250: 4d 8d        	or	a0, a0, a1
   11252: 53 05 05 f2  	fmv.d.x	fa0, a0
   11256: 82 80        	ret

0000000000011258 <frexpl>:
   11258: 79 71        	addi	sp, sp, -48
   1125a: 06 f4        	sd	ra, 40(sp)
   1125c: 22 f0        	sd	s0, 32(sp)
   1125e: 26 ec        	sd	s1, 24(sp)
   11260: 4a e8        	sd	s2, 16(sp)
   11262: 4e e4        	sd	s3, 8(sp)
   11264: 32 89        	mv	s2, a2
   11266: ae 84        	mv	s1, a1
   11268: aa 89        	mv	s3, a0
   1126a: 23 20 06 00  	sw	zero, 0(a2)
   1126e: 01 46        	li	a2, 0
   11270: 81 46        	li	a3, 0
   11272: ef f0 0f 9e  	jal	0x10452 <__netf2>
   11276: 2d c1        	beqz	a0, 0x112d8 <frexpl+0x80>
   11278: 21 64        	lui	s0, 8
   1127a: 13 95 14 00  	slli	a0, s1, 1
   1127e: 7d 34        	addiw	s0, s0, -1
   11280: 13 55 15 03  	srli	a0, a0, 49
   11284: 63 0a 85 04  	beq	a0, s0, 0x112d8 <frexpl+0x80>
   11288: 63 05 05 00  	beqz	a0, 0x11292 <frexpl+0x3a>
   1128c: 93 05 00 00  	li	a1, 0
   11290: 05 a0        	j	0x112b0 <frexpl+0x58>
   11292: b7 16 07 04  	lui	a3, 16497
   11296: 92 16        	slli	a3, a3, 36
   11298: 4e 85        	mv	a0, s3
   1129a: a6 85        	mv	a1, s1
   1129c: 01 46        	li	a2, 0
   1129e: ef f0 4f b0  	jal	0x105a2 <__multf3>
   112a2: aa 89        	mv	s3, a0
   112a4: ae 84        	mv	s1, a1
   112a6: 13 d5 05 03  	srli	a0, a1, 48
   112aa: 61 8d        	and	a0, a0, s0
   112ac: 93 05 e0 f8  	li	a1, -114
   112b0: 71 76        	lui	a2, 1048572
   112b2: 93 d6 04 02  	srli	a3, s1, 32
   112b6: 09 06        	addi	a2, a2, 2
   112b8: b2 95        	add	a1, a1, a2
   112ba: 37 06 01 80  	lui	a2, 524304
   112be: 7d 16        	addi	a2, a2, -1
   112c0: 75 8e        	and	a2, a2, a3
   112c2: 2e 95        	add	a0, a0, a1
   112c4: b7 05 fe 3f  	lui	a1, 262112
   112c8: 82 14        	slli	s1, s1, 32
   112ca: d1 8d        	or	a1, a1, a2
   112cc: 23 20 a9 00  	sw	a0, 0(s2)
   112d0: 82 15        	slli	a1, a1, 32
   112d2: 81 90        	srli	s1, s1, 32
   112d4: b3 e4 95 00  	or	s1, a1, s1
   112d8: 4e 85        	mv	a0, s3
   112da: a6 85        	mv	a1, s1
   112dc: a2 70        	ld	ra, 40(sp)
   112de: 02 74        	ld	s0, 32(sp)
   112e0: e2 64        	ld	s1, 24(sp)
   112e2: 42 69        	ld	s2, 16(sp)
   112e4: a2 69        	ld	s3, 8(sp)
   112e6: 45 61        	addi	sp, sp, 48
   112e8: 82 80        	ret
   112ea: 00 00        	unimp	

00000000000112ec <memcpy>:
   112ec: 41 11        	addi	sp, sp, -16
   112ee: 22 e4        	sd	s0, 8(sp)
   112f0: 26 e0        	sd	s1, 0(sp)
   112f2: a1 46        	li	a3, 8
   112f4: 33 08 c5 00  	add	a6, a0, a2
   112f8: 63 69 d6 0e  	bltu	a2, a3, 0x113ea <memcpy+0xfe>
   112fc: 13 f6 75 00  	andi	a2, a1, 7
   11300: 93 76 75 00  	andi	a3, a0, 7
   11304: 63 93 c6 0e  	bne	a3, a2, 0x113ea <memcpy+0xfe>
   11308: 63 18 06 10  	bnez	a2, 0x11418 <memcpy+0x12c>
   1130c: 13 06 05 00  	mv	a2, a0
   11310: 93 73 88 ff  	andi	t2, a6, -8
   11314: b3 86 c3 40  	sub	a3, t2, a2
   11318: 13 07 10 04  	li	a4, 65
   1131c: 63 dd e6 18  	bge	a3, a4, 0x114b6 <memcpy+0x1ca>
   11320: ae 88        	mv	a7, a1
   11322: 32 83        	mv	t1, a2
   11324: 63 7f 73 06  	bgeu	t1, t2, 0x113a2 <memcpy+0xb6>
   11328: 01 47        	li	a4, 0
   1132a: c6 82        	mv	t0, a7
   1132c: b3 85 e8 00  	add	a1, a7, a4
   11330: 94 61        	ld	a3, 0(a1)
   11332: 33 06 e3 00  	add	a2, t1, a4
   11336: 93 07 86 00  	addi	a5, a2, 8
   1133a: 14 e2        	sd	a3, 0(a2)
   1133c: 63 fc 77 06  	bgeu	a5, t2, 0x113b4 <memcpy+0xc8>
   11340: 84 65        	ld	s1, 8(a1)
   11342: 93 06 06 01  	addi	a3, a2, 16
   11346: 84 e3        	sd	s1, 0(a5)
   11348: 63 f9 76 06  	bgeu	a3, t2, 0x113ba <memcpy+0xce>
   1134c: 84 69        	ld	s1, 16(a1)
   1134e: 93 07 86 01  	addi	a5, a2, 24
   11352: 84 e2        	sd	s1, 0(a3)
   11354: 63 f8 77 06  	bgeu	a5, t2, 0x113c4 <memcpy+0xd8>
   11358: 84 6d        	ld	s1, 24(a1)
   1135a: 93 06 06 02  	addi	a3, a2, 32
   1135e: 84 e3        	sd	s1, 0(a5)
   11360: 63 f5 76 06  	bgeu	a3, t2, 0x113ca <memcpy+0xde>
   11364: 84 71        	ld	s1, 32(a1)
   11366: 93 07 86 02  	addi	a5, a2, 40
   1136a: 84 e2        	sd	s1, 0(a3)
   1136c: 63 f4 77 06  	bgeu	a5, t2, 0x113d4 <memcpy+0xe8>
   11370: 84 75        	ld	s1, 40(a1)
   11372: 93 06 06 03  	addi	a3, a2, 48
   11376: 84 e3        	sd	s1, 0(a5)
   11378: 63 f1 76 06  	bgeu	a3, t2, 0x113da <memcpy+0xee>
   1137c: 84 79        	ld	s1, 48(a1)
   1137e: 93 07 86 03  	addi	a5, a2, 56
   11382: 84 e2        	sd	s1, 0(a3)
   11384: 63 f0 77 06  	bgeu	a5, t2, 0x113e4 <memcpy+0xf8>
   11388: 8c 7d        	ld	a1, 56(a1)
   1138a: 13 07 07 04  	addi	a4, a4, 64
   1138e: 8c e3        	sd	a1, 0(a5)
   11390: b3 07 e3 00  	add	a5, t1, a4
   11394: 93 82 02 04  	addi	t0, t0, 64
   11398: e3 ea 77 f8  	bltu	a5, t2, 0x1132c <memcpy+0x40>
   1139c: b3 85 e8 00  	add	a1, a7, a4
   113a0: 19 a0        	j	0x113a6 <memcpy+0xba>
   113a2: c6 85        	mv	a1, a7
   113a4: 9a 87        	mv	a5, t1
   113a6: 63 e4 07 05  	bltu	a5, a6, 0x113ee <memcpy+0x102>
   113aa: 22 64        	ld	s0, 8(sp)
   113ac: 82 64        	ld	s1, 0(sp)
   113ae: 13 01 01 01  	addi	sp, sp, 16
   113b2: 82 80        	ret
   113b4: 93 85 82 00  	addi	a1, t0, 8
   113b8: fd b7        	j	0x113a6 <memcpy+0xba>
   113ba: 93 85 02 01  	addi	a1, t0, 16
   113be: 93 87 06 00  	mv	a5, a3
   113c2: d5 b7        	j	0x113a6 <memcpy+0xba>
   113c4: 93 85 82 01  	addi	a1, t0, 24
   113c8: f9 bf        	j	0x113a6 <memcpy+0xba>
   113ca: 93 85 02 02  	addi	a1, t0, 32
   113ce: 93 87 06 00  	mv	a5, a3
   113d2: d1 bf        	j	0x113a6 <memcpy+0xba>
   113d4: 93 85 82 02  	addi	a1, t0, 40
   113d8: f9 b7        	j	0x113a6 <memcpy+0xba>
   113da: 93 85 02 03  	addi	a1, t0, 48
   113de: 93 87 06 00  	mv	a5, a3
   113e2: d1 b7        	j	0x113a6 <memcpy+0xba>
   113e4: 93 85 82 03  	addi	a1, t0, 56
   113e8: 7d bf        	j	0x113a6 <memcpy+0xba>
   113ea: 93 07 05 00  	mv	a5, a0
   113ee: e3 fe 07 fb  	bgeu	a5, a6, 0x113aa <memcpy+0xbe>
   113f2: b3 08 f8 40  	sub	a7, a6, a5
   113f6: 13 f6 78 00  	andi	a2, a7, 7
   113fa: 63 07 06 10  	beqz	a2, 0x11508 <memcpy+0x21c>
   113fe: 83 c6 05 00  	lbu	a3, 0(a1)
   11402: 13 07 10 00  	li	a4, 1
   11406: 23 80 d7 00  	sb	a3, 0(a5)
   1140a: 63 12 e6 10  	bne	a2, a4, 0x1150e <memcpy+0x222>
   1140e: 93 85 15 00  	addi	a1, a1, 1
   11412: 13 86 17 00  	addi	a2, a5, 1
   11416: 55 aa        	j	0x115ca <memcpy+0x2de>
   11418: 83 c6 05 00  	lbu	a3, 0(a1)
   1141c: 13 06 15 00  	addi	a2, a0, 1
   11420: 13 77 76 00  	andi	a4, a2, 7
   11424: 23 00 d5 00  	sb	a3, 0(a0)
   11428: 63 00 07 10  	beqz	a4, 0x11528 <memcpy+0x23c>
   1142c: 83 c6 15 00  	lbu	a3, 1(a1)
   11430: 13 06 25 00  	addi	a2, a0, 2
   11434: 13 77 76 00  	andi	a4, a2, 7
   11438: a3 00 d5 00  	sb	a3, 1(a0)
   1143c: 63 06 07 10  	beqz	a4, 0x11548 <memcpy+0x25c>
   11440: 83 c6 25 00  	lbu	a3, 2(a1)
   11444: 13 06 35 00  	addi	a2, a0, 3
   11448: 13 77 76 00  	andi	a4, a2, 7
   1144c: 23 01 d5 00  	sb	a3, 2(a0)
   11450: 63 0c 07 10  	beqz	a4, 0x11568 <memcpy+0x27c>
   11454: 83 c6 35 00  	lbu	a3, 3(a1)
   11458: 13 06 45 00  	addi	a2, a0, 4
   1145c: 13 77 76 00  	andi	a4, a2, 7
   11460: a3 01 d5 00  	sb	a3, 3(a0)
   11464: 63 05 07 10  	beqz	a4, 0x1156e <memcpy+0x282>
   11468: 83 c6 45 00  	lbu	a3, 4(a1)
   1146c: 13 06 55 00  	addi	a2, a0, 5
   11470: 13 77 76 00  	andi	a4, a2, 7
   11474: 23 02 d5 00  	sb	a3, 4(a0)
   11478: 63 0b 07 10  	beqz	a4, 0x1158e <memcpy+0x2a2>
   1147c: 83 c6 55 00  	lbu	a3, 5(a1)
   11480: 13 06 65 00  	addi	a2, a0, 6
   11484: 13 77 76 00  	andi	a4, a2, 7
   11488: a3 02 d5 00  	sb	a3, 5(a0)
   1148c: 63 01 07 12  	beqz	a4, 0x115ae <memcpy+0x2c2>
   11490: 83 c6 65 00  	lbu	a3, 6(a1)
   11494: 13 06 75 00  	addi	a2, a0, 7
   11498: 13 77 76 00  	andi	a4, a2, 7
   1149c: 23 03 d5 00  	sb	a3, 6(a0)
   114a0: 63 0a 07 10  	beqz	a4, 0x115b4 <memcpy+0x2c8>
   114a4: 83 c6 75 00  	lbu	a3, 7(a1)
   114a8: 13 06 85 00  	addi	a2, a0, 8
   114ac: 93 85 85 00  	addi	a1, a1, 8
   114b0: a3 03 d5 00  	sb	a3, 7(a0)
   114b4: b1 bd        	j	0x11310 <memcpy+0x24>
   114b6: b3 87 c3 40  	sub	a5, t2, a2
   114ba: 93 02 00 04  	li	t0, 64
   114be: 94 61        	ld	a3, 0(a1)
   114c0: 98 65        	ld	a4, 8(a1)
   114c2: 03 be 05 01  	ld	t3, 16(a1)
   114c6: 83 be 85 01  	ld	t4, 24(a1)
   114ca: 03 bf 05 02  	ld	t5, 32(a1)
   114ce: 83 bf 85 02  	ld	t6, 40(a1)
   114d2: 80 79        	ld	s0, 48(a1)
   114d4: 84 7d        	ld	s1, 56(a1)
   114d6: 93 88 85 04  	addi	a7, a1, 72
   114da: ac 61        	ld	a1, 64(a1)
   114dc: 14 e2        	sd	a3, 0(a2)
   114de: 13 03 86 04  	addi	t1, a2, 72
   114e2: 93 87 87 fb  	addi	a5, a5, -72
   114e6: 18 e6        	sd	a4, 8(a2)
   114e8: 23 38 c6 01  	sd	t3, 16(a2)
   114ec: 23 3c d6 01  	sd	t4, 24(a2)
   114f0: 23 30 e6 03  	sd	t5, 32(a2)
   114f4: 23 34 f6 03  	sd	t6, 40(a2)
   114f8: 00 fa        	sd	s0, 48(a2)
   114fa: 04 fe        	sd	s1, 56(a2)
   114fc: 2c e2        	sd	a1, 64(a2)
   114fe: 1a 86        	mv	a2, t1
   11500: c6 85        	mv	a1, a7
   11502: e3 ce f2 fa  	blt	t0, a5, 0x114be <memcpy+0x1d2>
   11506: 39 bd        	j	0x11324 <memcpy+0x38>
   11508: 13 86 07 00  	mv	a2, a5
   1150c: 7d a8        	j	0x115ca <memcpy+0x2de>
   1150e: 83 c6 15 00  	lbu	a3, 1(a1)
   11512: 13 07 20 00  	li	a4, 2
   11516: a3 80 d7 00  	sb	a3, 1(a5)
   1151a: 63 1a e6 00  	bne	a2, a4, 0x1152e <memcpy+0x242>
   1151e: 93 85 25 00  	addi	a1, a1, 2
   11522: 13 86 27 00  	addi	a2, a5, 2
   11526: 55 a0        	j	0x115ca <memcpy+0x2de>
   11528: 93 85 15 00  	addi	a1, a1, 1
   1152c: d5 b3        	j	0x11310 <memcpy+0x24>
   1152e: 83 c6 25 00  	lbu	a3, 2(a1)
   11532: 13 07 30 00  	li	a4, 3
   11536: 23 81 d7 00  	sb	a3, 2(a5)
   1153a: 63 1a e6 00  	bne	a2, a4, 0x1154e <memcpy+0x262>
   1153e: 93 85 35 00  	addi	a1, a1, 3
   11542: 13 86 37 00  	addi	a2, a5, 3
   11546: 51 a0        	j	0x115ca <memcpy+0x2de>
   11548: 93 85 25 00  	addi	a1, a1, 2
   1154c: d1 b3        	j	0x11310 <memcpy+0x24>
   1154e: 83 c6 35 00  	lbu	a3, 3(a1)
   11552: 13 07 40 00  	li	a4, 4
   11556: a3 81 d7 00  	sb	a3, 3(a5)
   1155a: 63 1d e6 00  	bne	a2, a4, 0x11574 <memcpy+0x288>
   1155e: 93 85 45 00  	addi	a1, a1, 4
   11562: 13 86 47 00  	addi	a2, a5, 4
   11566: 95 a0        	j	0x115ca <memcpy+0x2de>
   11568: 93 85 35 00  	addi	a1, a1, 3
   1156c: 55 b3        	j	0x11310 <memcpy+0x24>
   1156e: 93 85 45 00  	addi	a1, a1, 4
   11572: 79 bb        	j	0x11310 <memcpy+0x24>
   11574: 83 c6 45 00  	lbu	a3, 4(a1)
   11578: 13 07 50 00  	li	a4, 5
   1157c: 23 82 d7 00  	sb	a3, 4(a5)
   11580: 63 1a e6 00  	bne	a2, a4, 0x11594 <memcpy+0x2a8>
   11584: 93 85 55 00  	addi	a1, a1, 5
   11588: 13 86 57 00  	addi	a2, a5, 5
   1158c: 3d a8        	j	0x115ca <memcpy+0x2de>
   1158e: 93 85 55 00  	addi	a1, a1, 5
   11592: bd bb        	j	0x11310 <memcpy+0x24>
   11594: 83 c6 55 00  	lbu	a3, 5(a1)
   11598: 13 07 60 00  	li	a4, 6
   1159c: a3 82 d7 00  	sb	a3, 5(a5)
   115a0: 63 1d e6 00  	bne	a2, a4, 0x115ba <memcpy+0x2ce>
   115a4: 93 85 65 00  	addi	a1, a1, 6
   115a8: 13 86 67 00  	addi	a2, a5, 6
   115ac: 39 a8        	j	0x115ca <memcpy+0x2de>
   115ae: 93 85 65 00  	addi	a1, a1, 6
   115b2: b9 bb        	j	0x11310 <memcpy+0x24>
   115b4: 93 85 75 00  	addi	a1, a1, 7
   115b8: a1 bb        	j	0x11310 <memcpy+0x24>
   115ba: 03 c6 65 00  	lbu	a2, 6(a1)
   115be: 93 85 75 00  	addi	a1, a1, 7
   115c2: 23 83 c7 00  	sb	a2, 6(a5)
   115c6: 13 86 77 00  	addi	a2, a5, 7
   115ca: b3 86 07 41  	sub	a3, a5, a6
   115ce: 13 07 80 ff  	li	a4, -8
   115d2: e3 6c d7 dc  	bltu	a4, a3, 0x113aa <memcpy+0xbe>
   115d6: b3 88 17 01  	add	a7, a5, a7
   115da: 03 c7 05 00  	lbu	a4, 0(a1)
   115de: 83 c7 15 00  	lbu	a5, 1(a1)
   115e2: 83 c6 25 00  	lbu	a3, 2(a1)
   115e6: 03 c8 35 00  	lbu	a6, 3(a1)
   115ea: 23 00 e6 00  	sb	a4, 0(a2)
   115ee: 83 c2 45 00  	lbu	t0, 4(a1)
   115f2: a3 00 f6 00  	sb	a5, 1(a2)
   115f6: 83 c7 55 00  	lbu	a5, 5(a1)
   115fa: 23 01 d6 00  	sb	a3, 2(a2)
   115fe: 83 c6 65 00  	lbu	a3, 6(a1)
   11602: a3 01 06 01  	sb	a6, 3(a2)
   11606: 03 c7 75 00  	lbu	a4, 7(a1)
   1160a: 23 02 56 00  	sb	t0, 4(a2)
   1160e: a3 02 f6 00  	sb	a5, 5(a2)
   11612: 23 03 d6 00  	sb	a3, 6(a2)
   11616: a3 03 e6 00  	sb	a4, 7(a2)
   1161a: 21 06        	addi	a2, a2, 8
   1161c: a1 05        	addi	a1, a1, 8
   1161e: e3 1e 16 fb  	bne	a2, a7, 0x115da <memcpy+0x2ee>
   11622: 61 b3        	j	0x113aa <memcpy+0xbe>

0000000000011624 <memmove>:
   11624: 63 fd a5 02  	bgeu	a1, a0, 0x1165e <memmove+0x3a>
   11628: b3 86 c5 00  	add	a3, a1, a2
   1162c: 63 79 d5 02  	bgeu	a0, a3, 0x1165e <memmove+0x3a>
   11630: 63 0e 06 34  	beqz	a2, 0x1198c <memmove+0x368>
   11634: b3 05 c5 00  	add	a1, a0, a2
   11638: 93 77 76 00  	andi	a5, a2, 7
   1163c: 13 08 f6 ff  	addi	a6, a2, -1
   11640: 63 8c 07 2e  	beqz	a5, 0x11938 <memmove+0x314>
   11644: 03 c7 f6 ff  	lbu	a4, -1(a3)
   11648: 93 08 10 00  	li	a7, 1
   1164c: a3 8f e5 fe  	sb	a4, -1(a1)
   11650: 63 9a 17 0d  	bne	a5, a7, 0x11724 <memmove+0x100>
   11654: fd 16        	addi	a3, a3, -1
   11656: fd 15        	addi	a1, a1, -1
   11658: 13 06 08 00  	mv	a2, a6
   1165c: f1 ac        	j	0x11938 <memmove+0x314>
   1165e: 93 06 00 02  	li	a3, 32
   11662: 63 7d d6 00  	bgeu	a2, a3, 0x1167c <memmove+0x58>
   11666: 93 07 05 00  	mv	a5, a0
   1166a: 63 01 06 32  	beqz	a2, 0x1198c <memmove+0x368>
   1166e: 13 77 76 00  	andi	a4, a2, 7
   11672: 13 08 f6 ff  	addi	a6, a2, -1
   11676: 63 1e 07 00  	bnez	a4, 0x11692 <memmove+0x6e>
   1167a: 21 ac        	j	0x11892 <memmove+0x26e>
   1167c: b3 e6 a5 00  	or	a3, a1, a0
   11680: 9d 8a        	andi	a3, a3, 7
   11682: b1 c2        	beqz	a3, 0x116c6 <memmove+0xa2>
   11684: aa 87        	mv	a5, a0
   11686: 13 77 76 00  	andi	a4, a2, 7
   1168a: 13 08 f6 ff  	addi	a6, a2, -1
   1168e: 63 02 07 20  	beqz	a4, 0x11892 <memmove+0x26e>
   11692: 83 c6 05 00  	lbu	a3, 0(a1)
   11696: 93 08 10 00  	li	a7, 1
   1169a: 23 80 d7 00  	sb	a3, 0(a5)
   1169e: 63 17 17 01  	bne	a4, a7, 0x116ac <memmove+0x88>
   116a2: 85 05        	addi	a1, a1, 1
   116a4: 85 07        	addi	a5, a5, 1
   116a6: 13 06 08 00  	mv	a2, a6
   116aa: e5 a2        	j	0x11892 <memmove+0x26e>
   116ac: 83 c6 15 00  	lbu	a3, 1(a1)
   116b0: 93 08 20 00  	li	a7, 2
   116b4: a3 80 d7 00  	sb	a3, 1(a5)
   116b8: 63 12 17 05  	bne	a4, a7, 0x116fc <memmove+0xd8>
   116bc: 79 16        	addi	a2, a2, -2
   116be: 89 05        	addi	a1, a1, 2
   116c0: 93 87 27 00  	addi	a5, a5, 2
   116c4: f9 a2        	j	0x11892 <memmove+0x26e>
   116c6: 93 08 06 fe  	addi	a7, a2, -32
   116ca: 93 d6 58 00  	srli	a3, a7, 5
   116ce: 85 06        	addi	a3, a3, 1
   116d0: 9d 8a        	andi	a3, a3, 7
   116d2: 63 82 06 04  	beqz	a3, 0x11716 <memmove+0xf2>
   116d6: 98 61        	ld	a4, 0(a1)
   116d8: 18 e1        	sd	a4, 0(a0)
   116da: 98 65        	ld	a4, 8(a1)
   116dc: 18 e5        	sd	a4, 8(a0)
   116de: 98 69        	ld	a4, 16(a1)
   116e0: 18 e9        	sd	a4, 16(a0)
   116e2: 98 6d        	ld	a4, 24(a1)
   116e4: 85 47        	li	a5, 1
   116e6: 23 3c e5 00  	sd	a4, 24(a0)
   116ea: 63 9a f6 04  	bne	a3, a5, 0x1173e <memmove+0x11a>
   116ee: 93 85 05 02  	addi	a1, a1, 32
   116f2: 13 07 05 02  	addi	a4, a0, 32
   116f6: 46 86        	mv	a2, a7
   116f8: 2e 88        	mv	a6, a1
   116fa: 55 ac        	j	0x119ae <memmove+0x38a>
   116fc: 83 c6 25 00  	lbu	a3, 2(a1)
   11700: 93 08 30 00  	li	a7, 3
   11704: 23 81 d7 00  	sb	a3, 2(a5)
   11708: 63 10 17 07  	bne	a4, a7, 0x11768 <memmove+0x144>
   1170c: 75 16        	addi	a2, a2, -3
   1170e: 8d 05        	addi	a1, a1, 3
   11710: 93 87 37 00  	addi	a5, a5, 3
   11714: bd aa        	j	0x11892 <memmove+0x26e>
   11716: 13 07 05 00  	mv	a4, a0
   1171a: 93 07 00 0e  	li	a5, 224
   1171e: 63 fe f8 28  	bgeu	a7, a5, 0x119ba <memmove+0x396>
   11722: 05 ae        	j	0x11a52 <memmove+0x42e>
   11724: 03 c7 e6 ff  	lbu	a4, -2(a3)
   11728: 93 08 20 00  	li	a7, 2
   1172c: 23 8f e5 fe  	sb	a4, -2(a1)
   11730: 63 99 17 05  	bne	a5, a7, 0x11782 <memmove+0x15e>
   11734: 79 16        	addi	a2, a2, -2
   11736: f9 16        	addi	a3, a3, -2
   11738: 93 85 e5 ff  	addi	a1, a1, -2
   1173c: f5 aa        	j	0x11938 <memmove+0x314>
   1173e: 98 71        	ld	a4, 32(a1)
   11740: 18 f1        	sd	a4, 32(a0)
   11742: 98 75        	ld	a4, 40(a1)
   11744: 18 f5        	sd	a4, 40(a0)
   11746: 98 79        	ld	a4, 48(a1)
   11748: 18 f9        	sd	a4, 48(a0)
   1174a: 98 7d        	ld	a4, 56(a1)
   1174c: 89 47        	li	a5, 2
   1174e: 23 3c e5 02  	sd	a4, 56(a0)
   11752: 63 95 f6 04  	bne	a3, a5, 0x1179c <memmove+0x178>
   11756: 93 85 05 04  	addi	a1, a1, 64
   1175a: 13 07 05 04  	addi	a4, a0, 64
   1175e: 13 06 06 fc  	addi	a2, a2, -64
   11762: 13 88 05 00  	mv	a6, a1
   11766: a1 a4        	j	0x119ae <memmove+0x38a>
   11768: 83 c6 35 00  	lbu	a3, 3(a1)
   1176c: 93 08 40 00  	li	a7, 4
   11770: a3 81 d7 00  	sb	a3, 3(a5)
   11774: 63 19 17 05  	bne	a4, a7, 0x117c6 <memmove+0x1a2>
   11778: 71 16        	addi	a2, a2, -4
   1177a: 91 05        	addi	a1, a1, 4
   1177c: 93 87 47 00  	addi	a5, a5, 4
   11780: 09 aa        	j	0x11892 <memmove+0x26e>
   11782: 03 c7 d6 ff  	lbu	a4, -3(a3)
   11786: 93 08 30 00  	li	a7, 3
   1178a: a3 8e e5 fe  	sb	a4, -3(a1)
   1178e: 63 99 17 05  	bne	a5, a7, 0x117e0 <memmove+0x1bc>
   11792: 75 16        	addi	a2, a2, -3
   11794: f5 16        	addi	a3, a3, -3
   11796: 93 85 d5 ff  	addi	a1, a1, -3
   1179a: 79 aa        	j	0x11938 <memmove+0x314>
   1179c: b8 61        	ld	a4, 64(a1)
   1179e: 38 e1        	sd	a4, 64(a0)
   117a0: b8 65        	ld	a4, 72(a1)
   117a2: 38 e5        	sd	a4, 72(a0)
   117a4: b8 69        	ld	a4, 80(a1)
   117a6: 38 e9        	sd	a4, 80(a0)
   117a8: b8 6d        	ld	a4, 88(a1)
   117aa: 8d 47        	li	a5, 3
   117ac: 23 3c e5 04  	sd	a4, 88(a0)
   117b0: 63 95 f6 04  	bne	a3, a5, 0x117fa <memmove+0x1d6>
   117b4: 93 85 05 06  	addi	a1, a1, 96
   117b8: 13 07 05 06  	addi	a4, a0, 96
   117bc: 13 06 06 fa  	addi	a2, a2, -96
   117c0: 13 88 05 00  	mv	a6, a1
   117c4: ed a2        	j	0x119ae <memmove+0x38a>
   117c6: 83 c6 45 00  	lbu	a3, 4(a1)
   117ca: 93 08 50 00  	li	a7, 5
   117ce: 23 82 d7 00  	sb	a3, 4(a5)
   117d2: 63 19 17 05  	bne	a4, a7, 0x11824 <memmove+0x200>
   117d6: 6d 16        	addi	a2, a2, -5
   117d8: 95 05        	addi	a1, a1, 5
   117da: 93 87 57 00  	addi	a5, a5, 5
   117de: 55 a8        	j	0x11892 <memmove+0x26e>
   117e0: 03 c7 c6 ff  	lbu	a4, -4(a3)
   117e4: 93 08 40 00  	li	a7, 4
   117e8: 23 8e e5 fe  	sb	a4, -4(a1)
   117ec: 63 99 17 05  	bne	a5, a7, 0x1183e <memmove+0x21a>
   117f0: 71 16        	addi	a2, a2, -4
   117f2: f1 16        	addi	a3, a3, -4
   117f4: 93 85 c5 ff  	addi	a1, a1, -4
   117f8: 81 a2        	j	0x11938 <memmove+0x314>
   117fa: b8 71        	ld	a4, 96(a1)
   117fc: 38 f1        	sd	a4, 96(a0)
   117fe: b8 75        	ld	a4, 104(a1)
   11800: 38 f5        	sd	a4, 104(a0)
   11802: b8 79        	ld	a4, 112(a1)
   11804: 38 f9        	sd	a4, 112(a0)
   11806: b8 7d        	ld	a4, 120(a1)
   11808: 91 47        	li	a5, 4
   1180a: 23 3c e5 06  	sd	a4, 120(a0)
   1180e: 63 95 f6 04  	bne	a3, a5, 0x11858 <memmove+0x234>
   11812: 93 85 05 08  	addi	a1, a1, 128
   11816: 13 07 05 08  	addi	a4, a0, 128
   1181a: 13 06 06 f8  	addi	a2, a2, -128
   1181e: 13 88 05 00  	mv	a6, a1
   11822: 71 a2        	j	0x119ae <memmove+0x38a>
   11824: 83 c6 55 00  	lbu	a3, 5(a1)
   11828: 93 08 60 00  	li	a7, 6
   1182c: a3 82 d7 00  	sb	a3, 5(a5)
   11830: 63 19 17 05  	bne	a4, a7, 0x11882 <memmove+0x25e>
   11834: 69 16        	addi	a2, a2, -6
   11836: 99 05        	addi	a1, a1, 6
   11838: 93 87 67 00  	addi	a5, a5, 6
   1183c: 99 a8        	j	0x11892 <memmove+0x26e>
   1183e: 03 c7 b6 ff  	lbu	a4, -5(a3)
   11842: 93 08 50 00  	li	a7, 5
   11846: a3 8d e5 fe  	sb	a4, -5(a1)
   1184a: 63 9d 17 09  	bne	a5, a7, 0x118e4 <memmove+0x2c0>
   1184e: 6d 16        	addi	a2, a2, -5
   11850: ed 16        	addi	a3, a3, -5
   11852: 93 85 b5 ff  	addi	a1, a1, -5
   11856: cd a0        	j	0x11938 <memmove+0x314>
   11858: d8 61        	ld	a4, 128(a1)
   1185a: 58 e1        	sd	a4, 128(a0)
   1185c: d8 65        	ld	a4, 136(a1)
   1185e: 58 e5        	sd	a4, 136(a0)
   11860: d8 69        	ld	a4, 144(a1)
   11862: 58 e9        	sd	a4, 144(a0)
   11864: d8 6d        	ld	a4, 152(a1)
   11866: 95 47        	li	a5, 5
   11868: 23 3c e5 08  	sd	a4, 152(a0)
   1186c: 63 99 f6 08  	bne	a3, a5, 0x118fe <memmove+0x2da>
   11870: 93 85 05 0a  	addi	a1, a1, 160
   11874: 13 07 05 0a  	addi	a4, a0, 160
   11878: 13 06 06 f6  	addi	a2, a2, -160
   1187c: 13 88 05 00  	mv	a6, a1
   11880: 3d a2        	j	0x119ae <memmove+0x38a>
   11882: 83 c6 65 00  	lbu	a3, 6(a1)
   11886: 65 16        	addi	a2, a2, -7
   11888: 9d 05        	addi	a1, a1, 7
   1188a: 23 83 d7 00  	sb	a3, 6(a5)
   1188e: 93 87 77 00  	addi	a5, a5, 7
   11892: 93 06 70 00  	li	a3, 7
   11896: 63 6b d8 0e  	bltu	a6, a3, 0x1198c <memmove+0x368>
   1189a: 83 c6 05 00  	lbu	a3, 0(a1)
   1189e: 23 80 d7 00  	sb	a3, 0(a5)
   118a2: 83 c6 15 00  	lbu	a3, 1(a1)
   118a6: a3 80 d7 00  	sb	a3, 1(a5)
   118aa: 83 c6 25 00  	lbu	a3, 2(a1)
   118ae: 23 81 d7 00  	sb	a3, 2(a5)
   118b2: 83 c6 35 00  	lbu	a3, 3(a1)
   118b6: a3 81 d7 00  	sb	a3, 3(a5)
   118ba: 83 c6 45 00  	lbu	a3, 4(a1)
   118be: 23 82 d7 00  	sb	a3, 4(a5)
   118c2: 83 c6 55 00  	lbu	a3, 5(a1)
   118c6: a3 82 d7 00  	sb	a3, 5(a5)
   118ca: 83 c6 65 00  	lbu	a3, 6(a1)
   118ce: 23 83 d7 00  	sb	a3, 6(a5)
   118d2: 83 c6 75 00  	lbu	a3, 7(a1)
   118d6: 61 16        	addi	a2, a2, -8
   118d8: a1 05        	addi	a1, a1, 8
   118da: a3 83 d7 00  	sb	a3, 7(a5)
   118de: a1 07        	addi	a5, a5, 8
   118e0: 4d fe        	bnez	a2, 0x1189a <memmove+0x276>
   118e2: 6d a0        	j	0x1198c <memmove+0x368>
   118e4: 03 c7 a6 ff  	lbu	a4, -6(a3)
   118e8: 93 08 60 00  	li	a7, 6
   118ec: 23 8d e5 fe  	sb	a4, -6(a1)
   118f0: 63 9c 17 03  	bne	a5, a7, 0x11928 <memmove+0x304>
   118f4: 69 16        	addi	a2, a2, -6
   118f6: e9 16        	addi	a3, a3, -6
   118f8: 93 85 a5 ff  	addi	a1, a1, -6
   118fc: 35 a8        	j	0x11938 <memmove+0x314>
   118fe: d8 71        	ld	a4, 160(a1)
   11900: 58 f1        	sd	a4, 160(a0)
   11902: d8 75        	ld	a4, 168(a1)
   11904: 58 f5        	sd	a4, 168(a0)
   11906: d8 79        	ld	a4, 176(a1)
   11908: 58 f9        	sd	a4, 176(a0)
   1190a: d8 7d        	ld	a4, 184(a1)
   1190c: 99 47        	li	a5, 6
   1190e: 23 3c e5 0a  	sd	a4, 184(a0)
   11912: 63 9e f6 06  	bne	a3, a5, 0x1198e <memmove+0x36a>
   11916: 93 85 05 0c  	addi	a1, a1, 192
   1191a: 13 07 05 0c  	addi	a4, a0, 192
   1191e: 13 06 06 f4  	addi	a2, a2, -192
   11922: 13 88 05 00  	mv	a6, a1
   11926: 61 a0        	j	0x119ae <memmove+0x38a>
   11928: 03 c7 96 ff  	lbu	a4, -7(a3)
   1192c: e5 16        	addi	a3, a3, -7
   1192e: a3 8c e5 fe  	sb	a4, -7(a1)
   11932: e5 15        	addi	a1, a1, -7
   11934: 13 06 96 ff  	addi	a2, a2, -7
   11938: 13 07 70 00  	li	a4, 7
   1193c: 63 68 e8 04  	bltu	a6, a4, 0x1198c <memmove+0x368>
   11940: f1 15        	addi	a1, a1, -4
   11942: f1 16        	addi	a3, a3, -4
   11944: 03 c7 36 00  	lbu	a4, 3(a3)
   11948: a3 81 e5 00  	sb	a4, 3(a1)
   1194c: 03 c7 26 00  	lbu	a4, 2(a3)
   11950: 23 81 e5 00  	sb	a4, 2(a1)
   11954: 03 c7 16 00  	lbu	a4, 1(a3)
   11958: a3 80 e5 00  	sb	a4, 1(a1)
   1195c: 03 c7 06 00  	lbu	a4, 0(a3)
   11960: 23 80 e5 00  	sb	a4, 0(a1)
   11964: 03 c7 f6 ff  	lbu	a4, -1(a3)
   11968: a3 8f e5 fe  	sb	a4, -1(a1)
   1196c: 03 c7 e6 ff  	lbu	a4, -2(a3)
   11970: 23 8f e5 fe  	sb	a4, -2(a1)
   11974: 03 c7 d6 ff  	lbu	a4, -3(a3)
   11978: a3 8e e5 fe  	sb	a4, -3(a1)
   1197c: 03 c7 c6 ff  	lbu	a4, -4(a3)
   11980: 61 16        	addi	a2, a2, -8
   11982: 23 8e e5 fe  	sb	a4, -4(a1)
   11986: e1 15        	addi	a1, a1, -8
   11988: e1 16        	addi	a3, a3, -8
   1198a: 4d fe        	bnez	a2, 0x11944 <memmove+0x320>
   1198c: 82 80        	ret
   1198e: f4 61        	ld	a3, 192(a1)
   11990: 74 e1        	sd	a3, 192(a0)
   11992: f4 65        	ld	a3, 200(a1)
   11994: 74 e5        	sd	a3, 200(a0)
   11996: f4 69        	ld	a3, 208(a1)
   11998: 74 e9        	sd	a3, 208(a0)
   1199a: f4 6d        	ld	a3, 216(a1)
   1199c: 13 88 05 0e  	addi	a6, a1, 224
   119a0: 13 07 05 0e  	addi	a4, a0, 224
   119a4: 74 ed        	sd	a3, 216(a0)
   119a6: 13 06 06 f2  	addi	a2, a2, -224
   119aa: 93 05 08 00  	mv	a1, a6
   119ae: 93 06 07 00  	mv	a3, a4
   119b2: 93 07 00 0e  	li	a5, 224
   119b6: 63 ee f8 08  	bltu	a7, a5, 0x11a52 <memmove+0x42e>
   119ba: 93 08 f0 01  	li	a7, 31
   119be: 94 61        	ld	a3, 0(a1)
   119c0: 14 e3        	sd	a3, 0(a4)
   119c2: 94 65        	ld	a3, 8(a1)
   119c4: 14 e7        	sd	a3, 8(a4)
   119c6: 94 69        	ld	a3, 16(a1)
   119c8: 14 eb        	sd	a3, 16(a4)
   119ca: 94 6d        	ld	a3, 24(a1)
   119cc: 14 ef        	sd	a3, 24(a4)
   119ce: 94 71        	ld	a3, 32(a1)
   119d0: 14 f3        	sd	a3, 32(a4)
   119d2: 94 75        	ld	a3, 40(a1)
   119d4: 14 f7        	sd	a3, 40(a4)
   119d6: 94 79        	ld	a3, 48(a1)
   119d8: 14 fb        	sd	a3, 48(a4)
   119da: 94 7d        	ld	a3, 56(a1)
   119dc: 14 ff        	sd	a3, 56(a4)
   119de: b4 61        	ld	a3, 64(a1)
   119e0: 34 e3        	sd	a3, 64(a4)
   119e2: b4 65        	ld	a3, 72(a1)
   119e4: 34 e7        	sd	a3, 72(a4)
   119e6: b4 69        	ld	a3, 80(a1)
   119e8: 34 eb        	sd	a3, 80(a4)
   119ea: b4 6d        	ld	a3, 88(a1)
   119ec: 34 ef        	sd	a3, 88(a4)
   119ee: b4 71        	ld	a3, 96(a1)
   119f0: 34 f3        	sd	a3, 96(a4)
   119f2: b4 75        	ld	a3, 104(a1)
   119f4: 34 f7        	sd	a3, 104(a4)
   119f6: b4 79        	ld	a3, 112(a1)
   119f8: 34 fb        	sd	a3, 112(a4)
   119fa: b4 7d        	ld	a3, 120(a1)
   119fc: 34 ff        	sd	a3, 120(a4)
   119fe: d4 61        	ld	a3, 128(a1)
   11a00: 54 e3        	sd	a3, 128(a4)
   11a02: d4 65        	ld	a3, 136(a1)
   11a04: 54 e7        	sd	a3, 136(a4)
   11a06: d4 69        	ld	a3, 144(a1)
   11a08: 54 eb        	sd	a3, 144(a4)
   11a0a: d4 6d        	ld	a3, 152(a1)
   11a0c: 54 ef        	sd	a3, 152(a4)
   11a0e: d4 71        	ld	a3, 160(a1)
   11a10: 54 f3        	sd	a3, 160(a4)
   11a12: d4 75        	ld	a3, 168(a1)
   11a14: 54 f7        	sd	a3, 168(a4)
   11a16: d4 79        	ld	a3, 176(a1)
   11a18: 54 fb        	sd	a3, 176(a4)
   11a1a: d4 7d        	ld	a3, 184(a1)
   11a1c: 54 ff        	sd	a3, 184(a4)
   11a1e: f4 61        	ld	a3, 192(a1)
   11a20: 74 e3        	sd	a3, 192(a4)
   11a22: f4 65        	ld	a3, 200(a1)
   11a24: 74 e7        	sd	a3, 200(a4)
   11a26: f4 69        	ld	a3, 208(a1)
   11a28: 74 eb        	sd	a3, 208(a4)
   11a2a: f4 6d        	ld	a3, 216(a1)
   11a2c: 74 ef        	sd	a3, 216(a4)
   11a2e: f4 71        	ld	a3, 224(a1)
   11a30: 74 f3        	sd	a3, 224(a4)
   11a32: f4 75        	ld	a3, 232(a1)
   11a34: 74 f7        	sd	a3, 232(a4)
   11a36: f4 79        	ld	a3, 240(a1)
   11a38: 74 fb        	sd	a3, 240(a4)
   11a3a: fc 7d        	ld	a5, 248(a1)
   11a3c: 13 88 05 10  	addi	a6, a1, 256
   11a40: 93 06 07 10  	addi	a3, a4, 256
   11a44: 13 06 06 f0  	addi	a2, a2, -256
   11a48: 7c ff        	sd	a5, 248(a4)
   11a4a: c2 85        	mv	a1, a6
   11a4c: 36 87        	mv	a4, a3
   11a4e: e3 e8 c8 f6  	bltu	a7, a2, 0x119be <memmove+0x39a>
   11a52: 93 05 80 00  	li	a1, 8
   11a56: 63 65 b6 02  	bltu	a2, a1, 0x11a80 <memmove+0x45c>
   11a5a: 93 08 86 ff  	addi	a7, a2, -8
   11a5e: 93 d5 38 00  	srli	a1, a7, 3
   11a62: 85 05        	addi	a1, a1, 1
   11a64: 9d 89        	andi	a1, a1, 7
   11a66: 63 80 05 02  	beqz	a1, 0x11a86 <memmove+0x462>
   11a6a: 83 37 08 00  	ld	a5, 0(a6)
   11a6e: 05 47        	li	a4, 1
   11a70: 9c e2        	sd	a5, 0(a3)
   11a72: 63 9f e5 00  	bne	a1, a4, 0x11a90 <memmove+0x46c>
   11a76: 21 08        	addi	a6, a6, 8
   11a78: a1 06        	addi	a3, a3, 8
   11a7a: 13 86 08 00  	mv	a2, a7
   11a7e: 69 a0        	j	0x11b08 <memmove+0x4e4>
   11a80: b6 87        	mv	a5, a3
   11a82: c2 85        	mv	a1, a6
   11a84: dd b6        	j	0x1166a <memmove+0x46>
   11a86: 13 07 80 03  	li	a4, 56
   11a8a: e3 e0 e8 be  	bltu	a7, a4, 0x1166a <memmove+0x46>
   11a8e: 59 a0        	j	0x11b14 <memmove+0x4f0>
   11a90: 03 37 88 00  	ld	a4, 8(a6)
   11a94: 89 47        	li	a5, 2
   11a96: 98 e6        	sd	a4, 8(a3)
   11a98: 63 97 f5 00  	bne	a1, a5, 0x11aa6 <memmove+0x482>
   11a9c: 41 08        	addi	a6, a6, 16
   11a9e: c1 06        	addi	a3, a3, 16
   11aa0: 13 06 06 ff  	addi	a2, a2, -16
   11aa4: 95 a0        	j	0x11b08 <memmove+0x4e4>
   11aa6: 03 37 08 01  	ld	a4, 16(a6)
   11aaa: 8d 47        	li	a5, 3
   11aac: 98 ea        	sd	a4, 16(a3)
   11aae: 63 97 f5 00  	bne	a1, a5, 0x11abc <memmove+0x498>
   11ab2: 61 08        	addi	a6, a6, 24
   11ab4: e1 06        	addi	a3, a3, 24
   11ab6: 13 06 86 fe  	addi	a2, a2, -24
   11aba: b9 a0        	j	0x11b08 <memmove+0x4e4>
   11abc: 03 37 88 01  	ld	a4, 24(a6)
   11ac0: 91 47        	li	a5, 4
   11ac2: 98 ee        	sd	a4, 24(a3)
   11ac4: 63 99 f5 00  	bne	a1, a5, 0x11ad6 <memmove+0x4b2>
   11ac8: 13 08 08 02  	addi	a6, a6, 32
   11acc: 93 86 06 02  	addi	a3, a3, 32
   11ad0: 13 06 06 fe  	addi	a2, a2, -32
   11ad4: 15 a8        	j	0x11b08 <memmove+0x4e4>
   11ad6: 03 37 08 02  	ld	a4, 32(a6)
   11ada: 95 47        	li	a5, 5
   11adc: 98 f2        	sd	a4, 32(a3)
   11ade: 63 99 f5 00  	bne	a1, a5, 0x11af0 <memmove+0x4cc>
   11ae2: 13 08 88 02  	addi	a6, a6, 40
   11ae6: 93 86 86 02  	addi	a3, a3, 40
   11aea: 13 06 86 fd  	addi	a2, a2, -40
   11aee: 29 a8        	j	0x11b08 <memmove+0x4e4>
   11af0: 03 37 88 02  	ld	a4, 40(a6)
   11af4: 99 47        	li	a5, 6
   11af6: 98 f6        	sd	a4, 40(a3)
   11af8: 63 93 f5 06  	bne	a1, a5, 0x11b5e <memmove+0x53a>
   11afc: 13 08 08 03  	addi	a6, a6, 48
   11b00: 93 86 06 03  	addi	a3, a3, 48
   11b04: 13 06 06 fd  	addi	a2, a2, -48
   11b08: c2 85        	mv	a1, a6
   11b0a: b6 87        	mv	a5, a3
   11b0c: 13 07 80 03  	li	a4, 56
   11b10: e3 ed e8 b4  	bltu	a7, a4, 0x1166a <memmove+0x46>
   11b14: 93 08 70 00  	li	a7, 7
   11b18: 83 35 08 00  	ld	a1, 0(a6)
   11b1c: 8c e2        	sd	a1, 0(a3)
   11b1e: 83 35 88 00  	ld	a1, 8(a6)
   11b22: 8c e6        	sd	a1, 8(a3)
   11b24: 83 35 08 01  	ld	a1, 16(a6)
   11b28: 8c ea        	sd	a1, 16(a3)
   11b2a: 83 35 88 01  	ld	a1, 24(a6)
   11b2e: 8c ee        	sd	a1, 24(a3)
   11b30: 83 35 08 02  	ld	a1, 32(a6)
   11b34: 8c f2        	sd	a1, 32(a3)
   11b36: 83 35 88 02  	ld	a1, 40(a6)
   11b3a: 8c f6        	sd	a1, 40(a3)
   11b3c: 83 35 08 03  	ld	a1, 48(a6)
   11b40: 8c fa        	sd	a1, 48(a3)
   11b42: 03 37 88 03  	ld	a4, 56(a6)
   11b46: 93 05 08 04  	addi	a1, a6, 64
   11b4a: 93 87 06 04  	addi	a5, a3, 64
   11b4e: 13 06 06 fc  	addi	a2, a2, -64
   11b52: 98 fe        	sd	a4, 56(a3)
   11b54: 2e 88        	mv	a6, a1
   11b56: be 86        	mv	a3, a5
   11b58: e3 e0 c8 fc  	bltu	a7, a2, 0x11b18 <memmove+0x4f4>
   11b5c: 39 b6        	j	0x1166a <memmove+0x46>
   11b5e: 03 37 08 03  	ld	a4, 48(a6)
   11b62: 93 05 88 03  	addi	a1, a6, 56
   11b66: 93 87 86 03  	addi	a5, a3, 56
   11b6a: 98 fa        	sd	a4, 48(a3)
   11b6c: 13 06 86 fc  	addi	a2, a2, -56
   11b70: 2e 88        	mv	a6, a1
   11b72: be 86        	mv	a3, a5
   11b74: 13 07 80 03  	li	a4, 56
   11b78: e3 e9 e8 ae  	bltu	a7, a4, 0x1166a <memmove+0x46>
   11b7c: 61 bf        	j	0x11b14 <memmove+0x4f0>
   11b7e: 00 00        	unimp	

0000000000011b80 <calloc>:
   11b80: 33 36 b5 02  	mulhu	a2, a0, a1
   11b84: 63 05 06 00  	beqz	a2, 0x11b8e <calloc+0xe>
   11b88: 13 05 00 00  	li	a0, 0
   11b8c: 82 80        	ret
   11b8e: 01 11        	addi	sp, sp, -32
   11b90: 06 ec        	sd	ra, 24(sp)
   11b92: 22 e8        	sd	s0, 16(sp)
   11b94: 26 e4        	sd	s1, 8(sp)
   11b96: 23 30 21 01  	sd	s2, 0(sp)
   11b9a: b3 05 b5 02  	mul	a1, a0, a1
   11b9e: 93 84 75 01  	addi	s1, a1, 23
   11ba2: 13 05 f0 02  	li	a0, 47
   11ba6: 63 f9 a4 00  	bgeu	s1, a0, 0x11bb8 <calloc+0x38>
   11baa: 93 04 00 02  	li	s1, 32
   11bae: 13 d6 f4 01  	srli	a2, s1, 31
   11bb2: 13 05 00 00  	li	a0, 0
   11bb6: 39 a0        	j	0x11bc4 <calloc+0x44>
   11bb8: c1 98        	andi	s1, s1, -16
   11bba: 13 d6 f4 01  	srli	a2, s1, 31
   11bbe: 01 45        	li	a0, 0
   11bc0: 63 1b 06 5e  	bnez	a2, 0x121b6 <calloc+0x636>
   11bc4: 63 e9 b4 5e  	bltu	s1, a1, 0x121b6 <calloc+0x636>
   11bc8: 13 05 70 1f  	li	a0, 503
   11bcc: 97 25 00 00  	auipc	a1, 2
   11bd0: 13 89 45 43  	addi	s2, a1, 1076
   11bd4: 63 67 95 02  	bltu	a0, s1, 0x11c02 <calloc+0x82>
   11bd8: 93 95 14 00  	slli	a1, s1, 1
   11bdc: ca 95        	add	a1, a1, s2
   11bde: 88 6d        	ld	a0, 24(a1)
   11be0: 63 0e b5 02  	beq	a0, a1, 0x11c1c <calloc+0x9c>
   11be4: 63 00 b5 04  	beq	a0, a1, 0x11c24 <calloc+0xa4>
   11be8: 0c 65        	ld	a1, 8(a0)
   11bea: 10 6d        	ld	a2, 24(a0)
   11bec: f1 99        	andi	a1, a1, -4
   11bee: 14 69        	ld	a3, 16(a0)
   11bf0: aa 95        	add	a1, a1, a0
   11bf2: 98 65        	ld	a4, 8(a1)
   11bf4: 41 05        	addi	a0, a0, 16
   11bf6: 90 ee        	sd	a2, 24(a3)
   11bf8: 14 ea        	sd	a3, 16(a2)
   11bfa: 13 66 17 00  	ori	a2, a4, 1
   11bfe: 90 e5        	sd	a2, 8(a1)
   11c00: a1 a3        	j	0x12148 <calloc+0x5c8>
   11c02: 13 d5 94 00  	srli	a0, s1, 9
   11c06: 63 0a 05 02  	beqz	a0, 0x11c3a <calloc+0xba>
   11c0a: 93 05 40 00  	li	a1, 4
   11c0e: 63 e9 a5 02  	bltu	a1, a0, 0x11c40 <calloc+0xc0>
   11c12: 13 d5 64 00  	srli	a0, s1, 6
   11c16: 13 05 85 03  	addi	a0, a0, 56
   11c1a: bd a0        	j	0x11c88 <calloc+0x108>
   11c1c: c1 05        	addi	a1, a1, 16
   11c1e: 88 6d        	ld	a0, 24(a1)
   11c20: e3 14 b5 fc  	bne	a0, a1, 0x11be8 <calloc+0x68>
   11c24: 93 de 34 00  	srli	t4, s1, 3
   11c28: 93 8e 2e 00  	addi	t4, t4, 2
   11c2c: 03 36 09 02  	ld	a2, 32(s2)
   11c30: 93 03 09 01  	addi	t2, s2, 16
   11c34: 63 11 76 0a  	bne	a2, t2, 0x11cd6 <calloc+0x156>
   11c38: 8d a4        	j	0x11e9a <calloc+0x31a>
   11c3a: 13 05 f0 03  	li	a0, 63
   11c3e: a9 a0        	j	0x11c88 <calloc+0x108>
   11c40: 93 05 40 01  	li	a1, 20
   11c44: 63 e5 a5 00  	bltu	a1, a0, 0x11c4e <calloc+0xce>
   11c48: 13 05 b5 05  	addi	a0, a0, 91
   11c4c: 35 a8        	j	0x11c88 <calloc+0x108>
   11c4e: 93 05 40 05  	li	a1, 84
   11c52: 63 e7 a5 00  	bltu	a1, a0, 0x11c60 <calloc+0xe0>
   11c56: 13 d5 c4 00  	srli	a0, s1, 12
   11c5a: 13 05 e5 06  	addi	a0, a0, 110
   11c5e: 2d a0        	j	0x11c88 <calloc+0x108>
   11c60: 93 05 40 15  	li	a1, 340
   11c64: 63 e7 a5 00  	bltu	a1, a0, 0x11c72 <calloc+0xf2>
   11c68: 13 d5 f4 00  	srli	a0, s1, 15
   11c6c: 13 05 75 07  	addi	a0, a0, 119
   11c70: 21 a8        	j	0x11c88 <calloc+0x108>
   11c72: 93 05 50 55  	li	a1, 1365
   11c76: 63 65 b5 00  	bltu	a0, a1, 0x11c80 <calloc+0x100>
   11c7a: 13 05 e0 07  	li	a0, 126
   11c7e: 29 a0        	j	0x11c88 <calloc+0x108>
   11c80: 13 d5 24 01  	srli	a0, s1, 18
   11c84: 13 05 c5 07  	addi	a0, a0, 124
   11c88: 93 15 15 00  	slli	a1, a0, 1
   11c8c: 89 05        	addi	a1, a1, 2
   11c8e: 82 15        	slli	a1, a1, 32
   11c90: f5 81        	srli	a1, a1, 29
   11c92: 33 06 b9 00  	add	a2, s2, a1
   11c96: 0c 66        	ld	a1, 8(a2)
   11c98: 13 06 06 ff  	addi	a2, a2, -16
   11c9c: 63 85 c5 02  	beq	a1, a2, 0x11cc6 <calloc+0x146>
   11ca0: 93 06 00 02  	li	a3, 32
   11ca4: 80 65        	ld	s0, 8(a1)
   11ca6: 71 98        	andi	s0, s0, -4
   11ca8: b3 07 94 40  	sub	a5, s0, s1
   11cac: 63 db d7 00  	bge	a5, a3, 0x11cc2 <calloc+0x142>
   11cb0: 03 b7 85 01  	ld	a4, 24(a1)
   11cb4: 63 db 07 06  	bgez	a5, 0x11d2a <calloc+0x1aa>
   11cb8: 93 05 07 00  	mv	a1, a4
   11cbc: e3 14 c7 fe  	bne	a4, a2, 0x11ca4 <calloc+0x124>
   11cc0: 19 a0        	j	0x11cc6 <calloc+0x146>
   11cc2: 13 05 f5 ff  	addi	a0, a0, -1
   11cc6: 93 0e 15 00  	addi	t4, a0, 1
   11cca: 03 36 09 02  	ld	a2, 32(s2)
   11cce: 93 03 09 01  	addi	t2, s2, 16
   11cd2: 63 04 76 1c  	beq	a2, t2, 0x11e9a <calloc+0x31a>
   11cd6: 83 35 86 00  	ld	a1, 8(a2)
   11cda: 93 f6 c5 ff  	andi	a3, a1, -4
   11cde: 33 87 96 40  	sub	a4, a3, s1
   11ce2: 13 05 00 02  	li	a0, 32
   11ce6: 63 45 a7 02  	blt	a4, a0, 0x11d10 <calloc+0x190>
   11cea: 33 05 96 00  	add	a0, a2, s1
   11cee: 85 04        	addi	s1, s1, 1
   11cf0: 04 e6        	sd	s1, 8(a2)
   11cf2: 93 05 17 00  	addi	a1, a4, 1
   11cf6: b2 96        	add	a3, a3, a2
   11cf8: 23 34 a9 02  	sd	a0, 40(s2)
   11cfc: 23 30 a9 02  	sd	a0, 32(s2)
   11d00: 23 3c 75 00  	sd	t2, 24(a0)
   11d04: 23 38 75 00  	sd	t2, 16(a0)
   11d08: 0c e5        	sd	a1, 8(a0)
   11d0a: 23 b0 e6 00  	sd	a4, 0(a3)
   11d0e: 1d a9        	j	0x12144 <calloc+0x5c4>
   11d10: 23 34 79 02  	sd	t2, 40(s2)
   11d14: 23 30 79 02  	sd	t2, 32(s2)
   11d18: 63 44 07 02  	bltz	a4, 0x11d40 <calloc+0x1c0>
   11d1c: b2 96        	add	a3, a3, a2
   11d1e: 88 66        	ld	a0, 8(a3)
   11d20: 13 65 15 00  	ori	a0, a0, 1
   11d24: 23 b4 a6 00  	sd	a0, 8(a3)
   11d28: 31 a9        	j	0x12144 <calloc+0x5c4>
   11d2a: 90 69        	ld	a2, 16(a1)
   11d2c: 2e 94        	add	s0, s0, a1
   11d2e: 14 64        	ld	a3, 8(s0)
   11d30: 13 85 05 01  	addi	a0, a1, 16
   11d34: 18 ee        	sd	a4, 24(a2)
   11d36: 10 eb        	sd	a2, 16(a4)
   11d38: 93 e5 16 00  	ori	a1, a3, 1
   11d3c: 0c e4        	sd	a1, 8(s0)
   11d3e: 29 a1        	j	0x12148 <calloc+0x5c8>
   11d40: 13 05 f0 1f  	li	a0, 511
   11d44: 63 69 d5 02  	bltu	a0, a3, 0x11d76 <calloc+0x1f6>
   11d48: 13 d5 55 00  	srli	a0, a1, 5
   11d4c: 85 46        	li	a3, 1
   11d4e: 33 95 a6 00  	sll	a0, a3, a0
   11d52: 83 36 89 00  	ld	a3, 8(s2)
   11d56: 89 81        	srli	a1, a1, 2
   11d58: 89 05        	addi	a1, a1, 2
   11d5a: 9b d5 15 00  	srliw	a1, a1, 1
   11d5e: 92 05        	slli	a1, a1, 4
   11d60: c9 8e        	or	a3, a3, a0
   11d62: 33 05 b9 00  	add	a0, s2, a1
   11d66: 18 61        	ld	a4, 0(a0)
   11d68: 23 34 d9 00  	sd	a3, 8(s2)
   11d6c: 93 05 05 ff  	addi	a1, a0, -16
   11d70: 0c ee        	sd	a1, 24(a2)
   11d72: 18 ea        	sd	a4, 16(a2)
   11d74: 0d a2        	j	0x11e96 <calloc+0x316>
   11d76: 13 d7 95 00  	srli	a4, a1, 9
   11d7a: 13 05 40 00  	li	a0, 4
   11d7e: 63 67 e5 00  	bltu	a0, a4, 0x11d8c <calloc+0x20c>
   11d82: 93 d5 65 00  	srli	a1, a1, 6
   11d86: 93 85 85 03  	addi	a1, a1, 56
   11d8a: a9 a0        	j	0x11dd4 <calloc+0x254>
   11d8c: 13 05 40 01  	li	a0, 20
   11d90: 63 65 e5 00  	bltu	a0, a4, 0x11d9a <calloc+0x21a>
   11d94: 93 05 b7 05  	addi	a1, a4, 91
   11d98: 35 a8        	j	0x11dd4 <calloc+0x254>
   11d9a: 13 05 40 05  	li	a0, 84
   11d9e: 63 67 e5 00  	bltu	a0, a4, 0x11dac <calloc+0x22c>
   11da2: 93 d5 c5 00  	srli	a1, a1, 12
   11da6: 93 85 e5 06  	addi	a1, a1, 110
   11daa: 2d a0        	j	0x11dd4 <calloc+0x254>
   11dac: 13 05 40 15  	li	a0, 340
   11db0: 63 67 e5 00  	bltu	a0, a4, 0x11dbe <calloc+0x23e>
   11db4: 93 d5 f5 00  	srli	a1, a1, 15
   11db8: 93 85 75 07  	addi	a1, a1, 119
   11dbc: 21 a8        	j	0x11dd4 <calloc+0x254>
   11dbe: 13 05 50 55  	li	a0, 1365
   11dc2: 63 65 a7 00  	bltu	a4, a0, 0x11dcc <calloc+0x24c>
   11dc6: 93 05 e0 07  	li	a1, 126
   11dca: 29 a0        	j	0x11dd4 <calloc+0x254>
   11dcc: 93 d5 25 01  	srli	a1, a1, 18
   11dd0: 93 85 c5 07  	addi	a1, a1, 124
   11dd4: 1b 95 15 00  	slliw	a0, a1, 1
   11dd8: 0e 05        	slli	a0, a0, 3
   11dda: 33 07 a9 00  	add	a4, s2, a0
   11dde: 1c 6b        	ld	a5, 16(a4)
   11de0: 63 87 e7 08  	beq	a5, a4, 0x11e6e <calloc+0x2ee>
   11de4: 88 67        	ld	a0, 8(a5)
   11de6: 71 99        	andi	a0, a0, -4
   11de8: 63 f0 a6 08  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11dec: 83 b7 07 01  	ld	a5, 16(a5)
   11df0: 63 8a e7 06  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11df4: 88 67        	ld	a0, 8(a5)
   11df6: 71 99        	andi	a0, a0, -4
   11df8: 63 f8 a6 06  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11dfc: 83 b7 07 01  	ld	a5, 16(a5)
   11e00: 63 82 e7 06  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e04: 88 67        	ld	a0, 8(a5)
   11e06: 71 99        	andi	a0, a0, -4
   11e08: 63 f0 a6 06  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e0c: 83 b7 07 01  	ld	a5, 16(a5)
   11e10: 63 8a e7 04  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e14: 88 67        	ld	a0, 8(a5)
   11e16: 71 99        	andi	a0, a0, -4
   11e18: 63 f8 a6 04  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e1c: 83 b7 07 01  	ld	a5, 16(a5)
   11e20: 63 82 e7 04  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e24: 88 67        	ld	a0, 8(a5)
   11e26: 71 99        	andi	a0, a0, -4
   11e28: 63 f0 a6 04  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e2c: 83 b7 07 01  	ld	a5, 16(a5)
   11e30: 63 8a e7 02  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e34: 88 67        	ld	a0, 8(a5)
   11e36: 71 99        	andi	a0, a0, -4
   11e38: 63 f8 a6 02  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e3c: 83 b7 07 01  	ld	a5, 16(a5)
   11e40: 63 82 e7 02  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e44: 88 67        	ld	a0, 8(a5)
   11e46: 71 99        	andi	a0, a0, -4
   11e48: 63 f0 a6 02  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e4c: 83 b7 07 01  	ld	a5, 16(a5)
   11e50: 63 8a e7 00  	beq	a5, a4, 0x11e64 <calloc+0x2e4>
   11e54: 88 67        	ld	a0, 8(a5)
   11e56: 71 99        	andi	a0, a0, -4
   11e58: 63 f8 a6 00  	bgeu	a3, a0, 0x11e68 <calloc+0x2e8>
   11e5c: 83 b7 07 01  	ld	a5, 16(a5)
   11e60: e3 92 e7 f8  	bne	a5, a4, 0x11de4 <calloc+0x264>
   11e64: 93 07 07 00  	mv	a5, a4
   11e68: 88 6f        	ld	a0, 24(a5)
   11e6a: 3e 87        	mv	a4, a5
   11e6c: 0d a0        	j	0x11e8e <calloc+0x30e>
   11e6e: 1b d5 f5 41  	sraiw	a0, a1, 31
   11e72: 83 36 89 00  	ld	a3, 8(s2)
   11e76: 1b 55 e5 01  	srliw	a0, a0, 30
   11e7a: 2e 95        	add	a0, a0, a1
   11e7c: 1b 55 25 40  	sraiw	a0, a0, 2
   11e80: 85 45        	li	a1, 1
   11e82: 33 95 a5 00  	sll	a0, a1, a0
   11e86: 55 8d        	or	a0, a0, a3
   11e88: 23 34 a9 00  	sd	a0, 8(s2)
   11e8c: 3a 85        	mv	a0, a4
   11e8e: 08 ee        	sd	a0, 24(a2)
   11e90: 18 ea        	sd	a4, 16(a2)
   11e92: 13 05 05 01  	addi	a0, a0, 16
   11e96: 10 e1        	sd	a2, 0(a0)
   11e98: 10 ef        	sd	a2, 24(a4)
   11e9a: 83 36 89 00  	ld	a3, 8(s2)
   11e9e: 1b d5 2e 00  	srliw	a0, t4, 2
   11ea2: 93 02 10 00  	li	t0, 1
   11ea6: 33 97 a2 00  	sll	a4, t0, a0
   11eaa: 63 f1 e6 04  	bgeu	a3, a4, 0x11eec <calloc+0x36c>
   11eae: 03 36 09 01  	ld	a2, 16(s2)
   11eb2: 03 37 86 00  	ld	a4, 8(a2)
   11eb6: 93 76 c7 ff  	andi	a3, a4, -4
   11eba: 63 e8 96 00  	bltu	a3, s1, 0x11eca <calloc+0x34a>
   11ebe: b3 85 96 40  	sub	a1, a3, s1
   11ec2: 13 05 f0 01  	li	a0, 31
   11ec6: 63 45 b5 26  	blt	a0, a1, 0x12130 <calloc+0x5b0>
   11eca: 03 b5 01 86  	ld	a0, -1952(gp)
   11ece: 05 64        	lui	s0, 1
   11ed0: 7d 58        	li	a6, -1
   11ed2: 1b 0f f4 ff  	addiw	t5, s0, -1
   11ed6: 63 0b 05 09  	beq	a0, a6, 0x11f6c <calloc+0x3ec>
   11eda: 33 85 e4 01  	add	a0, s1, t5
   11ede: 13 05 05 02  	addi	a0, a0, 32
   11ee2: 9b 57 c5 00  	srliw	a5, a0, 12
   11ee6: 93 97 c7 00  	slli	a5, a5, 12
   11eea: 59 a0        	j	0x11f70 <calloc+0x3f0>
   11eec: b3 f5 e6 00  	and	a1, a3, a4
   11ef0: 63 87 05 00  	beqz	a1, 0x11efe <calloc+0x37e>
   11ef4: fd 48        	li	a7, 31
   11ef6: 09 48        	li	a6, 2
   11ef8: 13 0e 00 02  	li	t3, 32
   11efc: c5 ac        	j	0x121ec <calloc+0x66c>
   11efe: 93 fe ce ff  	andi	t4, t4, -4
   11f02: 93 05 20 00  	li	a1, 2
   11f06: b3 95 a5 00  	sll	a1, a1, a0
   11f0a: 33 f5 d5 00  	and	a0, a1, a3
   11f0e: 63 1a 05 0c  	bnez	a0, 0x11fe2 <calloc+0x462>
   11f12: 13 97 15 00  	slli	a4, a1, 1
   11f16: 33 75 d7 00  	and	a0, a4, a3
   11f1a: 63 17 05 0c  	bnez	a0, 0x11fe8 <calloc+0x468>
   11f1e: 13 97 25 00  	slli	a4, a1, 2
   11f22: 33 75 d7 00  	and	a0, a4, a3
   11f26: 63 14 05 0c  	bnez	a0, 0x11fee <calloc+0x46e>
   11f2a: 13 97 35 00  	slli	a4, a1, 3
   11f2e: 33 75 d7 00  	and	a0, a4, a3
   11f32: 63 11 05 0c  	bnez	a0, 0x11ff4 <calloc+0x474>
   11f36: 13 97 45 00  	slli	a4, a1, 4
   11f3a: 33 75 d7 00  	and	a0, a4, a3
   11f3e: 63 1e 05 0a  	bnez	a0, 0x11ffa <calloc+0x47a>
   11f42: 13 97 55 00  	slli	a4, a1, 5
   11f46: 33 75 d7 00  	and	a0, a4, a3
   11f4a: 63 1b 05 0a  	bnez	a0, 0x12000 <calloc+0x480>
   11f4e: 13 97 65 00  	slli	a4, a1, 6
   11f52: 33 75 d7 00  	and	a0, a4, a3
   11f56: 63 18 05 0a  	bnez	a0, 0x12006 <calloc+0x486>
   11f5a: 13 97 75 00  	slli	a4, a1, 7
   11f5e: 93 8e 0e 02  	addi	t4, t4, 32
   11f62: 33 75 d7 00  	and	a0, a4, a3
   11f66: a2 05        	slli	a1, a1, 8
   11f68: 4d d1        	beqz	a0, 0x11f0a <calloc+0x38a>
   11f6a: 69 b7        	j	0x11ef4 <calloc+0x374>
   11f6c: 93 87 04 02  	addi	a5, s1, 32
   11f70: 03 b5 81 89  	ld	a0, -1896(gp)
   11f74: 63 1c 05 00  	bnez	a0, 0x11f8c <calloc+0x40c>
   11f78: 93 08 60 0d  	li	a7, 214
   11f7c: 93 05 f0 ff  	li	a1, -1
   11f80: 73 00 00 00  	ecall	
   11f84: 63 08 b5 18  	beq	a0, a1, 0x12114 <calloc+0x594>
   11f88: 23 bc a1 88  	sd	a0, -1896(gp)
   11f8c: b3 05 f5 00  	add	a1, a0, a5
   11f90: 93 08 60 0d  	li	a7, 214
   11f94: 13 85 05 00  	mv	a0, a1
   11f98: 73 00 00 00  	ecall	
   11f9c: 63 1c b5 16  	bne	a0, a1, 0x12114 <calloc+0x594>
   11fa0: 03 b3 81 89  	ld	t1, -1896(gp)
   11fa4: 33 05 f3 00  	add	a0, t1, a5
   11fa8: 23 bc a1 88  	sd	a0, -1896(gp)
   11fac: 63 04 03 17  	beq	t1, a6, 0x12114 <calloc+0x594>
   11fb0: b3 05 d6 00  	add	a1, a2, a3
   11fb4: 63 04 26 01  	beq	a2, s2, 0x11fbc <calloc+0x43c>
   11fb8: 63 6e b3 14  	bltu	t1, a1, 0x12114 <calloc+0x594>
   11fbc: 03 a4 01 89  	lw	s0, -1904(gp)
   11fc0: bb 08 f4 00  	addw	a7, s0, a5
   11fc4: 23 a8 11 89  	sw	a7, -1904(gp)
   11fc8: 63 92 65 04  	bne	a1, t1, 0x1200c <calloc+0x48c>
   11fcc: 33 f4 e5 01  	and	s0, a1, t5
   11fd0: 63 1e 04 02  	bnez	s0, 0x1200c <calloc+0x48c>
   11fd4: 03 35 09 01  	ld	a0, 16(s2)
   11fd8: be 96        	add	a3, a3, a5
   11fda: 85 06        	addi	a3, a3, 1
   11fdc: 23 34 d5 00  	sd	a3, 8(a0)
   11fe0: 31 aa        	j	0x120fc <calloc+0x57c>
   11fe2: 91 0e        	addi	t4, t4, 4
   11fe4: 2e 87        	mv	a4, a1
   11fe6: 39 b7        	j	0x11ef4 <calloc+0x374>
   11fe8: 93 8e 8e 00  	addi	t4, t4, 8
   11fec: 21 b7        	j	0x11ef4 <calloc+0x374>
   11fee: 93 8e ce 00  	addi	t4, t4, 12
   11ff2: 09 b7        	j	0x11ef4 <calloc+0x374>
   11ff4: 93 8e 0e 01  	addi	t4, t4, 16
   11ff8: f5 bd        	j	0x11ef4 <calloc+0x374>
   11ffa: 93 8e 4e 01  	addi	t4, t4, 20
   11ffe: dd bd        	j	0x11ef4 <calloc+0x374>
   12000: 93 8e 8e 01  	addi	t4, t4, 24
   12004: c5 bd        	j	0x11ef4 <calloc+0x374>
   12006: 93 8e ce 01  	addi	t4, t4, 28
   1200a: ed b5        	j	0x11ef4 <calloc+0x374>
   1200c: 03 b4 01 86  	ld	s0, -1952(gp)
   12010: 63 09 04 01  	beq	s0, a6, 0x12022 <calloc+0x4a2>
   12014: bb 05 b3 40  	subw	a1, t1, a1
   12018: b3 85 b8 00  	add	a1, a7, a1
   1201c: 23 a8 b1 88  	sw	a1, -1904(gp)
   12020: 19 a0        	j	0x12026 <calloc+0x4a6>
   12022: 23 b0 61 86  	sd	t1, -1952(gp)
   12026: 93 03 03 01  	addi	t2, t1, 16
   1202a: c1 45        	li	a1, 16
   1202c: 13 f4 f3 00  	andi	s0, t2, 15
   12030: 13 3e 14 00  	seqz	t3, s0
   12034: 81 8d        	sub	a1, a1, s0
   12036: 7d 1e        	addi	t3, t3, -1
   12038: b3 75 be 00  	and	a1, t3, a1
   1203c: 2e 93        	add	t1, t1, a1
   1203e: b3 0e f3 00  	add	t4, t1, a5
   12042: b3 85 d5 41  	sub	a1, a1, t4
   12046: b3 f7 e5 01  	and	a5, a1, t5
   1204a: 63 1c 05 00  	bnez	a0, 0x12062 <calloc+0x4e2>
   1204e: 93 08 60 0d  	li	a7, 214
   12052: 13 04 f0 ff  	li	s0, -1
   12056: 73 00 00 00  	ecall	
   1205a: 63 04 85 02  	beq	a0, s0, 0x12082 <calloc+0x502>
   1205e: 23 bc a1 88  	sd	a0, -1896(gp)
   12062: b3 05 f5 00  	add	a1, a0, a5
   12066: 93 08 60 0d  	li	a7, 214
   1206a: 2e 85        	mv	a0, a1
   1206c: 73 00 00 00  	ecall	
   12070: 7d 54        	li	s0, -1
   12072: 63 18 b5 00  	bne	a0, a1, 0x12082 <calloc+0x502>
   12076: 03 b4 81 89  	ld	s0, -1896(gp)
   1207a: 33 05 f4 00  	add	a0, s0, a5
   1207e: 23 bc a1 88  	sd	a0, -1896(gp)
   12082: 13 05 14 00  	addi	a0, s0, 1
   12086: 13 35 15 00  	seqz	a0, a0
   1208a: 63 18 04 01  	bne	s0, a6, 0x1209a <calloc+0x51a>
   1208e: 93 e5 03 ff  	ori	a1, t2, -16
   12092: 33 74 be 00  	and	s0, t3, a1
   12096: 33 84 8e 00  	add	s0, t4, s0
   1209a: 7d 15        	addi	a0, a0, -1
   1209c: e9 8f        	and	a5, a5, a0
   1209e: 23 38 69 00  	sd	t1, 16(s2)
   120a2: 83 a5 01 89  	lw	a1, -1904(gp)
   120a6: 33 04 83 40  	sub	s0, t1, s0
   120aa: 33 85 87 40  	sub	a0, a5, s0
   120ae: 13 65 15 00  	ori	a0, a0, 1
   120b2: bb 88 f5 00  	addw	a7, a1, a5
   120b6: 23 a8 11 89  	sw	a7, -1904(gp)
   120ba: 23 34 a3 00  	sd	a0, 8(t1)
   120be: 63 0f 26 03  	beq	a2, s2, 0x120fc <calloc+0x57c>
   120c2: 13 05 f0 01  	li	a0, 31
   120c6: 63 65 d5 00  	bltu	a0, a3, 0x120d0 <calloc+0x550>
   120ca: 23 34 53 00  	sd	t0, 8(t1)
   120ce: 99 a0        	j	0x12114 <calloc+0x594>
   120d0: 21 17        	addi	a4, a4, -24
   120d2: 08 66        	ld	a0, 8(a2)
   120d4: a5 45        	li	a1, 9
   120d6: 93 06 00 02  	li	a3, 32
   120da: 41 9b        	andi	a4, a4, -16
   120dc: 05 89        	andi	a0, a0, 1
   120de: 59 8d        	or	a0, a0, a4
   120e0: 08 e6        	sd	a0, 8(a2)
   120e2: 33 05 e6 00  	add	a0, a2, a4
   120e6: 0c e5        	sd	a1, 8(a0)
   120e8: 23 38 b5 00  	sd	a1, 16(a0)
   120ec: 63 68 d7 00  	bltu	a4, a3, 0x120fc <calloc+0x57c>
   120f0: 13 05 06 01  	addi	a0, a2, 16
   120f4: ef e0 df a7  	jal	0x10b70 <_free_r>
   120f8: 83 a8 01 89  	lw	a7, -1904(gp)
   120fc: 03 b5 01 88  	ld	a0, -1920(gp)
   12100: 63 74 15 01  	bgeu	a0, a7, 0x12108 <calloc+0x588>
   12104: 23 b0 11 89  	sd	a7, -1920(gp)
   12108: 03 b5 81 88  	ld	a0, -1912(gp)
   1210c: 63 74 15 01  	bgeu	a0, a7, 0x12114 <calloc+0x594>
   12110: 23 b4 11 89  	sd	a7, -1912(gp)
   12114: 03 36 09 01  	ld	a2, 16(s2)
   12118: 0c 66        	ld	a1, 8(a2)
   1211a: f1 99        	andi	a1, a1, -4
   1211c: 13 05 00 00  	li	a0, 0
   12120: 63 eb 95 08  	bltu	a1, s1, 0x121b6 <calloc+0x636>
   12124: b3 85 95 40  	sub	a1, a1, s1
   12128: 93 06 00 02  	li	a3, 32
   1212c: 63 c5 d5 08  	blt	a1, a3, 0x121b6 <calloc+0x636>
   12130: 13 85 14 00  	addi	a0, s1, 1
   12134: b2 94        	add	s1, s1, a2
   12136: 93 e5 15 00  	ori	a1, a1, 1
   1213a: 08 e6        	sd	a0, 8(a2)
   1213c: 23 38 99 00  	sd	s1, 16(s2)
   12140: 23 b4 b4 00  	sd	a1, 8(s1)
   12144: 13 05 06 01  	addi	a0, a2, 16
   12148: 83 35 85 ff  	ld	a1, -8(a0)
   1214c: 93 f5 c5 ff  	andi	a1, a1, -4
   12150: 13 86 85 ff  	addi	a2, a1, -8
   12154: 93 05 80 04  	li	a1, 72
   12158: 63 ed c5 02  	bltu	a1, a2, 0x12192 <calloc+0x612>
   1215c: 13 07 80 02  	li	a4, 40
   12160: 93 06 05 00  	mv	a3, a0
   12164: 63 63 e6 04  	bltu	a2, a4, 0x121aa <calloc+0x62a>
   12168: 23 30 05 00  	sd	zero, 0(a0)
   1216c: 93 06 80 03  	li	a3, 56
   12170: 23 34 05 00  	sd	zero, 8(a0)
   12174: 63 66 d6 02  	bltu	a2, a3, 0x121a0 <calloc+0x620>
   12178: 23 38 05 00  	sd	zero, 16(a0)
   1217c: 23 3c 05 00  	sd	zero, 24(a0)
   12180: 63 13 b6 02  	bne	a2, a1, 0x121a6 <calloc+0x626>
   12184: 23 30 05 02  	sd	zero, 32(a0)
   12188: 93 06 05 03  	addi	a3, a0, 48
   1218c: 23 34 05 02  	sd	zero, 40(a0)
   12190: 29 a8        	j	0x121aa <calloc+0x62a>
   12192: 2a 84        	mv	s0, a0
   12194: 81 45        	li	a1, 0
   12196: ef e0 2f a1  	jal	0x103a8 <memset>
   1219a: 13 05 04 00  	mv	a0, s0
   1219e: 21 a8        	j	0x121b6 <calloc+0x636>
   121a0: 93 06 05 01  	addi	a3, a0, 16
   121a4: 19 a0        	j	0x121aa <calloc+0x62a>
   121a6: 93 06 05 02  	addi	a3, a0, 32
   121aa: 23 b0 06 00  	sd	zero, 0(a3)
   121ae: 23 b4 06 00  	sd	zero, 8(a3)
   121b2: 23 b8 06 00  	sd	zero, 16(a3)
   121b6: e2 60        	ld	ra, 24(sp)
   121b8: 42 64        	ld	s0, 16(sp)
   121ba: a2 64        	ld	s1, 8(sp)
   121bc: 02 69        	ld	s2, 0(sp)
   121be: 13 01 01 02  	addi	sp, sp, 32
   121c2: 82 80        	ret
   121c4: 93 8e 47 00  	addi	t4, a5, 4
   121c8: 15 a0        	j	0x121ec <calloc+0x66c>
   121ca: 93 8e c7 01  	addi	t4, a5, 28
   121ce: 39 a8        	j	0x121ec <calloc+0x66c>
   121d0: 93 8e 87 01  	addi	t4, a5, 24
   121d4: 21 a8        	j	0x121ec <calloc+0x66c>
   121d6: 93 8e 47 01  	addi	t4, a5, 20
   121da: 09 a8        	j	0x121ec <calloc+0x66c>
   121dc: 93 8e 07 01  	addi	t4, a5, 16
   121e0: 31 a0        	j	0x121ec <calloc+0x66c>
   121e2: 93 8e c7 00  	addi	t4, a5, 12
   121e6: 19 a0        	j	0x121ec <calloc+0x66c>
   121e8: 93 8e 87 00  	addi	t4, a5, 8
   121ec: 1b 95 1e 00  	slliw	a0, t4, 1
   121f0: 0e 05        	slli	a0, a0, 3
   121f2: 33 04 a9 00  	add	s0, s2, a0
   121f6: a2 87        	mv	a5, s0
   121f8: 83 b7 87 01  	ld	a5, 24(a5)
   121fc: 63 8b 87 00  	beq	a5, s0, 0x12212 <calloc+0x692>
   12200: 90 67        	ld	a2, 8(a5)
   12202: 71 9a        	andi	a2, a2, -4
   12204: b3 05 96 40  	sub	a1, a2, s1
   12208: 63 da c5 15  	bge	a1, t3, 0x1235c <calloc+0x7dc>
   1220c: e3 c6 05 fe  	bltz	a1, 0x121f8 <calloc+0x678>
   12210: bd aa        	j	0x1238e <calloc+0x80e>
   12212: 93 87 1e 00  	addi	a5, t4, 1
   12216: 13 f3 37 00  	andi	t1, a5, 3
   1221a: 63 03 03 08  	beqz	t1, 0x122a0 <calloc+0x720>
   1221e: 13 05 04 01  	addi	a0, s0, 16
   12222: 93 07 05 00  	mv	a5, a0
   12226: 83 b7 87 01  	ld	a5, 24(a5)
   1222a: 63 8b a7 00  	beq	a5, a0, 0x12240 <calloc+0x6c0>
   1222e: 90 67        	ld	a2, 8(a5)
   12230: 71 9a        	andi	a2, a2, -4
   12232: b3 05 96 40  	sub	a1, a2, s1
   12236: 63 c3 b8 12  	blt	a7, a1, 0x1235c <calloc+0x7dc>
   1223a: e3 c6 05 fe  	bltz	a1, 0x12226 <calloc+0x6a6>
   1223e: 81 aa        	j	0x1238e <calloc+0x80e>
   12240: 93 87 2e 00  	addi	a5, t4, 2
   12244: 13 f5 37 00  	andi	a0, a5, 3
   12248: 63 0c 05 04  	beqz	a0, 0x122a0 <calloc+0x720>
   1224c: 13 05 04 02  	addi	a0, s0, 32
   12250: 93 07 05 00  	mv	a5, a0
   12254: 83 b7 87 01  	ld	a5, 24(a5)
   12258: 63 8b a7 00  	beq	a5, a0, 0x1226e <calloc+0x6ee>
   1225c: 90 67        	ld	a2, 8(a5)
   1225e: 71 9a        	andi	a2, a2, -4
   12260: b3 05 96 40  	sub	a1, a2, s1
   12264: 63 cc b8 0e  	blt	a7, a1, 0x1235c <calloc+0x7dc>
   12268: e3 c6 05 fe  	bltz	a1, 0x12254 <calloc+0x6d4>
   1226c: 0d a2        	j	0x1238e <calloc+0x80e>
   1226e: 93 87 3e 00  	addi	a5, t4, 3
   12272: 13 f5 37 00  	andi	a0, a5, 3
   12276: 63 05 05 02  	beqz	a0, 0x122a0 <calloc+0x720>
   1227a: 13 05 04 03  	addi	a0, s0, 48
   1227e: 93 07 05 00  	mv	a5, a0
   12282: 83 b7 87 01  	ld	a5, 24(a5)
   12286: 63 8b a7 00  	beq	a5, a0, 0x1229c <calloc+0x71c>
   1228a: 90 67        	ld	a2, 8(a5)
   1228c: 71 9a        	andi	a2, a2, -4
   1228e: b3 05 96 40  	sub	a1, a2, s1
   12292: 63 c5 b8 0c  	blt	a7, a1, 0x1235c <calloc+0x7dc>
   12296: e3 c6 05 fe  	bltz	a1, 0x12282 <calloc+0x702>
   1229a: d5 a8        	j	0x1238e <calloc+0x80e>
   1229c: 93 87 4e 00  	addi	a5, t4, 4
   122a0: 13 f5 3e 00  	andi	a0, t4, 3
   122a4: 63 06 05 02  	beqz	a0, 0x122d0 <calloc+0x750>
   122a8: 0c 60        	ld	a1, 0(s0)
   122aa: 41 14        	addi	s0, s0, -16
   122ac: 63 98 85 02  	bne	a1, s0, 0x122dc <calloc+0x75c>
   122b0: fd 1e        	addi	t4, t4, -1
   122b2: 13 f6 3e 00  	andi	a2, t4, 3
   122b6: 09 ce        	beqz	a2, 0x122d0 <calloc+0x750>
   122b8: 90 61        	ld	a2, 0(a1)
   122ba: c1 15        	addi	a1, a1, -16
   122bc: 63 10 b6 02  	bne	a2, a1, 0x122dc <calloc+0x75c>
   122c0: 63 08 05 01  	beq	a0, a6, 0x122d0 <calloc+0x750>
   122c4: 08 62        	ld	a0, 0(a2)
   122c6: 41 16        	addi	a2, a2, -16
   122c8: 63 1a c5 00  	bne	a0, a2, 0x122dc <calloc+0x75c>
   122cc: 63 18 03 00  	bnez	t1, 0x122dc <calloc+0x75c>
   122d0: 13 45 f7 ff  	not	a0, a4
   122d4: b3 f6 a6 00  	and	a3, a3, a0
   122d8: 23 34 d9 00  	sd	a3, 8(s2)
   122dc: 13 17 17 00  	slli	a4, a4, 1
   122e0: 13 05 f7 ff  	addi	a0, a4, -1
   122e4: e3 75 d5 bc  	bgeu	a0, a3, 0x11eae <calloc+0x32e>
   122e8: 33 75 d7 00  	and	a0, a4, a3
   122ec: be 8e        	mv	t4, a5
   122ee: e3 1f 05 ee  	bnez	a0, 0x121ec <calloc+0x66c>
   122f2: 93 05 07 00  	mv	a1, a4
   122f6: 13 97 15 00  	slli	a4, a1, 1
   122fa: 33 75 d7 00  	and	a0, a4, a3
   122fe: e3 13 05 ec  	bnez	a0, 0x121c4 <calloc+0x644>
   12302: 13 97 25 00  	slli	a4, a1, 2
   12306: 33 75 d7 00  	and	a0, a4, a3
   1230a: e3 1f 05 ec  	bnez	a0, 0x121e8 <calloc+0x668>
   1230e: 13 97 35 00  	slli	a4, a1, 3
   12312: 33 75 d7 00  	and	a0, a4, a3
   12316: e3 16 05 ec  	bnez	a0, 0x121e2 <calloc+0x662>
   1231a: 13 97 45 00  	slli	a4, a1, 4
   1231e: 33 75 d7 00  	and	a0, a4, a3
   12322: e3 1d 05 ea  	bnez	a0, 0x121dc <calloc+0x65c>
   12326: 13 97 55 00  	slli	a4, a1, 5
   1232a: 33 75 d7 00  	and	a0, a4, a3
   1232e: e3 14 05 ea  	bnez	a0, 0x121d6 <calloc+0x656>
   12332: 13 97 65 00  	slli	a4, a1, 6
   12336: 33 75 d7 00  	and	a0, a4, a3
   1233a: e3 1b 05 e8  	bnez	a0, 0x121d0 <calloc+0x650>
   1233e: 13 97 75 00  	slli	a4, a1, 7
   12342: 33 75 d7 00  	and	a0, a4, a3
   12346: e3 12 05 e8  	bnez	a0, 0x121ca <calloc+0x64a>
   1234a: a2 05        	slli	a1, a1, 8
   1234c: 33 f5 d5 00  	and	a0, a1, a3
   12350: 93 87 07 02  	addi	a5, a5, 32
   12354: 4d d1        	beqz	a0, 0x122f6 <calloc+0x776>
   12356: be 8e        	mv	t4, a5
   12358: 2e 87        	mv	a4, a1
   1235a: 49 bd        	j	0x121ec <calloc+0x66c>
   1235c: b3 86 97 00  	add	a3, a5, s1
   12360: 85 04        	addi	s1, s1, 1
   12362: 98 6f        	ld	a4, 24(a5)
   12364: 13 85 07 01  	addi	a0, a5, 16
   12368: 84 e7        	sd	s1, 8(a5)
   1236a: 84 6b        	ld	s1, 16(a5)
   1236c: 3e 96        	add	a2, a2, a5
   1236e: 93 87 15 00  	addi	a5, a1, 1
   12372: 9c e6        	sd	a5, 8(a3)
   12374: 98 ec        	sd	a4, 24(s1)
   12376: 04 eb        	sd	s1, 16(a4)
   12378: 23 34 d9 02  	sd	a3, 40(s2)
   1237c: 23 30 d9 02  	sd	a3, 32(s2)
   12380: 23 bc 76 00  	sd	t2, 24(a3)
   12384: 23 b8 76 00  	sd	t2, 16(a3)
   12388: 23 30 b6 00  	sd	a1, 0(a2)
   1238c: 75 bb        	j	0x12148 <calloc+0x5c8>
   1238e: 3e 96        	add	a2, a2, a5
   12390: 08 66        	ld	a0, 8(a2)
   12392: 8c 6f        	ld	a1, 24(a5)
   12394: 94 6b        	ld	a3, 16(a5)
   12396: 13 65 15 00  	ori	a0, a0, 1
   1239a: 08 e6        	sd	a0, 8(a2)
   1239c: 13 85 07 01  	addi	a0, a5, 16
   123a0: 8c ee        	sd	a1, 24(a3)
   123a2: 94 e9        	sd	a3, 16(a1)
   123a4: 55 b3        	j	0x12148 <calloc+0x5c8>
   123a6: 00 00        	unimp	

00000000000123a8 <__stack_chk_fail>:
   123a8: 39 71        	addi	sp, sp, -64
   123aa: 06 fc        	sd	ra, 56(sp)
   123ac: b7 66 64 0a  	lui	a3, 42566
   123b0: 03 b5 01 83  	ld	a0, -2000(gp)
   123b4: 93 86 46 57  	addi	a3, a3, 1396
   123b8: 36 d8        	sw	a3, 48(sp)
   123ba: 2a e4        	sd	a0, 8(sp)
   123bc: 83 b5 81 83  	ld	a1, -1992(gp)
   123c0: 03 b6 01 84  	ld	a2, -1984(gp)
   123c4: 83 b6 81 84  	ld	a3, -1976(gp)
   123c8: 03 b5 01 85  	ld	a0, -1968(gp)
   123cc: 2e e8        	sd	a1, 16(sp)
   123ce: 32 ec        	sd	a2, 24(sp)
   123d0: 36 f0        	sd	a3, 32(sp)
   123d2: 2a f4        	sd	a0, 40(sp)
   123d4: 23 0a 01 02  	sb	zero, 52(sp)
   123d8: 28 00        	addi	a0, sp, 8
   123da: ef 00 60 02  	jal	0x12400 <strlen>
   123de: aa 85        	mv	a1, a0
   123e0: 28 00        	addi	a0, sp, 8
   123e2: ef 00 e0 00  	jal	0x123f0 <write>
   123e6: 13 05 f0 07  	li	a0, 127
   123ea: ef e0 bf b8  	jal	0x10f74 <_exit>
   123ee: 00 00        	unimp	

00000000000123f0 <write>:
   123f0: 2e 86        	mv	a2, a1
   123f2: aa 85        	mv	a1, a0
   123f4: 93 08 00 04  	li	a7, 64
   123f8: 09 45        	li	a0, 2
   123fa: 73 00 00 00  	ecall	
   123fe: 82 80        	ret

0000000000012400 <strlen>:
   12400: 13 76 75 00  	andi	a2, a0, 7
   12404: aa 85        	mv	a1, a0
   12406: 63 1d 06 16  	bnez	a2, 0x12580 <strlen+0x180>
   1240a: 03 b6 81 85  	ld	a2, -1960(gp)
   1240e: b7 86 7f 7f  	lui	a3, 522232
   12412: 9b 86 f6 f7  	addiw	a3, a3, -129
   12416: 13 97 06 02  	slli	a4, a3, 32
   1241a: ba 96        	add	a3, a3, a4
   1241c: 98 61        	ld	a4, 0(a1)
   1241e: b3 77 d7 00  	and	a5, a4, a3
   12422: b6 97        	add	a5, a5, a3
   12424: 5d 8f        	or	a4, a4, a5
   12426: 71 8f        	and	a4, a4, a2
   12428: 63 1f c7 06  	bne	a4, a2, 0x124a6 <strlen+0xa6>
   1242c: 98 65        	ld	a4, 8(a1)
   1242e: b3 77 d7 00  	and	a5, a4, a3
   12432: b6 97        	add	a5, a5, a3
   12434: 5d 8f        	or	a4, a4, a5
   12436: 71 8f        	and	a4, a4, a2
   12438: 63 10 c7 08  	bne	a4, a2, 0x124b8 <strlen+0xb8>
   1243c: 98 69        	ld	a4, 16(a1)
   1243e: b3 77 d7 00  	and	a5, a4, a3
   12442: b6 97        	add	a5, a5, a3
   12444: 5d 8f        	or	a4, a4, a5
   12446: 71 8f        	and	a4, a4, a2
   12448: 63 11 c7 08  	bne	a4, a2, 0x124ca <strlen+0xca>
   1244c: 98 6d        	ld	a4, 24(a1)
   1244e: b3 77 d7 00  	and	a5, a4, a3
   12452: b6 97        	add	a5, a5, a3
   12454: 5d 8f        	or	a4, a4, a5
   12456: 71 8f        	and	a4, a4, a2
   12458: 63 12 c7 08  	bne	a4, a2, 0x124dc <strlen+0xdc>
   1245c: 98 71        	ld	a4, 32(a1)
   1245e: b3 77 d7 00  	and	a5, a4, a3
   12462: b6 97        	add	a5, a5, a3
   12464: 5d 8f        	or	a4, a4, a5
   12466: 71 8f        	and	a4, a4, a2
   12468: 63 13 c7 08  	bne	a4, a2, 0x124ee <strlen+0xee>
   1246c: 98 75        	ld	a4, 40(a1)
   1246e: b3 77 d7 00  	and	a5, a4, a3
   12472: b6 97        	add	a5, a5, a3
   12474: 5d 8f        	or	a4, a4, a5
   12476: 71 8f        	and	a4, a4, a2
   12478: 63 14 c7 08  	bne	a4, a2, 0x12500 <strlen+0x100>
   1247c: 98 79        	ld	a4, 48(a1)
   1247e: b3 77 d7 00  	and	a5, a4, a3
   12482: b6 97        	add	a5, a5, a3
   12484: 5d 8f        	or	a4, a4, a5
   12486: 71 8f        	and	a4, a4, a2
   12488: 63 15 c7 0c  	bne	a4, a2, 0x12552 <strlen+0x152>
   1248c: 9c 7d        	ld	a5, 56(a1)
   1248e: 13 87 05 04  	addi	a4, a1, 64
   12492: b3 f5 d7 00  	and	a1, a5, a3
   12496: b6 95        	add	a1, a1, a3
   12498: dd 8d        	or	a1, a1, a5
   1249a: b3 f7 c5 00  	and	a5, a1, a2
   1249e: ba 85        	mv	a1, a4
   124a0: e3 8e c7 f6  	beq	a5, a2, 0x1241c <strlen+0x1c>
   124a4: 85 a0        	j	0x12504 <strlen+0x104>
   124a6: 13 87 85 00  	addi	a4, a1, 8
   124aa: 83 45 87 ff  	lbu	a1, -8(a4)
   124ae: 33 05 a7 40  	sub	a0, a4, a0
   124b2: 63 9f 05 04  	bnez	a1, 0x12510 <strlen+0x110>
   124b6: 75 a0        	j	0x12562 <strlen+0x162>
   124b8: 13 87 05 01  	addi	a4, a1, 16
   124bc: 83 45 87 ff  	lbu	a1, -8(a4)
   124c0: 33 05 a7 40  	sub	a0, a4, a0
   124c4: 63 96 05 04  	bnez	a1, 0x12510 <strlen+0x110>
   124c8: 69 a8        	j	0x12562 <strlen+0x162>
   124ca: 13 87 85 01  	addi	a4, a1, 24
   124ce: 83 45 87 ff  	lbu	a1, -8(a4)
   124d2: 33 05 a7 40  	sub	a0, a4, a0
   124d6: 63 9d 05 02  	bnez	a1, 0x12510 <strlen+0x110>
   124da: 61 a0        	j	0x12562 <strlen+0x162>
   124dc: 13 87 05 02  	addi	a4, a1, 32
   124e0: 83 45 87 ff  	lbu	a1, -8(a4)
   124e4: 33 05 a7 40  	sub	a0, a4, a0
   124e8: 63 94 05 02  	bnez	a1, 0x12510 <strlen+0x110>
   124ec: 9d a8        	j	0x12562 <strlen+0x162>
   124ee: 13 87 85 02  	addi	a4, a1, 40
   124f2: 83 45 87 ff  	lbu	a1, -8(a4)
   124f6: 33 05 a7 40  	sub	a0, a4, a0
   124fa: 63 9b 05 00  	bnez	a1, 0x12510 <strlen+0x110>
   124fe: 95 a0        	j	0x12562 <strlen+0x162>
   12500: 13 87 05 03  	addi	a4, a1, 48
   12504: 83 45 87 ff  	lbu	a1, -8(a4)
   12508: 33 05 a7 40  	sub	a0, a4, a0
   1250c: 63 8b 05 04  	beqz	a1, 0x12562 <strlen+0x162>
   12510: 83 45 97 ff  	lbu	a1, -7(a4)
   12514: 63 89 05 02  	beqz	a1, 0x12546 <strlen+0x146>
   12518: 83 45 a7 ff  	lbu	a1, -6(a4)
   1251c: 63 88 05 02  	beqz	a1, 0x1254c <strlen+0x14c>
   12520: 83 45 b7 ff  	lbu	a1, -5(a4)
   12524: 63 82 05 04  	beqz	a1, 0x12568 <strlen+0x168>
   12528: 83 45 c7 ff  	lbu	a1, -4(a4)
   1252c: 63 81 05 04  	beqz	a1, 0x1256e <strlen+0x16e>
   12530: 83 45 d7 ff  	lbu	a1, -3(a4)
   12534: 63 80 05 04  	beqz	a1, 0x12574 <strlen+0x174>
   12538: 83 45 e7 ff  	lbu	a1, -2(a4)
   1253c: 63 8f 05 02  	beqz	a1, 0x1257a <strlen+0x17a>
   12540: 13 05 f5 ff  	addi	a0, a0, -1
   12544: 82 80        	ret
   12546: 13 05 95 ff  	addi	a0, a0, -7
   1254a: 82 80        	ret
   1254c: 13 05 a5 ff  	addi	a0, a0, -6
   12550: 82 80        	ret
   12552: 13 87 85 03  	addi	a4, a1, 56
   12556: 83 45 87 ff  	lbu	a1, -8(a4)
   1255a: 33 05 a7 40  	sub	a0, a4, a0
   1255e: e3 99 05 fa  	bnez	a1, 0x12510 <strlen+0x110>
   12562: 13 05 85 ff  	addi	a0, a0, -8
   12566: 82 80        	ret
   12568: 13 05 b5 ff  	addi	a0, a0, -5
   1256c: 82 80        	ret
   1256e: 13 05 c5 ff  	addi	a0, a0, -4
   12572: 82 80        	ret
   12574: 13 05 d5 ff  	addi	a0, a0, -3
   12578: 82 80        	ret
   1257a: 13 05 e5 ff  	addi	a0, a0, -2
   1257e: 82 80        	ret
   12580: 03 46 05 00  	lbu	a2, 0(a0)
   12584: 93 05 15 00  	addi	a1, a0, 1
   12588: 63 08 06 08  	beqz	a2, 0x12618 <strlen+0x218>
   1258c: 13 f6 75 00  	andi	a2, a1, 7
   12590: e3 0d 06 e6  	beqz	a2, 0x1240a <strlen+0xa>
   12594: 03 46 15 00  	lbu	a2, 1(a0)
   12598: 93 05 25 00  	addi	a1, a0, 2
   1259c: 63 0e 06 06  	beqz	a2, 0x12618 <strlen+0x218>
   125a0: 13 f6 75 00  	andi	a2, a1, 7
   125a4: e3 03 06 e6  	beqz	a2, 0x1240a <strlen+0xa>
   125a8: 03 46 25 00  	lbu	a2, 2(a0)
   125ac: 93 05 35 00  	addi	a1, a0, 3
   125b0: 63 04 06 06  	beqz	a2, 0x12618 <strlen+0x218>
   125b4: 13 f6 75 00  	andi	a2, a1, 7
   125b8: e3 09 06 e4  	beqz	a2, 0x1240a <strlen+0xa>
   125bc: 03 46 35 00  	lbu	a2, 3(a0)
   125c0: 93 05 45 00  	addi	a1, a0, 4
   125c4: 63 0a 06 04  	beqz	a2, 0x12618 <strlen+0x218>
   125c8: 13 f6 75 00  	andi	a2, a1, 7
   125cc: e3 0f 06 e2  	beqz	a2, 0x1240a <strlen+0xa>
   125d0: 03 46 45 00  	lbu	a2, 4(a0)
   125d4: 93 05 55 00  	addi	a1, a0, 5
   125d8: 63 00 06 04  	beqz	a2, 0x12618 <strlen+0x218>
   125dc: 13 f6 75 00  	andi	a2, a1, 7
   125e0: e3 05 06 e2  	beqz	a2, 0x1240a <strlen+0xa>
   125e4: 03 46 55 00  	lbu	a2, 5(a0)
   125e8: 93 05 65 00  	addi	a1, a0, 6
   125ec: 63 06 06 02  	beqz	a2, 0x12618 <strlen+0x218>
   125f0: 13 f6 75 00  	andi	a2, a1, 7
   125f4: e3 0b 06 e0  	beqz	a2, 0x1240a <strlen+0xa>
   125f8: 03 46 65 00  	lbu	a2, 6(a0)
   125fc: 93 05 75 00  	addi	a1, a0, 7
   12600: 63 0c 06 00  	beqz	a2, 0x12618 <strlen+0x218>
   12604: 13 f6 75 00  	andi	a2, a1, 7
   12608: e3 01 06 e0  	beqz	a2, 0x1240a <strlen+0xa>
   1260c: 03 46 75 00  	lbu	a2, 7(a0)
   12610: 93 05 85 00  	addi	a1, a0, 8
   12614: e3 1b 06 de  	bnez	a2, 0x1240a <strlen+0xa>
   12618: 13 45 f5 ff  	not	a0, a0
   1261c: 2e 95        	add	a0, a0, a1
   1261e: 82 80        	ret
