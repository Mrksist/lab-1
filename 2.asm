section .data
        array dd 13, 37, 67, 52, 42

section .text
        global _start

_start:
        ; Инициплизируем
        mov rbx, array
        mov rcx, 0
        mov r8, 0

        ; Задаем цикл
cycle:
        mov eax, dword [rbx + rcx * 4]

        ; Сравниваем, если меньше - не копируем в r8
        cmp eax, r8d
        jl continue
        mov r8d, eax
continue:
        ; Поддержка цикла и счётчика rcx
        inc rcx
        cmp rcx, 5
        jne cycle

        ; Выход из программы
        mov rax, 60
        mov rdi, 0
        syscall
