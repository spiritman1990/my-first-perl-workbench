#!/usr/bin/perl
use strict;
use warnings;
open F1,"<","a.txt";
#open F2,"<","b.txt";
#open O1,">","c.txt";
my (@v1,@v2);
my ($v1,$v2);
my (%h1,%h2);
while (<F1>) {
        chomp;
        my($k1,$v1)=split "\t",$_,2;
        @v1=split (/\t/,$v1);
        $h1{$k1}=[@v1];
		
}
close F1;
=cut
while (<F2>) {
        chomp;
        my($key2,$value2)=split "\t",$_,2;
        @value2=split (/\t/,$value2);
        if (exists $hash{$key2}) {
                push @value2,@value1;
                $hashnew{$key2}=[@value2];
        }
        }
foreach  (keys %hashnew) {
        print OUT1 "$_\t@{$hashnew{$_}}\n";
}
close F1;
close F2;
close O1;
=pod