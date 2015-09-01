#!/usr/bin/perl
my @arr = qw (a b a b 12 12 12 13 15);
my %hash;
my @uq = grep{++$hash{$_} < 2;}@arr;
foreach (0..$#uq){
    print $uq[$_]," ";
}

