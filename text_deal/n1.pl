#!/usr/bin/perl
use strict;
use warnings;
open F1,"<n1.txt";
my %hash;  
while(<F1>){  
chomp;  
my @array=split;  
$hash{$array[0]}+=$array[1];  
}   
END{  
foreach(keys %hash){  
print "$_ \t $hash{$_} \n";  
}  
}   
close F1;


