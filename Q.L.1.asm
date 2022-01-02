;Write a program to print 10"*" in a row.
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC


   MOV CX, 10
   MOV AH, 2
   MOV DL, '*'
   
   UP:
   INT 21H
   LOOP UP


EXIT: