.data
	NhapN: .asciiz "\nNhap vao so phan tu cua mang: "
	NhapPhanTu: .asciiz "\nNhap vao phan tu thu: "
	KetQua: .asciiz "\nTong cac phan tu cua mang vua nhap la: "
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
		addi $v0,$0,4
		la $a0,NhapN
		syscall

		addi $v0,$0,5
		syscall

		add $s0,$0,$v0
		add $t0,$0,$0
		add $s1,$0,$0

	Next:
		addi $t1,$t0,1
		bne $t0,$s0,VongLap
		addi $v0,$0,4
		j EXIT

	VongLap:
		addi $v0,$0,4
		
		
		beq $v0, 0, o0
		beq $v0, 1, o1
		beq $v0, 2, o2
		beq $v0, 3, o3
		beq $v0, 4, o4
		beq $v0, 5, o5
		beq $v0, 6, o6
		beq $v0, 7, o7
		beq $v0, 8, o8
		beq $v0, 9, o9
		addi $v0,$0,5
		syscall
		
		add $s1,$s1,$v0
		addi $t0,$t0,1
	j Next
		o0:
			la $a0, zero
			addi $v0, $0, 4
			syscall
			j Next
		o1:
			la $a0, one
			addi $v0, $0, 4
			syscall 
			j Next
		o2:
			la $a0, two
			addi $v0, $0, 4
			syscall
			j Next
		o3:
			la $a0, three
			addi $v0, $0, 4
			syscall
			j Next
		o4:
			la $a0, four
			addi $v0, $0, 4
			syscall
			j Next
		o5:
			la $a0, five
			addi $v0, $0, 4
			syscall
			j Next
		o6: 
			la $a0, six
			addi $v0, $0, 4
			syscall
			j Next
		o7:
			la $a0, seven
			addi $v0, $0, 4
			syscall
			j Next
		o8:
			la $a0, eight
			addi $v0, $0, 4
			syscall
			j Next
		o9:
			la $a0, nine
			addi $v0, $0, 4
			syscall
			j Next
	EXIT:
		addi $v0,$0,10
		syscall