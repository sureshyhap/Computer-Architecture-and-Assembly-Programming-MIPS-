.data
str1:		.asciiz		"Enter two integers: "
str2:		.asciiz		"equal"
str3:		.asciiz		"not equal"
.globl	main
.text
main:
	li	$v0, 4
	la	$a0, str1
	syscall			# Print prompt
	
	li	$v0, 5
	syscall			# Reads first integer
	
	move	$s0, $v0
	li	$v0, 5
	syscall			# Reads second integer
	
	move	$s1, $v0
	beq	$s0, $s1, equal
	bne	$s0, $s1, not_equal
	
equal:	
	li	$v0, 4
	la 	$a0, str2
	syscall			# prints equal
	j	end
not_equal:
	li	$v0, 4
	la	$a0, str3
	syscall			# prints not equal

end:	li	$v0, 10
	syscall			# ends program
