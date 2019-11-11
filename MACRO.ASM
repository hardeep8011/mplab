display macro message
mov ah, 09h
lea dx, message
int 21h
endm
.model small
.data
msg1 db 'CSE 3rd sem $'
msg2 db 10, 'mp lab $'
msg3 db 10, 'lab-1 $'
.code
mov ax, @data
mov ds, ax
display msg1
display msg2
display msg3
mov ah, 4ch
int 21h
end
