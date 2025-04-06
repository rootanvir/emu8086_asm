org 100h              ; Set origin for .COM program

mov ax, 9             ; Load the value 9 into AX
sub ax, 4             ; Subtract 4 from AX, now AX = 5
mov dx, ax            ; Copy AX to DX
add dx, 30h           ; Convert number to ASCII ('5' = 35h = '5')
mov ah, 02h           ; Set function 02h for INT 21h (display character)
int 21h               ; Call DOS interrupt to display character in DL

ret                   ; Return to DOS
