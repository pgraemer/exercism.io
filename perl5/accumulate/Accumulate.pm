package Accumulate;
use strict;
use warnings;

sub accumulate {
    my $data = shift;
    my $function = shift;
    for my $a (@{$data}) {
        if (ref $function eq 'CODE') {
            $a = $function->($a);
        }
    }
    return $data;

}

1;
