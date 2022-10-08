	.file	1 "fibonacci.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	softfloat
	.module	oddspreg
	.abicalls
	.text
	.rdata
	.align	2
$LC0:
	.ascii	"%d's memory address is: %x.\012\000"
	.text
	.align	2
	.globl	main
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,88,$31		# vars= 56, regs= 2/0, args= 16, gp= 8
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.cpload	$25
	.set	nomacro
	addiu	$sp,$sp,-88
	sw	$31,84($sp)
	sw	$fp,80($sp)
	move	$fp,$sp
	.cprestore	16
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$2,0($2)
	sw	$2,76($fp)
	li	$2,1			# 0x1
	sw	$2,36($fp)
	li	$2,1			# 0x1
	sw	$2,40($fp)
	li	$2,2			# 0x2
	sw	$2,28($fp)
	b	$L2
	nop

$L3:
	lw	$2,28($fp)
	addiu	$2,$2,-1
	sll	$2,$2,2
	addiu	$2,$2,80
	addu	$2,$2,$fp
	lw	$3,-44($2)
	lw	$2,28($fp)
	addiu	$2,$2,-2
	sll	$2,$2,2
	addiu	$2,$2,80
	addu	$2,$2,$fp
	lw	$2,-44($2)
	addu	$3,$3,$2
	lw	$2,28($fp)
	sll	$2,$2,2
	addiu	$2,$2,80
	addu	$2,$2,$fp
	sw	$3,-44($2)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L2:
	lw	$2,28($fp)
	slt	$2,$2,10
	bne	$2,$0,$L3
	nop

	sw	$0,28($fp)
	b	$L4
	nop

$L5:
	addiu	$3,$fp,36
	lw	$2,28($fp)
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$2,32($fp)
	lw	$2,28($fp)
	sll	$2,$2,2
	addiu	$2,$2,80
	addu	$2,$2,$fp
	lw	$2,-44($2)
	lw	$6,32($fp)
	move	$5,$2
	lw	$2,%got($LC0)($28)
	addiu	$4,$2,%lo($LC0)
	lw	$2,%call16(printf)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,printf
1:	jalr	$25
	nop

	lw	$28,16($fp)
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
$L4:
	lw	$2,28($fp)
	slt	$2,$2,10
	bne	$2,$0,$L5
	nop

	move	$2,$0
	move	$4,$2
	lw	$2,%got(__stack_chk_guard)($28)
	lw	$3,76($fp)
	lw	$2,0($2)
	beq	$3,$2,$L7
	nop

	lw	$2,%call16(__stack_chk_fail)($28)
	move	$25,$2
	.reloc	1f,R_MIPS_JALR,__stack_chk_fail
1:	jalr	$25
	nop

$L7:
	move	$2,$4
	move	$sp,$fp
	lw	$31,84($sp)
	lw	$fp,80($sp)
	addiu	$sp,$sp,88
	jr	$31
	nop

	.set	macro
	.set	reorder
	.end	main
	.size	main, .-main
	.ident	"GCC: (Buildroot 2022.11-git) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
