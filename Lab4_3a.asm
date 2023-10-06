.data
str1: .asciiz "the value of X before subfun is: "
str2: .asciiz "the value of X after subfun is: "
newline: .asciiz "\n"
x: .word 2

.text
main:
        lw $t1, x   # loads value of x into $t1
        
	la $a0, str1  # prints string 1
	li $v0, 4
	syscall
	
	lw $a0, x
	li $v0, 1   # prints initial value of X
	syscall
	
	li $v0, 4       
	la $a0, newline  # prints a newline
	syscall
	
	jal subfunc  # jumps to subfunction (+5 to X)
	
	la $a0, str2
	li $v0, 4       # prints string 2
	syscall
	
	li $v0, 1
	move $a0, $t1     # prints new value of X (7)
	syscall
	
	li $v0, 10      # ends program
	syscall
