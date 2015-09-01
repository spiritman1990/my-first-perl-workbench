#!/usr/bin/perl
use strict;
use warnings;
my (%hash,$key);
open F1,"<","a.txt";
while(<F1>){
my @st=split;
$hash{$st[0]} .= "$st[1] ";
}
for $key(keys %hash){
print "$key $hash{$key}\n";
}




Å£±ÆÐ´µÄawk£º
awk '{a[$1]=a[$]" "$2:$2}END{for (i in a)print i,a[i]}' 