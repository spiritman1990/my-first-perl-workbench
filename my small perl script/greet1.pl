#!/usr/bin/perl
use strict;
use warnings;
use 5.16.0;
use data::dumper;

=pod
print "������������֣���^Z����!: \n";

my @names = <stdin>;
map {chomp} @names;
sub greet {
	state $i;
    print "Ҫ��������@_\n";	
	foreach  $i (0..$#_) {
	$i ==0?(print "Hi,$_[$i],welcome here,you are the first one here!\n"):(print "Hi,$_[$i],welcome here,you are the ",($i+1)," one here,the one before you  is,$_[$i-1]\n");
}
}
&greet(@names);

=cut



=pod
print "������������֣���^Z����!: \n";
my @names;
while (<>) {
	chomp;
	push @names,$_;
	print "�����룺@names\n";
	
	
}
print dumper \@names;
#print "Ҫ����������Ϊ(",join(",",@names),")\n";
sub greet {
	state $i;
    foreach  $i (0..$#_) {
		$i == 0?(print "Hi,$_[$i],welcome here,you are the first one here!\n"):(print "Hi,$_[$i],welcome here,you are the ",($i+1)," one here,the one before you  is,$_[$i-1]\n");
      }
}

greet(@names);

=cut


#map{ s/^\s+|\s+$//g }@names;