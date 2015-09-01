#!/usr/bin/perl
use strict;
use warnings;

my @var1 = qw ( 
          Host Name:vm_db_01
          OS:  Windows2008 (6)  
          OS Type: Windows   
          Host Type: Client  
          Version: 7.5  
          IP Address: 10.10.10.98
);
foreach  ( 0..$#var1 ) {
	print $var1[$_]."\n";
}