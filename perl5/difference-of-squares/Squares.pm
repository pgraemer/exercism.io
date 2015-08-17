package Squares;
use strict;
use warnings;
use List::Util qw(reduce sum);

sub new {
    my $class = shift;
    my $num   = shift;
    die "not valid" unless (int($num) >= 0);
    return
        bless {
            num => $num,
        }, $class;
}

sub sum_of_squares {
    my $self = shift;
    return reduce { $a + $b**2 } (0..$self->{num});
}

sub square_of_sums {
    my $self = shift;
    return sum(0..$self->{num}) ** 2;
}

sub difference {
    my $self = shift;
    return abs($self->sum_of_squares - $self->square_of_sums);
}

1;
