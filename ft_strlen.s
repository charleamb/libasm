# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:07:12 by chgilber          #+#    #+#              #
#    Updated: 2020/07/13 14:00:22 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


global _ft_strlen

_ft_strlen:		mov			rax,0	; cleqna
				mov			rcx,0 ;cleqn
loop:
				mov			cl,[rdi + rax] ; rdi+rax in cleqna
				cmp			rcx,0 ; pas finis
				jne			newloop
				jmp			end
newloop:		
				inc			rax
				jmp			loop
end:				ret
