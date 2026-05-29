# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pabartoc <pabartoc@student.42heilbronn.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/07/08 22:11:45 by pabartoc          #+#    #+#              #
#    Updated: 2026/05/29 15:11:31 by pabartoc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME    = libft.a

CC      = cc
CFLAGS  = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

SOURCE  = ft_atoi.c \
          ft_bzero.c \
          ft_calloc.c \
          ft_isalnum.c \
          ft_isalpha.c \
          ft_isascii.c \
          ft_isdigit.c \
          ft_isprint.c \
          ft_itoa.c \
          ft_lstadd_front.c \
          ft_lstadd_back.c \
          ft_lstclear.c \
          ft_lstdelone.c \
          ft_lstiter.c \
          ft_lstlast.c \
          ft_lstmap.c \
          ft_lstnew.c \
          ft_lstsize.c \
          ft_memchr.c \
          ft_memcmp.c \
          ft_memcpy.c \
          ft_memmove.c \
          ft_memset.c \
          ft_putchar_fd.c \
          ft_putendl_fd.c \
          ft_putnbr_fd.c \
          ft_putstr_fd.c \
          ft_split.c \
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

# Default rule
all: $(NAME)

# Bibliothek erstellen
$(NAME): $(OBJECTS)
	@$(AR) $(NAME) $(OBJECTS)
	@echo
	@echo
	@echo "\033[1;32m ✅ [=> '$(NAME)' has been successfully created!]\033[0m"
	@echo
	@echo
	
# .c in .o kompilieren
%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

# Object files aufräumen
clean:
	@$(RM) $(OBJECTS)
	@echo
	@echo
	@echo "\033[1;35m ✅🧹 [=> Object files cleaned up.]\033[0m"
	@echo
	@echo

# Alles restlos aufräumen
fclean:
	@$(RM) $(OBJECTS)
	@$(RM) $(NAME)
	@echo
	@echo
	@echo "\033[1;35m ✅🧹 [=> Object files cleaned up.]\033[0m"
	@echo "\033[1;35m ✅🧹 [=> '$(NAME)' deleted.]\033[0m"
	@echo
	@echo

# Alles neu bauen
re: fclean all

.PHONY: all clean fclean re