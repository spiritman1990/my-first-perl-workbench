#!/usr/bin/perl
use strict;
use warnings;

open F1,"< tst1.txt";
while (<F1>) {
	my @F;
	print "$F[0]" if /string/;
}

close F1;
