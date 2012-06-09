
INCLUDE_DIR=./include
DBG_FLAGS=-g

all: bwl

bwl: main.c
	$(CC) -I$(INCLUDE_DIR) main.c -o bwl $(DBG_FLAGS)

clean:
	find . -iname "*~" | xargs rm -vf
	rm -vf bwl
