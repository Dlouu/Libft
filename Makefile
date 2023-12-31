# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbaumgar <mbaumgar@student.42mulhouse.fr>  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/17 15:23:09 by mbaumgar          #+#    #+#              #
#    Updated: 2024/01/02 17:08:13 by mbaumgar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a
NAME_BONUS	= .libft_bonus.a
CFLAGS		= -Wall -Werror -Wextra
CC		= cc
AR		= ar -crs
RM		= rm -f

# *****************************************************************************
#  ┌─┐┌─┐┬ ┬┬─┐┌─┐┌─┐┌─┐
#  └─┐│ ││ │├┬┘│  ├┤ └─┐
#  └─┘└─┘└─┘┴└─└─┘└─┘└─┘

SRC_FILES	= ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
		ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c \
		ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c \
		ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c \
		ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
		ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c

SRC_BONUS	= ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
		ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJ_FILES	= $(SRC_FILES:.c=.o)

OBJ_BONUS	= $(SRC_BONUS:.c=.o)

# *****************************************************************************
#  ┬─┐┬ ┬┬  ┌─┐┌─┐
#  ├┬┘│ ││  ├┤ └─┐
#  ┴└─└─┘┴─┘└─┘└─┘

all: ${NAME}

${NAME}: ${OBJ_FILES}
	${AR} ${NAME} ${OBJ_FILES}

bonus: ${NAME_BONUS}

${NAME_BONUS}: ${NAME} ${OBJ_BONUS}
	${AR} ${NAME} ${OBJ_BONUS}
	@${AR} ${NAME_BONUS} ${NAME}

%.o: %.c
	${CC} ${CFLAGS} -c $< -o $@

clean:
	${RM} ${OBJ_FILES} ${OBJ_BONUS}

fclean: clean
	${RM} ${NAME}
	@${RM} ${NAME_BONUS}

re: fclean all

.PHONY: all bonus clean fclean re
