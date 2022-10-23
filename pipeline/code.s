	.data
test: .word 0
	.text
main:
	addi	$t2, $zero, 0x10010000 ;test
	addi	$t3, $t2, 396
loop:
    lw      $t1, 0($t2)
    addi    $t1, $t1, 1
    sw      $t1, 0($t2)
    addi    $t2, $t2, 4
    sub     $t4, $t3, $t2
    bnez    $t4, loop
