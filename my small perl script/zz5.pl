#!/usr/bin/perl
##Copyright (C) 2014 by paul
use strict;
use warnings;

print "«Î ‰»Î: \n";
while (<>) {
	chomp;
	s/(?<O1>\w+)(?<O2>.?)(?<O3>\w+)/$+{O3}$+{O2}$+{O1}/;
	print $_."\n";
}

