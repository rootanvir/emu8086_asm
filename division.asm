org 100h

mov ax,8
mov bx,2
div bx
mov dx,ax
add dx,30h
mov ah,02h
int 21h
ret