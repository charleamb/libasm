global		_ft_read

_ft_read:
	xor rax, rax
	mov r8, rdx
	cmp rdi, -1
	je _error_file
	mov rax, 0x2000003
	syscall
	cmp r8, rax
	je _good_read
	cmp rdx, r8
	je _error_file
	ret

_good_read:
	ret

_error_file:
	mov rax, -1
	ret
