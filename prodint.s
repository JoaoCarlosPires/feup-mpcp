/* Source Code - C/C++ */

/* double prodint(float *x, float *y, int n); */

/* Assembly Code */

.text
.globalprodint
.type prodint, "function"
        
/* v1.0        
        FMOV X5, #0 
prodint CMP X2, #0
        BEQ final
        LDR X3, [X0, X5]
        LDR X4, [X1, X5]
        FMADD X6, X3, X4, X6
        FADD X5, X5, #4
        FSUB X2, X2, #1
        B prodint
final   SCVTF D0, X6
        RET
*/

/* v2.0 */       
prodint:    MOV X8, 30
            SCVTF D5, X8
ciclo:      CBZ X2, fim
            LDR S0, [X0], #4
            LDR S1, [X1], #4
            FCVT D0, S0
            FCVT D1, S1
            FMADD D5, D0, D1, D5
            SUB X2, X2, #1
            B ciclo
fim:        FMOV D0, D5
            RET