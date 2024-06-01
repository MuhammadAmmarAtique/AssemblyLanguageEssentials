;Program to sum 2 numbers taken from user and display result
.MODEL SMALL
.STACK 100H 
.DATA
    v1   dw ?
    v2   dw ?
    v3   dw ?
.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax

    MOV AH, 1
    int 21h

    sub al,48 ;Converts the ASCII code of the digit to its numeric value
    mov v1,ax

    MOV AH, 1
    int 21h

    sub al,48
    mov v2,ax

    mov bx,v1
    add bx,v2

    mov v3 ,bx
    mov ax,v3

    add ax,48 ;Converts the  numeric value to its ASCII code
    mov dx,ax

    mov ah,2
    INT 21H
    
    MOV AH, 4CH
    INT 21H
main endp
end main    