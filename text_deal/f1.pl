#!/usr/bin/perl
use strict;
use warnings;
my @a = qw (M48
CP 11.0
DFGDG
。。。
。。。
DFDF


T01C1.0
T02C2.0
%
DFDKLFJDLK
MFKLDJFKLD
。。。
。。
。。。
M30
);
foreach (0..$#a){
	print $a[$_]."\n" if $a[$_]=~!/^T/;
}