// Verify is a 8 character chain is a palindrome. The answer should be 1 in afirmative case and 0 otherwise.

/*
int PAL8(char *s);
*/

.text
.global PAL8
.type PAL8,"function"

PAL8:       LDR X1, [X0]
            REV X2, X1
            CMP X2, X1
            CSET WO, EQ            
            RET