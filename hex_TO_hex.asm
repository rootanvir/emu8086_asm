.model  small
.stack 100h
.data 
msg db 13,10,"You hex digit : $"
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
    jbe cd
    cmp bl,'A'
    jae cd 
    jmp exit
    
    cd:
    mov dl,offset msg
    mov ah,09h
    int 21h
    
    mov dl,bl
    mov ah,02h
    int 21h
    jmp exit
     
    exit:
    mov ah,4ch
    int 21h
    
endp main

     
     
     
           
       
       
   