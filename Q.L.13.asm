;Read a character.If it's "y" or "Y" display it; Otherwise, Terminate the program   

include "emu8086.inc"
.model small
.stack 100h
.code
main proc
    print "Ener a Letter: "
    mov ah,1h
    int 21h
    mov bl,al
    cmp al,"Y"
    je equal1
    cmp al,"y"
    je equal2
    jmp exit
    equal1:
    printn
    print "Letter is: "
    mov ah,2h
    mov dl,al
    int 21h
    jmp exit
    equal2:
    printn
    print "Letter is: "
    mov ah,2h
    mov dl,al
    int 21h
    jmp exit
    
    
    exit:
    main endp
end main