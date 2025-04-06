org 100h              ; Set origin for .COM program

mov ax, 2             ; Load 2 into AX
mov bx, 3             ; Load 3 into BX
mul bx                ; Multiply AX by BX (AX = AX * BX), result in AX = 6
mov dx, ax            ; Copy result to DX
add dx, 30h           ; Convert number to ASCII ('6' = 36h)
mov ah, 02h           ; Set function 02h for INT 21h (display character)
int 21h               ; Call DOS interrupt to display character in DL

ret                   ; Return to DOS
