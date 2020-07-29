# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/07 18:46:15 by chgilber          #+#    #+#              #
#    Updated: 2020/07/29 19:12:32 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global ft_write
			extern __errno_location

ft_write:		mov		rax,1
				syscall
				cmp		rax,0
				jl exit_error
				ret

exit_error:
				neg		rax
				mov		rcx,rax
				push	rcx
				call	__errno_location
				pop		rcx
				mov		[rax],rcx
				mov		rax,-1
				ret
