;Assembly Program to add two numbers

.MODEL SMALL
.STACK 100h
.DATA
num1 db 5     
num2 db 5  
  

.CODE
main PROC
    ; Initialize the data segment
    mov ax, @data
    mov ds, ax

    mov al, num1    
    mov bl, num2  
    add al, bl      

    mov ah, 4Ch     
    int 21h        

main ENDP
END main
