.align 4
.section .text
.globl _start
    # Refer to the RISC-V ISA Spec for the functionality of
    # the instructions in this test program.

_start:
    lw t1, operand  # load operand from memory
    and t2, t2, 0   # clear iteration count
    and t3, t3, 0   # clear multiplicand
    and t4, t4, 0   # clear multiplier
    and t5, t5, 0   # multiply result
    and t6, t6, 0   # clear a temp register
    and s1, s1, 0   # clear results register

    addi s1, s1, 1  # set basecase result to 1

    loop: 
        and t5, t5, 0       # clear result register
        addi t3, s1, 0      # previous mult. result is new multiplicand
        addi t4, t2, 0      # set multiplier
        jal ra, multiply    # call multiply subroutine
        addi s1, t5, 0      # store result in running count
        addi t2, t2, 1      # loop count++
        bne t2, t1, loop    # loop again if not on the last iteration

halt:                 # Infinite loop to keep the processor
    beq x0, x0, halt  # from trying to execute the data below.
                      # Your own programs should also make use
                      # of an infinite loop at the end.

# multiply subroutine: t5 <= t3 * (t4 + 1)
multiply: 
    and t6, t6, 0           # t6 <= 0
    add t5, t5, t3          # t5 <= t5 + t3 
    beq t4, t6, m_done      # if t4 == 0, finish subroutine
    addi t4, t4, -1         # t4--
    beq x0, x0, multiply    # loop again

m_done: 
    ret                 # return to where we called multiply


.section .rodata
operand:       .word 0x0000000C
