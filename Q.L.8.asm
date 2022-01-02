;Addition two digit .If sum is greater than 9
INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE 

MAIN PROC 
    PRINT "ENTER FIRST NUMBER: "
    MOV AH,1
    INT 21H
    MOV BH,AL 
    PRINTN
    PRINT "ENTER SECOND NUMBER: "
    INT 21H
    MOV CL,AL    
    
    ADD BH,CL
    SUB BH,48  
    PRINTN
    PRINT "RESULT IS = "
    MOV AH,2  
    MOV DL,BL
    INT 21H 
    JMP EXIT
    
    MSG:
    PRINTN
    PRINT "GREATER THEN 9"       
    
     EXIT: