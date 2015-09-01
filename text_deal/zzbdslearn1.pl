#!/usr/bin/perl
#use strict;
use warnings;
my @w1 = qw/helloworld1 hi hello world1 worl1d'/;
foreach (0..$#w1){
	print $w1[$_]."\n" if $w1[$_] =~ /hello|world/;
}