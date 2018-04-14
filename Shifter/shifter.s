 AREA abc,CODE,READONLY
	
	ENTRY

Main
	
	LDR R1,NUM
	MOV R2,R1
	AND R1,#&0F
	AND R2,#&F0
	LSL R2,R2,#4
	ADD R1,R1,R2
	
	
NUM  DCB  &D7
	
	END
