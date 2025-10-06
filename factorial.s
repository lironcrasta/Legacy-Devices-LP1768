        AREA    MYCODE, CODE, READONLY
        ENTRY
		EXPORT __main

__main   
        MOV     R0, #5      
        BL      FACTORIAL_SUB    
        B       END        

FACTORIAL_SUB
        PUSH    {R1, LR}   
        MOV     R1, R0      
        MOV     R0, #1     

FACTORIAL_LOOP
        CMP     R1, #1     
        BLT     FACTORIAL_DONE   
        MUL     R0, R0, R1  
        SUB     R1, R1, #1  
        B       FACTORIAL_LOOP   

FACTORIAL_DONE
        POP     {R1, PC}    

END
        B       END        

        END
