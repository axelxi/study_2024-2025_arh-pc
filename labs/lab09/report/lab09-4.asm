%include 'in_out.asm'

SECTION .data
msg db "f(x1)+f(x2)+...+f(xn) =  ",0

SECTION .text
global _start

_start:
    pop ecx
    pop edx
    sub ecx,1
    mov esi,0

next:
    cmp ecx,0h
    jz _end
    pop eax
    call atoi
    call _calcul
    add esi,eax
    loop next
_end:
    mov eax, msg
    call sprint
    mov eax, esi
    call iprintLF
    call quit
_calcul:
    mov ebx,12
    mul ebx
    sub eax,7
    ret