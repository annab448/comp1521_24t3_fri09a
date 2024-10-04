FLAG_ROWS = 6
FLAG_COLS = 12

main:

	li	$t0, 0		# row = 0
row_loop:
	bge	$t0, FLAG_ROWS, row_loop_end

	li	$t1, 0		# col = 0
col_loop:
	bge	$t1, FLAG_COLS, col_loop_end

	# get flag[row][col]
	mul	$t2, $t0, FLAG_COLS	# row * sizeof(row)
	add	$t2, $t2, $t1		# + col
	lb	$t3, flag($t2)		# $t3 = flag[row][col]

	li	$v0, 11			# printf("%c", flag[row][col]);
	move	$a0, $t3
	syscall

	addi	$t1, $t1, 1
	b	col_loop

col_loop_end:
	li	$v0, 11		# printf("\n");
	li	$a0, '\n'
	syscall

	addi	$t0, $t0, 1
	b	row_loop

row_loop_end:

	jr	$ra			# return;


	.data
flag:
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
	.byte '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
	.byte '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'
