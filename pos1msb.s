// Determine the position of the more significative bit 1 in the binary representation of a number

/*
extern int POS1msb(long int n);
*/

.text
.global POS1msb
.type POS1msb,"function"

POS1msb:    CLZ X2, X0
            MOV X3, #63
            SUB X0, X3, X2
            RET