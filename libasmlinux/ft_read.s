# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:42 by chgilber          #+#    #+#              #
#    Updated: 2020/07/29 18:37:45 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


			global ft_read
			extern __errno_location
			extern ft_strlen
ft_read:
			mov		rax, 0
			syscall
			cmp		rax,0
			jl		exit_error
			mov		rdx,0
			mov		[rsi + rax],rdx
			ret

exit_error:
			neg		rax
			mov		rcx,rax
			push	rcx
			call __errno_location
			pop		rcx
			mov		[rax],rcx
			mov		rax, -1
			ret
