INCLUDE "EMU8086.INC"                   

.MODEL SMALL
.STACK 200H
.DATA 
.CODE
       ;DECLARE VAR
       MSG DB "HELLO WORLD $"
                                         
   MAIN PROC 
              MOV AX, DATA
              MOV DS, AX
              
              
              MOV AH, 9H
              LEA DX,MSG
              INT 21H
              
              MOV AX, 4CH
              INT 21H
              
              MAIN ENDP
              END MAIN