	global _ft_strlen

_ft_strlen		mov			rax,0	; cleqna
				mov			rcx,0 ;cleqn
loop			
				mov			cl,[rdi + rax] ; rdi+rax in cleqna
				cmp			rcx,0 ; pas finis
				jne			newloop
				jmp			end
newloop			
				inc			rax
				jmp			loop
end	
				ret			rax
