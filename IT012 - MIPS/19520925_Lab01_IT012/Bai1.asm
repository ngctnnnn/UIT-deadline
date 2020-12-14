.data 
	input: .space 40
	nhap: .asciiz "Nhap: "
	xuat: .asciiz "\nXuat: "
.text 
	.globl main
	main:
		#cout << "Nhap: ";
		la $a0, nhap
		addi $v0, $0, 4
		syscall
		
		#cin >> input;
		la $a0, input
		addi $a1, $0, 40
		addi $v0, $0, 8
		syscall
				
		#temp = input
		addi $s0, $a0, 0
				
		#cout << "Xuat: ";
		la $a0, xuat
		addi $v0, $0, 4
		syscall
		
		#cout << input
		addi $a0, $s0, 0
		addi $v0, $0, 4
		syscall