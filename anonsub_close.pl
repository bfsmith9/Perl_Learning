#!/usr/bin/env perl

# Testing anonymous data structures, subroutines

sub make_hello_printer { 
    return sub { print "Hello, world!\n"; }
}

my $print_hello = make_hello_printer();
$print_hello->(); 
