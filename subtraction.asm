org 100h

mov ax,9
sub ax,4
mov dx,ax
add dx,30h
mov ah,02h
int 21h
ret