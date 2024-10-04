STRUCT_POINT_X_OFFSET = 0
STRUCT_POINT_Y_OFFSET = 4

main:
	la	$t0, P		# $t0 = &P

	lw	$t1, STRUCT_POINT_X_OFFSET($t0)	# P.x
	lw	$t2, STRUCT_POINT_Y_OFFSET($t0)	# P.y

	add	$a0, $t1, $t2	# printf("%d\n", P.x + P.y);
	li	$v0, 1
	syscall

	mul	$t1, $t1, 2			# P.x *= 2;
	sw      $t1, STRUCT_POINT_X_OFFSET($t0)

	jr	$ra


	.data
P:			# struct point P = {6, 10};
	.word 6		# x
	.word 10	# y
