INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC
    PRINT "INPUT A CHARACTER:"
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,"Y"
    JNGE EXIT
    CMP BL,"y" 
   
    JNLE EXIT 
    PRINTN
    PRINT "HELLO WORLD !"  
    JMP EXIT
    
  
    EXIT:
    