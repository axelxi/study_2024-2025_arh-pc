%include 'in_out.asm'

SECTION .data
    msg: DB 'Введите x: ',0
    result: DB '2(3x-1)+7=',0
SECTION .bss
    x: RESB 80
    res: RESB 80
SECTION .text
GLOBAL _start
    _start:

    mov eax, msg
    call sprint
    mov ecx, x
    mov edx, 80
    call sread
    mov eax,x
    call atoi
    
    call _calcul
    
    mov eax,result
    call sprint
    mov eax,[res]
    call iprintLF
    call quit
    
    _calcul:
	mov ebx,2
	call _subcalcul
	mul ebx
	add eax,7
	mov [res],eax
	ret
	
	_subcalcul:
	    mov ecx, 3
	    mul ecx
	    sub eax, 1
	    ret