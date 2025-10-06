	AREA MYCODE, CODE, READONLY
    EXPORT __main
    ENTRY

__main
    MOV R0, #0      
    MOV R1, #1      
    MOV R2, #10     
    MOV R3, #0 
	LDR R5,=RESULT
	STRB R0,[R5],#1
	STRB R1,[R5],#1

LOOP
    CMP R3, R2     
    BGE DONE      

	ADD R4, R0, R1 
	STRB R4,[R5],#1
    MOV R0, R1      
    MOV R1, R4     
    ADD R3, R3, #1  
    B LOOP          

DONE
    B DONE
	
	AREA MYDATA,DATA,READWRITE
RESULT
	SPACE 10

END