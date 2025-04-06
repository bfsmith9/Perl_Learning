# Testing context in Perl 
# See <https://www.perlmonks.org/?node_id=72247>

use strict;

my @array = ('foo', 'bar', 'baz');
my $temp;

$temp = @array;
print "$temp\n";
$temp = ('foo', 'bar', 'baz');
print "$temp\n";
($temp) = @array;
print "$temp\n";
($temp) = @array[0..2];
print "$temp\n";
$temp = @array[0..2];
print "$temp\n";