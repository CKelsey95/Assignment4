.data
x: li $t1, 2
str1: .asciiz "the value of X before subfun is: "
str2: .asciiz "the value of X after subfun is: "
.text
main:
	la $a0, str1
	li $v0, 4
	la $a0, x
	li $v0, 1
	syscall
	
	jal subfunc
	
	li $v0, 4
	la $a0, str2
	li $v0, 1
	la $a0, x
	syscall
	
	li $v0, 10
	syscall
	
	