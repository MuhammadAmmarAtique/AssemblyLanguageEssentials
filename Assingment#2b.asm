; Assingment#2 Solution "b"
.model small
.stack 100h
.data
v1 db '5'
v2 db '5'
v3 db '5'
answer db '00', '$'  ; Buffer to hold the result string
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Convert ASCII to numeric values
    mov al, v1
    sub al, '0'
    mov bl, al

    mov al, v2
    sub al, '0'
    add bl, al

    mov al, v3
    sub al, '0'
    add bl, al      ; The sum is now in BL

    mov al, bl      ; Move the sum to AL

    aam             ; ASCII Adjust AX After Multiply
    add ah, '0'     ; Convert tens digit to ASCII
    add al, '0'     ; Convert units digit to ASCII

    mov answer, ah  ; Store tens digit
    mov answer+1, al; Store units digit

    ; Print the result string
    mov dx, offset answer
    mov ah, 9h     ; DOS function to print string
    int 21h         ; Call DOS interrupt

    ; Exit program
    mov ah, 4Ch     ; DOS function to terminate program
    int 21h         ; Call DOS interrupt

main endp
end main