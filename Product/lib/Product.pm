package Product;

# PERL MODULE/OOP PRACTICE - SEPT. 2023
# Adapted from <https://www.perltutorial.org/perl-oop/>

use strict;
use warnings;

# init product with serial, name and price
sub new{
    my ($class,$args) = @_;
    my $self = bless { serial => $args->{serial},
                       name => $args->{name},
                       price => $args->{price},
					   color  => $args->{color} || 'black',
                     }, $class;
}
# get name of the product
# Notice how you always have the class or object as the first argument 
# when a method is invoked (see Camel Book, p. 311). That's how OOP works
# in Perl - there's always an extra initial arg that's either the name 
# of the class or the reference to the object when you use a method.
sub get_name{
   my $self = shift;
   return $self->{name};
}

# set new name for the product
sub set_name{
   my ($self,$new_name) = @_;
   $self->{name} = $new_name;
}

# get price of the product
sub get_price{
   my $self = shift;
   return $self->{price};
}

# set price for the product
sub set_price{
   my ($self,$new_price) = @_;
   $self->{price} = $new_price;
}

# get serial
sub get_serial{
   my $self = shift;
   return $self->{serial};
}
# set serial
sub set_serial{
   my ($self,$new_price) = @_;
   $self->{price} = $new_price;
}

sub get_color{
   my $self = shift;
   return $self->{color};
}

# set new color for the product
sub set_color{
   my ($self,$new_color) = @_;
   $self->{color} = $new_color;
}

# return formatted string of the product
sub to_string{
   my $self = shift;
   return "Serial: $self->{serial}\nName: $self->{name}\nPrice: $self->{price}USD\nColor: $self->{color}\n";
}

1;