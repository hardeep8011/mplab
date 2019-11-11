.model small
.data
msg db "NMIT"
num1 db 05h
num2 db 06h
res db ?
.code
mov ax, @data
mov ds, ax
call addition
mov ah,4ch
int 21h
addition proc near
mov al, num1
add al, num2
mov res, al
ret
additon endp
end
