#!/usr/bin/perl
use strict;
use warnings;
use List::Util qw (min max);
open F1,"< abs.txt" or die "can't open the file $!";
my @a=<F1>;
print max(@a);
close F1;
