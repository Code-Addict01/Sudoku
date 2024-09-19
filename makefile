CC = gcc
CFLAGS = -Wall -Wextra -Werror -pedantic -std=gnu89
SRCS = main.c
OBJS = $(SRCS:.c=.o)
RM = rm -f

sudoku: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -C $< -o $@

.PHONY: clean
clean:
	RM sudoku $(OBJS)
