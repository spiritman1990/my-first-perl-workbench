#!/usr/bin/perl
use strict;
use warnings;
use File::Basename qw / /;

my $a = "/usr/bin/perl";
my $b = File::Basename::basename $a;
printf "%10s",$b;

