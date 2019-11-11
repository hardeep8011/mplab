.model small
.data
msg db "NMIT"
num db 35h
.code
mov ax, @data
mov ds, ax
lea si, num
mov al, [si]
mov bx, 0FFFFh
loop1: inc bl
sub al, 54h
jnc loop1
add al, 64h
loop2: inc bh
sub al, 0Ah
jnc loop2
add al, 0Ah
mov cl, 04
ror bh, cl
add al, bh
mov [si+1], bl
mov [si+2], al
mov ah, 4ch
int 21h
end
