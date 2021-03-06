# -*- buffer-read-only: t -*-
# !!!!!!!   DO NOT EDIT THIS FILE   !!!!!!!
# This file is built by regen/pX.pl.
# Any changes made here will be lost!


package p7;

# use p7 enables perl 5 code to function in a perl 7-ish way as much as possible compared to the version you are running.
# it also is a hint to both tools and the compiler what the level of compatibility is with future versions of the language.

our $VERSION = '0.00001';

BEGIN {
    # This code is a proof of concept provided against 5.30. In order for this code to work on other versions of perl
    # we would need to generate it as part of shipping it to CPAN.
    $] >= 5.030 or die("Perl 5.30 is required to use this module.");
}

sub import {

    # use warnings; no warnings qw/experimental/;
    # perl -e'use warnings; no warnings qw/experimental/;  my $w; BEGIN {$w = ${^WARNING_BITS} } print unpack("H*", $w) . "\n"'
    ${^WARNING_BITS} = pack( "H*", '55555555555555555555555515000150010154' );

    # use strict; use utf8;
    # perl  -MData::Dumper -e'my $h; use strict; use utf8; use feature (qw/bitwise current_sub declared_refs evalbytes fc postderef_qq refaliasing say signatures state switch unicode_eval/); BEGIN {  $h = $^H } printf("\$^H = 0x%08X\n", $h); print Dumper \%^H; '
    $^H |= 0x00000602;

    require feature;
    feature->import(':7.0');
}

1;

__END__

=head1 NAME

p7

=head1 SYNOPSIS

use p7;

=head1 DESCRIPTION

Description for p7.

=head1 AUTHOR

atoomic

=cut


# ex: set ro:
