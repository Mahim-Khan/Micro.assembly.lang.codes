INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    PRINT "ENTER 1ST VALUE : "
    MOV AH,1
    INT 21H
    ;MOV BL,AL
    SUB AL,30H 
       
    
    ;PRINTN
    ;PRINT "ENTER 2ND VALUE : "
    ;INT 21H
    ;SUB AL,30H 
    
    MUL AL
    AAM
    ADD AH,30H
    ADD AL,30H
    MOV BX,AX
    PRINTN
    PRINT "RESULT IS : "
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    MOV DL,BL
    INT 21H
    EXIT:
    