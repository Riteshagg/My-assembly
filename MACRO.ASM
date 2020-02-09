dosseg
.model small
.stack 100h
.data
string db 'my name is ritesh$'
string1 db 'my name is prachi$'
.code

;The macro is use to print string with parameter
print MACRO p1 ; p1 is parameter
mov dx,offset p1
mov ah,9
int 21h

mov dx,10
mov ah,2
int 21h

mov dx,13
mov ah,2
int 21h

endm

;This is main process work to output 
main proc
mov ax,@data
mov ds,ax
print string
print string1

mov ah,4ch
int 21h

main endp
end main