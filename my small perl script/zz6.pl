#!/usr/bin/perl
use strict;
use warnings;

#$^I = ".bak";
#while (<>) {
#	if (/\A#!/) {
#		$_ .= "##Copyright (C) 2014 by paul\n";
#	}
#	print;
#}

my %do_these;
foreach  (@ARGV) {
	$do_these{$_} = 1;
}
while (<>) {
	if (/\A##Copyright/) {
		delete $do_these{$ARGV};
	}
}
@ARGV = sort keys %do_these;
$^I = ".bak";
while (<>) {
	if (/\A#!/) {
		$_ .= "## Copyright (c) 2014 by paul";
	}
	print;
}