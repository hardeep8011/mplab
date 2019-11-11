.model small
.data
msg db "NMIT"
data1 db 13H, 10H, 01H, 1AH, 03H, 15H   ;0A32H,12BAH,89CDH,4098H,113AH
len db 06H                              ;len db 05H
.code
mov ax, @data
mov ds, ax
dec len
mov bl, len
back2: mov cl,bl
LEA SI, data1
back1: mov al, [SI]                      ;ax in 16bit
cmp al, [SI+1]                           ;cmp ax, [si+2]
JLE skip                                 ;JGE skip --> for descending order
mov dl, [SI+1]                           ;[si+2]
mov [SI+1],al                            ;[si+2]
mov [SI],dl                              
skip: inc SI
loop back1
dec bl
JNZ back2
mov ah,4ch
int 21h
end
