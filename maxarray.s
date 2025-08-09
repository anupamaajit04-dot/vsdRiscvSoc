.file	"maxarray.c"
	.option nopic
	.attribute arch, "rv64i2p0"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	la	a0,.LC0
	call	uniq_print_header
	li	a5,42
	sd	a5,-44(s0)
	li	a5,-7
	sd	a5,-40(s0)
	li	a5,19
	sd	a5,-36(s0)
	li	a5,88
	sd	a5,-32(s0)
	li	a5,3
	sd	a5,-28(s0)
	li	a5,88
	sd	a5,-24(s0)
	li	a5,5
	sd	a5,-20(s0)
	li	a5,-100
	sd	a5,-16(s0)
	li	a5,37
	sd	a5,-12(s0)
