.data

newline:.byte	'\n'

str1:	.asciiz	"Enter a signed number: "

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
	
	sll	$t0, $s0, 4	# multiply by 16
	sll	$t1, $s0, 3	# multiply by 8
	add	$t2, $t0, $t1	# combined effect of multiplying by 24
	
	sra	$t0, $s0, 1	# divide by 2
	add	$s1, $t2, $t0
	
	li	$v0, 1
	move	$a0, $s1
	syscall
	
	li	$v0, 10
	syscall