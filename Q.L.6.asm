;Display a row of 40 "#"
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV CX,40
    MOV AH,2
    MOV DL,"#"
     
     
    UP:
    INT 21H
    LOOP UP
     EXIT:
     