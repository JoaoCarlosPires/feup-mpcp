// ======= prog.c =======
/*
extern long int POLI(long int x);
int main(void)
{
long int r;
...
r = POLI(7);
printf("Resultado = %d\n", r);
return EXIT_SUCCESS;
}
*/

// ======= subrot.s =======

POLI:   STP X29, X30, [SP, #-16]!
        MOV X10, X0
        BL QUAD // X0 = X0^2
        MOV X20, X0
        MOV X0, #3
        MUL X10, X10, X0
        ADD X0, X20, X10
        ADD X0, X0, #1
        LDP X29, X30, [SP], #16
        RET
QUAD:   MUL X0, X0, X0
        RET