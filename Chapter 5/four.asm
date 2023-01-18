	.data
ARRAY:		.word	0:10
prompt:		.asciiz	"\nEnter an integer: "
answer:		.asciiz	"\nSum is: "
	
	.text
	li	$s3, 0			# i = 0
	li	$s1, 0			# Keep track of offset
	la	$s0, ARRAY		# load ARRAY address	
continuePrompting:
	slti	$t1, $s3, 10
	beq	$t1, $zero, endInput	# if i >= 10, end loop
	li	$v0, 4
	la	$a0, prompt
	syscall				# Print prompt
	
	li	$v0, 5
	syscall				# Read integer
	
	add	$s2, $s0, $s1		# Compute address of present element
	sw	$v0, 0($s2)		# Store integer into array
	addi	$s3, $s3, 1		# ++i
	addi	$s1, $s1, 4		# Incrememt offset by 4
	j	continuePrompting	# Continue loop
endInput:
	li	$s4, 0			# sum = 0
	li	$s3, 0			# i = 0
	li	$s1, 0			# offset = 0
calculateSum:	
	slti	$t1, $s3, 10
	beq	$t1, $zero, endProgram	# if i >= 10, end loop
	add	$s2, $s0, $s1
	lw	$t0, 0($s2)
	add	$s4, $s4, $t0
	addi	$s3, $s3, 1
	addi	$s1, $s1, 4
	j	calculateSum
endProgram:	
	li	$v0, 4
	la	$a0, answer
	syscall

	li	$v0, 1
	move	$a0, $s4
	syscall

	li	$v0, 10
	syscall
