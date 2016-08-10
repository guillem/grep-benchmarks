#!/usr/local/bin/python

import re, sys, time

t0 = time.time()
counter = 0
with open(sys.argv[2]) as f:
	for line in f:
		if re.search(sys.argv[1], line):
			counter += 1
print counter
t1 = time.time()
print t1-t0

