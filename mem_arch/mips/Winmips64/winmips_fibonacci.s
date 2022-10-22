	.text
main:
	daddi		$t1,$zero,1
	daddi		$t2,$zero,1
	daddi		$t3,$zero,0
	
	sw			$t1,($t3)
	sw			$t2,8($t3)
	dadd		$t1,$t1,$t2
	sw 			$t1,16($t3)
	
	dadd		$t2,$t1,$t2
	sw 			$t2,24($t3)
	
	dadd		$t1,$t1,$t2
	sw 			$t1,32($t3)
	
	dadd		$t2,$t1,$t2
	sw 			$t2,40($t3)
	
	dadd		$t1,$t1,$t2
	sw 			$t1,48($t3)
	
	dadd		$t2,$t1,$t2
	sw 			$t2,56($t3)
	
	dadd		$t1,$t1,$t2
	sw 			$t1,64($t3)
	
	dadd		$t2,$t1,$t2
	sw 			$t2,72($t3)