.model small
.data
str1 db 'mango','$'
len dw $-str1
rev db 10 dup()
.code
mov ax, @data
mov ds, ax
mov cx, len
lea si, str1
lea di, rev
loop1: mov al, [si]
mov [di], al
inc si
inc di
loop loop1
mov al, [si]
mov [di], al
inc di
mov dl, '$'
mov [di], dl
mov ah, 09h
lea dx, rev
int 21h
mov ah, 4ch
int 21h
end
