org 100h
mov ax,5
cmp ax,5
ja p
mov dx,offset less
mov ah,09h
int 21h
ret

p:
mov dx,offset greater
mov ah,09h
int 21h
ret   

less db "less$"
greater db "greater$"