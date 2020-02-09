;program for box print
dosseg
.model small
.stack 100h
.data
.code
main proc

mov ah,6 ; this is print box
mov al,20 ; this is height
mov bh,00010000b ; this is background color
mov ch,3 ; this is starting point of bottom
mov cl,3 ; this is starting point of left
mov dh,20 ; this is end of height
mov dl,30 ; this is width of box
int 10h ; this is call box print service routine
mov ah,4ch
int 21h

main endp
end main
