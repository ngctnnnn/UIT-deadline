.global main
.main 
addi $s0, $s0, 5
addi $s1, $s1, 5
addi $t0, $t0, 2
addi $t1, $t1, 1
bne $s0, $s1, skip
add $s2, $t0, $t1
j exit
skip: sub $s2, $t0, $t1
exit: