CC=g++
CFLAGS=-std=gnu++11 -pedantic -Wall -Werror -ggdb3
SRCS=$(wildcard *.cpp)
OBJS=$(patsubst %.cpp,%.o,$(SRCS))
myShell:$(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)
%.o:%.cpp
	$(CC) $(CFLAGS) -c $<
.PHONY: clean
clean:
	rm -f myShell *.o *~
