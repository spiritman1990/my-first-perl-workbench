#!/usr/bin/perl
use strict;
use warnings;

#my $a = shift @ARGV;
#while (<>) {
#	chomp;
#	if (/\A($a)/) {
#		print "$a is at the beginning of $_";
#	}
#}



#my $a = "fat lazy,angry";
#if ($a =~ /(?:\S+) (\S+),(\S+)/) {
#	my $b = $1;
#	print "my status are $1 $2 $3\n";
#}
#


while (<>) {
	chomp;
	if (/xxx/) {
		print "Match:|$`<$&>$'|\n";
	}else{
		print "No matches: |$_|";
	}
}