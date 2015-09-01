#!/usr/bin/perl
use strict;
use warnings;
open U,"<","convdate.txt";
while (<U>){
   if (substr($_,0,2) < 50){
  	print  "20".substr("$_",0,2)."-".substr("$_",2,2)."-".substr("$_",4,2).substr($_,6)."\n"; 
  }else{
  	print  "19".substr("$_",0,2)."-".substr("$_",2,2)."-".substr("$_",4,2).substr($_,6)."\n";
  }
}

close U;