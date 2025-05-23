.model small
.stack 100h
.data
msg db 13,10,"You entered: $"
.code

main proc
    mov ax, @data
    mov ds, ax
   
    mov ah, 01h
    int 21h        
    mov bl, al     
        
    cmp bl,'0'
    je p 
    cmp bl ,'1'
    je p 
    jmp exit
    p:
    mov dx, offset msg
    mov ah, 09h
    int 21h

    mov dl,bl 
    mov ah, 02h     
    int 21h  
    
    exit:
    mov ah, 4Ch
    int 21h 
   
    
main endp

end main
