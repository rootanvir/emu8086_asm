org 100h
mov ah,01h
int 21h
cmp al,'0'
jb p
cmp al,'9'
jbe n 
cmp al,'A'
jb p
cmp al,'Z'
jbe u
cmp al,'a'
jb p
cmp al,'z'
jbe l 

jmp p
n:
lea dx,msg4
mov ah,09h
int 21h
ret
u:
lea dx,msg3
mov ah,09h
int 21h
ret 
l:
lea dx,msg2
mov ah,09h
int 21h
ret 

p:
lea dx,msg1
mov ah,09h
int 21h
ret
msg1 db 13,10,"special$"
msg2 db 13,10,"lower$"     
msg3 db 13,10,"upper$"
msg4 db 13,10,"number$"
