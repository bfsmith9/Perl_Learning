#!/usr/bin/env perl

#use strict;
#use warnings;
use Data::Dumper qw(Dumper);

my %cast;

$cast{'soldier'} = "Roy";
$cast{cop} = "Deckard";
$cast{gymnast} = "Pris";

print "$cast{soldier}\n";
print "$cast{cop}\n";

my @peeps = keys %cast;
for my $peep (@peeps) {
    print "The character of the '$peep' is $cast{$peep}\n";
}

# https://stackoverflow.com/questions/58811392/fuzzy-matching-in-perl
# my $regex = qr/sold.*/i;

for my $peep (@peeps) {
    if ($peep =~ /Sold.*/i) {
        print "\n";
        print "Here is the soldier: $cast{$peep}\n";
    }
}

my %city = (
    'sales' => ["noodle cook", "eyeball salesman", "taxi driver"],
    entertainment => ["dancer", "piano player", "robot comedian"],
    security => ["blade runner", "sargeant", "police interviewer"],
    'robots' => {'roy' => 'leader', 
    						 'pris' => 'gymnast' },
    );

# I don't know what this "r01" array index is
# Works the same as a "0". Probably something I found 
# on the net. 

# OK - Google AI told me the answer. The "r01" or "meh" or whatever 
# you like is simply converted into the number zero. 

# Placement of brackets is very confusing; that's why I'm having issues.
print "A member of the city: ${city{sales}[meh]}\n";
print "A member of the city2: ${city{sales}[0]}\n";
print "A member of the city3: $city{sales}[0]\n";
print "A member of the city4: %city{sales}[0]\n";
print "A member of the city5: ${city}{sales}[0]\n";
print "Try again: ${city{sales}[0]}\n";
print "Another member of the city: ${city{security}[2]}\n";
print "A leader: $city{'robots'}{'roy'}\n";

print "Here's the Data Dumper output\n";
# print Dumper \%cast;
# print Dumper \%city;

