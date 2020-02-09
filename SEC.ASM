;problem of the: how to get interger input with keyboard and how to addition this input

dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,1
int 21h
mov bl,al
mov al,1
int 21h
add bl,al
sub bl,48
mov dl,bl
mov ah,2
int 21h
mov ah,4ch



main endp
end main
