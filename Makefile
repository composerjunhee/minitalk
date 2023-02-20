# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: junheeki <junheeki@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/15 15:20:10 by junheeki          #+#    #+#              #
#    Updated: 2023/02/20 15:33:17 by junheeki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SERVER := server
CLIENT := client
SRC_SERVER := source/server.c
SRC_CLIENT := source/client.c
LIBFT_DIR := libft
LIBFT := $(LIBFT_DIR)/libft.a
CC_FLAG := -Wall -Wextra -Werror

all: $(SERVER) $(CLIENT)

$(SERVER): $(LIBFT)
	cc $(CC_FLAG) $(SRC_SERVER) $(LIBFT) -o $(SERVER)

$(CLIENT): $(LIBFT)
	cc $(CC_FLAG) $(SRC_CLIENT) $(LIBFT) -o $(CLIENT)

$(LIBFT):
	make -C $(LIBFT_DIR)
	make bonus -C $(LIBFT_DIR)

clean:
	make clean -C $(LIBFT_DIR)

fclean: clean
	rm -f $(SERVER) $(CLIENT)
	make fclean -C $(LIBFT_DIR)

re: fclean all

.PHONY: all clean fclean re
