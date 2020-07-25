# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:57 by chgilber          #+#    #+#              #
#    Updated: 2020/07/24 14:42:42 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strdup
		extern	_ft_strlen
		extern	_ft_strcpy
		extern	_malloc

_ft_strdup:		call	_ft_strlen ; rax = len
				inc		rax			; len ++ '\0'
				push	rdi          ; stock de str
				mov		rdi,rax		;1er arg = len a malloc
				call	_malloc
				cmp		rax,0
				je		error
				pop		rsi			;2eme arg = str stocker
				mov		rdi,rax     ;1er arg = pointeur de malloc
				call	_ft_strcpy
			ret
error:			mov		rax,0
				ret
