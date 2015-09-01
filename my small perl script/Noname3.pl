#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

$/ = undef;

my $s;
my $ss;
my @sum;
my @flag = qw/TDI TDO TCK TMS TRST/;

my $data = <DATA>;

@b = map {@qq = split /\|\s+/;$s->{join ' ', @qq[2..$#qq]} .= (split /\|\s+/)[1];} (split /\n/, $data);

foreach (keys %$s) {
    my @key = split /\s/, $_;
    my @value = $s->{$_} =~ /(.\d+)/g;
    print name($s->{$_}),"\n";
    for (0..$#key) {
        print "\t".$flag[$_]."\t".$key[$_]."\n";
    }
    print "\tDEVICES\n\t";
    print join ',', @value;
    print "\n";

}

sub name {
    my $name = shift @_;
    my @aaa = $name =~ /(.\d+)/g;

    if ($#aaa == 0 ) {
        return $name."_".$name;
    }
    else {
        return $aaa[0]."_".$aaa[$#aaa];
    }
}


