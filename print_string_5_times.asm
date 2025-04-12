org 100h

mov cx,1
l:
mov dx,offset msg
mov ah,09h
int 21h
inc cx
cmp cx,5
jle l

msg db "Hello world",13,10,""