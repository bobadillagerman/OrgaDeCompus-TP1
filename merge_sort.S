#include <sys/regdef.h>

.text
.abicalls

.align 2
.globl merge_sort
.ent merge_sort

merge_sort:
        #info para debugger
        .frame fp, 48, ra

        .set noreorder    
        .cpload t9            
        .set reorder 

        #creo stack frame - 4(SRA) + 4(LTA) + 4(ABA)
        subu sp, sp, 48
        .cprestore 32

        #salvo calle-saved regs en SRA
        sw fp, 36(sp)
        #sw ra, 40(sp)
        move fp, sp

        #salvo argumentos
        sw a0, 48(fp)
        sw a1, 52(fp)

        ####comienza funcion####
        li t1, 1
        lw t0, 52(fp)                   # len -> t0
        bleu t0, t1, _end               # if len <= 1 salgo de la funcion (ya esta ordenado)
        li t1, 2
        divu t1, t0, t1                 # middle=len/2 -> t1
        sw t1, 24(fp)                   # guardo middle en el stack frame

        #reservo espacio para vector left
        li t0, 4                        # 4 -> t0 (cargo sizeof(int))
        mul a0, t0, t1                  # para left necesito middle xsizeof(int)), es decir middle x4bytes
        la t9, mymalloc
        jal ra, t9
        sw v0, 20(fp)                   # guardo puntero a vector left

        #reservo espacio para vector right
        lw t1, 24(fp)                   # middle -> t1
        lw t0, 52(fp)                   # len -> t0
        subu t0, t0, t1                 # len-middle -> t0
        li t1, 4
        mul a0, t0, t1                  # necesito (len-middle)xsizeof(int) bytes
        la t9, mymalloc
        jal ra, t9
        sw v0, 16(fp)                   # guardo puntero a vector right

        #primer ciclo For
        move t0, zero                   # i=0 -> t0
for_1:
        lw t1, 24(fp)                   # middle -> t1
        bleu t1, t0, exit_for_1         # if middle <= i salir del for
        sll t2, t0, 2                   # escalo ix4 porque es un arreglo de enteros
        la t3, 48(fp)                   # direccion(vector) -> t3
        addu t3, t3, t2                 # direccion(vector) + 4xi -> t3
        lw t3, 0(t3)                    # vector[i] -> t3
        la t4, 20(fp)                   # direccion(left) -> t4
        addu t4, t4, t2                 # direccion(left) + 4xi -> t4
        sw t3, 0(t4)                    # left[i] = vector[i]
        addiu t0, t0, 1                 # i++
        b for_1
exit_for_1:
        lw t0, 24(fp)                   # j = middle -> t0
for_2:
        lw t1, 52(fp)                   # len -> t2
        bleu t1, t0, exit_for_2         # if len <= j salir del for
        sll t2, t0, 2                   # escalo jx4 porque es un arreglo de enteros
        la t3, 48(fp)                   # direccion(vector) -> t3
        addu t3, t3, t2                 # direccion(vector) + 4xi -> t3
        lw t3, 0(t3)                    # vector[i] -> t3
        lw t2, 24(fp)                   # middle -> t2
        subu t2, t0, t2                 # j-middle -> t2
        sll t2, t2, 2                   # escalo (j-middle)x4
        la t4, 16(fp)                   # direccion(right) -> t4
        addu t4, t4, t2                 # direccion(right) + (j-middle)x4 -> t4
        sw t3, 0(t4)                    # right[j-middle] = vector[j]
        b for_2
exit_for_2:
        #primera llamada recursiva
        lw a0, 20(fp)                   # left -> a0
        lw a1, 24(fp)                   # middle -> a1
        la t9, merge_sort
        jal ra, t9
        #segunda llamada recursiva
        lw a0, 16(fp)                   # right -> a0
        lw t1, 52(fp)                   # len -> t1
        lw t2, 24(fp)                   # middle -> t2
        subu t0, t1, t2                 # len-middle -> t0
        move a1, t0                     # t0 -> a1
        la t9, merge_sort
        jal ra, t9
