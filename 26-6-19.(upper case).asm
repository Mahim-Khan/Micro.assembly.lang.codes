INCLUDE "EMU8086.INC"
.MODEL SMALL 
.CODE
MAIN PROC
    PRINT "INPUT A CHARACTER: "
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,"A"
    JNGE EXIT
    CMP BL,"Z"
    JNLE EXIT
    
    PRINTN
    PRINT "UPPER CASE"
     
     
    EXIT:
    