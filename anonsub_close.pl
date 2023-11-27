#!/usr/bin/env perl

# Testing anonymous data structures, subroutines
# <https://www.perl.com/pub/2002/05/29/closure.html/>

# The subroutine reference below forms a *closure*, enclosing 
# the lexical variables it refers to. 

sub make_hello_printer { 
    my $message = "Hello, world!\n";
    return sub { print $message; }
}

my $print_hello = make_hello_printer();
$print_hello->(); 
