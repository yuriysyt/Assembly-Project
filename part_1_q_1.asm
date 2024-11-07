R: DW 0x3              ; Define a variable R with a value of 3
b: DW 0x2              ; Define a variable b with a value of 2
pi: DW 0x3             ; Define a variable pi with a value of 3
RESULT: DW 0           ; Define a variable RESULT initialized to 0

start:                 ; The program starts here
MOV AX, word R         ; Move the value of R into the AX register
MOV BX, word b         ; Move the value of b into the BX register
MOV CX, AX             ; Copy the value of R from AX to CX
MUL CX                 ; Multiply AX by CX (R * R), result stored in AX
MOV DX, word pi        ; Move the value of pi into the DX register
SHL DX, 1              ; Shift the value in DX (pi) left by 1 bit
MUL DX                 ; Multiply AX by DX
DIV BX                 ; Divide AX by the value in BX
MOV word RESULT, AX    ; Move the value of AX (the result) into RESULT