CC = gcc
CFLAGS = -Wall -Wextra -O2
AR = ar
ARFLAGS = rcs

# Library files
LIB = libhello.a
LIBOBJ = hello.o

# Example program
EXAMPLE = example
EXAMPLEOBJ = example.o

.PHONY: all clean

all: $(LIB) $(EXAMPLE)

$(LIB): $(LIBOBJ)
	$(AR) $(ARFLAGS) $@ $^

$(EXAMPLE): $(EXAMPLEOBJ) $(LIB)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c hello.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f $(LIB) $(LIBOBJ) $(EXAMPLE) $(EXAMPLEOBJ)
