#!/usr/bin/perl
use strict;
use warnings;

open IN1,'<','one.txt';
while (<IN1>){
	chomp;
	if (/(.)ilma.*(.)red|(.)red.*(.)ilma/) {
		print "ƥ�䵽��$_ \n"; 
	}
}
