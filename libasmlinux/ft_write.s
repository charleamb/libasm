# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:15 by chgilber          #+#    #+#              #
#    Updated: 2020/07/28 18:27:59 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global ft_write
			extern __errno_location

ft_write:		mov		rax,4
				syscall
				jc exit_error
				ret

exit_error:
			push rax
			call __errno_location
			pop QWORD [rax]
			mov rax, -1
			ret
