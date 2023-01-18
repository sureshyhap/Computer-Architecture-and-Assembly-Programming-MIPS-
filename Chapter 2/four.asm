.data
str1:		.asciiz		"Enter three integers: "
str2:		.asciiz		"Result is: "

.globl main

.text
main:

	li	$v0, 4
	la	$a0, str1
	syscall			# prints prompt
	
	li	$v0, 5
	syscall			# reads integer
	
	move	$s1, $v0
	li	$v0, 5
	syscall			# reads integer
	
	move	$s2, $v0
	li	$v0, 5
	syscall			# reads integer
	
	move	$s3, $v0
	
	add	$t0, $s1, $s2
	addi	$t1, $s3, 101
	sub	$s0, $t0, $t1	# s = (a + b) - (c + 101)
	
	li	$v0, 4
	la	$a0, str2
	syscall			# prints sum message
	
	li	$v0, 1
	add	$a0, $s0, $zero
	syscall			# prints result
	
	li	$v0, 10
	syscall			# ends program
	