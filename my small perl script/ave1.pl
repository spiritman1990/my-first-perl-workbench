#!/usr/bin/perl
use strict;
use warnings;
use 5.016;
my @nums = (5,10,10,15,20);

sub ave1 {
	state $b;
	state $sum = 0;
	foreach (@_) {
		$sum += $_;
		
	}
    #print $sum;
	$b = int($sum / scalar(@_));
    foreach  (@_) {
	$_>$b?(print "大于平均值$b的数有$_\n"):(print "小于平均值$b的数有$_\n");
    }
}
&ave1(@nums);


