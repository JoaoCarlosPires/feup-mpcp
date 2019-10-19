// Copy a vector with values (without sinal) of byte type to a vector with values of doubleword type

/*
void extern VECTOR_COPY(int *a, long int *b, int c);
*/

.text
.global VECTOR_COPY
.type VECTOR_COPY,"function"

VECTOR_COPY:    CBZ X2, FIM
                LDRB W9, [X0]
                STR X9, [X1]
                ADD X0, X0, #4
                ADD X1, X1, #8
                SUB X2, X2, #1
                B VECTOR_COPY

FIM:            RET