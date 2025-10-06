package File;
#use Scalar::Util 'blessed';
print($INC{"File.pm"}, "\n");

my $hostname = File->Path();
#    path    => '/etc/hostname',
#    content => "foo\n",
#    last_mod_time => 1304974868,

#);

#my $file = File->new();

#sub print_info {
#    my $self = shift;

#    print "This file is at ", $self->path, "\n";

#}

#$file->print_info;