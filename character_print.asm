;print   character

org 100h    ;start the program   
mov dx,'A'  ;store ascii character A in dl
mov ah,02h  ;call dos function to print a character
int 21h     ;call dos interupt to print in dl
ret         ;End the program
                       