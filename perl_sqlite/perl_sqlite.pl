#!/usr/bin/perl
use strict;
use warnings;
 
use DBI;
use Data::Dumper;
 
my $dbfile = "sample.db";
 
my $dsn      = "dbi:SQLite:dbname=$dbfile";
my $user     = "";
my $password = "";
my $dbh = DBI->connect($dsn, $user, $password, {
   PrintError       => 0,
   RaiseError       => 1,
   AutoCommit       => 1,
   FetchHashKeyName => 'NAME_lc',
});
# my @container = [];
my @container;
 
# ...
# my $sql = <<'END_SQL';
# CREATE TABLE people (
#   id       INTEGER PRIMARY KEY,
#   fname    VARCHAR(100),
#   lname    VARCHAR(100),
#   email    VARCHAR(100) UNIQUE NOT NULL,
#   password VARCHAR(20)
# )
# END_SQL
#  
# $dbh->do($sql);

# my $fname = 'Coe';
# my $lname = 'Par',
# my $email = 'coe@par.com';
# $dbh->do('INSERT INTO people (fname, lname, email) VALUES (?, ?, ?)',
#  undef,
#  $fname, $lname, $email);

# ----------------------

# my $sql = 'SELECT fname, lname FROM people WHERE id >= ? AND id < ?';
# my $sth = $dbh->prepare($sql);
# $sth->execute(1, 10);
# while (my @row = $sth->fetchrow_array) {
#    print "fname: $row[0]  lname: $row[1]\n";
# }

print("\n");

my $sql = 'SELECT fname, lname, email FROM people WHERE id >= ? AND id < ?';
my $sth = $dbh->prepare($sql);
$sth->execute(1, 10);
while (my $row = $sth->fetchrow_hashref) {
    print "fname: $row->{fname}  lname: $row->{lname}  email: $row->{email}  \n";
    push (@container, $row);

}

$dbh->disconnect;

print Data::Dumper->Dump(\@container); 

print("Is this container[0]?\n"); 
print("$container[0]{'fname'}\n");
print("$container[0]{'lname'}\n");
print("$container[0]{'email'}\n");

