.data

str1:	.asciiz	"Enter an integer: "
str2:	.asciiz	"A + 2B - 5 = "

.text

	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 5
	syscall
	
	move	$s0, $v0
	
	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 5
	syscall
	
	move	$s1, $v0
	
	add	$t0, $s1, $s1
	add	$t1, $s0, $t0
	addi	$s2, $t1, -5
	
	li	$v0, 4
	la	$a0, str2
	syscall
	
	li	$v0, 1
	move	$a0, $s2
	syscall
	
	li	$v0, 10
	syscall