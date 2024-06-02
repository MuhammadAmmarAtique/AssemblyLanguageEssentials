;Declare three integer variables. Initialize them to 4, 5 and 7.  
;Add these numbers and place the result in a fourth variable called answer. 

.MODEL SMALL
.STACK 100H

.DATA
    num1    DW 4
    num2    DW 5
    num3    DW 7
    answer  DW ?
    buffer  DB 6 DUP ('$')

.CODE
MAIN PROC
    ; Initialize variables
    MOV AX, @DATA
    MOV DS, AX
    
    ; Load values into registers
    MOV AX, num1
    ADD AX, num2
    ADD AX, num3
    
    ; Store result in answer
    MOV answer, AX
    
    ; Convert the result to a string
    MOV AX, answer
    MOV BX, 10     ; Base 10
    MOV CX, 0      ; Counter
    
    ; Convert AX to string
    MOV DI, OFFSET buffer + 5  ; Point to the end of buffer
    MOV SI, DI
    
    ; Loop to convert the number to string
    ConvertLoop:
        XOR DX, DX          ; Clear DX
        DIV BX              ; Divide AX by 10, quotient in AX, remainder in DX
        ADD DL, '0'         ; Convert remainder to ASCII
        DEC SI              ; Move back in buffer
        MOV [SI], DL        ; Store ASCII character
        INC CX              ; Increment counter
        TEST AX, AX         ; Check if quotient is zero
        JNZ ConvertLoop     ; If not zero, continue loop
    
    ; Display the result
    MOV AH, 09H           ; DOS function to display string
    MOV DX, SI            ; Point to the beginning of the converted string
    INT 21H
    
    ; Exit program
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
