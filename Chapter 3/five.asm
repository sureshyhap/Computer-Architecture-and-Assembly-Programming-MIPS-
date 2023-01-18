.data

str1:	.asciiz	"Enter an integer: "
str2:	.asciiz	"Enter a bit position (0 to 31): "
str3:	.asciiz	"The bit is a: "
newline:.byte	'\n'

.text

	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 5
	syscall
	
	move	$s0, $v0
	
	li	$v0, 11
	lb	$a0, newline
	syscall
	
	li	$v0, 4
	la	$a0, str2
	syscall
	
	li	$v0, 5
	syscall
	
	move	$s1, $v0
	
	li	$v0, 11
	lb	$a0, newline
	syscall
	
	srlv	$s2, $s0, $s1
	andi	$s3, $s2, 1
	
	li	$v0, 4
	la	$a0, str3
	syscall
	
	li	$v0, 1
	add	$a0, $s3, $zero
	syscall
	
	li	$v0, 10
	syscall