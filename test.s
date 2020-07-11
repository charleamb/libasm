	global	_ft_strcmp
				section	__TEXT,__text
_ft_strcmp:
				mov				rax, 0		;clear rax
loop:
				mov				rcx, 0		;clear rcx
				mov				al, [rdi]	;rdi in al
				mov				cl, [rsi]	;rsi in cl ;Byte 0-1 de rcx
				inc				rdi			;move to next char of 1st arg
				inc				rsi			;move to next char of 2nd arg
				sub				rax, rcx	;compare both args
				jz				loop		;go to loop if the result is zero ie. continue to next character else go to end
end:
				ret
