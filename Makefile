# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chgilber <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/07/25 18:33:08 by chgilber          #+#    #+#              #
#    Updated: 2020/07/25 18:56:42 by chgilber         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 		= libasm.a

ASM			= nasm

NFLAGS		= -fmacho64

SRCS	 	= ft_strlen.s \
			  ft_strcpy.s \
			  ft_strcmp.s \
			  ft_write.s \
			  ft_read.s \
			  ft_strdup.s \

OBJS		= ${SRCS:.s=.o}

%.o: 		%.s
			${ASM} ${NFLAGS} $< -o $@

${NAME}:		${OBJS}
				ar rcs ${NAME} ${OBJS}

all:	${NAME}

clean:
		rm -f ${OBJS}

fclean: clean
		rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
