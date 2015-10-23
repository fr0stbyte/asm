%define SYS_write 0x2000004
%define SYS_mmap 0x20000c5
%define STACK_SIZE (4096 * 1024)

global start
 
section .text
 
start:
    mov     rax, SYS_write ; write
    mov     rdi, 1 ; stdout
    lea     rsi, [rel msg]
    mov     rdx, msg.len
    syscall
 
    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall
 
stack_create:
  mov rdi, 0

section .data
 
msg:    db      "Hello, world!", 10
.len:   equ     $ - msg
