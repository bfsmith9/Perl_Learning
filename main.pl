# print "Hello, world\n";

#!/usr/bin/env perl

# PERL MODULE/OOP PRACTICE - SEPT. 2023
# Adapted from <https://www.perltutorial.org/perl-oop/>

# Need to use BEGIN here, otherwise can't find this dir
BEGIN {unshift @INC, "Product/lib"}

# More ways to find libraries, etc.
# See <https://stackoverflow.com/questions/185114/how-do-i-use-a-perl-module-in-a-directory-not-in-inc>
# use lib 'lib';

# or - try these three lines if in same directory
# use Cwd qw( abs_path );
# use File::Basename qw( dirname );
# use lib dirname(abs_path($0));

use strict;
use warnings;
use Product;

my $iphone = Product->new({
          serial =>"100",
          name => "iPhone 5",
          price => 650.00});

my $nexus = Product->new({ 
serial =>"101",
name => "Nexus2",
price => 299.00,
color => "blue"});

print $iphone->to_string();
print $nexus->to_string();

print "\n";
print $nexus->get_name . "\n";

$nexus->set_name("Nexiferous");
print $nexus->get_name. "\n";

print "\n";
print $nexus->get_color . "\n";