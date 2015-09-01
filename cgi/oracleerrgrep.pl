#!/usr/bin/perl
use strict;
use warnings;
my ($argv) = @ARGV;  
 if ( $argv && ! -e $argv )  
 {  
     print '  
  Welcome To Use  alert_ora_finder  (Oracle Alert File ORA Error Finder)  
                                                    Powered By killkill  
  $ cat alert_[sid].log | alert_ora_finder.pl  
  $ tail -f alert_[sid].log | alert_ora_finder.pl  
  $ alert_ora_finder.pl alert_[sid].log  
   
 ';  
     exit;  
 }  
 my $cap_regex = '^(\w+ \w+ \d{2} \d{2}:\d{2}:\d{2} \d{4})|(ORA-\d+:.+)$';  
 my $tmp_date = "";  
 my $line_counter = 0;  
 while ( <> )  
 {  
     $line_counter++;  
     if( m/$cap_regex/oi )  
     {  
         if ($1)  
         {  
             $tmp_date = $1;  
             next;  
         }  
         print "$line_counter | $tmp_date | $2 \n" if ($2);  
     }  
 }