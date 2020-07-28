# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:45:35 by chgilber          #+#    #+#              #
#    Updated: 2020/07/28 18:12:14 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global ft_strcpy

ft_strcpy:		mov		rax,0

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




