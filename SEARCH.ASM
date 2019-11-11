.model small
.data
msg db "NMIT"
array db 09H, 0AH, 10H, 13H, 01H
len db 05H
res db ?
.code
mov ax, @data
mov ds, ax
mov cl, len
dec cl
lea si, array
mov al, [si]                               ;ax for 16bit
loop1: cmp al, [si+1]                      ;[si+2] for 16bit
jl loop2
;jg loop2
mov al, [si+1]
loop2: inc si
dec cl
jnz loop1
mov res, al
mov ah, 4ch
int 21h
end
