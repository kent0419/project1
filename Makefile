SRCS := seek_io.c get_num.c

OBJS := $(patsubst %.c,%.o,$(SRCS))

APP = seek_io

all: $(APP)

$(APP): $(OBJS)
	echo "$(OBJS)"
	gcc $(OBJS) -o $@

%.o: %.c
	gcc -c $< -o $(@F)

clean: 
	rm *.o $(APP)
