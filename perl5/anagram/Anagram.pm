package Anagram;
use strict;
use warnings;
use List::AllUtils qw(all);

sub match {
    my $word       = shift;
    my @candidates = @_;
    return [grep { is_anagram_of(lc $word, lc $_) ? $_  : () } @candidates];
}

sub is_anagram_of {
    my $word             = shift;
    my $possible_anagram = shift;
    return 0 if ($word eq $possible_anagram);
    return (join('',sort(split(//, $word))) eq join('',sort(split(//, $possible_anagram))));
}

1;
