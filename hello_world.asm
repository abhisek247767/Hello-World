; Hello world in assembly language

section .data
	line1:     db 'Hello, World!',10    ; 'Hello, World!' plus a linefeed character
	line1len:  equ $-line1             ; Length of the 'Hello world!' string

section .text
	global _start

_start:
	mov eax,4           
	mov ebx,1      
	mov ecx,line1      
	mov edx,line1len    
	int 80h              
	mov eax,1            
	mov ebx,0            
	int 80h;