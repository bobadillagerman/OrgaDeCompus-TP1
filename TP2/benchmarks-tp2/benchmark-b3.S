# benchmark-b3.S - Trabajo Práctico 2
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

	la	t0, aligned0
	la	t1, aligned1
	la	t2, aligned2
	li	t3, 256
loop:	lw	t4, 0(t0)
	lw	t5, 0(t1)
	addu	t6, t5, t4
	sw	t6, 0(t2)
	addu	t0, t0, 4
	addu	t1, t1, 4
	addu	t2, t2, 4
	subu	t3, t3, 1
	bnez	t3, loop

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

	.data
	.align	20
aligned0:
	.skip	8192
aligned1:
	.skip	8192
aligned2:
	.skip	8192
