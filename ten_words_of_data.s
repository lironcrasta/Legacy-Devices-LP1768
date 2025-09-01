		AREA    MYCODE, CODE, READONLY
        ENTRY
        EXPORT  __main

__main
        LDR     R0, =SRC_DATA      
        LDR     R1, =DST_DATA      
        MOV     R2, #10            

loop
        LDR     R3, [R0], #4       
        STR     R3, [R1], #4       
        SUBS    R2, R2, #1        
        BNE     loop               

        B       .                  

        AREA    MYCONST, DATA, READONLY
SRC_DATA
        DCD     0x11111111,0x22222222,0x33333333,0x44444444,0x55555555
		DCD     0x66666666,0x77777777,0x88888888,0x99999999,0xAAAAAAAA

        AREA    MYDATA, DATA, READWRITE
DST_DATA
        SPACE   40                 

        END
			
		
