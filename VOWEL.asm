INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC
    PRINT "ENTER A CHARACTER: "
    MOV AH,1 
    INT 21H
    MOV BL,AL
    
    
    CMP BL,"A"
    JE PNT  
    CMP BL,"E"
    JE PNT
    CMP BL,"I"
    JE PNT
    CMP BL,"O"
    JE PNT  
    CMP BL,"U"
    JE PNT  
    
    PRINTN
    PRINT "CONSONENT"
    JMP EXIT
     
    PNT:
    PRINTN
    PRINT "VOWEL"
    
    
    EXIT: