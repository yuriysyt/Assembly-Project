a: DW 0x2              ; Define a variable 'a' with a value of 2
b: DW 0x3              ; Define a variable 'b' with a value of 3
c: DW 0x4              ; Define a variable 'c' with a value of 4
x: DW 0x8              ; Define a variable 'x' with a value of 8
RESULT: DW 0           ; Define a variable RESULT initialized to 0

start:                 ; The program starts here
MOV AX, word a         ; Move the value of 'a' into the AX register
MOV BX, word b         ; Move the value of 'b' into the BX register
MOV CX, AX             ; Copy the value of 'a' from AX to CX
MUL CX                 ; Multiply AX by CX (a * a), result stored in AX
MOV DX, word c         ; Move the value of 'c' into the DX register
MUL DX                 ; Multiply AX by DX (a * a * c), result stored in AX
MOV CX, word x         ; Move the value of 'x' into the CX register
MUL CX                 ; Multiply AX by CX (a * a * c * x), result stored in AX
DIV BX                 ; Divide AX by the value in BX (b)
MOV word RESULT, AX    ; Store the result (a * a * c * x / b) in the RESULT variable