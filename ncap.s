// Verify is the binary representation of a number is a palindrome. If yes, the answer should be 1. Otherwise, should be 0. (Version 1.0)

/*
int NCAP(int n);
*/

.text
.global NCAP
.type NCAP,"function"

NCAP:       RBIT W1, W0
            CMP W0, W1
            BEQ SIMETRICO
            MOV X0, #0
            RET

SIMETRICO:  MOV X0, #1
            RET