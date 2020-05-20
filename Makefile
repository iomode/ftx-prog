CFLAGS = -Wall -O2 -s -Werror -pedantic -I/usr/include/libftdi1/
LDFLAGS = -lusb -lftdi1 -s
PROG = ftx_prog

all:	$(PROG)

$(PROG):	$(PROG).c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f $(PROG)
