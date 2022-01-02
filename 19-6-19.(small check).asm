INCLUDE "EMU8086.INC"   
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
      PRINT "INPUT VALUE OF BL: "   
      MOV AH,01H
      INT 21H    
      MOV BL,AL
      
      PRINTN
      PRINT "INPUT VALUE OF AL: "
      INT 21H
      
      CMP BL,AL
      JL P_BL
      
      PRINTN
      MOV AH,2
      MOV DL,AL
      INT 21H
      JMP EXIT
      
      P_BL:
      PRINTN
      MOV AH,2
      MOV DL,BL
      INT 21H
      
      EXIT: