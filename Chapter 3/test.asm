.text

	#li	$s0, 110
	#ori	$s1, $s0, 101
	#li	$v0, 1
	#move	$a0, $s1
	#syscall
	
	li	$s1, 3
	sll	$s0, $s1, 10
	li	$v0, 1
	move	$a0, $s0
	syscall 
	
	li	$v0, 10
	syscall
