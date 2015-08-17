package Triangle;
use strict;
use warnings;
use List::MoreUtils qw(all);
use 5.10.0;

sub kind {
    my ($a, $b, $c) = @_;
    die 'TriangleError' unless sides_valid(@_);
    my %t;
    $t{$_}++ for ($a,$b,$c);
    my $kind;
    given (scalar keys %t) {
        when (3) { $kind = 'scalene'; }
        when (2) { $kind = 'isosceles'; }
        default  { $kind = 'equilateral'; }
    }
    return $kind;
}

sub is_equally {
    my ($a, $b, $c) = @_;
    return ($a < $b + $c) && ($b < $c + $a) && ($c < $a + $b);
}

sub sides_valid {
    return is_equally(@_) && all { $_ > 0 } @_;
}

1;
