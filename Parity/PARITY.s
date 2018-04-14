 AREA Program, CODE, READONLY
	ENTRY
	;ARM  LPC2378 has storage of 32 bit for its numbers
	;ATMEL had 8 bit storage for its numbers
Main
	ADR R0, NUM
	LDR R1, [R0]
	ADD R0, #&04 // other digit in addresss is way from the first one by 4 bits
	LDR R2, [R0]
	LDR R3, [R0]
GO	
	MOV R1, R1, LSR #1
	ADC R2, #&00                 //odd aprity means odd number of 1's. So, odd parity will ield odd sum of the digits
	CMP R1, #&00000001
	BGE GO
	
	MOV R2, R2, LSR #1 // shifting to the right creates a carry which we can add by adc
	ADC R3, #&00   // odd parity means odd sum and hence, 1 is stored in case of it. even parity means even sum and so nothing is stored.
	
	

NUM DCD &00000004, &00000000