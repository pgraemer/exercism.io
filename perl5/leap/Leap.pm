package Leap;
use strict;
use warnings;

sub is_leap {
    my $year = shift;
    if ($year % 100 == 0) {
        return ($year % 400 == 0) ? 1 : 0;
    }
    return ($year % 4 == 0) ? 1 : 0;
}

1;