# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:45:35 by chgilber          #+#    #+#              #
#    Updated: 2020/07/11 21:11:37 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strcpy

_ft_strcpy:		mov		rax,5

loop:
				mov		sil,[rsi]
				mov		dil,sil
				mov		al,[rsi]
				cmp		al,0
				je		end
				inc		rdi
				inc		rsi
				inc		rax
				jmp		loop
end:
				ret




