.file	"bitops.c"
	.option nopic
	.attribute arch, "rv64imac"
	.text
	.align	1
	.globl	uniq_print_header
	.type	uniq_print_header,@function
uniq_print_header:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	a0,8(sp)
	lla	a0,.LC0
	call	printf
	ld	a0,8(sp)
	lla	a1,.LC1
	mv	a2,a0
	mv	a0,a1
	call	printf
	lla	a0,.LC2
	call	printf
	ld	ra,24(sp)
	addi	sp,sp,32
	ret
	.size	uniq_print_header, .-uniq_print_header

	.align	1
	.globl	main
	.type	main,@function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	lla	a0,.LC3
	call	uniq_print_header
	li	a0, -1515870811      # 0xA5A5A5A5
	li	a1, 252655540        # 0x0F0F1234
	sw	a0,28(sp)
	sw	a1,24(sp)
	lw	a2,28(sp)
	lw	a3,24(sp)
	and	a4,a2,a3
	lla	a0,.LC4
	mv	a1,a4
	call	printf
	lw	a2,28(sp)
	lw	a3,24(sp)
	or	a4,a2,a3
	lla	a0,.LC5
	mv	a1,a4
	call	printf
	lw	a2,28(sp)
	lw	a3,24(sp)
	xor	a4,a2,a3
	lla	a0,.LC6
	mv	a1,a4
	call	printf
	lw	a2,28(sp)
	slli	a4,a2,3
	lla	a0,.LC7
	mv	a1,a4
	call	printf
	lw	a3,24(sp)
	srli	a4,a3,2
	lla	a0,.LC8
	mv	a1,a4
	call	printf
	li	a0,0
	ld	ra,40(sp)
	addi	sp,sp,48
	ret
	.size	main, .-main

	.section	.rodata
.LC0:
	.string	"=== RISC-V Proof Header ===\n"
.LC1:
	.string	"Program : %s\n"
.LC2:
	.string	"===========================\n"
.LC3:
	.string	"bitops"
.LC4:
	.string	"x&y=0x%08X\n"
.LC5:
	.string	"x|y=0x%08X\n"
.LC6:
	.string	"x^y=0x%08X\n"
.LC7:
	.string	"x<<3=0x%08X\n"
.LC8:
	.string	"y>>2=0x%08X\n"
	.ident	"GCC: (GNU) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
