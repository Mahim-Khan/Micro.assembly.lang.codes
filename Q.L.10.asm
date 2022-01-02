;Write a program to string output

include "emu8086.inc"
.model small
.stack 100h
.data
string db "I love my friend's $"
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,string
    int 21h
    
    main endp
end main