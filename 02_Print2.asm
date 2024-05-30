;Simple Program to Print a Character in Assembly Language
.model small
.stack 100h

.data
A db 'A'

.code
Main proc
    mov ax, @data
    mov ds, ax

    mov dl, A
    mov ah, 2 ;Print a single character
    int 21h

    mov ah, 4Ch ;terminate the program and return control to the operating system
    int 21h
Main endp
end Main
