#!/usr/bin/perl
use strict;
use warnings;

#hash
my %hash;
my @arr;
my $i;
open F1,'<','a1.txt' or die $!;
while (<F1>) {
	s/,//g;
	@arr = split("  ");
	print "$arr[0] \t $arr[1] \n";   
}
close F1;


=put
use Data::Dumper;
open F1,'<','a1.txt' or die $!;
$/ = undef;
$a = <F1>;

@a1 = split /\n/, $a;
my $h;
#@a2 = map {@qq = split /,\s+/, $_; $h->{$qq[0]} += 1;} @a1[1..$#a1];


@a2 = map {$h->{(split /,\s+/)[0]}++} @a1[1..$#a1];

print Dumper $h;
close F1;
=cut
