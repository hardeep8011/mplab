.model small
.data
str1 db "NMIT $"
str2 db "CSE $"
.code
mov ax, @data
mov ds, ax
lea si, str1
lea di, str2
mov al, "$"
loop1: cmp [si], al
jz exit
inc si
jmp loop1
exit: mov bl, "$"
loop2: mov al, [di]
cmp al, bl
jz exit1
mov [si], al
inc di
inc si
jmp loop2
exit1: mov ah, 09h
lea dx, str1
int 21h
mov ah, 4ch
int 21h
end
