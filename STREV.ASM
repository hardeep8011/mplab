.model small
.data
str1 db 'NMIT','$'
lenstr1 dw $-str1
revstr db 10 dup()
.code
mov ax, @data
mov ds, ax
mov es, ax
mov cx, lenstr1
add cx, -2
lea si, str1
lea di, revstr
add si, cx
loop1: mov al, [si]
mov [di], al
dec si
inc di
loop loop1
mov al, [si]
mov [di], al
inc di
mov dl, '$'
mov [di], dl
mov ah, 09h
lea dx, revstr
int 21h
mov ah, 4ch
int 21h
end
