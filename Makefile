CC = cc
FLAGS = -Wall -Wextra -Werror -g
NAME = my_library.a

# Colors
GREEN = \033[0;32m
BLUE = \033[0;34m
PURPLE = \033[0;35m
YELLOW = \033[0;33m
CYAN = \033[0;36m
RED = \033[0;31m
RESET = \033[0m

SRCS = ./libft/ft_atoi.c ./libft/ft_bzero.c ./libft/ft_calloc.c ./libft/ft_isalnum.c ./libft/ft_isalpha.c ./libft/ft_isascii.c ./libft/ft_isdigit.c ./libft/ft_isprint.c ./libft/ft_itoa.c ./libft/ft_lstadd_back_bonus.c ./libft/ft_lstadd_front_bonus.c ./libft/ft_lstclear_bonus.c ./libft/ft_lstdelone_bonus.c ./libft/ft_lstiter_bonus.c ./libft/ft_lstlast_bonus.c ./libft/ft_lstmap_bonus.c ./libft/ft_lstnew_bonus.c ./libft/ft_lstsize_bonus.c ./libft/ft_memchr.c ./libft/ft_memcmp.c ./libft/ft_memcpy.c ./libft/ft_memmove.c ./libft/ft_memset.c ./libft/ft_putchar_fd.c ./libft/ft_putendl_fd.c ./libft/ft_putnbr_fd.c ./libft/ft_putstr_fd.c ./libft/ft_split.c ./libft/ft_strchr.c ./libft/ft_strdup.c ./libft/ft_striteri.c ./libft/ft_strjoin.c ./libft/ft_strlcat.c ./libft/ft_strlcpy.c ./libft/ft_strlen.c ./libft/ft_strmapi.c ./libft/ft_strncmp.c ./libft/ft_strnstr.c ./libft/ft_strrchr.c ./libft/ft_strtrim.c ./libft/ft_substr.c ./libft/ft_tolower.c ./libft/ft_toupper.c ./get_next_line/get_next_line_bonus.c ./get_next_line/get_next_line.c ./ft_printf/ft_nb_count.c ./ft_printf/ft_printf.c ./ft_printf/ft_putadrr.c ./ft_printf/ft_putchar.c ./ft_printf/ft_puthexa.c ./ft_printf/ft_putnbr.c ./ft_printf/ft_putstr.c ./ft_printf/ft_putunint.c ./ft_perror/ft_perror.c

OFILES = $(SRCS:.c=.o)

all: $(NAME)

%.o: %.c
	@$(CC) $(FLAGS) -c $< -o $@

$(NAME): $(OFILES)
	@echo "$(BLUE)█▄▄▄█ █ █   █   █ █▄▄ █▀█ ▄▀█ █▀█ █ █$(RESET)"
	@echo "$(BLUE)█ █ █  █    █▄▄ █ █▄█ █▀▄ █▀█ █▀▄  █$(RESET)"
	@echo "$(BLUE)Compiling source files$(RESET)"
	@for i in $$(seq 0 100); do \
		printf "\r$(BLUE)"; \
		n=$$((i * 15 / 100)); \
		for j in $$(seq 1 $$n); do \
			printf "▮"; \
		done; \
		for j in $$(seq 1 $$((15 - n))); do \
			printf "▯"; \
		done; \
		printf " $$i%%$(RESET)"; \
		sleep 0.02; \
	done
	@echo ""
	@ar rcs $(NAME) $(OFILES)
	@echo "$(GREEN)My_library compiled successfully!$(RESET)"
	@sleep 0.3
	@echo "$(PURPLE)Created by: fatheddine-bicane$(RESET)"

clean:
	@rm -f $(OFILES)
	@echo "$(YELLOW)Cleaning object files$(RESET)"
	@for i in $$(seq 0 100); do \
		printf "\r$(YELLOW)"; \
		n=$$((i * 15 / 100)); \
		for j in $$(seq 1 $$n); do \
			printf "▮"; \
		done; \
		for j in $$(seq 1 $$((15 - n))); do \
			printf "▯"; \
		done; \
		printf " $$i%%$(RESET)"; \
		sleep 0.02; \
	done
	@echo ""

fclean:
	@rm -f $(OFILES)
	@rm -f $(NAME)
	@echo "$(YELLOW)Cleaning executable and object files$(RESET)"
	@for i in $$(seq 0 100); do \
		printf "\r$(YELLOW)"; \
		n=$$((i * 15 / 100)); \
		for j in $$(seq 1 $$n); do \
			printf "▮"; \
		done; \
		for j in $$(seq 1 $$((15 - n))); do \
			printf "▯"; \
		done; \
		printf " $$i%%$(RESET)"; \
		sleep 0.02; \
	done
	@echo ""

re: fclean all

.PHONY: all clean fclean re
