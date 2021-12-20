#
# Created on Sun Dec 19 2021
#
# Copyright (c) 2021 AxelWulong
#

NAME= gameOfLife
CC= gcc
FLAGS= -Wall -Wextra -Werror
SRC= srcs/main.c \
	# field.c \
	 view.c
OBJ= $(SRC:.c=.o)

all : $(OBJ)
	$(CC) $(FLAGS) -o $(NAME) $^

clean : 
	rm $(OBJ)

fclean : clean
	rm $(NAME)

re : fclean all
	
	
