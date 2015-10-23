global start

section .text

start:
  mov rax, 0x200004 
  mov rdi, 1
  mov rsi, msg
  mov rdx, msg.len
  syscall

section .data

msg: db 'test',10
.len: equ $ - msg

