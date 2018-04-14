 AREA Adding, CODE, READONLY
	ENTRY
Main
	ADR R0, Value1 //Using ADR address of value 1 is stored in R0.
	
	LDR R2, [R0]   //Using box, we can load the value given by the address in R2 and R1
	LDR R1, [R0]
GO 
	SUB R1, #&01	 
	MUL R2, R1, R2
	CMP R1, #&01
	BGE GO 

   NOP
Value1 DCD &0004

	END