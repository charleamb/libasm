# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:42 by chgilber          #+#    #+#              #
#    Updated: 2020/07/27 17:48:42 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


			global _ft_read
			extern ___error
			extern _ft_strlen
_ft_read:
			mov		rax, 0x2000003
			syscall
			jc		exit_error
			push	rdi
			mov		rdi,0
			mov		rdi,rsi
			call _ft_strlen
			pop		rdi
			ret

exit_error:
			push rax
			call ___error
			pop QWORD [rax]
			mov rax, -1
			ret
