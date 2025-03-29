.model small
.stack 100h
.data
msg         db 10, 13, ">:$"
bufferSize  db 20  ; Max input length (excluding RETURN)
inputLength db ?   ; Number of characters actually read
buffer      db 21 DUP(0) ; Actual buffer for input
newline     db 10, 13, "$" ; Newline for clarity

.code
main proc

    ; Initialize DS
    mov ax, @data
    mov ds, ax
    
    ; Print the message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Read user input
    lea dx, bufferSize  ; Load pointer to input buffer structure
    mov ah, 0Ah         ; DOS buffered input function
    int 21h

    ; Remove ENTER (0Dh) and add $ terminator
    mov al, inputLength  ; Get the number of characters entered
    mov ah, 0            ; Clear upper byte
    lea si, buffer       ; SI points to buffer
    add si, ax           ; Move to end of input
    mov byte ptr [si], '$'  ; Add $ to terminate string

    ; Print a newline before outputting user input
    lea dx, newline
    mov ah, 09h
    int 21h

    ; Print user input
    lea dx, buffer
    mov ah, 09h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

main endp
end main
