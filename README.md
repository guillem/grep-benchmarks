
This "benchmark" runs several implementations of a simplified version of `grep --count`.

This has absolutely ZERO error management.

The compilers and interpreters must be previously installed in your system.

The script run.sh takes two arguments: string to search and file.

Each version of the program will print the number of lines containing the search string and the run time in seconds.

This is a typical output (since bash doesn't support floating point operations I just used `time`):

```
$ ./run.sh load /home/guillem/src/grep-benchmarks/bigfile.log 
bash/grepc.sh
7755057
real 26.51
user 25.70
sys 0.73

perl/grepc.pl
7755057
7.60660290718079

python/grepc.py
7755057
6.45411682129

ruby/grepc.rb
7755057
12.449614

java/GrepC.java
7755057
6.30680236

go/GrepC.go
7755057
2.935800

c++/GrepC.cpp
7755057
88.1966
```

Suggestions to improve the programs are welcome, and you're free to fork this (and make pull requests, etc.) anyway, but to keep the spirit of the benchmark I will only accept reasonable improvements: use pure languages with standard libraries (i.e. an assembler module makes no sense) and keep the programs simple and readable. Of course adding new languages would be great.

