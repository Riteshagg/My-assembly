dosseg
.model small
.stack 100h
.data
.code
main proc

mov al,3
mov bl,4
mul bl



; following statement use to, if we are receive single digit result of AL * BL,  for example:-
; Ax is a result of al * bl in single digit


; mov dx,ax 
; add dx,48
; mov ah,2
; int 21h


;if result of al * bl in two digit then we can use AAM (ASCII Adjust after Multiplication), this
;to break the digit, first digit go to (AH) and second digit go to (AL) for example below:

AAM

mov ch,ah
mov cl,al

mov dl,ch
add dl,48
mov ah,2
int 21h


mov dl,cl
add dl,48
mov ah,2
int 21h





mov ah,4ch
int 21h

main endp
end main