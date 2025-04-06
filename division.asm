org 100h              ; Set origin for .COM program

mov ax, 8             ; Load 8 into AX (numerator)
mov bx, 2             ; Load 2 into BX (denominator)
div bx                ; Divide AX by BX, result in AL = AX / BX = 4
                      ; AH will contain the remainder (not used here)
mov dx, ax            ; Copy quotient to DX
add dx, 30h           ; Convert result to ASCII ('4' = 34h)
mov ah, 02h           ; Set function 02h for INT 21h (display character)
int 21h               ; Display character in DL

ret                   ; Return to DOS
