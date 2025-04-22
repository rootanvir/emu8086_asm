org 100h
mov ah,01h 
int 21h
and ax,1
cmp ax,0   

je p
mov dx,offset msg2
mov ah,09h
int 21h
ret
p:
mov dx,offset msg1
mov ah,09h
int 21h
ret

msg1 db 13,10,"Even$" 
msg2 db 13,10,"Odd$"