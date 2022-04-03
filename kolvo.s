global main
extern printf
section .text
    main:
    push rbp
    mov rbp, rsp
    mov eax, 1 ;
    cpuid
    shr ebx, 16
    mov eax, ebx
    mov rdi, format
    mov esi, eax
    call printf wrt ..plt
    mov eax, 0
    pop rbp
    retn
section .data
    format: dd `%08x\n\0`
