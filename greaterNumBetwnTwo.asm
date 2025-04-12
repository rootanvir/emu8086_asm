org 100h

mov ah,01h         ; Take input (no echo)
int 21h
mov bl,al          ; Store first character

mov ah,01h
int 21h
mov cl,al          ; Store second character

mov dx,offset msg
mov ah,09h
int 21h


cmp bl,cl
ja  p   

mov dl,cl
mov ah,02h
int 21h 


ret
p: 

mov dl,bl
mov ah,02h
int 21h 

ret
     
     
msg db 13,10," greater is $"