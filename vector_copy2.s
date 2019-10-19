// Copy a vector with values (with sinal) of byte word to a vector with values of doubleword type

/*
void extern VECTOR_COPY2(int *a, long int *b, int c);
*/

.text
.global VECTOR_COPY2
.type VECTOR_COPY2,"function"

VECTOR_COPY:    CBZ X2, FIM
                CDRSW X9, [X0]
                STR X9, [X1]
                ADD X0, X0, #4
                ADD X1, X1, #8
                SUB X2, X2, #1
                B VECTOR_COPY

FIM:            RET