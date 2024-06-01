;Assembly Program to add two numbers & display result
.MODEL SMALL
.stack 100H
.DATA
.CODE
main proc

mov al,1
mov cl,2

add al,cl
; it converts the numeric result of AL into its ASCII equivalent so that it can be displayed as a character.
; 51 decimal & '3' character
add al,48 
mov dl,al

mov ah,2
int 21H

mov ah,4CH
int 21H

main endp
end main