%include 'in_out.asm'
SECTION .data
    msg1: db 'Как Вас зовут? ',0
    filename: db 'name.txt',0
    msg2: db 'Меня зовут ',0
SECTION .bss
    name: resb 80
SECTION .text
global _start
_start:
    mov eax,msg1
    call sprint

    mov ecx,name
    mov edx,80
    call sread

    mov ecx,0777o
    mov ebx,filename
    mov eax,8
    int 80h

    mov esi,eax
    mov eax,msg2
    call slen
    mov edx,eax
    mov ecx,msg2
    mov ebx,esi
    mov eax,4
    int 80h

    mov ebx,esi
    mov eax,6
    int 80h
    mov ecx,1
    mov ebx,filename
    mov eax,5
    int 80h

    mov esi,eax
    mov edx,2
    mov ecx,0
    mov ebx,eax
    mov eax,19
    int 80h

    mov eax,name
    call slen
    mov edx,eax
    mov ecx,name
    mov ebx,esi
    mov eax,4
    int 80h

    mov ebx,esi
    mov eax,6
    int 80h

    call quit