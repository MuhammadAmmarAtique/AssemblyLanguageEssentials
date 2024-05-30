; Displaying a String in Assembly Language

.MODEL SMALL  ;"SMALL" model means that the code and data will fit within a single 64KB segment each
.stack 100h
.DATA
tr db 'My name is Ammar $'   ;db = 1byte dw = 2byte and dd = 4byte (define byte, define word, double word)
.code
main PROC
    mov ax,@data
    mov ds,ax

    mov dx ,offset tr
    mov ah, 9 ;Print a null-terminated string
    int 21h

    mov ah, 4Ch  ;terminate the program and return control to the operating system
    int 21h
endp
end main