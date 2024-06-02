;Assembly Program to add two user-defined numbers & display result
.MODEL SMALL
.STACK 100H
.DATA
    V1   Dw '1'
    v2   Dw '2'
.code
main PROC
    mov ax, @data
    mov ds, ax

    mov bx, V1
    mov cx, v2

    Add bx,cx
    sub bx,48
    mov dx,bx

    mov ah,2
    int 21H

    MOV AH, 4CH
    INT 21H

main endp
end main    
    
