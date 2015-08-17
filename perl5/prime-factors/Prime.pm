package Prime;
use strict;
use warnings;

sub factors {
    my $num = shift;
    my ($p, @primes) = (3);
    return [] if $num < 1;
    while (!($num & 1)) {
        $num >>= 1;
        push @primes, 2;
    }
    while ($num > 1 && $p * $p <= $num) {
        while ( ($num % $p) == 0) {
            $num /= $p;
            push @primes, $p;
        }
        $p += 2;
    }
    push @primes, $num if $num > 1;
    return \@primes;
}

1;
