#===================================
.arch armv8-a
#===================================


#===================================
.text
#===================================

.align 2
#-----------------------------------
.globl f_printf
.type f_printf, @function
#-----------------------------------
f_printf:
$d.2:
$x.0:

            sub sp,sp,#32
            stp fp,lr,[sp,#16]
            add fp,sp,#16
            adrp x8, f_printf
            add x8,x8, :lo12:f_printf
            stur w0,[fp,#-4]
            ldur w1,[fp,#-4]
            mov x0,x8
            bl #32

            ldp fp,lr,[sp,#16]
            add sp,sp,#32
            ret 
.align 4
#-----------------------------------
.globl f_scanf_nop
.type f_scanf_nop, @function
#-----------------------------------
f_scanf_nop:

            sub sp,sp,#32
            stp fp,lr,[sp,#16]
            add fp,sp,#16
            adrp x0, f_printf
            add x0,x0, :lo12:f_printf
            sub x1,fp,#4
            bl #72

            ldur w8,[fp,#-4]
            mov w0,w8
            ldp fp,lr,[sp,#16]
            add sp,sp,#32
            ret 
.align 4
#-----------------------------------
.globl f_rand
.type f_rand, @function
#-----------------------------------
f_rand:

            sub sp,sp,#32
            stp fp,lr,[sp,#16]
            add fp,sp,#16
            adrp x8, f_printf
            add x8,x8, :lo12:f_printf
            blr x8
            stur w0,[fp,#-4]
            ldur w0,[fp,#-4]
            ldp fp,lr,[sp,#16]
            add sp,sp,#32
            ret 
.align 2
#-----------------------------------
.globl func0
.type func0, @function
#-----------------------------------
func0:

            sub sp,sp,#64
            stp fp,lr,[sp,#48]
            add fp,sp,#48
            mov w8,#594
            mov w9,#-397
            str w8,[sp,#16]
            str w9,[sp,#12]
            bl f_rand

            stur w0,[fp,#-4]
            bl f_scanf_nop

            stur w0,[fp,#-8]
            bl f_scanf_nop

            stur w0,[fp,#-12]
            bl f_rand

            stur w0,[fp,#-16]
            bl f_rand

            stur w0,[fp,#-20]
            ldr w8,[sp,#16]
            str w8,[sp,#24]
            ldr w9,[sp,#12]
            str w9,[sp,#20]
            ldur w10,[fp,#-4]
            ldr w11,[sp,#20]
            mul w10,w10,w11
            str w10,[sp,#20]
            ldur w10,[fp,#-12]
            ldur w11,[fp,#-4]
            add w10,w10,w11
            str w10,[sp,#24]
            ldr w0,[sp,#24]
            bl f_printf

            ldur w8,[fp,#-4]
            ldr w9,[sp,#24]
            mul w8,w8,w9
            stur w8,[fp,#-8]
            ldur w8,[fp,#-4]
            ldur w9,[fp,#-8]
            subs w8,w8,w9
            stur w8,[fp,#-20]
            ldur w0,[fp,#-20]
            bl f_printf

            ldur w8,[fp,#-4]
            ldr w9,[sp,#24]
            subs w8,w8,w9
            ldur w9,[fp,#-12]
            subs w8,w8,w9
            ldr w9,[sp,#20]
            mul w8,w8,w9
            stur w8,[fp,#-16]
            ldur w0,[fp,#-16]
            bl f_printf

            ldur w8,[fp,#-12]
            ldr w9,[sp,#24]
            add w8,w8,w9
            ldur w9,[fp,#-4]
            mul w8,w8,w9
            ldr w9,[sp,#20]
            mul w8,w8,w9
            stur w8,[fp,#-12]
            ldur w0,[fp,#-12]
            ldp fp,lr,[sp,#48]
            add sp,sp,#64
            ret 
.align 3
#-----------------------------------
.globl func1
.type func1, @function
#-----------------------------------
func1:

            sub sp,sp,#64
            stp fp,lr,[sp,#48]
            add fp,sp,#48
            mov w8,#-227
            mov w9,#868
            str w8,[sp,#16]
            str w9,[sp,#12]
            bl f_rand

            stur w0,[fp,#-4]
            bl f_scanf_nop

            stur w0,[fp,#-8]
            bl f_rand

            stur w0,[fp,#-12]
            bl f_scanf_nop

            stur w0,[fp,#-16]
            bl f_scanf_nop

            stur w0,[fp,#-20]
            ldr w8,[sp,#16]
            str w8,[sp,#24]
            ldr w9,[sp,#12]
            str w9,[sp,#20]
            ldur w10,[fp,#-4]
            ldur w11,[fp,#-20]
            subs w10,w10,w11
            stur w10,[fp,#-16]
            ldur w0,[fp,#-16]
            bl f_printf

            ldur w8,[fp,#-12]
            ldur w9,[fp,#-4]
            add w8,w8,w9
            str w8,[sp,#24]
            ldr w8,[sp,#24]
            ldr w9,[sp,#20]
            add w8,w8,w9
            stur w8,[fp,#-16]
            ldur w0,[fp,#-16]
            bl f_printf

            ldur w8,[fp,#-12]
            ldur w9,[fp,#-4]
            subs w8,w8,w9
            str w8,[sp,#24]
            ldr w0,[sp,#24]
            bl f_printf

            ldur w8,[fp,#-16]
            ldr w9,[sp,#24]
            subs w8,w8,w9
            str w8,[sp,#24]
            ldur w8,[fp,#-16]
            ldr w9,[sp,#24]
            mul w8,w8,w9
            ldur w9,[fp,#-8]
            subs w8,w8,w9
            ldur w9,[fp,#-4]
            mul w8,w8,w9
            ldr w9,[sp,#24]
            subs w8,w8,w9
            stur w8,[fp,#-4]
            ldur w0,[fp,#-4]
            ldp fp,lr,[sp,#48]
            add sp,sp,#64
            ret 
.align 2
#-----------------------------------
.globl func2
.type func2, @function
#-----------------------------------
func2:

            sub sp,sp,#64
            stp fp,lr,[sp,#48]
            add fp,sp,#48
            mov w8,#543
            mov w9,#253
            stur w0,[fp,#-4]
            str w8,[sp,#12]
            str w9,[sp,#8]
            bl f_rand

            stur w0,[fp,#-8]
            bl f_rand

            stur w0,[fp,#-12]
            bl f_rand

            stur w0,[fp,#-16]
            bl f_scanf_nop

            stur w0,[fp,#-20]
            bl f_rand

            str w0,[sp,#24]
            ldr w8,[sp,#12]
            str w8,[sp,#20]
            ldr w9,[sp,#8]
            str w9,[sp,#16]
            ldr w10,[sp,#16]
            ldr w11,[sp,#24]
            subs w10,w10,w11
            ldur w11,[fp,#-4]
            subs w10,w10,w11
            ldur w11,[fp,#-12]
            subs w10,w10,w11
            ldr w11,[sp,#20]
            add w10,w10,w11
            stur w10,[fp,#-20]
            ldr w10,[sp,#20]
            ldur w11,[fp,#-8]
            subs w10,w10,w11
            stur w10,[fp,#-16]
            ldr w10,[sp,#16]
            ldur w11,[fp,#-20]
            mul w10,w10,w11
            stur w10,[fp,#-8]
            ldur w10,[fp,#-16]
            ldr w11,[sp,#16]
            mul w10,w10,w11
            ldr w11,[sp,#24]
            mul w10,w10,w11
            ldur w11,[fp,#-8]
            subs w10,w10,w11
            stur w10,[fp,#-20]
            ldur w0,[fp,#-20]
            bl f_printf

            ldur w8,[fp,#-4]
            ldur w9,[fp,#-8]
            mul w8,w8,w9
            str w8,[sp,#16]
            ldur w8,[fp,#-8]
            ldur w9,[fp,#-16]
            subs w8,w8,w9
            str w8,[sp,#20]
            ldr w0,[sp,#20]
            ldp fp,lr,[sp,#48]
            add sp,sp,#64
            ret 
.align 2
#-----------------------------------
.globl func3
.type func3, @function
#-----------------------------------
func3:

            sub sp,sp,#64
            stp fp,lr,[sp,#48]
            add fp,sp,#48
            mov w8,#12
            mov w9,#-672
            stur w0,[fp,#-4]
            stur w1,[fp,#-8]
            str w8,[sp,#8]
            str w9,[sp,#4]
            bl f_scanf_nop

            stur w0,[fp,#-12]
            bl f_rand

            stur w0,[fp,#-16]
            bl f_rand

            stur w0,[fp,#-20]
            bl f_rand

            str w0,[sp,#24]
            bl f_scanf_nop

            str w0,[sp,#20]
            ldr w8,[sp,#8]
            str w8,[sp,#16]
            ldr w9,[sp,#4]
            str w9,[sp,#12]
            ldur w10,[fp,#-16]
            ldur w11,[fp,#-12]
            subs w10,w10,w11
            stur w10,[fp,#-20]
            ldr w10,[sp,#12]
            ldr w11,[sp,#20]
            add w10,w10,w11
            ldr w11,[sp,#12]
            add w10,w10,w11
            ldur w11,[fp,#-20]
            subs w10,w10,w11
            ldr w11,[sp,#20]
            subs w10,w10,w11
            ldur w11,[fp,#-16]
            mul w10,w10,w11
            ldur w11,[fp,#-20]
            mul w10,w10,w11
            ldr w11,[sp,#12]
            subs w10,w10,w11
            str w10,[sp,#20]
            ldr w10,[sp,#20]
            ldr w11,[sp,#12]
            mul w10,w10,w11
            ldr w11,[sp,#16]
            subs w10,w10,w11
            str w10,[sp,#16]
            ldr w10,[sp,#20]
            ldur w11,[fp,#-12]
            mul w10,w10,w11
            str w10,[sp,#20]
            ldr w0,[sp,#20]
            bl f_printf

            ldr w8,[sp,#12]
            ldur w9,[fp,#-12]
            add w8,w8,w9
            stur w8,[fp,#-4]
            ldur w0,[fp,#-4]
            bl f_printf

            ldur w8,[fp,#-20]
            ldr w9,[sp,#20]
            mul w8,w8,w9
            ldur w9,[fp,#-4]
            add w8,w8,w9
            stur w8,[fp,#-16]
            ldur w0,[fp,#-16]
            ldp fp,lr,[sp,#48]
            add sp,sp,#64
            ret 
.align 4
#-----------------------------------
.globl func4
.type func4, @function
#-----------------------------------
func4:

            sub sp,sp,#64
            stp fp,lr,[sp,#48]
            add fp,sp,#48
            mov w8,#-587
            mov w9,#-602
            stur w0,[fp,#-4]
            stur w1,[fp,#-8]
            stur w2,[fp,#-12]
            str w8,[sp,#4]
            str w9,[sp]
            bl f_scanf_nop

            stur w0,[fp,#-16]
            bl f_scanf_nop

            stur w0,[fp,#-20]
            bl f_scanf_nop

            str w0,[sp,#24]
            bl f_rand

            str w0,[sp,#20]
            bl f_rand

            str w0,[sp,#16]
            ldr w8,[sp,#4]
            str w8,[sp,#12]
            ldr w9,[sp]
            str w9,[sp,#8]
            ldur w10,[fp,#-20]
            ldr w11,[sp,#20]
            subs w10,w10,w11
            ldur w11,[fp,#-4]
            mul w10,w10,w11
            ldr w11,[sp,#20]
            add w10,w10,w11
            ldur w11,[fp,#-8]
            add w10,w10,w11
            ldur w11,[fp,#-12]
            mul w10,w10,w11
            ldr w11,[sp,#16]
            subs w10,w10,w11
            stur w10,[fp,#-4]
            ldur w0,[fp,#-4]
            bl f_printf

            ldr w8,[sp,#12]
            ldr w9,[sp,#24]
            subs w8,w8,w9
            ldur w9,[fp,#-12]
            mul w8,w8,w9
            ldur w9,[fp,#-8]
            subs w8,w8,w9
            str w8,[sp,#16]
            ldr w0,[sp,#16]
            bl f_printf

            ldr w8,[sp,#24]
            ldur w9,[fp,#-16]
            add w8,w8,w9
            ldur w9,[fp,#-12]
            subs w8,w8,w9
            ldr w9,[sp,#24]
            subs w8,w8,w9
            stur w8,[fp,#-8]
            ldr w8,[sp,#8]
            ldur w9,[fp,#-4]
            add w8,w8,w9
            ldr w9,[sp,#24]
            add w8,w8,w9
            ldr w9,[sp,#12]
            mul w8,w8,w9
            str w8,[sp,#20]
            ldr w0,[sp,#20]
            bl f_printf

            ldur w8,[fp,#-16]
            ldur w9,[fp,#-12]
            subs w8,w8,w9
            ldur w9,[fp,#-16]
            subs w8,w8,w9
            str w8,[sp,#20]
            ldr w8,[sp,#12]
            ldur w9,[fp,#-4]
            subs w8,w8,w9
            str w8,[sp,#24]
            ldr w0,[sp,#24]
            ldp fp,lr,[sp,#48]
            add sp,sp,#64
            ret 
.align 3
#-----------------------------------
.globl main
.type main, @function
#-----------------------------------
main:

            sub sp,sp,#48
            stp fp,lr,[sp,#32]
            add fp,sp,#32
            mov w0,#0
            stur wzr,[fp,#-4]
            str w0,[sp,#8]
            bl f_rand

            stur w0,[fp,#-8]
            bl f_rand

            stur w0,[fp,#-12]
            bl f_rand

            str w0,[sp,#16]
            bl f_rand

            str w0,[sp,#12]
            bl func0

            bl func1

            ldur w8,[fp,#-8]
            mov w0,w8
            bl func2

            ldur w8,[fp,#-8]
            ldur w1,[fp,#-12]
            mov w0,w8
            bl func3

            ldur w8,[fp,#-8]
            ldur w1,[fp,#-12]
            ldr w2,[sp,#16]
            mov w0,w8
            bl func4

            ldr w8,[sp,#8]
            mov w0,w8
            ldp fp,lr,[sp,#32]
            add sp,sp,#48
            ret 
#===================================
# end section .text
#===================================

#===================================
.section .rodata.str1.1 ,"a",@progbits
#===================================

.align 0
$d.1:
          .string "%d"
#===================================
# end section .rodata.str1.1
#===================================
#-----------------------------------
.globl __isoc99_scanf
.type __isoc99_scanf, @notype
#-----------------------------------
#-----------------------------------
.globl printf
.type printf, @notype
#-----------------------------------
#-----------------------------------
.globl rand
.type rand, @notype
#-----------------------------------
