package Phrase;
use strict;
use warnings;
sub word_count {
    my $sentence = shift;
    my %seen = ();
    $seen{lc $_}++ for (split /\W+/, $sentence);
    return \%seen;
}

1;
