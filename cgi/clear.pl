#!/usr/bin/perl
open F1,"<","tst1.txt";
while (<F1>) {
	 s/^\s*\n//misg;
	 print;
} 