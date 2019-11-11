.model small
.data
str1 db "madam $"
len dw 05h
msg1 db "palindrome $"
msg2 db "not palindrome $"
pal db 05h
.code
mov ax, @data
mov ds, ax
mov es, ax
mov cx, len
dec cx
lea si, str1
lea di, pal
add di, cx
mov cx, len
back: cld
lodsb
std
stosb
loop back
lea si, str1
lea di, pal
mov cx, len
cld
repz cmpsb
jnz skip
mov ah, 09h
lea dx, msg1
int 21h
jmp loop1
skip: mov ah, 09h
lea dx, msg2
int 21h
loop1: mov ah, 4ch
int 21h
end
