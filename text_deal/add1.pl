#!/usr/bin/perl
use strict;
use warnings;
print "������ʱ�䣬ÿ��ʱ�����Կո�����";
my $a=<>;
my @arr=split/ /,$a;
print "�������춥����ֵ���Կո���:";
my $b=<>;
my @arr1=split/ /,$b;
foreach my $i (0..$#arr) {
        foreach  my $j (0..$#arr1) {
                    print  "��",$j+1,"�����ֺ�Ϊ��",$arr1[$j]+$arr[$i],"\n" if $i==$j;
                        next;
        }
}