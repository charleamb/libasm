# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:03 by chgilber          #+#    #+#              #
#    Updated: 2020/07/11 21:11:39 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strcmp

_ft_strcmp:		mov			rax, 0
				mov			rcx, 0
loop:
				mov			al, [rdi]
				mov			cl, [rsi]
				cmp			rcx,0
				je			verif
				jmp			loopi
loopi:
				sub			rax,rcx
				je			inc
				jmp			end
inc:
				inc			rdi
				inc			rsi
				mov			al,0
				mov			cl,0
				jmp			loop
verif:
				cmp			rax,0
				je			zero
				jmp			loopi
zero:
				mov			rax,0
				jmp			end
end:
				ret
