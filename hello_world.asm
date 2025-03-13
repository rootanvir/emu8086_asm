org 100h       
    mov dx,offset ms
    mov ah,9h
    int 21h
ret

ms DB "Hello Tanvir$"