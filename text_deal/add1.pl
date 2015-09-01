#!/usr/bin/perl
use strict;
use warnings;
print "请输入时间，每个时间点儿以空格间隔：";
my $a=<>;
my @arr=split/ /,$a;
print "请输入天顶角数值，以空格间隔:";
my $b=<>;
my @arr1=split/ /,$b;
foreach my $i (0..$#arr) {
        foreach  my $j (0..$#arr1) {
                    print  "第",$j+1,"组数字和为：",$arr1[$j]+$arr[$i],"\n" if $i==$j;
                        next;
        }
}