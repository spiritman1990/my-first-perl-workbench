#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;
my $str = do{loc
	al $/; <data>};  #��ȡ�ı���perl��Ĭ�Ϸֽ����\n������
my @chunks = split /^(?=\S)/m,$str; #�����趨Ϊ�գ���ȡ�����ļ�
my %xml;
while (@chunks) {
my $text = shift @chunks;
open my $fh, "<", \$text or die($!);  #�������
my $title  = <$fh>;     # etc/....
$title .= <$fh>;     #   dest...
push @{ $xml{$title} },<$fh>;   #��ʱ��hash����Ϊ��ȥtitleʣ��Ĳ���
close($fh);
}
while (my($k,$v) = each %xml) {
print $k, @{$v};    #@{$v} ������ã����ﲻ��$v����ҿ�����Dumper \%xml�鿴�ṹ
}