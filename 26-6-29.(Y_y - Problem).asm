INCLUDE "EMU8086.INC"
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC



     PRINT "INPUT A NEW CHARACTER:  "

MOV AH, 1
INT 21H
MOV BL, AL


CMP BL, "Y"
JNGE NONE   
CMP BL, "Y"
JNLE LOW
 PRINTN 
 PRINT "HELLO WORLD!"             
 JMP EXIT
 
     

  LOW:

CMP BL, "y"
JNGE NONE
CMP BL, "y"
JNLE NONE
 JMP EXIT
              
              

PRINTN 
PRINT "HELLOW WORLD"  
JMP EXIT

    NONE:
    PRINTN 
PRINT "NONE OF THEM!"
    
    

EXIT: