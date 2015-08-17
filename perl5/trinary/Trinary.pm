package Trinary;
use strict;
use warnings;

sub new {
    my $class = shift;
    my $num   = shift;
    $num      =~ s/\D//g;
    return bless { number => $num }, $class;
}

sub to_decimal {
    my $self    = shift;
    my $decimal = 0;
    for (my $i = 0; substr($self->{number},$i,1) ne ''; $i++) {
        $decimal += substr($self->{number}, $i, 1) * ( 3 ** (length($self->{number}) - $i - 1));
    }
    return $decimal;
}

1;
