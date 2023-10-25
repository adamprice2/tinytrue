BITS 32
    org  65536
    db  127, "ELF"
    dd  1,0,$$
    dw  2,3
    dd  _start,_start
    dd  4
_start:
    mov  bl, 0
    xor  eax, eax
    inc eax
    int  128
    db  0
    dw  52,32
    db  1
filesize  equ  $ - $$
