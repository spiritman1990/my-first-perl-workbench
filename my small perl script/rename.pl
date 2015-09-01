#!/usr/bin/perl
use strict;
use warnings;
my $dir="D:\\研究资料\\器材教程";
chdir $dir;
opendir (my $ren,$dir) || die "Can't open the directory $dir";
while (readdir($ren)) {
	my $b = $_;
	$b =~ s/0001\.优酷网-//;	
	rename $_,$b || warn "can't rename $_ to $b: $b exists " if -e $b;
}
closedir($ren);
