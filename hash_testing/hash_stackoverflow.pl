#! /usr/bin/perl

use strict;
use warnings; 
use Data::Dumper;

my %hash = ('abc' => 123, 'def' => [4,5,6]);
# my %hash_mega = {"abc" => 123, 'def' => {"charles" =>[4,5,6]} };
my %hash_mega;
#$hash_mega{abc} = 123;

$hash_mega{abc}{def} = [4,5,6];
$hash_mega{abc}{efg} = [7,8,9];
$hash_mega{abc}{hij} = 'charles';

print Dumper(\%hash);
print Dumper(\%hash_mega);

print("Here is \$hash_mega{abc}{efg}[0] - a hash value in a hash value: \n");
print "$hash_mega{abc}{efg}[0]\n";
print("Here is \$hash_mega{abc}{hij} - a hash value in a hash value: \n");
print "$hash_mega{abc}{hij}\n";

print("Here is a reference to \$hash_mega{abc}{hij} - using a variable called \$reference_to_internal: \n");
my $reference_to_internal = \$hash_mega{abc}{hij};
print "${$reference_to_internal}\n";
