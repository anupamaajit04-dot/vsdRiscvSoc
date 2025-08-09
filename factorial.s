.file   "factorial.c"
    .option nopic
    .attribute arch, "rv64imac"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  fact
    .type   fact, @function
fact:
    addi    sp,sp,-32           # allocate stack space
    sd      ra,24(sp)           # save return address
    sd      a0,16(sp)           # save n
    li      a5,1                # a5 = 1
    bgeu    a0,a5,.Lrec         # if n >= 2, go to recursion
    li      a0,1                # return 1 for n < 2
    j       .Ldone
.Lrec:
    addi    a0,a0,-1            # n-1
    call    fact
    ld      a5,16(sp)           # reload original n
    mul     a0,a5,a0            # multiply n * fact(n-1)
.Ldone:
    ld      ra,24(sp)           # restore return address
    addi    sp,sp,32            # free stack space
    ret
    .size   fact, .-fact

    .align  1
    .globl  main
    .type   main, @function
main:
    addi    sp,sp,-48
    sd      ra,40(sp)
    li      a5,0                 # (you’d see uniq_print_header here if compiled with unique.h)
    li      a0,12                 # n = 12
    sd      a0,32(sp)
    call    fact
    mv      a2,a0                 # move factorial result to a2
    ld      a1,32(sp)             # a1 = n
    la      a0,.LC0               # load printf format string
    call    printf
    li      a0,0
    ld      ra,40(sp)
    addi    sp,sp,48
    ret
    .size   main, .-main

    .section    .rodata
    .align  3
.LC0:
    .string "n=%u, n!=%llu\n"

