
INCLUDE_DIR=./include
DBG_FLAGS=-g

GET_OBJ=$(CC) -I$(INCLUDE_DIR) 

include OBJS.mak

all: bwl

bwl: $(OBJS)
	$(CC) -I$(INCLUDE_DIR) $(OBJS) -o bwl $(DBG_FLAGS)

clean:
	find . -iname "*~" | xargs rm -vf
	find . -iname "*.o" | xargs rm -vf
	rm -vf bwl
