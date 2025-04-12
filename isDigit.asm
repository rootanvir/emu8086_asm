org 100h

mov ah, 01h          ; DOS function to take single character input
int 21h              ; AL now has the ASCII code of the pressed key
mov dl, al           ; Move to DL for comparison     


cmp dl,'0'
jb p
cmp dl,'9'
ja p

mov dx,offset msg1
mov ah,09h
int 21h
ret

p:

mov dx,offset msg2
mov ah,09h
int 21h
ret


ret 
msg1 db 13,10,"Digit$"
msg2 db 13,10,"Not Digit$"