.data

str1:	.asciiz	"Enter a number: "
str2:	.asciiz	"\nThere are "
str3:	.asciiz	" 1's in it."

.text

	li	$v0, 4
	la	$a0, str1
	syscall
	
	li	$v0, 5
	syscall
	
	move	$s0, $v0		# num = inputted integer

	li	$s1, 0			# count = 0
	li	$t0, 0			# i = 0
forLoop:
	bge	$t0, 32, endFor		# if i >= 32 end for loop
	andi	$t1, $s0, 1		# temp = num & 1
	add	$s1, $s1, $t1		# count += temp
	srl	$s0, $s0, 1		# num >>>= 1
	addi	$t0, $t0, 1		# i++
	j	forLoop
endFor:
	li	$v0, 4
	la	$a0, str2
	syscall
	
	li	$v0, 1
	move	$a0, $s1
	syscall
	
	li	$v0, 4
	la	$a0, str3
	syscall
	
	li	$v0, 10
	syscall