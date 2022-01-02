.MODEL SMALL
.STACK 200H
.DATA 
      ;DECLARE VAR
      MSG DB "HELLO WORLD $"

.CODE

 MAIN PROC
    MOV AX, DATA
    MOV DS, AX
    
    
    MOV AH, 9H 
    LEA DX, MSG    
    INT 21H
    
    MOV AX, 4CH
    INT 21H
    
    MAIN ENDP
    END MAIN