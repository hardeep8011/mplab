.model small
.data
msg db "NMIT"
num db 53h
res db ?
.code
mov ax, @data
mov ds, ax
mov bl, 00
mov cl, 04
lea si, num
mov al, [si]
and al, 0F0H
ror al, cl
cmp al, 00
jz next
loop1: add bl, 00h
dec al
jnz loop1
next: mov al, [si]
and al, 0Fh
add al, bl
mov res, al
mov ah, 4ch
int 21h
end
