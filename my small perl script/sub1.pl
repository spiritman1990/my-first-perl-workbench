#!/usr/bin/perl
use strict;
use warnings;
use 5.016;
my @paul = (1,3,5,7,9);

sub total {
	my $sum = 0;
    my $a;
	foreach $a(@_) {
		$sum += $a;
	}
	
	return  $sum;
}
my $paul_total = total(@paul);
print "the total  of \@paul is $paul_total.\n";
print "Enter some numbers on separate lines,so that I can calculate the sum for you,notice:one per line,ends with ^Z!!!here we go:\n";
my @input1;
chomp(@input1 = <stdin>);
my $res=total(@input1);
print "the total sum of your input is $res!";
