# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:57 by chgilber          #+#    #+#              #
#    Updated: 2020/07/13 16:53:15 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strdup
		extern	_ft_strlen
		extern	_ft_strcpy
		extern	_malloc

_ft_strdup:		mov		rax,0
				call	_ft_strlen ; rax = len
			;	mov		rax,rsi
				inc		rax			; len ++ '\0'
			;	mov		dil,[rax]
				mov		rdi,rax
		;		call	_print
		;		call	_malloc
			;;	mov		rdi,rax
			;	call	_ft_strcpy
				;mov		[rax],rdi
				mov		rax,eax
			ret
