INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    PRINT "ENTER 1ST VALUE : "
    MOV AH,1
    INT 21H
    MOV BL,AL
    SUB BL,30H
    
    PRINTN
    PRINT "ENTER 2ND VALUE : " 
    INT 21H 
    SUB AL,30H
    MOV CL,AL 
    
    PRINTN
    PRINT "WHAT YOU WANT TO DO M/L : " 
    MOV AH,1
    INT 21H
   
    CMP AL,'M'
    JE M
    CMP AL,'D'
    JE D
    JMP EXIT 
    
    M:
    MOV AL,0
    MOV AL,CL 
    MUL BL
    ADD AL,30H 
    ADD AH,30H
    
    
    PRINTN
    PRINT "RESULT IS : "
    MOV AH,2
    MOV DL,AL
    INT 21H
    JMP EXIT
     
    D:
    MOV AL,0
    MOV AL,CL 
    MOV AH,0
    DIV BL
    ADD AL,30H 
    
       
    PRINTN
    PRINT "RESULT IS : "
    MOV AH,2
    MOV DL,AL
    INT 21H   
    EXIT:
    