package Strain;
use strict;
use warnings;
sub keep {
    my $list     = shift;
    my $callback = shift;
    my @keep;
    if (ref $callback eq 'CODE') {
        for my $value ( @{$list} ) {
            push @keep, $value if ($callback->($value));
        }
    }
    return \@keep;
}

sub discard {
    my $list     = shift;
    my $callback = shift;
    my @keep;
    if (ref $callback eq 'CODE') {
        for my $value ( @{$list} ) {
            push @keep, $value unless ($callback->($value));
        }
    }
    return \@keep;
}

1;
