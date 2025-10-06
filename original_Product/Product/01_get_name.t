#!/usr/bin/env perl

# BARRY SMITH - PERL TESTING PRACTICE - JAN. 2020
# Below adapted from:
# <https://perlmaven.com/testing-a-simple-perl-module>

# Need to use BEGIN here, otherwise can't find this dir
BEGIN {unshift @INC, "/home/swagner/Documents/src/perl/perl-testing/perl-oop/Product/lib"}

use strict;
use warnings;

# Number of tests
use Test::Simple tests => 2;

use Product qw(get_name);

my $iphone = Product->new({
                          serial =>"100",
                          name => "iPhone 5",
                          price => 650.00});

my $nexus = Product->new({ serial =>"101",
                           name => "Nexus",
                           price => 299.00});

# The tests
ok( $iphone->get_name eq "iPhone 5");
ok( $nexus->get_name eq "Nexus");
