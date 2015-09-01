#!/usr/bin/perl
use strict;
use warnings;
use 5.16.0;
use data::dumper;

=pod
print "请输入你的名字，以^Z结束!: \n";

my @names = <stdin>;
map {chomp} @names;
sub greet {
	state $i;
    print "要操作的是@_\n";	
	foreach  $i (0..$#_) {
	$i ==0?(print "Hi,$_[$i],welcome here,you are the first one here!\n"):(print "Hi,$_[$i],welcome here,you are the ",($i+1)," one here,the one before you  is,$_[$i-1]\n");
}
}
&greet(@names);

=cut



=pod
print "请输入你的名字，以^Z结束!: \n";
my @names;
while (<>) {
	chomp;
	push @names,$_;
	print "已输入：@names\n";
	
	
}
print dumper \@names;
#print "要操作的数组为(",join(",",@names),")\n";
sub greet {
	state $i;
    foreach  $i (0..$#_) {
		$i == 0?(print "Hi,$_[$i],welcome here,you are the first one here!\n"):(print "Hi,$_[$i],welcome here,you are the ",($i+1)," one here,the one before you  is,$_[$i-1]\n");
      }
}

greet(@names);

=cut


#map{ s/^\s+|\s+$//g }@names;