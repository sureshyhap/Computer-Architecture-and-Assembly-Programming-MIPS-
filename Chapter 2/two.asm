.data
str1:		.asciiz		"Enter an integer value: "
str2:		.asciiz		"Double what you entered is "
str3:		.asciiz		"\nRepeat [y/n]? "

.globl		main
.text
main:
	li	$v0, 4
	la	$a0, str1
	syscall			# prints prompt
	li	$v0, 5
	syscall			# reads integer
	move	$s0, $v0
	add	$s0, $s0, $s0
	li	$v0, 4
	la	$a0, str2
	syscall			# prints message
	li	$v0, 1
	move	$a0, $s0
	syscall			# prints integer
	li	$v0, 4
	la	$a0, str3
	syscall			# prints question
	li	$v0, 12
	syscall			# reads a character
	move	$s0, $v0
	li	$v0, 11
	li	$a0, '\n'
	syscall			# prints a newline
	beq	$s0, 'y', main	# repeats if user entered 'y'
	li	$v0, 10
	syscall			# ends program
