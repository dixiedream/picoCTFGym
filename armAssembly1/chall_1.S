	.arch armv8-a
	.file	"chall_1.c"
	.text
	.align	2
	.global	func
	.type	func, %function
func:
	sub	sp, sp, #32
	str	w0, [sp, 12] # sp12 = X
	mov	w0, 68
	str	w0, [sp, 16] # sp16 = 68
	mov	w0, 2
	str	w0, [sp, 20] # sp20 = 2
	mov	w0, 3
	str	w0, [sp, 24] # sp24 = 3
	ldr	w0, [sp, 20] # w0 = 2
	ldr	w1, [sp, 16] # w1 = 68
	lsl	w0, w1, w0 # 68 << 2 = 272
	str	w0, [sp, 28] # 272
	ldr	w1, [sp, 28] # 272
	ldr	w0, [sp, 24] # 3
	sdiv	w0, w1, w0 # 272 / 3 = 90
	str	w0, [sp, 28] # sp28 = 90
	ldr	w1, [sp, 28] # w1 = 90
	ldr	w0, [sp, 12] # w0 = X
	sub	w0, w1, w0 # 90 - X
	str	w0, [sp, 28] # sp28 = 90 - X
	ldr	w0, [sp, 28] # w0 = 90 - X
	add	sp, sp, 32
	ret
	.size	func, .-func
	.section	.rodata
	.align	3
.LC0:
	.string	"You win!"
	.align	3
.LC1:
	.string	"You Lose :("
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29, 28] # x29[28] = w0
	str	x1, [x29, 16] # x29[16] = second argument
	ldr	x0, [x29, 16] # first argument =  x29[16]
	add	x0, x0, 8
	ldr	x0, [x0]
	bl	atoi
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	bl	func
	cmp	w0, 0
	bne	.L4
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	b	.L6
.L4:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	puts
.L6:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
