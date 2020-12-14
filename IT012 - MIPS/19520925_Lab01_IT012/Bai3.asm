.data
input:
	.space	80
	nhap: .asciiz "Nhap: "
	xuat: .asciiz "\nXuat: "
	chuso: .asciiz "\nSo ki tu: "
	.text
.globl main
main:
	la $a0, nhap
	addi $v0, $0, 4
	syscall

	
	li	$v0, 8
	la	$a0, input
	li	$a1, 80
	syscall
	
	la $a0, xuat
	addi $v0, $0, 4
	syscall
	
	
	li	$v0, 4
	la	$a0, input
	syscall
	
	li	$t0, 0
	li	$t2, 0
	
	
	la $a0, chuso
	addi $v0, $0, 4
	syscall
	loop:
		add	$t2, $a0, $t0
		lb	$t1, 0($t2)
		beqz	$t1, str_exit
		addi	$t0, $t0, 1
		j	loop
		
	str_exit:
		subi	$t0, $t0, 1
		add	$v0, $zero, $t0
		add	$t0, $zero, $zero		
	

	add	$a0, $zero, $v0		
	li	$v0, 1			
	syscall
	
exit:
	
	li	$v0, 10			
	syscall