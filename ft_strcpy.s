# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:45:35 by chgilber          #+#    #+#              #
#    Updated: 2020/07/24 14:14:02 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global _ft_strcpy

_ft_strcpy:		mov		rax,0

loop:
				mov		dl,[rsi + rax]
				cmp		dl,0
				je		end
				mov		[rdi + rax],dl
				inc		rax
				jmp		loop
end:
				mov		[rdi + rax],dl
				mov		rax,rdi
				ret




