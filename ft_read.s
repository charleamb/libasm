# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:42 by chgilber          #+#    #+#              #
#    Updated: 2020/07/26 15:37:10 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


			global _ft_read
			extern ___error
_ft_read:
			mov rax, 0x2000003
			syscall
			jc exit_error
			ret

exit_error:
			push rax
			call ___error
			pop QWORD [rax]
			mov rax, -1
			ret
