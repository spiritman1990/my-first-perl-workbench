#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $str = do{loc
	al $/; <data>};  #读取文本，perl中默认分解符是\n，现在
my @chunks = split /^(?=\S)/m,$str; #重新设定为空，读取整个文件
my %xml;
while (@chunks) {
my $text = shift @chunks;
open my $fh, "<", \$text or die($!);  #句柄引用
my $title  = <$fh>;     # etc/....
$title .= <$fh>;     #   dest...
push @{ $xml{$title} },<$fh>;   #此时的hash数据为除去title剩余的部分
close($fh);
}
while (my($k,$v) = each %xml) {
print $k, @{$v};    #@{$v} 输出引用，这里不是$v，大家可以用Dumper \%xml查看结构
}