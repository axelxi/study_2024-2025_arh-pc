%include 'in_out.asm'
section .data
    msg1 db 'Введите x: ',0h
    msg2 db 'Введите a: ',0h
    msg3 db "f(x) =  ",0h
section .bss
    x: resb 80
    a: resb 80
    res: resb 80
section .text
    global _start
_start:
    mov eax,msg1
    call sprint
    mov ecx,x
    mov edx,80
    call sread
    mov eax,x
    call atoi
    mov [x],eax

    mov eax,msg2
    call sprint
    mov ecx,a
    mov edx,80
    call sread
    mov eax,a
    call atoi
    mov [a],eax

    mov ecx,[a]
    mov [res],ecx

    cmp ecx,7
    jl check_A
    sub ecx,7
    mov [res],ecx
    jmp fin
check_A:
    mov eax,[a]
    mov ecx,[x]
    mul ecx
    mov [res],eax
    jmp fin
fin:
    mov eax,msg3
    call sprint
    mov eax,[res]
    call iprintLF

    call quit