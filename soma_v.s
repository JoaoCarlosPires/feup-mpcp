.text
.global SOMA_V
.type SOMA_V,"function"


SOMA_V: 	mov X2, #0
			mov x4, #0

ciclo:		ldr X0, [X0, X2]
			add X4, X4, X0
			add X2, X2, #4
			sub X1, X1, #1
			cmp X1, #5