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
mov ah,num2
add al,ah
mov res, al
ret
additon endp
end
