#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


sub solider1 {
	state $n = 0;
	while ($n < 20) {
	$n += 1;
	print "hi,solider,your number is $n!\n";
	} 

}
&solider1;