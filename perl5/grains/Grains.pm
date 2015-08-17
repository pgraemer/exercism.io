package Grains;
use strict;
use warnings;
use bigint;

sub square {
    my $i = shift;
    return 2 ** ($i - 1);
}

sub total {
    return square(65) - 1;
}

1;
