

all: bwl

bwl: bwl_main.c
	$(CC) bwl_main.c -o bwl

clean:
	find . -iname "*~" | xargs rm -vf
	rm -vf bwl
