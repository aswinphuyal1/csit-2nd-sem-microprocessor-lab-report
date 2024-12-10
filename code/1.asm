      .model small
.stack 64h

.data
str db "hello mbm!!!$", 0

.code
main proc
    mov ax, @data       ; Initialize the data segment
    mov ds, ax          ; Load DS with the data segment
    lea dx, str         ; Load the address of 'str' into DX
    mov ah, 09h         ; DOS interrupt for string output
    int 21h             ; Call DOS interrupt to print the string

    mov ah, 4Ch         ; DOS interrupt for program termination
    int 21h             ; Exit program
main endp

end main
