#!/usr/bin/perl
use strict;
use warnings;

my $a = $ARGV[0];
if (! defined $a) {
	die "请指定参数:$0 filename";
}
my $b = $a;
$b =~ s/(\.\w+)?$/.out/;
if (! open IN1,"<",$a) {
	die "can not open file,$!";
}
if (! open OUT1,">",$b) {
	die "can not write file,$!";
}
while (<IN1>) {
	chomp;
	s/this/这/ig;
	print OUT1 "$_\n";
}
close IN1;
close OUT1;