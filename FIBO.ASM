.model small
.data
msg db "NMIT"
len db 0Ah
res db 10 dup(0)
.code
mov ax, @data
mov ds, ax
lea si, res
mov cl, len
mov al, 00h
mov bl, 01h
mov [si], al
mov [si+1], bl
loop1: add al, bl
mov [si+2], al
mov al,bl
mov bl, [si+2]
inc si
dec cl
jnz loop1
mov ah, 4ch
int 21h
end
