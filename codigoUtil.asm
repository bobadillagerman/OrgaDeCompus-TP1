Algunas lineas tomadas de un libro que nos pueden servir



PARA EL MERGE_SORT
			
			bgt rsrc1, src2, etiqueta	#pseudoinstrucción	Bifurca condicionalmente a la instrucción de la etiqueta
										#si el registro rsrc1 es mayor que rsrc2
										
										
			div rdest, rsrc1, src2	#pseudoinstrucción El cociente de la división entre 
									#el registro rsrc1 y src2 se almacena en el registro rdest.
			
			
	
	move	$s0, $zero # i = 0
for1tst:	slt $t0, $s0, $a1 # reg $t0 = 0 si $s0 ≥ $a1 (i≥middle)
	beq 	$t0, $zero,exit1 # ir a exit1 si $s0≥$a1 (i≥middle)
			...
			(cuerpo del primer lazo for)
			...
	addi	$s0, $s0, 1 # i += 1
	j 		for1tst # salta para probar el lazo exterior
exit1:



			sub rd, rs, rt
			
			
			
******************

PARA EL MERGE


			bge rsrc1, rsrc2, etiqueta	#pseudoinstrucción Bifurca condicionalmente a la instrucción
										de la etiqueta si el registro rsrc1 es mayor o igual que rsrc2
										
										
										
loop:		test del while
			...
			bgt rsrc1, src2, Exit
			cuerpo del while
			j loop
Exit:
