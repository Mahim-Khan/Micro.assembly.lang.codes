;Write a assembly code that will print 0 to 9
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,10
    MOV AH,2
    MOV DL,"0"
     
     
    UP:
    INT 21H
    INC DL
    LOOP UP
     EXIT:
     