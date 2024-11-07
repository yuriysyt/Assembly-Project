vals:
DB 0x29                ; Initialize values
DB 0x74                ; Value 1
DB 0x88                ; Value 2
DB 0x23                ; Value 3
DB 0x35                ; Value 4
DB 0x46                ; Value 5
DB 0x87                ; Value 6
DB 0x33                ; Value 7
DB 0x13                ; Value 8
DB 0x52                ; Value 9

PREVIOUS: DB 0         ; Initialize previous
MINIMUM: DB 0          ; Initialize minimum
MAXIMUM: DB 0          ; Initialize maximum

start:
mov SI, 0              ; Move 0 to SI
mov CX, OFFSET PREVIOUS ; Move offset of PREVIOUS to CX
mov AL, byte [SI]      ; Move byte at SI to AL

minimum_back:
cmp byte [SI], AL      ; Compare byte at SI with AL
jnc minimum_skip       ; Jump if carry flag (CF) is not set
mov AL, byte [SI]      ; Move byte at SI to AL

minimum_skip:
inc SI                 ; Increment SI
loop minimum_back      ; Loop until CX decrements to 0

mov byte MINIMUM, AL   ; Move byte in AL to MINIMUM

mov SI, 0              ; Move 0 to SI
mov CX, OFFSET PREVIOUS ; Move offset of PREVIOUS to CX
mov AL, byte [SI]      ; Move byte at SI to AL

maximum_back:
cmp AL, byte [SI]      ; Compare AL with byte at SI
jnc maximum_skip       ; Jump if carry flag (CF) is not set
mov AL, byte [SI]      ; Move byte at SI to AL

maximum_skip:
inc SI                 ; Increment SI
loop maximum_back      ; Loop until CX decrements to 0

mov byte MAXIMUM, AL   ; Move byte in AL to MAXIMUM
