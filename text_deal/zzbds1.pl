#!/usr/bin/perl
use strict;
use warnings;
open F1,"< zzbds1.txt";
while (<F1>){
	print if //;
}
close F1;
