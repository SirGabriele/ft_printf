# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kbrousse <kbrousse@student.42angoulem      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/12 17:25:38 by kbrousse          #+#    #+#              #
#    Updated: 2022/04/18 16:51:52 by kbrousse         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_printf.c ft_specifier_requested.c ft_printer_functions.c
OBJS = $(SRCS:.c=.o)
NAME = libftprintf.a
CFLAGS = -Wall -Werror -Wextra
CC = ar rcs
RM = rm -f

all: $(NAME)

.c.o:
	gcc -g $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	$(CC) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
