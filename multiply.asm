org 100h

mov ax, 2          
mov bx, 3            
mul bx
mov dx,ax       
add dx, 30h        
mov ah, 02h        
int 21h           

ret                
