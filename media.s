// Cálculo da média de um conjunto de valores contidos num vetor com recurso a duas sub-rotinas, SOMA e MEDIA

/*
extern int soma(int *a, int n);
extern int media(int *a, int n);
*/

.text
.global MEDIA
.type MEDIA,"function"

MEDIA:  STP X29, X30, [SP, #-16]!
        BL SOMA
        SDIV X0, X0, X1
        LDP X29, X30, [SP], #16
        RET
SOMA:   MOV X3, #0
        MOV X4, #0
        MOV X5, X1
        CMP X5, #0
        BEQ FIM
        LDR X2, [X0, X3]
        ADD X4, X4, X2
        ADD X3, X3, #4
        SUB X5, X5, #1
        B SOMA
FIM:    MOV X0, X4
        RET