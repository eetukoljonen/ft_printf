# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ekoljone <ekoljone@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/24 11:53:19 by ekoljone          #+#    #+#              #
#    Updated: 2022/11/29 16:19:34 by ekoljone         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_printf.c ft_printf_utils.c
LIBFT = libft
OBJECT = $(SRC:.c=.o)
CC = cc
CFLAGS = -Wall -Wextra -Werror -I.
RM = rm -f

all: $(NAME)

$(NAME): $(OBJECT)
	make -C $(LIBFT)
	cp libft/libft.a $(NAME)
	ar rcs $(NAME) $(OBJECT)
clean:
	$(RM) $(OBJECT)
	make clean -C $(LIBFT)

fclean: clean
	$(RM) $(NAME)
	$(RM) $(LIBFT)/libft.a

re: fclean all