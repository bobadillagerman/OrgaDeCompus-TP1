CFLAGS=-Wall -g

all: benchmark-b0 benchmark-b1 benchmark-b2 benchmark-b3
	:

benchmark-b0: benchmark-b0.S
	$(CC) $(CFLAGS) -o $@ $<

benchmark-b1: benchmark-b1.S
	$(CC) $(CFLAGS) -o $@ $<

benchmark-b2: benchmark-b2.S
	$(CC) $(CFLAGS) -o $@ $<

benchmark-b3: benchmark-b3.S
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f cachegrind.out.*
	rm -f benchmark-b3
	rm -f benchmark-b2
	rm -f benchmark-b1
	rm -f benchmark-b0
