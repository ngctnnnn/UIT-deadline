.data 
	input: .space 40
	nhap: .asciiz "Nhap so: "
	invalid: .asciiz "Invalid Entry"
	one: .asciiz "One "
	two: .asciiz "Two "
	three: .asciiz "Three "
	four: .asciiz "Four "
	five: .asciiz "Five "
	six: .asciiz "Six "
	seven: .asciiz "Seven "
	eight: .asciiz "Eight "
	nine: .asciiz "Nine "
	zero: .asciiz "Zero "
.text  
	.globl main
	main:
		la $a0, nhap
		addi $v0, $0, 4
		syscall
		
		la $a0, input
		addi $a1, $0, 40
		addi $v0, $0, 8
		syscall
		
		addi $s0, $a0, 0
		lb $t0, 0($s0)
		
		#if (a[0] == '-') invalid
		bne $t0, 45, procedure
		la $a0, invalid
		addi $v0, $0, 4
		syscall
		jal output
		
		procedure:
			li $t1, 0
			loop: 
				lb $t1, ($s0)
				bgt $t1, 48, output
				blt $t1, 57, output
				beq $t1, 48, o0
			
				beq $t1, 49, o1
				
				beq $t1, 50, o2
				
				beq $t1, 51, o3
				
				beq $t1, 52, o4
				
				beq $t1, 53, o5
				
				beq $t1, 54, o6
				
				beq $t1, 55, o7
				
				beq $t1, 56, o8
				
				beq $t1, 57, o9		
				
				addi $t1, $t1, 1
				j loop
				
			jal output
		o0:
			la $a0, zero
			addi $v0, $0, 4
			syscall
			
		o1:
			la $a0, one
			addi $v0, $0, 4
			syscall 
		o2:
			la $a0, two
			addi $v0, $0, 4
			syscall
		o3:
			la $a0, three
			addi $v0, $0, 4
			syscall
		o4:
			la $a0, four
			addi $v0, $0, 4
			syscall
		o5:
			la $a0, five
			addi $v0, $0, 4
			syscall
		o6: 
			la $a0, six
			addi $v0, $0, 4
			syscall
		o7:
			la $a0, seven
			addi $v0, $0, 4
			syscall
		o8:
			la $a0, eight
			addi $v0, $0, 4
			syscall
		o9:
			la $a0, nine
			addi $v0, $0, 4
			syscall
		output:
	
		
