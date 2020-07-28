# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:57 by chgilber          #+#    #+#              #
#    Updated: 2020/07/28 18:27:53 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

		global	ft_strdup
		extern	ft_strlen
		extern	ft_strcpy
		extern	_malloc

ft_strdup:		call	ft_strlen ; rax = len
				inc		rax			; len ++ '\0'
				push	rdi          ; stock de str
				mov		rdi,rax		;1er arg = len a malloc
				call	_malloc
				cmp		rax,0
				je		error
				pop		rsi			;2eme arg = str stocker
				mov		rdi,rax     ;1er arg = pointeur de malloc
				call	ft_strcpy
			ret
error:			mov		rax,0
				ret
