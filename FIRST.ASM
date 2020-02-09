dosseg
.model small
.stack 100h
.data
.code
main proc
mov bl,1
mov cl,2
add bl,cl
add bl,48
mov dl,bl
mov ah,2
int 21h

mov bl,3
mov cl,1
sub bl,cl
add bl,48
mov dl,bl
mov ah,2
int 21h

mov  dl,'a'
mov ah , 2
int 21h

mov ah,1
int 21h

mov dl,al
mov ah,2
int 21h

mov dl,'r'
mov ah,2
int 21h

mov dl,'m'
mov ah,2
int 21h


mov dl,'h'
mov ah,2
int 21h

mov ah,4ch
 int 21h

main endp
end main
