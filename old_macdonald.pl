#!/usr/bin/perl

use strict;   # this should be in every single Perl program you write
use warnings; # so should this

# load a Perl module into memory so we can use it
use Data::Dumper qw( Dumper );


# scalars are use to hold single values
my $name = 'Old MacDonald';

# arrays are used to hold list data
my @farm_animals = ( 'ducks', 'cows', 'pigs' );
my @drinks = ( qw( beer scotch bourbon ) );    # qw means quote whitespace

# hashes are used to hold ( key => value ) pairs
my %things = ( 'farm' => \@farm_animals, 'bar' => \@drinks );

# you can use keys() to get the keys of the hash
my @thing_keys = keys( %things );

# here $thing_keys is an array reference
my $random_thing = $thing_keys[ int( rand( scalar( @thing_keys ) ) ) ];

print "\n$name had a $random_thing, E-I-E-I-O.\n\n";

sleep 5;

my @stuff = @{ $things{$random_thing} };

my $random_stuff = $stuff[ int( rand( scalar( @stuff ) ) ) ];

print "And on this $random_thing he had some $random_stuff, E-I-E-I-O.\n\n";

sleep 5;

my $animal = $farm_animals[ int( rand( scalar( @farm_animals ) ) ) ];
my $drink  = $drinks[ int( rand( scalar( @drinks ) ) ) ];

print "Oh no, the $animal drank all of the $drink!\n\n";






