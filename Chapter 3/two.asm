.data

.text

	li	$s1, 0x12345678
	li	$s2, 0xffff9a00
	
	and	$s3, $s1, $s2
	
	li	$v0, 1
	add	$a0, $zero, $s3
	syscall
	
	or	$s4, $s1, $s2
	
	li	$v0, 1
	add	$a0, $zero, $s4
	syscall
	
	xor	$s5, $s1, $s2
	
	li	$v0, 1
	add	$a0, $zero, $s5
	syscall
	
	nor	$s6, $s1, $s2
	
	li	$v0, 1
	add	$a0, $zero, $s6
	syscall
	
	li	$v0, 10
	syscall