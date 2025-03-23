;printing a string 

org 100h                ;start the program   

mov dx,offset msg       ;load address of msg in dx  
mov ah,09h              ;call dos funtion to print
int 21h                 ;interrupt to print

ret                     ;end program    

msg db 'Hello world$'   ;store message in msg with direct byte                                                
                                                  
                                                                 
