;Write a program that will convert from upper case to lower case or lower to upper.
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC
    PRINT "ENTER AN UPPER CASE LETTER: "
    MOV AH,1H
    INT 21H
    MOV BL,AL
    
    ADD BL,32
    PRINTN
    PRINT "LOWER CASE IS: "
    
    MOV AH,2H
    MOV DL,BL
    INT 21H
    
    EXIT:
    