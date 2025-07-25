# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pabartoc <pabartoc@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/08 22:11:45 by pabartoc          #+#    #+#              #
#    Updated: 2025/07/23 23:29:05 by pabartoc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC  = cc
NAME = libft.a
CFLAGS = -Wall -Werror -Wextra

SOURCE =	ft_isalnum.c \
			ft_isalpha.c \
			ft_isdigit.c \
			ft_isascii.c \
			ft_isprint.c \
			ft_strlen.c \
			ft_memset.c \
			ft_bzero.c

OBJECTS = $(SOURCE:.c=.o)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

# Rule for compiling .c \ files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Default rule
all: $(NAME)

# Clean object files
clean:
	@rm -f $(OBJECTS) $(BONUS_OBJECTS)

# Clean everything (object files and library)
fclean: clean
	@rm -f $(OBJECTS) $(NAME)

# Rebuild everything
re: fclean all

.PHONY: all clean fclean re bonus