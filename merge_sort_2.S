#include <mips/regdef.h>    
   
		.text            

		.abicalls
		.align 2	# alineacion 2^2

		.globl	merge_sort
		.ent	merge_sort
	
merge_sort:
		#debugging info: descripcion del stack frame
		.frame    $fp, 48, ra
	
		# bloque para codigo PIC
		.set    noreorder    
		.cpload t9            
		.set    reorder
	
		# creo stack frame
		subu    sp, sp, 48    # 4 (SRA) + 4(LTA) + 4 (ABA)
	
		# directiva para codigo PIC
		.cprestore 32
	
		# salvado de callee-saved regs en SRA    
		sw    $fp, 36(sp)
		sw    ra, 40(sp)
	
		# de aqui al fin de la funcion uso $fp en lugar de sp.
		move    $fp, sp
    
		# salvo argumentos
		sw  a0, 48($fp)
		sw  a1, 52($fp)
	
	
		#####################

	
		li t1, 1
		lw t0 , 52($fp)	#t0 = cantDePalabras (el segundo argumento)
		ble t0, t1, exit_function	#salta si cantDePalabras<=1
						#(continua con la linea siguiente si cantDePalabras>1
											
		li t2, 2
		div t3, t0, t2	#t3(middle) = cantDePalabras/2
				
		sub t4, t0, t3	#t4 = cantDePalabras-middle
				
		mul a0, t3, 4	#middle*4	(el tamaño de left)
		jal mymalloc
		move t5, v0
				
		mul a0, t4, 4	#(cantDePalabras-middle)*4	(el tamaño de right)
		jal mymalloc
		move t6, v0
				
		#guardo argumentos de nuevo (los perdi con el mymalloc)
		lw a0, 32($fp)
		lw a1, 36($fp)
				
		li t1, 0	# i = 0
for1:		slt t2, t1, t3 # t2 = 0 si t1 ≥ t3 (i≥middle)
		beq t2, zero, exitfor1 # ir a exit1 si t1≥t3 (i≥middle)
		#...
		#(cuerpo del ciclo for)
		#left[i] = vector[i];
		#...
		addi t1, t1, 1 # i += 1
		j for1 # salta para probar el lazo exterior
exitfor1:

		move t1, t3	# i = middle
for2:		slt t2, t1, t0 # t2 = 0 si t1 ≥ t3 (i≥cantDePalabras)
		beq t2, zero, exitfor2 # ir a exit1 si t1≥t3 (i≥middle)
		#...
		#(cuerpo del ciclo for)
		#right[j-middle]=vector[j];
		#...
		addi t1, t1, 1 # i += 1
		j for2 # salta para probar el lazo exterior
exitfor2:

		move a0, t5	#left
		move a1, t3	#middle
		jal merge_sort
		move t5, v0
				
		move a0, t6	#right
		move a1, t4	#cantDePalabras-middle
		jal merge_sort
		move t6, v0
				
		jal mezcla
				
				
				
	
exit_function:		
	
	
		.end    merge_sort
				
	
		.globl  mezcla
		.ent    mezcla

mezcla:







		.end    mezcla
		
