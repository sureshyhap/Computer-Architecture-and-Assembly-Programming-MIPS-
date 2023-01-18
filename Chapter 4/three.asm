.data
prompt:		.asciiz	"Enter an integer: "
	
.text
	li	$v0, 4
	la	$a0, prompt
	syscall

	li	$v0, 5
	syscall

	move	$s0, $v0

	
