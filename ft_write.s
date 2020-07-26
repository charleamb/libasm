# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:15 by chgilber          #+#    #+#              #
#    Updated: 2020/07/26 15:39:58 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global _ft_write
			extern ___error

_ft_write:		mov		rax,0x2000004
				syscall
				jc exit_error
				ret

exit_error:
			push rax
			call ___error
			pop QWORD [rax]
			mov rax, -1
			ret
