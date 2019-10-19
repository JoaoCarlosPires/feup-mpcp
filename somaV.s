/* Source Code - C/C++ */

/* void somaV(float *P, float *Q, float *R, int n); */

/* Assembly Code */

.text
.global somaV
.type somaV, "function"

somaV:  LSR W3, W3, #2
ciclo:  CBZ X3, fim
        LDR Q0, [X0], #16
        LDR Q1, [X1], #16
        FADD V2.4S, V0.4S, V1.4S
        STR Q2, [X2], #16 
        SUB X3, X3, #1
        B ciclo
fim:    RET

