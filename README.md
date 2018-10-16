# B-Tree-Implementation
An implementation of a B-tree for storing and accessing lists of values attached to keys, along with various tests of cache performance. 

A binary tree data structure for storing the keys, with linked lists of values is included for comparison. binTreeTest checks the validity of the binary tree data structure, and bTreeTest checks the validity of the bTree implementation. bTreePerf will run a battery of performance tests, adding many key value pairs to a single b-tree and then repeatedly accessing/searching for key value pairs. These tests run relatively quickly, showing the advantage of this data structure. binTreePerf will run the same perforance tests using a binary tree structure, which will perform considerably worse on all tests (note, depending on the cpu this is run with, these tests might take a very long time with the binary tree).

See mmtest.c for examples for how to use the bTree structure.
