BEGIN {
push @INC, "/Users/bfsmith9/Documents/computing/source/perl/Perl_Hacking/Product/lib/";
}

# use lib 'lib/Product';
use Test::More tests=> 1; 
use Product;


my $iPhone = Product->new({
          serial =>"100",
          name => "iPhone 5",
          price => 650.00});

isa_ok($iPhone, "Product");