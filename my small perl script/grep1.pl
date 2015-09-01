#!/usr/bin/perl
use strict;
use warnings;
use UTF8;

open IN1,"<","perl_trainning.txt";
open OUT1,">","perldone.txt";
while (<IN1>) {
	chomp;
	my $a = $_;
	if ($a =~ /^http/i) {
		print OUT1 $a."\n";
	} 
}

close IN1;
close OUT1;