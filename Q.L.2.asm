;write a program taking a character and output in new line.

INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
        MOV AH,1H
        INT 21H
        MOV BL,AL
        
        
        PRINTN
        MOV DL,2H
        MOV DL,BL
        INT 21H
        
        MAIN ENDP
        END MAIN