.data
string: .asciiz "Truong Dai hoc Cong nghe Thong tin "
input: .space 41
output: .space 41
nhap: .asciiz "Nhap: "
xuat: .asciiz "\nXuat: "
newline: .asciiz "\n"

.text
	main:
	#cout << "nhap";
	la $a0, nhap
	addi $v0, $0, 4
	syscall
	
	#cin >> input;
	la $a0, input
	addi $a1, $0, 40
	addi $v0, $0, 8
	syscall	
		
	#cout << "Xuat: ";
	la $a0, xuat
	addi $v0, $0, 4
	syscall
	
	la $a0,string
	li $s0,0
	li $t7,0
Count:
	add $t7, $s0,$a0
	lb $t0,($t7)
	beq $t0, $t1, Exit
	addi $s0,$s0,1
	j Count
Exit:
	li $v0, 1
	move $a0,$s0
	syscall
	subi $s0,$s0,2
	
	li $v0,4
	add $a0,$t3,$0
	la $t3, string

loop:
	add $t5,$t3,$s0
	lb $t2,($t5)
	li $v0,11
	move $a0,$t2
	syscall
	
	subi $s0,$s0,1
	slti $s1,$s0,0
	bne $s1,$0,else
	j loop
else:
	break
	subi $s0,$s0,1
