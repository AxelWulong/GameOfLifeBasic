#
# Created on Sun Dec 19 2021
#
# Copyright (c) 2021 AxelWulong
#

NAME= gameOfLife
CC= gcc
FLAGS= -Wall -Wextra -Werror
INC= -I include/
OBJ= $(SRC:.c=.o)

SRC= srcs/main.c \
	 srcs/field.c \
	 srcs/view.c

all : $(OBJ)
	$(CC) -o $(NAME) $^

%.o : %.c
	$(CC) -o $@ -c $< $(INC)

clean : 
	rm $(OBJ)

fclean : clean
	rm $(NAME)

re : fclean all
	
	
