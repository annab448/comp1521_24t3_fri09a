
main:
	# $t0 s
	# $t1 = length

	la	$t0, string		# char *s = &string[0];
	li	$t1, 0			# length = 0

char_count_loop_cond:
	lb	$t2, ($t0)	# $t2 = *s

cond:
	beq	$t2, '\0', char_count_end

	addi	$t0, $t0, 1	# is ++
	addi	$t1, $t1, 1	# len ++

	b char_count_loop_cond

char_count_end:

	jr	$ra







   .data
string:			# char *string = "....";
   .asciiz  "abcd"
