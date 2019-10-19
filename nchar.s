.text
.global NCHAR
.type NCHAR,"function"

NCHAR: 	eor X9, X9, X9

ciclo: 	ldrb X2, [X0]
		cbz X2, fim
		add X9, X9, #1
		add X0, X0, #1
		b ciclo

fim:	mov X0, X9
		ret