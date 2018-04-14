 AREA Program, CODE, READONLY
	ENTRY

Main
	ADR R0, Value1 ;Pointer to first value
	LDMIA R0, {R1,R2} ;Load the value to be added
	ADR R0, Value2 ;Pointer to second value
	LDMIA R0, {R3,R4} ;Load the value to be added
	ADDS R6, R2, R4 ;Add lower 4 bytes and set carry flag
	ADC R5, R1, R3 ;Add upper 4 bytes including carry
	ADR R0, Result ;Pointer to Result
	BGE GO          ; sees carry as well
	STMIA R0, {R5, R6} ;Store the result
GO 
    ADR R0, Value3
	STMIA R0, {R7}
    STMIA R0, {R5, R6} 
NOP
Value1 DCD &12A2E640,&F2100123 ;Value to be added
Value2 DCD &001019BF,&40023F51 ;Value to be added
Value3 DCD &00000001
Result DCD 0 ;Space to store result
	END