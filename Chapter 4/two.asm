.data

str1:	.asciiz	"Enter two integers:\n"
str2:	.asciiz "\nThe sum through the numbers is: "

.text

	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 5
	syscall			# n1
	
	move	$s0, $v0
	
	li	$v0, 5
	syscall			# n2
	
	move	$s1, $v0
	
	li	$s2, 0		# sum = 0
	move	$t0, $s0	# i = n1
forLoop:
	bgt	$t0, $s1, exit	# if i >= n2 end for loop
	add	$s2, $s2, $t0	# sum += i
	add	$t0, $t0, 1	# ++i
	j 	forLoop
exit:
	li	$v0, 4
	la	$a0, str2

	li	$v0, 1
	move	$a0, $s2
	syscall
	
	li	$v0, 10
	syscall
	
	