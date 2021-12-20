#
# Created on Sun Dec 19 2021
#
# Copyright (c) 2021 AxelWulong
#

NAME= gameOfLife
CC= gcc
FLAGS= -Wall -Wextra -Werror
INC= -I include/

SRC= srcs/main.c \
	 srcs/field.c \
	 srcs/view.c

OBJ= $(SRC:.c=.o)

#all : $(OBJ)
#	$(CC) $(INC) $(FLAGS) -o $(NAME) $^

all : $(SRC)
	$(CC) $(INC) -c $< -o $@
	$(CC) -o $(NAME) $(OBJ)

clean : 
	rm $(OBJ)

fclean : clean
	rm $(NAME)

re : fclean all
	
	
