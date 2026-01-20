section .data
    prompt db "> ", 0
    input_prompt db "Input: ", 0

section .bss
    buffer resd 1024
    bytes resd 1

section .text
    global _start 

output_prompt:
    mov rax, 1
    mov rdi, 1
    lea rsi, [prompt]
    mov rdx, 3
    syscall
    ret

_start:

    .loop:
        call output_prompt

        mov rax, 0
        mov rdi, 0
        lea rsi, [buffer]
        mov rdx, 1024
        syscall

        mov [bytes], rax

        mov rax, 1
        mov rdi, 1
        lea rsi, [input_prompt]
        mov rdx, 7
        syscall

        mov rax, 1
        mov rdi, 1
        lea rsi, [buffer]
        mov rdx, [bytes]
        syscall

        call .loop

    mov rax, 60
    mov rdi, 0
    syscall