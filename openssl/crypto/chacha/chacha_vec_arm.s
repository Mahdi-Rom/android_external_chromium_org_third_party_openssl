	.syntax unified
	.cpu cortex-a8
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu neon
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"chacha_vec.c"
	.text
	.align	2
	.global	CRYPTO_chacha_20_neon
	.thumb
	.thumb_func
	.type	CRYPTO_chacha_20_neon, %function
CRYPTO_chacha_20_neon:
	@ args = 8, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, sl, fp}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #296
	add	r7, sp, #0
	movw	ip, #43691
	movt	ip, 43690
	str	r2, [r7, #192]
	sub	sp, sp, #96
	ldr	r4, [r7, #192]
	ldr	r6, [r7, #392]
	ldr	r2, .L38+16
	umull	r4, ip, ip, r4
	ldr	r6, [r6, #0]
	ldr	r8, [r7, #392]
	add	r4, sp, #15
	str	r3, [r7, #236]
	bic	r4, r4, #15
	str	r6, [r7, #172]
	str	r4, [r7, #196]
	str	r0, [r7, #184]
	lsrs	ip, ip, #7
	str	r1, [r7, #180]
	ldmia	r2, {r0, r1, r2, r3}
	ldr	r4, [r8, #4]
	ldr	r5, [r7, #236]
	vld1.64	{d24-d25}, [r5:64]
	vldr	d26, [r5, #16]
	vldr	d27, [r5, #24]
	ldr	fp, [r7, #196]
	ldr	r8, [r7, #396]
	ldr	r5, [r7, #172]
	add	r6, fp, #64
	str	r4, [r7, #292]
	mov	r4, #0
	str	r8, [r7, #280]
	str	r5, [r7, #288]
	str	r4, [r7, #284]
	stmia	r6, {r0, r1, r2, r3}
	vldr	d22, [fp, #64]
	vldr	d23, [fp, #72]
	vldr	d20, [r7, #280]
	vldr	d21, [r7, #288]
	str	ip, [r7, #188]
	beq	.L20
	lsl	r6, ip, #1
	ldr	r1, [fp, #68]
	add	r3, r6, ip
	str	r6, [r7, #176]
	ldr	r2, [fp, #72]
	add	r8, r8, #2
	ldr	r5, [fp, #76]
	vldr	d18, .L38
	vldr	d19, .L38+8
	str	r4, [r7, #232]
	ldr	r6, [r7, #180]
	ldr	r4, [r7, #184]
	str	r0, [r7, #220]
	str	r1, [r7, #216]
	str	r8, [r7, #200]
	str	r2, [r7, #212]
	str	r3, [r7, #204]
	str	r5, [r7, #208]
	str	r6, [r7, #244]
	str	r4, [r7, #240]
.L4:
	ldr	r6, [r7, #236]
	vadd.i32	q8, q10, q9
	ldr	r5, [r7, #236]
	vmov	q15, q13  @ v4si
	ldr	r8, [r7, #232]
	vmov	q3, q12  @ v4si
	ldr	r6, [r6, #4]
	vmov	q2, q11  @ v4si
	ldr	fp, [r7, #200]
	vmov	q5, q10  @ v4si
	ldr	r4, [r7, #236]
	vmov	q1, q13  @ v4si
	add	ip, r8, fp
	ldr	r5, [r5, #0]
	ldr	r0, [r7, #236]
	add	r8, r7, #208
	ldr	r1, [r7, #236]
	vmov	q0, q12  @ v4si
	str	r6, [r7, #260]
	vmov	q4, q11  @ v4si
	ldr	r6, [r7, #392]
	ldmia	r8, {r8, r9, sl, fp}
	ldr	r0, [r0, #8]
	ldr	r1, [r1, #12]
	str	r5, [r7, #224]
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #28]
	ldr	r2, [r6, #4]
	str	r0, [r7, #256]
	str	r1, [r7, #228]
	str	r5, [r7, #272]
	ldr	r5, [r6, #0]
	movs	r6, #0
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	movs	r4, #10
	str	r2, [r7, #20]
	str	r3, [r7, #276]
	str	r9, [r7, #268]
	mov	r9, r6
	str	r4, [r7, #248]
	ldr	r2, [r7, #256]
	ldr	r3, [r7, #228]
	str	r8, [r7, #252]
	mov	r8, sl
	ldr	r6, [r7, #272]
	mov	sl, ip
	str	r1, [r7, #264]
	ldr	ip, [r7, #20]
	str	r6, [r7, #256]
	mov	r6, r5
	ldr	r1, [r7, #260]
	mov	r5, r0
	ldr	r0, [r7, #224]
	b	.L39
.L40:
	.align	3
.L38:
	.word	1
	.word	0
	.word	0
	.word	0
	.word	.LANCHOR0
.L39:
.L3:
	vadd.i32	q4, q4, q0
	add	r8, r8, r1
	vadd.i32	q2, q2, q3
	str	r8, [r7, #260]
	veor	q5, q5, q4
	ldr	r8, [r7, #268]
	veor	q8, q8, q2
	add	fp, fp, r0
	str	fp, [r7, #272]
	add	r8, r8, r2
	vrev32.16	q5, q5
	str	r8, [r7, #268]
	vrev32.16	q8, q8
	vadd.i32	q1, q1, q5
	vadd.i32	q15, q15, q8
	ldr	r8, [r7, #272]
	veor	q0, q1, q0
	ldr	r4, [r7, #252]
	veor	q3, q15, q3
	eor	sl, sl, r8
	ldr	r8, [r7, #268]
	add	fp, r4, r3
	vshl.i32	q7, q0, #12
	ldr	r4, [r7, #260]
	vshl.i32	q6, q3, #12
	eor	r6, r6, r8
	eor	r9, r9, r4
	ldr	r4, [r7, #264]
	vsri.32	q7, q0, #20
	ror	r8, r6, #16
	ldr	r6, [r7, #256]
	eor	ip, ip, fp
	vsri.32	q6, q3, #20
	ror	sl, sl, #16
	ror	r9, r9, #16
	add	r5, r5, sl
	vadd.i32	q4, q4, q7
	str	r5, [r7, #228]
	vadd.i32	q2, q2, q6
	add	r5, r4, r9
	add	r4, r6, r8
	ldr	r6, [r7, #276]
	ror	ip, ip, #16
	veor	q5, q4, q5
	veor	q8, q2, q8
	add	r6, r6, ip
	str	r6, [r7, #256]
	eors	r1, r1, r5
	ldr	r6, [r7, #228]
	vshl.i32	q3, q5, #8
	vshl.i32	q14, q8, #8
	eors	r2, r2, r4
	eors	r0, r0, r6
	ldr	r6, [r7, #256]
	vsri.32	q3, q5, #24
	ror	r1, r1, #20
	eors	r3, r3, r6
	ldr	r6, [r7, #272]
	ror	r0, r0, #20
	vsri.32	q14, q8, #24
	adds	r6, r0, r6
	str	r6, [r7, #276]
	ldr	r6, [r7, #260]
	vadd.i32	q1, q1, q3
	vadd.i32	q15, q15, q14
	ror	r2, r2, #20
	adds	r6, r1, r6
	str	r6, [r7, #252]
	ldr	r6, [r7, #268]
	veor	q6, q15, q6
	veor	q7, q1, q7
	ror	r3, r3, #20
	adds	r6, r2, r6
	str	r6, [r7, #272]
	ldr	r6, [r7, #276]
	vshl.i32	q0, q6, #7
	vshl.i32	q5, q7, #7
	add	fp, r3, fp
	eor	sl, r6, sl
	ldr	r6, [r7, #252]
	eor	ip, fp, ip
	vsri.32	q0, q6, #25
	eor	r9, r6, r9
	ldr	r6, [r7, #272]
	ror	sl, sl, #24
	vsri.32	q5, q7, #25
	eor	r8, r6, r8
	ldr	r6, [r7, #228]
	ror	r9, r9, #24
	ror	ip, ip, #24
	add	r6, sl, r6
	str	r6, [r7, #268]
	ldr	r6, [r7, #256]
	add	r5, r9, r5
	str	r5, [r7, #264]
	vext.32	q5, q5, q5, #1
	add	r5, ip, r6
	ldr	r6, [r7, #268]
	vext.32	q0, q0, q0, #1
	vadd.i32	q4, q4, q5
	eors	r0, r0, r6
	ldr	r6, [r7, #264]
	vadd.i32	q2, q2, q0
	vext.32	q3, q3, q3, #3
	ror	r8, r8, #24
	eors	r1, r1, r6
	vext.32	q14, q14, q14, #3
	add	r4, r8, r4
	ldr	r6, [r7, #276]
	veor	q3, q4, q3
	veor	q14, q2, q14
	eors	r2, r2, r4
	ror	r1, r1, #25
	vext.32	q1, q1, q1, #2
	adds	r6, r1, r6
	str	r6, [r7, #276]
	vext.32	q15, q15, q15, #2
	ldr	r6, [r7, #252]
	eors	r3, r3, r5
	ror	r2, r2, #25
	vrev32.16	q8, q14
	adds	r6, r2, r6
	vrev32.16	q3, q3
	str	r6, [r7, #260]
	vadd.i32	q1, q1, q3
	ldr	r6, [r7, #272]
	vadd.i32	q15, q15, q8
	ror	r3, r3, #25
	veor	q5, q1, q5
	adds	r6, r3, r6
	veor	q0, q15, q0
	str	r6, [r7, #256]
	ldr	r6, [r7, #260]
	ror	r0, r0, #25
	add	fp, r0, fp
	vshl.i32	q6, q5, #12
	eor	sl, r6, sl
	ldr	r6, [r7, #276]
	vshl.i32	q14, q0, #12
	eor	r8, fp, r8
	eor	ip, r6, ip
	ldr	r6, [r7, #256]
	vsri.32	q6, q5, #20
	ror	sl, sl, #16
	eor	r9, r6, r9
	ror	r6, r8, #16
	vsri.32	q14, q0, #20
	ldr	r8, [r7, #264]
	ror	ip, ip, #16
	add	r5, sl, r5
	add	r8, r6, r8
	add	r4, ip, r4
	str	r4, [r7, #228]
	eor	r0, r8, r0
	str	r5, [r7, #272]
	vadd.i32	q4, q4, q6
	ldr	r5, [r7, #228]
	vadd.i32	q2, q2, q14
	ldr	r4, [r7, #268]
	ror	r0, r0, #20
	veor	q3, q4, q3
	eors	r1, r1, r5
	veor	q0, q2, q8
	str	r8, [r7, #264]
	str	r0, [r7, #20]
	add	fp, r0, fp
	ldr	r8, [r7, #272]
	ror	r9, r9, #16
	ldr	r0, [r7, #276]
	add	r4, r9, r4
	str	fp, [r7, #252]
	ror	r1, r1, #20
	add	fp, r1, r0
	eor	r2, r8, r2
	ldr	r0, [r7, #252]
	eors	r3, r3, r4
	vshl.i32	q5, q3, #8
	str	r4, [r7, #224]
	vshl.i32	q8, q0, #8
	ldr	r4, [r7, #260]
	ldr	r5, [r7, #256]
	ror	r2, r2, #20
	ror	r3, r3, #20
	eors	r6, r6, r0
	adds	r5, r3, r5
	add	r8, r2, r4
	vsri.32	q5, q3, #24
	ldr	r4, [r7, #264]
	eor	r9, r5, r9
	eor	ip, fp, ip
	vsri.32	q8, q0, #24
	eor	sl, r8, sl
	ror	r6, r6, #24
	ldr	r0, [r7, #272]
	str	r5, [r7, #268]
	adds	r4, r6, r4
	ldr	r5, [r7, #228]
	vadd.i32	q1, q1, q5
	str	r4, [r7, #264]
	vadd.i32	q15, q15, q8
	ldr	r4, [r7, #224]
	ror	ip, ip, #24
	ror	sl, sl, #24
	ror	r9, r9, #24
	add	r5, ip, r5
	add	r0, sl, r0
	str	r5, [r7, #256]
	add	r5, r9, r4
	str	r0, [r7, #276]
	veor	q6, q1, q6
	ldr	r4, [r7, #20]
	veor	q14, q15, q14
	ldr	r0, [r7, #264]
	eors	r3, r3, r5
	vshl.i32	q0, q6, #7
	vext.32	q1, q1, q1, #2
	eors	r0, r0, r4
	ldr	r4, [r7, #276]
	str	r0, [r7, #272]
	vshl.i32	q3, q14, #7
	eors	r2, r2, r4
	ldr	r4, [r7, #272]
	ldr	r0, [r7, #256]
	vsri.32	q0, q6, #25
	ror	r2, r2, #25
	ror	r3, r3, #25
	eors	r1, r1, r0
	vsri.32	q3, q14, #25
	ror	r0, r4, #25
	ldr	r4, [r7, #248]
	ror	r1, r1, #25
	vext.32	q5, q5, q5, #1
	subs	r4, r4, #1
	str	r4, [r7, #248]
	vext.32	q15, q15, q15, #2
	vext.32	q8, q8, q8, #1
	vext.32	q0, q0, q0, #3
	vext.32	q3, q3, q3, #3
	bne	.L3
	ldr	r4, [r7, #256]
	vadd.i32	q4, q11, q4
	str	r2, [r7, #256]
	vadd.i32	q14, q10, q9
	ldr	r2, [r7, #244]
	vld1.64	{d12-d13}, [r2:64]
	str	r4, [r7, #272]
	veor	q4, q4, q6
	ldr	r4, [r7, #220]
	vadd.i32	q10, q10, q5
	ldr	r2, [r7, #216]
	vadd.i32	q0, q12, q0
	add	fp, fp, r4
	str	ip, [r7, #20]
	ldr	r4, [r7, #212]
	mov	ip, sl
	str	r0, [r7, #224]
	mov	sl, r8
	mov	r0, r5
	ldr	r8, [r7, #252]
	mov	r5, r6
	add	sl, sl, r2
	mov	r6, r9
	ldr	r2, [r7, #208]
	ldr	r9, [r7, #268]
	vadd.i32	q1, q13, q1
	vadd.i32	q2, q11, q2
	str	r1, [r7, #260]
	add	r9, r9, r4
	add	r4, r8, r2
	ldr	r8, [r7, #232]
	vadd.i32	q3, q12, q3
	vadd.i32	q15, q13, q15
	str	r3, [r7, #228]
	add	r2, r8, #2
	vadd.i32	q8, q14, q8
	add	ip, r2, ip
	ldr	r2, [r7, #240]
	vst1.64	{d8-d9}, [r2:64]
	ldr	r2, [r7, #244]
	ldr	r3, [r7, #276]
	vldr	d8, [r2, #16]
	vldr	d9, [r2, #24]
	ldr	r1, [r7, #264]
	veor	q0, q0, q4
	add	r8, r8, #3
	str	r8, [r7, #232]
	ldr	r8, [r7, #240]
	vstr	d0, [r8, #16]
	vstr	d1, [r8, #24]
	vldr	d0, [r2, #32]
	vldr	d1, [r2, #40]
	veor	q1, q1, q0
	vstr	d2, [r8, #32]
	vstr	d3, [r8, #40]
	vldr	d2, [r2, #48]
	vldr	d3, [r2, #56]
	veor	q10, q10, q1
	vstr	d20, [r8, #48]
	vstr	d21, [r8, #56]
	vldr	d8, [r2, #64]
	vldr	d9, [r2, #72]
	veor	q2, q2, q4
	vstr	d4, [r8, #64]
	vstr	d5, [r8, #72]
	vldr	d10, [r2, #80]
	vldr	d11, [r2, #88]
	veor	q3, q3, q5
	vstr	d6, [r8, #80]
	vstr	d7, [r8, #88]
	vldr	d12, [r2, #96]
	vldr	d13, [r2, #104]
	veor	q15, q15, q6
	vstr	d30, [r8, #96]
	vstr	d31, [r8, #104]
	vldr	d20, [r2, #112]
	vldr	d21, [r2, #120]
	veor	q8, q8, q10
	vstr	d16, [r8, #112]
	vstr	d17, [r8, #120]
	mov	r8, r2
	ldr	r2, [r2, #128]
	vadd.i32	q10, q14, q9
	eor	r2, fp, r2
	ldr	fp, [r7, #240]
	vadd.i32	q10, q10, q9
	str	r2, [fp, #128]
	ldr	r2, [r8, #132]
	eor	r2, sl, r2
	str	r2, [fp, #132]
	ldr	r2, [r8, #136]
	eor	r2, r9, r2
	str	r2, [fp, #136]
	ldr	r2, [r8, #140]
	eors	r2, r2, r4
	str	r2, [fp, #140]
	ldr	r2, [r7, #236]
	ldr	r4, [r8, #144]
	ldr	r2, [r2, #0]
	str	r4, [r7, #168]
	ldr	r4, [r7, #224]
	add	r8, r4, r2
	ldr	r2, [r7, #168]
	ldr	r4, [r7, #236]
	eor	r8, r8, r2
	ldr	r2, [r7, #244]
	str	r8, [fp, #144]
	ldr	r4, [r4, #4]
	ldr	r2, [r2, #148]
	str	r2, [r7, #36]
	ldr	r2, [r7, #260]
	add	r8, r2, r4
	ldr	r4, [r7, #36]
	ldr	r2, [r7, #236]
	eor	r8, r8, r4
	ldr	r4, [r7, #244]
	str	r8, [fp, #148]
	ldr	r2, [r2, #8]
	ldr	r4, [r4, #152]
	str	r4, [r7, #32]
	ldr	r4, [r7, #256]
	add	r8, r4, r2
	ldr	r2, [r7, #32]
	eor	r8, r8, r2
	str	r8, [fp, #152]
	ldr	r2, [r7, #244]
	ldr	r4, [r7, #236]
	ldr	r2, [r2, #156]
	ldr	r4, [r4, #12]
	str	r2, [r7, #28]
	ldr	r2, [r7, #228]
	add	r8, r2, r4
	ldr	r4, [r7, #28]
	ldr	r2, [r7, #244]
	eor	r8, r8, r4
	str	r8, [fp, #156]
	ldr	r8, [r7, #236]
	ldr	r2, [r2, #160]
	ldr	r4, [r8, #16]
	adds	r0, r0, r4
	ldr	r4, [r7, #244]
	eors	r0, r0, r2
	str	r0, [fp, #160]
	ldr	r0, [r8, #20]
	ldr	r2, [r4, #164]
	adds	r1, r1, r0
	ldr	r0, [r7, #272]
	eors	r1, r1, r2
	str	r1, [fp, #164]
	ldr	r2, [r8, #24]
	ldr	r1, [r4, #168]
	adds	r2, r0, r2
	eors	r2, r2, r1
	str	r2, [fp, #168]
	ldr	r1, [r8, #28]
	ldr	r2, [r4, #172]
	adds	r3, r3, r1
	eors	r3, r3, r2
	str	r3, [fp, #172]
	ldr	r3, [r4, #176]
	eor	r3, ip, r3
	str	r3, [fp, #176]
	ldr	r3, [r4, #180]
	ldr	r4, [r7, #392]
	eors	r6, r6, r3
	str	r6, [fp, #180]
	ldr	r6, [r7, #244]
	ldr	r2, [r4, #0]
	ldr	r3, [r6, #184]
	adds	r5, r5, r2
	eors	r5, r5, r3
	str	r5, [fp, #184]
	ldr	r2, [r6, #188]
	adds	r6, r6, #192
	ldr	r3, [r4, #4]
	str	r6, [r7, #244]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #232]
	adds	r4, r0, r3
	eors	r4, r4, r2
	ldr	r2, [r7, #204]
	str	r4, [fp, #188]
	add	fp, fp, #192
	cmp	r1, r2
	str	fp, [r7, #240]
	bne	.L4
	ldr	r4, [r7, #188]
	ldr	r3, [r7, #176]
	ldr	r6, [r7, #184]
	adds	r5, r3, r4
	ldr	r8, [r7, #180]
	lsls	r5, r5, #6
	adds	r4, r6, r5
	add	r5, r8, r5
.L2:
	ldr	fp, [r7, #192]
	movw	r3, #43691
	movt	r3, 43690
	ldr	r6, [r7, #192]
	umull	fp, r3, r3, fp
	lsrs	r3, r3, #7
	add	r3, r3, r3, lsl #1
	sub	r3, r6, r3, lsl #6
	lsrs	r6, r3, #6
	beq	.L5
	add	r1, r5, #16
	add	r2, r4, #16
	mov	r0, r6
	vldr	d30, .L41
	vldr	d31, .L41+8
.L6:
	vmov	q8, q10  @ v4si
	movs	r3, #10
	vmov	q1, q13  @ v4si
	vmov	q14, q12  @ v4si
	vmov	q3, q11  @ v4si
.L7:
	vadd.i32	q3, q3, q14
	subs	r3, r3, #1
	veor	q2, q8, q3
	vrev32.16	q2, q2
	vadd.i32	q8, q1, q2
	veor	q9, q8, q14
	vshl.i32	q14, q9, #12
	vsri.32	q14, q9, #20
	vadd.i32	q3, q3, q14
	veor	q2, q3, q2
	vshl.i32	q9, q2, #8
	vsri.32	q9, q2, #24
	vadd.i32	q8, q8, q9
	vext.32	q9, q9, q9, #3
	veor	q14, q8, q14
	vext.32	q1, q8, q8, #2
	vshl.i32	q8, q14, #7
	vsri.32	q8, q14, #25
	vext.32	q8, q8, q8, #1
	vadd.i32	q3, q3, q8
	veor	q2, q3, q9
	vrev32.16	q2, q2
	vadd.i32	q9, q1, q2
	veor	q8, q9, q8
	vshl.i32	q14, q8, #12
	vsri.32	q14, q8, #20
	vadd.i32	q3, q3, q14
	veor	q2, q3, q2
	vshl.i32	q8, q2, #8
	vsri.32	q8, q2, #24
	vadd.i32	q9, q9, q8
	vext.32	q8, q8, q8, #1
	veor	q14, q9, q14
	vext.32	q1, q9, q9, #2
	vshl.i32	q9, q14, #7
	vsri.32	q9, q14, #25
	vext.32	q14, q9, q9, #3
	bne	.L7
	vadd.i32	q8, q10, q8
	subs	r0, r0, #1
	vadd.i32	q3, q11, q3
	vldr	d0, [r1, #-16]
	vldr	d1, [r1, #-8]
	vadd.i32	q14, q12, q14
	vadd.i32	q1, q13, q1
	veor	q3, q3, q0
	vstr	d6, [r2, #-16]
	vstr	d7, [r2, #-8]
	vadd.i32	q10, q10, q15
	vld1.64	{d8-d9}, [r1:64]
	veor	q14, q14, q4
	vst1.64	{d28-d29}, [r2:64]
	vldr	d10, [r1, #16]
	vldr	d11, [r1, #24]
	veor	q1, q1, q5
	vstr	d2, [r2, #16]
	vstr	d3, [r2, #24]
	vldr	d18, [r1, #32]
	vldr	d19, [r1, #40]
	add	r1, r1, #64
	veor	q8, q8, q9
	vstr	d16, [r2, #32]
	vstr	d17, [r2, #40]
	add	r2, r2, #64
	bne	.L6
	lsls	r6, r6, #6
	adds	r4, r4, r6
	adds	r5, r5, r6
.L5:
	ldr	r6, [r7, #192]
	ands	ip, r6, #63
	beq	.L1
	vmov	q8, q10  @ v4si
	movs	r3, #10
	vmov	q14, q13  @ v4si
	vmov	q9, q12  @ v4si
	vmov	q15, q11  @ v4si
.L10:
	vadd.i32	q15, q15, q9
	subs	r3, r3, #1
	veor	q8, q8, q15
	vrev32.16	q8, q8
	vadd.i32	q3, q14, q8
	veor	q9, q3, q9
	vshl.i32	q14, q9, #12
	vsri.32	q14, q9, #20
	vadd.i32	q15, q15, q14
	veor	q9, q15, q8
	vshl.i32	q8, q9, #8
	vsri.32	q8, q9, #24
	vadd.i32	q9, q3, q8
	vext.32	q8, q8, q8, #3
	veor	q2, q9, q14
	vext.32	q14, q9, q9, #2
	vshl.i32	q9, q2, #7
	vsri.32	q9, q2, #25
	vext.32	q9, q9, q9, #1
	vadd.i32	q15, q15, q9
	veor	q3, q15, q8
	vrev32.16	q3, q3
	vadd.i32	q14, q14, q3
	veor	q8, q14, q9
	vshl.i32	q9, q8, #12
	vsri.32	q9, q8, #20
	vadd.i32	q15, q15, q9
	veor	q3, q15, q3
	vshl.i32	q8, q3, #8
	vsri.32	q8, q3, #24
	vadd.i32	q14, q14, q8
	vext.32	q8, q8, q8, #1
	veor	q3, q14, q9
	vext.32	q14, q14, q14, #2
	vshl.i32	q9, q3, #7
	vsri.32	q9, q3, #25
	vext.32	q9, q9, q9, #3
	bne	.L10
	cmp	ip, #15
	vadd.i32	q11, q11, q15
	bhi	.L37
	ldr	fp, [r7, #196]
	vst1.64	{d22-d23}, [fp:128]
.L14:
	ldr	r6, [r7, #192]
	and	r3, r6, #48
	cmp	ip, r3
	bls	.L1
	adds	r0, r5, r3
	adds	r1, r4, r3
	add	r2, r0, #16
	add	r6, r1, #16
	cmp	r1, r2
	it	cc
	cmpcc	r0, r6
	rsb	r9, r3, ip
	ite	cc
	movcc	r2, #0
	movcs	r2, #1
	cmp	r9, #15
	ite	ls
	movls	r2, #0
	andhi	r2, r2, #1
	lsr	r8, r9, #4
	eor	r2, r2, #1
	cmp	r8, #0
	it	eq
	orreq	r2, r2, #1
	lsl	sl, r8, #4
	cbnz	r2, .L35
	ldr	fp, [r7, #196]
	add	r6, fp, r3
.L17:
	vld1.8	{q8}, [r0]!
	adds	r2, r2, #1
	cmp	r8, r2
	vld1.8	{q9}, [r6]!
	veor	q8, q9, q8
	vst1.8	{q8}, [r1]!
	bhi	.L17
	cmp	r9, sl
	add	r3, r3, sl
	beq	.L1
.L35:
	ldr	r0, [r7, #196]
.L25:
	ldrb	r2, [r5, r3]	@ zero_extendqisi2
	ldrb	r1, [r3, r0]	@ zero_extendqisi2
	eors	r2, r2, r1
	strb	r2, [r4, r3]
	adds	r3, r3, #1
	cmp	ip, r3
	bhi	.L25
.L1:
	add	r7, r7, #296
	mov	sp, r7
	fldmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	pop	{r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L37:
	cmp	ip, #31
	vld1.64	{d0-d1}, [r5:64]
	vadd.i32	q9, q12, q9
	veor	q11, q11, q0
	vst1.64	{d22-d23}, [r4:64]
	bls	.L12
	cmp	ip, #47
	vldr	d2, [r5, #16]
	vldr	d3, [r5, #24]
	vadd.i32	q13, q13, q14
	veor	q9, q9, q1
	vstr	d18, [r4, #16]
	vstr	d19, [r4, #24]
	bls	.L13
	vadd.i32	q8, q8, q10
	vldr	d0, [r5, #32]
	vldr	d1, [r5, #40]
	ldr	r6, [r7, #196]
	vstr	d16, [r6, #48]
	vstr	d17, [r6, #56]
	veor	q8, q13, q0
	vstr	d16, [r4, #32]
	vstr	d17, [r4, #40]
	b	.L14
.L12:
	ldr	r8, [r7, #196]
	vstr	d18, [r8, #16]
	vstr	d19, [r8, #24]
	b	.L14
.L20:
	ldr	r5, [r7, #180]
	ldr	r4, [r7, #184]
	b	.L2
.L13:
	ldr	r6, [r7, #196]
	vstr	d26, [r6, #32]
	vstr	d27, [r6, #40]
	b	.L14
.L42:
	.align	3
.L41:
	.word	1
	.word	0
	.word	0
	.word	0
	.size	CRYPTO_chacha_20_neon, .-CRYPTO_chacha_20_neon
	.section	.rodata
	.align	3
.LANCHOR0 = . + 0
.LC0:
	.word	1634760805
	.word	857760878
	.word	2036477234
	.word	1797285236
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.7-2012.10-20121022 - Linaro GCC 2012.10) 4.7.3 20121001 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
