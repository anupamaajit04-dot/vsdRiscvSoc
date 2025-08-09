.file   "bubble_sort.c"
    .option nopic
    .attribute arch, "rv64i2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  bubble
    .type   bubble, @function
bubble:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
    sw      a1,-36(s0)
    sd      a0,-48(s0)
    li      t0,0
    sw      t0,-20(s0)
.L3:
    lw      t0,-20(s0)
    lw      t1,-36(s0)
    addi    t1,t1,-1
    bge     t0,t1,.L8
    li      t0,0
    sw      t0,-24(s0)
.L7:
    lw      t0,-24(s0)
    lw      t1,-36(s0)
    addi    t1,t1,-1
    lw      t2,-20(s0)
    sub     t1,t1,t2
    bge     t0,t1,.L6
    lw      t1,-24(s0)
    slli    t1,t1,2
    ld      t2,-48(s0)
    add     t1,t2,t1
    lw      t3,0(t1)
    lw      t0,-24(s0)
    addi    t0,t0,1
    slli    t0,t0,2
    ld      t2,-48(s0)
    add     t0,t2,t0
    lw      t4,0(t0)
    ble     t3,t4,.L5
    mv      t5,t3
    sw      t4,0(t1)
    sw      t5,0(t0)
.L5:
    lw      t0,-24(s0)
    addi    t0,t0,1
    sw      t0,-24(s0)
    j       .L7
.L6:
    lw      t0,-20(s0)
    addi    t0,t0,1
    sw      t0,-20(s0)
    j       .L3
.L8:
    ld      ra,40(sp)
    ld      s0,32(sp)
    addi    sp,sp,48
    jr      ra
    .size   bubble, .-bubble
    .align  1
    .globl  main
    .type   main, @function
main:
    addi    sp,sp,-96
    sd      ra,88(sp)
    sd      s0,80(sp)
    addi    s0,sp,96
    # uniq_print_header("bubble_sort")
    la      a0,.LC0
    call    puts
    li      t0,9
    slli    t1,t0,2
    addi    t2,s0,-56
    li      t3,9
    sw      t3,-56(s0)
    li      t3,4
    sw      t3,-52(s0)
    li      t3,1
    sw      t3,-48(s0)
    li      t3,7
    sw      t3,-44(s0)
    li      t3,3
    sw      t3,-40(s0)
    li      t3,8
    sw      t3,-36(s0)
    li      t3,2
    sw      t3,-32(s0)
    li      t3,6
    sw      t3,-28(s0)
    li      t3,5
    sw      t3,-24(s0)
    li      a1,9
    addi    a0,s0,-56
    call    bubble
    la      a0,.LC1
    call    printf
    li      t0,0
    sw      t0,-60(s0)
.L10:
    lw      t0,-60(s0)
    li      t1,9
    bge     t0,t1,.L12
    lw      t1,-60(s0)
    slli    t1,t1,2
    addi    t2,s0,-56
    add     t1,t2,t1
    lw      a1,0(t1)
    la      a0,.LC2
    call    printf
    lw      t0,-60(s0)
    addi    t0,t0,1
    sw      t0,-60(s0)
    j       .L10
.L12:
    la      a0,.LC3
    call    puts
    li      a0,0
    ld      ra,88(sp)
    ld      s0,80(sp)
    addi    sp,sp,96
    jr      ra
    .size   main, .-main
    .section    .rodata
    .align  3
.LC0:
    .string "=== Program: bubble_sort ==="
.LC1:
    .string "Sorted:"
.LC2:
    .string " %d"
.LC3:
    .string ""
    .ident  "GCC: (GNU) 12.2.0"
    .section    .note.GNU-stack,"",@progbits
