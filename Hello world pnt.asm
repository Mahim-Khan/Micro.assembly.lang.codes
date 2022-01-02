INCLUDE "EMU8086.INC"                   
.MODEL SMALL
.STACK 100H
.CODE
                                         
   MAIN PROC                             
          PRINT "How may time you want to print: "
          MOV AH,1
          INT 21H
          MOV BL,AL
          
          UP:
          PRINTN
          PRINT "HELLO WORLD"
          
          DEC BL
          CMP BL,'0'
          JG UP
          EXIT:
