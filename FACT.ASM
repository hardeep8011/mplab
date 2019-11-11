.model small
.data
msg db "NMIT"
num db 05h
res db ?
.code
mov ax, @data
mov ds, ax
lea si, num
mov al, [si]
mov bl, al
loop2: mov cl, 00h
mov bh, bl
dec bh
loop1: add cl, al
dec bh
jnz loop1
xchg al, cl
dec bl
jnz loop2
mov res, al
mov ah, 4ch
int 21h
end
