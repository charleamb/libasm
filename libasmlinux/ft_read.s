# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:42 by chgilber          #+#    #+#              #
#    Updated: 2020/07/28 18:11:56 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


			global ft_read
			extern __errno_location
			extern ft_strlen
ft_read:
			mov		rax, 0
			syscall
			jc		exit_error
		;;	mov		rdi,rsi
		;	call _ft_strlen
		;	pop		rdi
			ret

exit_error:
			push rax
			call __errno_location
			pop QWORD [rax]
			mov rax, -1
			ret
