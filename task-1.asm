.model small
.stack 100h

.data
    a db 5          ; Значення a
    b db 10         ; Значення b
    c db 3          ; Значення c
    result db ?     ; Змінна для збереження результату

.code
main proc
    mov ax, @data   ; Ініціалізація сегменту даних
    mov ds, ax

    mov al, b       ; Завантаження значення b
    sub al, c       ; Від `b` віднімемо `c`, результат у `al`
    add al, a       ; Додаємо `a` до результату
    mov result, al  ; Збереження результату

    ; Виведення результату на екран
    mov ah, 09h     ; Функція DOS для виведення рядка
    lea dx, result  ; Завантаження адреси результату
    int 21h         ; Виклик DOS

    ; Завершення програми
    mov ah, 4Ch     ; Функція завершення програми
    int 21h         ; Виклик DOS
main endp
end main
