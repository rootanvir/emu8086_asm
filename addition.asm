org 100h              ; Set origin for .COM program

mov ax, 3             ; Load the value 3 into AX
add ax, 2             ; Add 2 to AX, now AX = 5
mov dx, ax            ; Copy AX to DX
add dx, 30h           ; Convert number to ASCII ('5' = 35h = '5')
mov ah, 02h           ; Set function 02h for INT 21h (display character)
int 21h               ; Call DOS interrupt to display character in DL

ret                   ; Return to DOS
