package Leap;
use strict;
use warnings;

sub is_leap {
    my $year = shift;
    return
          ($year % 100 == 0 && $year % 400 != 0)  ? 0
        : ($year %   4 == 0)                      ? 1
                                                  : 0;
}

1;
