#!/usr/local/bin/perl

use Time::HiRes qw(time);

$t0 = time;
$counter = 0;
open(F, '<', $ARGV[1]);
while ($line = <F>) {
	if (index($line, $ARGV[0]) != -1) {
		$counter++
	}
}
close(F);
print "$counter\n";
$t1 = time;
print ($t1-$t0);
print "\n";

