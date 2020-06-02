# benchmark-b1.S - Trabajo Práctico 2
# Organización de Computadoras 66.20/85.37
# Facultad de Ingeniería, Universidad de Buenos Aires.
#
# $Date: 2020/05/26 02:04:47 $

#include <regdef.h>
#include <sys/asm.h>
#include <sys/syscall.h>

	.text
	.align	2

	.globl	main
	.ent	main
main:
	.set	noreorder
	.cpload	t9
	.set	nomacro
	addiu	sp, sp, -24
	sw	fp, 20(sp)
	move	fp, sp
	.cprestore	0

	la	t0, aligned
	li	t1, 100
	.align	20
loop:	lw	t2, 0(t0)
	addu	t0, t0, 4
	subu	t1, t1, 1
	bnez	t1, loop

	# Destruimos el stack frame antes de retornar de main().
	#
	move	sp, fp
	lw	fp, 20(sp)
	addiu	sp, sp, 24

	# Para volver al sistema operativo cargamos un código de retorno nulo.
	#
	move	v0, zero
	jr	ra
	.end	main

	.rdata
	.align	20
aligned:
	.skip	8192
