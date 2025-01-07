NAME	=	tcvrt

CC		=	cc
CFLAGS	=	-Werror -Wall -Wextra

HEADDIR	=	header/
HEAD	=	txt_convert.h

SRCDIR	=	src/
SOURCES	=	txt_convert
SRC		=	$(addprefix $(SRCDIR), $(addsuffix .c, $(SOURCES)))

OBJDIR	=	obj/
OBJ		=	$(addprefix $(OBJDIR), $(addsuffix .o, $(SOURCES)))

all: $(OBJDIR) $(NAME)
	@echo "Compiled $(NAME) successfully"

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)%.o: $(SRCDIR)%.c | $(HEADDIR)$(HEAD)
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -rf $(NAME)

re: fclean
	make all

.PHONY: all debug clean fclean re
