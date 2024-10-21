
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
findLast_forwards_withPointers:
    add  s0, zero, zero   # default return address : 0 - not found
loop1:
    beq  a1, zero, done1  # finished?
    lw   t1, 0(a0)
    bne  t1, a2, next1
    add  s0, a0, zero  # keep matching element's address in s0
next1:  # prepare for next iteration
    addi a0, a0, 4
    addi a1, a1, -1
    j    loop1
done1:
    addi a7, zero, 10 
    ecall

#-----------------------------
done:
    addi a7, zero, 10 
    ecall
