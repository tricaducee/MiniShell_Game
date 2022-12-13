# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrolle <hrolle@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/07/07 19:48:42 by hrolle            #+#    #+#              #
#    Updated: 2022/12/13 07:30:52 by hrolle           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ECHO = @echo
PRINT = @printf
RED = \033[31m
GREEN = \033[32m
YELLOW = \033[33m
INVERT = \033[7m
RESETTXT = \033[0m
BOLD = \033[1m

RM = rm -rf

SRC = $(wildcard *.c */*.c)

OBJ = $(SRC:.c=.o)

NAME = MiniShell

CC = gcc

CFLAGS = -Wall -Werror -Wextra -DWORD_PATH=\"$(HOME)/.bin/words.txt\" -DMAP_PATH=\"./maps/fr33_th3_duck.ber\" -DGAME_PATH=\"$(HOME)/.bin/So_long\" -DACTIVITY_PATH=\"$(HOME)/.bin/activity_script\" -DREMOVE_PATH=\"$(HOME)/.bin/remove_me_script\"

ifeq ($(DEBUG), debug)
	CFLAGS += -fsanitize=address -g3
endif

$(NAME) : $(OBJ)
	@make -C printfd
	$(ECHO) "$(YELLOW)Compilation de $(NAME)...$(RESETTXT)"
	@$(CC) $(CFLAGS) -o $@ printfd/libftprintfd.a $^
	$(ECHO) "$(GREEN)$(BOLD)Compilation Terminée !!!$(RESETTXT)"

%.o : %.c
	$(PRINT) "$(YELLOW)Generation des objets...$(RESETTXT)\r"
	@$(CC) $(CFLAGS) -o $@ -c $<

bonus : $(NAME)

all : $(NAME)

clean :
	@make clean -C printfd
	$(ECHO) "$(RED)Suppression des objets...$(RESETTXT)"
	@$(RM) $(OBJ)
	$(ECHO) "$(GREEN)$(BOLD)Terminé !$(RESETTXT)"

fclean : clean
	@$(RM) printfd/libftprintfd.a
	$(ECHO) "$(RED)Suppression de push_swap et libftprintfd.a...$(RESETTXT)"
	@$(RM) $(NAME)
	$(ECHO) "$(GREEN)$(BOLD)Terminé !$(RESETTXT)"

re : fclean all

.PHONY: all re bonus clean fclean