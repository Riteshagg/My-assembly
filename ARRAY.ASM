;program for array print
dosseg
.model small
.stack 100h
.data
array db 'a','b','c','d'

.code
main proc
mov ax,@data
mov ds,ax
mov si, offset array
mov cx,4

li:
mov dx,[si]
mov ah,2
int 21h
inc si

loop li
mov ah,4ch
int 21h


main endp
end main
