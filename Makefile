# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hanmpark <hanmpark@student.42nice.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/08 16:40:47 by hanmpark          #+#    #+#              #
#    Updated: 2022/11/12 15:13:58 by hanmpark         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SOURCES =	ft_bzero.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memcpy.c \
			ft_memset.c \
			ft_strlen.c \
			ft_memmove.c \
			ft_strlcpy.c \
			ft_strlcat.c \
			ft_toupper.c \
			ft_tolower.c \
			ft_strchr.c \
			ft_strrchr.c \
			ft_strncmp.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_strnstr.c \
			ft_atoi.c \
			ft_calloc.c \
			ft_strdup.c

OBJECTS = ${SOURCES:.c=.o}

NAME = libft.a

.c.o:
		gcc -Wall -Wextra -Werror -c $< -o ${<:.c=.o}

${NAME}:	${OBJECTS}
		ar -rcs ${NAME} ${OBJECTS}

all:	${NAME}

clean:	
		rm -f ${OBJECTS}

fclean:	clean
		rm -f ${NAME}

re:	fclean all

.PHONY: all clean fclean re