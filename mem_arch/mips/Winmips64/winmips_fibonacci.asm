	.text
main:
	li		$t1,1
	li		$t2,1
	li		$t3,0
	
	sw		$t1,0($t3)
	sw		$t2,1($t3)

	addu	$t1,$t1,$t2
	sw 		$t1,2($t3)
	
	addu	$t2,$t1,$t2
	sw 		$t2,3($t3)
	
	addu	$t1,$t1,$t2
	sw 		$t1,4($t3)
	
	addu	$t2,$t1,$t2
	sw 		$t2,5($t3)
	
	addu	$t1,$t1,$t2
	sw 		$t1,6($t3)
	
	addu	$t2,$t1,$t2
	sw 		$t2,7($t3)
	
	addu	$t1,$t1,$t2
	sw 		$t1,8($t3)
	
	addu	$t2,$t1,$t2
	sw 		$t2,9($t3)