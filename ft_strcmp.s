# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:03 by chgilber          #+#    #+#              #
#    Updated: 2020/07/07 18:46:04 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strcmp

_ft_strcmp:		mov			rax,0

loop:
				mov			rax,rdi
				cmp			rax,rsi
				je			bloop
				jmp			end
bloop:
				inc			rdi
				inc			rsi
				jmp			loop
end:
				mov			rax,[rdi]
				sub			rax,[rsi]
				ret
