	.text
main:
	daddi	$t2, $zero, 0
	daddi	$t3, $t2, 396
loop:
    lw      $t1, 0($t2)
    daddi    $t1, $t1, 1
    sw      $t1, 0($t2)
    daddi    $t2, $t2, 4
    dsub     $t4, $t3, $t2
    bnez    $t4, loop