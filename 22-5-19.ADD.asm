INCLUDE "EMU8086.INC"

.MODEL SMALL
.STACK 100H
.CODE 

MAIN PROC 
    
    PRINT "ENTER FIRST VALUE: "
    MOV AH,1
    INT 21H
    MOV BH,AL 
    
      
    PRINTN
    PRINT "ENTER SECOND VALUE: "
    INT 21H
    MOV BL,AL    
    
    ADD BH,BL
    SUB BH,30H   
    
         
    PRINTN
    PRINT "RESULT IS = "
    MOV AH,2  
    MOV DL,BH
    INT 21H         
    
    MOV AX,4C00H
    INT 21H
    
    MAIN ENDP
    END MAIN