merge:
        move t0, zero                   # i=0 -> t0
        move t1, zero                   # j=0 -> t1
        move t2, zero                   # k=0 -> t2
        lw t3, 24(fp)                   # leftLen = middle -> t3
        lw t4, 52(fp)                   # len -> t4
        subu t4, t4, t3                 # rightLen = (len-middle) -> t4
while_1:
        bleu t3, t0, while_2            # if leftLen <= i salir o 
        bleu t4, t0, while_2            # if rightLen <= j salir
        #busco left[i] 
        sll t5, t0, 2                   # escalo ix4 porque es un arreglo de enteros
        la t6, 20(fp)                   # direccion(left) -> t6
        addu t6, t6, t5                 # direccion(left) + 4xi -> t6
        lw t5, 0(t6)                    # left[i] -> t5
        sw t5, 28(fp)                   # guardo left[i] en pos libre (28(fp)) de LTA para que alcancen las variables temporales
        #busco right[j]
        sll t5, t1, 2                   # escalo jx4 porque es un arreglo de enteros
        la t6, 16(fp)                   # direccion(right) -> t6
        addu t6, t6, t5                 # direccion(right) + 4xj -> t6
        lw t5, 0(t6)                    # right[j] -> t5
        #busco direccion de vector[k]
        sll t6, t2, 2                   # escalo kx4
        la t7, 48(fp)                   # direccion(vector) -> t7
        addu t7, t7, t6                 # direccion(vector) + 4xk -> t7
        lw t6, 0(t7)                    # vector[k] -> t6
        #comparo left[i] con right[j]
        lw t7, 28(fp)                   # left[i] -> t7
        bgtu t7, t5, _else              # if left[i] > right[j] => ir a bloque else
        sw t7, 0(t6)                    # vector[k] = left[i]
        addiu t0, t0, 1                 # i++
        addiu t2, t2, 1                 # k++
        b while_1
_else:
        sw t5, 0(t6)                    # vector[k] = right[j]
        addiu t1, t1, 1                 # j++
        addiu t2, t2, 1                 # k++
        b while_1
while_2:
        bleu t3, t0, while_3            # if leftLen <= i salir
        #busco left[i] 
        sll t5, t0, 2                   # escalo ix4 porque es un arreglo de enteros
        la t6, 20(fp)                   # direccion(left) -> t6
        addu t6, t6, t5                 # direccion(left) + 4xi -> t6
        lw t5, 0(t6)                    # left[i] -> t5
        #busco direccion de vector[k]
        sll t6, t2, 2                   # escalo kx4
        la t7, 48(fp)                   # direccion(vector) -> t7
        addu t7, t7, t6                 # direccion(vector) + 4xk -> t7
        lw t6, 0(t7)                    # vector[k] -> t6
        sw t5, 0(t6)                    # vector[k] = left[i]
        addiu t0, t0, 1                 # i++
        addiu t2, t2, 1                 # k++
        b while_2
while_3:
        bleu t4, t1, end                # if rightLen <= j salir
        #busco right[j] 
        sll t5, t1, 2                   # escalo jx4 porque es un arreglo de enteros
        la t6, 16(fp)                   # direccion(right) -> t6
        addu t6, t6, t5                 # direccion(right) + 4xj -> t6
        lw t5, 0(t6)                    # right[j] -> t5
        #busco direccion de vector[k]
        sll t6, t2, 2                   # escalo kx4
        la t7, 48(fp)                   # direccion(vector) -> t7
        addu t7, t7, t6                 # direccion(vector) + 4xk -> t7
        lw t6, 0(t7)                    # vector[k] -> t6
        sw t5, 0(t6)                    # vector[k] = right[j]
        addiu t1, t1, 1                 # j++
        addiu t2, t2, 1                 # k++
        b while_3
_end:
        #free left
        lw a0, 20(fp)
        la t9, myfree
        jal ra, t9
        #free right
        #restauro calle-saved regs
        lw gp, 32(fp)
        lw fp, 36(fp)
        #lw ra, 40(fp)
        #destruyo stack frame
        addu sp, sp, 48
        jr ra

.end merge_sort
.size merge_sort,.-merge_sort