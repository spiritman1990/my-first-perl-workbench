#!/usr/bin/perl
use strict;
use warnings;
my @a1 = ('a','b','c','d','a','c','d','e',12,12,13,14,15,13,16);
my %hash;
my @a2 = grep{++$hash{$_}<2;}@a1;
foreach (0..$#a2){
	print $a2[$_]," ";
}
