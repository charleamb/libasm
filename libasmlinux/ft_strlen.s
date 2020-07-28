# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:07:12 by chgilber          #+#    #+#              #
#    Updated: 2020/07/28 18:15:18 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


				global ft_strlen

ft_strlen:		mov			rax,0	; clean
				mov			rcx,0 ;clean
loop:
				mov			cl,[rdi + rax] ; rdi+rax in cl
				cmp			rcx,0 ; pas finis
				jne			newloop
				jmp			end
newloop:		
				inc			rax
				jmp			loop
end:				ret
