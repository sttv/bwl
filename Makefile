
INCLUDE_DIR=./include
DBG_FLAGS=-g

GET_OBJ=$(CC) -I$(INCLUDE_DIR) 

all: bwl $(OBJS)

include OBJS.mak

bwl: $(OBJS)
	$(CC) -I$(INCLUDE_DIR) $(OBJS) -o bwl $(DBG_FLAGS)

clean:
	find . -iname "*~" | xargs rm -vf
	find . -iname "*.o" | xargs rm -vf
	rm -vf bwl
