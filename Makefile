# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dkhatri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/14 11:17:23 by dkhatri           #+#    #+#              #
#    Updated: 2018/11/24 19:34:35 by dkhatri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FLAGS = -Wall -Wextra -Werror -c

MANDATORY = ft_memset ft_bzero ft_memcpy ft_memccpy ft_memmove ft_memchr \
			ft_memcmp ft_strlen ft_strdup ft_strcpy ft_strncpy ft_strcat \
			ft_strncat ft_strlcat ft_strchr ft_strrchr ft_strstr \
			ft_strnstr ft_strcmp ft_strncmp ft_atoi ft_isalpha ft_isdigit \
			ft_isalnum ft_isascii ft_isprint ft_toupper ft_tolower

ADDITIONAL = ft_memalloc ft_memdel ft_strnew ft_strdel ft_strclr ft_striter \
			 ft_striteri ft_strmap ft_strmapi ft_strequ ft_strnequ ft_strsub \
			 ft_strjoin ft_strtrim ft_strsplit ft_itoa ft_putchar ft_putstr \
			 ft_putendl ft_putnbr ft_putchar_fd ft_putstr_fd ft_putendl_fd \
			 ft_putnbr_fd

BONUS = ft_lstnew ft_lstdelone ft_lstdel ft_lstadd ft_lstiter ft_lstmap

SRC = $(MANDATORY:=.c) $(ADDITIONAL:=.c) $(BONUS:=.c)

SRCO = $(MANDATORY:=.o) $(ADDITIONAL:=.o) $(BONUS:=.o)

DEPS = libft.h

%.o: %.c $(DEPS)
	gcc $(FLAGS) $<

all: $(NAME)

$(NAME): $(SRCO)
	ar -rc $(NAME) $(SRCO)
	ranlib $(NAME)

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all	
