; programme to take the input string from user
dosseg
.model small
.stack 100h
.data
string db 100 dup('$')
.code
main proc
mov ax, @data
mov ds,ax
mov si,offset string
li:
mov ah,1
int 21h
cmp al,13
je programmend
 mov [si],al
 inc si
 jmp li

programmend:
mov dx, offset string
mov ah,9
int 21h
mov ah,4ch
int 21h



main endp
end main
