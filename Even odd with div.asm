INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    PRINT "ENTER VALUE : "
    MOV AH,1
    INT 21H
    MOV BL,2H
    SUB BL,30H 
    
    MOV CL,2H
    MOV AH,0
    DIV CL
    CMP AH,0
    JE EV  
    
    PRINTN
    PRINT "ODD "
    JMP EXIT
             
    EV:
    PRINTN
    PRINT "EVEN"
  
    EXIT:
    