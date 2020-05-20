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
	.cprestore 28
	
	# salvado de callee-saved regs en SRA    
	sw    $fp, 36(sp)
	sw    ra, 40(sp)
	
	# de aqui al fin de la funcion uso $fp en lugar de sp.
	move    $fp, sp
    
	# salvo argumentos
	sw  a0, 48($fp)
	sw  a1, 52($fp)
	
	
	
	
	.end    merge_sort
	
	
						
						