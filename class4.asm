.model small
.stack 100h
.data
;variable Declear
var1 db "Enter Your Inputs$"
var2 db "Here Is Your Output$"
var3 db ?
.code

start:
;variable access code
mov ax,@data
mov ds,ax

;variable Print Code
mov ah,09
mov dx,offset var1
int 21h

;Change line code
mov ah,02
mov dl,10
int 21h

;taking input from user!
mov ah,01
int 21h
;moving input to new variable
mov bl,al

mov ah,01
int 21h
mov bh,al

mov ah,01
int 21h
mov cl,al

mov ah,01
int 21h
mov ch,al

;Change line code
mov ah,02
mov dl,10
int 21h

mov ah,09
mov dx,offset var2
int 21h

;Change line code
mov ah,02
mov dl,10
int 21h

;print user input variable
mov ah,02
mov dl,bl
int 21h

mov ah,02
mov dl,bh
int 21h

mov ah,02
mov dl,cl
int 21h

mov ah,02
mov dl,ch
int 21h



;exit from program
mov ah,4ch
int 21h

end start