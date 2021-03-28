BITS 64

global _main


section .rodata

	path1 db 'NSA.txt', 0
	path db 'TOZ.txt', 0
	
	cbon db "c'est ecrit", 0
	cbon_len equ $-cbon


section .text

_main:
	mov rax, 88
	mov rdi, path1
	mov rsi, path
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
