CC=gcc

# For performance testing:
 CFLAGS = -Wall -DNDEBUG -O2

# For debugging:
# CFLAGS = -Wall -g -O0 -DDEBUG_ZERO

all:  binTreeTest binTreePerf bTree
bTree: bTreeTest bTreePerf

binTreeTest: mmtest.o binTree.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

binTreePerf: mmperf.o binTree.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

bTreeTest: mmtest.o bTree.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

bTreePerf: mmperf.o bTree.o
	$(CC) $(CFLAGS) $^ -o $@ $(LDFLAGS)

clean:
	rm -f bTreeTest bTreePerf binTreeTest binTreePerf *.o *~

.PHONY: all bTree clean

