#!/usr/bin/perl
use strict;
use warnings;
use CGI::Fast qw(:standard);
my $data_file="data.txt";
while (my $cgi=new CGI::Fast){
print "Content-Type:text/html\n\n";
#my ($rw);
#$rw=$cgi->param("rw");
#if ($rw eq "r" || $rw eq ""){
print qq~
<form name="" action="rr.fpl">
<p>name:
<input type="text" name="name">
</p>
<p>message:
<textarea name="content" wrap="VIRTUAL"></textarea>
</p>
<p>
<input type="submit" value="ok">
<input type="reset" valie="clean">
<input type="hidden" name="rw" value="w">
</p>
</form>
~;
my @line=&Read_Data;
foreach (@line){
my ($name,$content)=split(/&&/,$_);
print qq~
name:$name
<br>
message:$content
<hr>
~;
}
#}else{
my $name=$cgi->param("name");
my $content=$cgi->param("content");
#local $ok=1;
if ($name eq "" || $content eq ""){
&Print_Erro("please input all message!");
}else{
#if ($ok){
&Write_Data($name,$content);
&Print_Succ("me sucessfull");
#}
}
}

sub Read_Data {
open (FILE,$data_file);
my @line=<FILE>;
close (FILE);
return @line;
}

sub Write_Data {
my ($name,$content)=@_;
open (FILE,">>$data_file");
print FILE "$name&&$content\n";
close (FILE);
}

sub Print_Succ {
print qq href="java script:history.go(-1);">look at</a>~;
}

sub Print_Erro {
my $ok=0;
print qq href="java script:history.go(-1);">go back</a>~;
}