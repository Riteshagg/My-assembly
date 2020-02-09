dosseg
.model small
.stack 100h
.data
.code
main proc

mov dx,'A'
mov ah,2
int 21h
call entermain

mov dx,'B'
mov ah,2
int 21h

call entermain

mov dx,'C'
mov ah,2
int 21h

mov ah,4ch
int 21h
main endp

entermain proc
mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h 
Ret
entermain endp

end main
