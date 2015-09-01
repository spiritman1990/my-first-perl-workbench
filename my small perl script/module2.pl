#!/usr/bin/perl
use strict;
use warnings;

use File::Basename;
=pod
my $a=qw ( /a/b/c-1.txt );
my $filename = basename $a;
my $dirname = dirname $a;
$filename =~ s/^/not/;
print my $new_name = "$dirname/$filename";
#rename($a,$new_name) or warn "cat't rename '$a' to $new_name,$!"

=cut
use File::Basename;
use File::Spec::Functions;
my $a=qw ( /a/b/c-1.txt );
my $filename = basename $a;
my $dirname = dirname $a;
$filename =~ s/^/not/;
my $new_name = File::Spec->catfile($dirname,$filename);
rename($a,$new_name) or warn "cat't rename '$a' to $new_name,$!"