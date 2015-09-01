#!/usr/bin/perl
use strict;
use warnings;

my $secret = int(1 + rand 100);
#print "Don't tell anyone,but the secret number is $secret.\n";

while (1) {
	print "Please enter a guess from 1 to 100: ";
	chomp (my $guess = <>);
	if ($guess =~ /quit|exit|\A\s*\z/i) {
		print "Sorry for that your choice is giving up.the number is $secret.\n";
		last;
	}elsif ($guess < $secret) {
		print "Too small,try again!\n";
	}elsif ($guess == $secret){
		print "That was it!\n";
		last;
	}else{
		print "Too large.Try again!\n";
	}
}

