;Value print 
org 100h    ;start the program 

mov ax,5    ;store 5 in ax
add ax,30h  ;convert it to ascii
mov dx,ax   ;mov ax to dx for printing
mov ah,02h  ;call dos function to print
int 21h     ;interrupt to print the value

ret         ;end program