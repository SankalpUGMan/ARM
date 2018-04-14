 AREA abc,CODE,READONLY //leave a spacebar space before AREA
	
	ENTRY

Main
	
	LDR R1,NUM+
	LDR R2, NUM
	CMP R1, R2
	BGE GO       // BGE causes branching if R1 > R2
	MOV R3, R2
	GO: MOV R3, R1
	
	;DCW means Word - 16 bits. 
NUM  DCW  &00D7, &0013
	
	END