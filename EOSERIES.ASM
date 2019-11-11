.model small
.data
msg db "NMIT"
array db 09h, 04h, 03h, 19h, 22h
len db 05h
res db ?
.code
mov ax, @data
mov ds, ax
lea si, array
mov cl, len
mov bl, 00h
clc
loc2: mov al, [si]
ror al, 01h
mov al, [si]
jc loc1
;jnc loc1
add bl, al
loc1: inc si
dec cl
jnz loc2
mov res, bl
mov ah, 4ch
int 21h
end
