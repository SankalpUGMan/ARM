 AREA Adding, CODE, READONLY
	ENTRY
Main
	ADR R0, Value1
	LDR R1, [R0]
	ADD R0, #&04
	LDR R2, [R0]
	ADD R0, #&04
	SUB R1, #&01
GO 
	LDR R3, [R0]
	ADD R0, #&04
	ADC R2, R3, R2
	SUB R1, #&01
	CMP R1, #&00
	BGE GO
   NOP
Value1 DCD &0003, &0002, &0003, &0004

	END