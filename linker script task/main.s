	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	resethandler
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	resethandler, %function
resethandler:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	ldr	r3, .L8
	str	r3, [r7, #36]
	ldr	r3, .L8+4
	str	r3, [r7, #32]
	ldr	r3, .L8+8
	str	r3, [r7, #16]
	ldr	r3, .L8+12
	str	r3, [r7, #28]
	ldr	r3, .L8+16
	str	r3, [r7, #12]
	ldr	r3, .L8+20
	str	r3, [r7, #8]
	ldr	r3, .L8+24
	str	r3, [r7, #24]
	ldr	r3, .L8+28
	str	r3, [r7, #20]
	ldr	r3, .L8+32
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r3, [r7, #28]
	adds	r2, r3, #4
	str	r2, [r7, #28]
	movs	r2, #0
	str	r2, [r3]
.L2:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L3
	b	.L4
.L5:
	ldr	r2, [r7, #36]
	adds	r3, r2, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r1, r3, #4
	str	r1, [r7, #32]
	ldr	r2, [r2]
	str	r2, [r3]
.L4:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L5
	b	.L6
.L7:
	ldr	r2, [r7, #24]
	adds	r3, r2, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r1, r3, #4
	str	r1, [r7, #20]
	ldr	r2, [r2]
	str	r2, [r3]
.L6:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L7
	nop
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	__data_load__
	.word	__data_start__
	.word	__data_end__
	.word	__bss_start__
	.word	__bss_end__
	.word	_stack
	.word	__sprtins_load__
	.word	__sprtins_start__
	.word	__sprtins_end__
	.size	resethandler, .-resethandler
	.global	u8InitGLobalVar
	.data
	.type	u8InitGLobalVar, %object
	.size	u8InitGLobalVar, 1
u8InitGLobalVar:
	.byte	2
	.bss
	.align	2
u32NonInitStaticGlobalVar:
	.space	4
	.size	u32NonInitStaticGlobalVar, 4
	.global	u16ConstGlobalVar
	.section	.rodata
	.align	1
	.type	u16ConstGlobalVar, %object
	.size	u16ConstGlobalVar, 2
u16ConstGlobalVar:
	.short	3
	.global	arr
	.section	.sprints,"a"
	.align	2
	.type	arr, %object
	.size	arr, 40
arr:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #4
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #3
	cmp	r3, #3
	bne	.L11
	ldr	r3, .L13
	movs	r2, #6
	str	r2, [r3]
	adds	r3, r7, #6
	mov	r0, r3
	bl	vidFunc
	b	.L12
.L11:
	ldr	r3, .L13
	movs	r2, #7
	str	r2, [r3]
.L12:
	b	.L12
.L14:
	.align	2
.L13:
	.word	u32NonInitStaticGlobalVar
	.size	main, .-main
	.data
	.type	u8InitStaticLocVar.4180, %object
	.size	u8InitStaticLocVar.4180, 1
u8InitStaticLocVar.4180:
	.byte	5
	.ident	"GCC: (GNU Arm Embedded Toolchain 9-2020-q2-update) 9.3.1 20200408 (release)"
