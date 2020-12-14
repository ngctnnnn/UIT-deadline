.data 
	input: .space 1
	nhap: .asciiz "Nhap ki tu: "
	xuatTruoc: "\nKi tu truoc: "
  	xuatSau: "\nKi tu sau: "
.text  
	.globl main
	main:
		#cout << "Nhap: ";
		la $a0, nhap
		addi $v0, $0, 4
		syscall
		
		#cin >> input;
		la $a0, input
		addi $a1, $0, 2
		addi $v0, $0, 8
		syscall
				
		#temp = input
		addi $s0, $a0, 0
		
		#temp--
		lw $t0, 0($s0)
		subi $t0, $t0, 1
		sw $t0, 0($s0)
				
		#cout << "Xuat: ";
		la $a0, xuatTruoc
		addi $v0, $0, 4
		syscall
		
		#cout << input
		addi $a0, $s0, 0
		addi $v0, $0, 4
		syscall
		
		#temp += 2
		lw $t0, 0($s0)
		addi $t0, $t0, 2
		sw $t0, 0($s0)
		
		#cout << "Xuat sau: "
		la $a0, xuatSau 
		addi $v0, $0, 4
		syscall
		
		#cout << output
		addi $a0, $s0, 0
		addi $v0, $0, 4
		syscall
		