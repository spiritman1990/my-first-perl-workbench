#!/usr/bin/perl
use strict;
use warnings;
use Module::CoreList;
my %modules = %{ $Module::CoreList::version{5.016} };
print join "\n", keys %modules;
