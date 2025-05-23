.model  small
.stack 100h
.data 
msg db 13,10,"Your binary digit : $"
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ah,01h
    int 21h
    mov bl,al

    cmp bl,'0'
    jb exit
    cmp bl,'F'
    ja exit 

    cmp bl,'9'
    jbe conv
    cmp bl,'A'
    jae conv 
    jmp exit

conv:
    cmp bl,'A'
    jb digit
    sub bl,55
    jmp show

digit:
    sub bl,'0'

show:
    lea dx,msg
    mov ah,09h
    int 21h

    mov cx,4
l:
    mov al,bl
    and al,1
    cmp al,1
    jne zero 

    mov dl,'1'
    mov ah,02h 
    int 21h
    jmp skip

zero:
    mov dl,'0'
    mov ah,02h 
    int 21h

skip:   
    shr bl,1
    dec cx
    cmp cx,0
    jne l 

exit:
    mov ah,4ch
    int 21h
main endp
end main
