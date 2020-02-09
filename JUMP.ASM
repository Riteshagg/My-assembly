dosseg
.model small                                                    
.stack 100h
.data
mes1 db 'that is not equal$'
mes2 db 'that is equal$'
.code
main proc
mov ax, @data
mov ds,ax
mov dl,'3'
mov ah,1
int 21h
cmp al,dl
je l1
mov dx, offset mes1
mov ah,9
int 21h
mov ah,4ch
int 21h 

l1:
mov dx, offset mes2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
