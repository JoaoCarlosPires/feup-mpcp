// Intern product of int vectors. In case of overflow, the sub-rotine should return the higher representable int 
// (assume that this value never results of the calculation of the intern product).

/*
extern int VEC_PROD(int *a, int *b, int c);
*/

.text
.global VEC_PROD
.type VEC_PROD,"function"

VEC_PROD:   CBZ X2, FIM
            LDR W9, [X0]
            LDR W10, [X1]
            SMADDL X11, W9, W10, X11 // X11 = X11 + W9 * W10
            ADD X0, X0, #4
            ADD X1, X1, #4
            SUB X2, X2, #1
            B CICLO
FIM:        MOV X0, X11
            RET