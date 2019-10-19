.text
.global NOCCUR
.type NOCCUR,"function"

NOCCUR: eor X9, X9, X9

ciclo: 	ldrb X2, [X0]
		cbz X2, fim
		add X0, X0, #1
		cmp X2, X1
		bne ciclo
		add X9, X9, #1
		b ciclo

fim:	add X9, X9, #1
		mov X0, X9
		ret
