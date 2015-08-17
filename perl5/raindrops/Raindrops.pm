package Raindrops;
use strict;
use warnings;

my %RAINDROPS = (
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong',
);

sub convert {
    my $num = shift;
    return join('', map { $RAINDROPS{$_} } grep { $num % $_ == 0 } sort keys %RAINDROPS) || $num;
}

1;
