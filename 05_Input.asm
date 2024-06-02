;Program to take input (Character) from user and display it

.MODEL SMALL
.STACK 100h
.DATA

.CODE
main PROC
    mov ah,1
    int 21h

    mov dl,al

    mov ah,2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
END main