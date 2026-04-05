section .data
        a dq 15
        b dq 25
        c dq 10

section .bss
        result resq 1

section .text
        global _start

_start:
        ; Перемещаем числа из data в регистры
        mov rax, qword [rel a]
        mov rdx, qword [rel b]
        ; Выполняем сложение
        add rax, rdx
        ; Перемещаем c в rdx
        mov rdx, qword [rel c]
        ; Выполняем вычитание
        sub rax, rdx
        ; Помещаем резульат result
        mov qword [rel result], rax

        ; Выход из программы
        mov rax, 60
        mov rdi, 0
        syscall
