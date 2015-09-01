#!/usr/bin/perl
use strict;
use warnings;

use 5.10.0;
greet( 'Fred' );
greet( 'Barney' );
greet( 'Wilma' );
greet( 'Betty' );

sub greet {
	state @names;

	my $name = shift;
	print "Hi,$name!\n";

	if ( @names ) {
		print "I've seen: @names\n";
	}
	else {
		print "You are the first one here!\n";

	}

	push @names,$name;
}


