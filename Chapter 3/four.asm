.data

str1:	.asciiz	"Enter an upper case character: "
str2:	.asciiz	"Lower case is: "
str3:	.asciiz	"Back to uppercase: "
newline:.byte	'\n'

.text

	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 12
	syscall
	
	move	$s0, $v0
	addi	$s0, $s0, 0x20
	
	li	$v0, 11
	lb	$a0, newline
	syscall
	
	li	$v0, 4
	la	$a0, str2
	syscall
	
	li	$v0, 11
	add	$a0, $zero, $s0
	syscall
	
	li	$v0, 11
	lb	$a0, newline
	syscall
	
	li	$v0, 4
	la	$a0, str3
	syscall
	
	subi	$s0, $s0, 0x20
	
	li	$v0, 11
	add	$a0, $s0, $zero
	syscall
	
	li	$v0, 10
	syscall