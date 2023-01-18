.data
str1:		.asciiz		"Enter your name: "
str2:		.asciiz		"Hello "
name:		.space		64

.globl		main
.text
main:
	li	$v0, 4
	la	$a0, str1
	syscall			# prints prompt
	li	$v0, 8
	la	$a0, name
	li	$a1, 64
	syscall			# read name
	move	$s0, $a0
	li	$v0, 4
	la	$a0, str2
	syscall			# print string
	li	$v0, 4
	move	$a0, $s0
	syscall			# prints name
	li	$v0, 10
	syscall			# ends program
	
