INCLUDE "EMU8086.INC"                   

.MODEL SMALL
.STACK 100H
.CODE
                                         
   MAIN PROC 
      PRINT "INPUT VALUE OF BL: "
      MOV AH,1
      INT 21H
      MOV BL,AL
      
      
      PRINTN
      PRINT "INPUT VALUE OF AL: "
      INT 21H 
      CMP BL,AL
      JL EXT 
      
      PRINTN
      MOV DL,AL
      INT 21H
      JMP EXIT
      EXT:
      PRINTN
      MOV AH,2
      MOV DL,BL
      INT 21H
      
      EXIT: