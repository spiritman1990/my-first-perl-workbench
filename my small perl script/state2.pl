#!/usr/bin/perl
use strict;
use warnings;
use 5.016;

run_sum( 5,6 );
run_sum( 1..3 );
run_sum( 4 );

sub run_sum {
 state $sum = 0;
 state @numbers;
 state @c;
  
  foreach my $number (@_ ) {
	push @numbers,$number;
	$sum += $number;
  }
print  "the sum result of ","(",join(",",@numbers),")"," is $sum\n";
 }