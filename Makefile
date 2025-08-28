# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pabartoc <pabartoc@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/08 22:11:45 by pabartoc          #+#    #+#              #
#    Updated: 2025/08/28 05:53:08 by pabartoc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC  = cc
NAME = libft.a
CFLAGS = -Wall -Werror -Wextra

SOURCE =	ft_atoi.c \
			ft_bzero.c \
			ft_calloc.c \
			ft_isalnum.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memchr.c \
			ft_memcmp.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memset.c \
			ft_putchar_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_putstr_fd.c \
			ft_strchr.c \
			ft_strdup.c \
			ft_striteri.c \
			ft_strjoin.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strmapi.c \
			ft_strncmp.c \
			ft_strnstr.c \
			ft_strrchr.c \
			ft_strtrim.c \
			ft_substr.c \
			ft_tolower.c \
			ft_toupper.c

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