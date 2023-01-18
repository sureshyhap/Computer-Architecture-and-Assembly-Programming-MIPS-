.data

.text

	li	$v0, 5
	syscall
	
	move	$s6, $v0		# n = entered integer

	li	$s0, 0			# fib0 = 0
	li	$s1, 1			# fib1 = 1
	
	li	$t0, 2			# i = 2
forLoop:
	bgt	$t0, $s6, endFor	# if i > n end for loop
	add	$t1, $s0, $zero		# temp = fib0
	add	$s0, $s1, $zero 	# fib0 = fib1
	add	$s1, $t1, $s1		# fib1 = temp + fib1
	add	$t0, $t0, 1		# ++i
	j	forLoop
endFor:
	blez	$s6, else
	move	$s2, $s1
	j	exit
else:
	li	$s2, 0
exit:
	li	$v0, 1
	move	$a0, $s2
	syscall
	
	li	$v0, 10
	syscall