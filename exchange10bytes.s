		AREA    MYCODE, CODE, READONLY
        ENTRY
        EXPORT  __main

__main
        LDR     R0, =ARR1         
        LDR     R1, =ARR2        
        MOV     R2, #10          
swap_loop
        LDR    R3, [R0]        
        LDR    R4, [R1]          
		STR    R4, [R0], #4      
        STR    R3, [R1], #4      
		SUBS    R2, R2, #1      
        BNE     swap_loop         
		B       .                 

		AREA    MYDATA, DATA, READWRITE
        ALIGN   
ARR1    SPACE     40
ARR2    SPACE     40

        END

