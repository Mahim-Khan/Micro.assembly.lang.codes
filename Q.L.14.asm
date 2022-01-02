INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 21H 
.CODE
MAIN PROC
    PRINT "INPUT A CHARACTER:"
    MOV AH,1
    INT 21H
    MOV BL,AL
             
    CMP BL,"0"
    JE PNT 
    
    CMP BL,"2"
    JE PNT  
    
    CMP BL,"4"
    JE PNT   
    
    CMP BL,"6"
     JE PNT
     
     CMP BL,"8" 
     JE PNT
        
     PRINTN
     PRINT "ODD"
     
     JMP EXIT
     
     PNT: 
     PRINTN
     PRINT "EVEN" 
     
     INT 21H 
     EXIT:
     