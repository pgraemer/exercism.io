package Proverb;
use strict;
use warnings;

sub proverb {
    my $items     = shift;
    my $qualifier = shift // q{};
    my $str       = q{};
    WORD:
    for (my $i = 0; $i <= @{$items}; $i++) {
        $str .= sprintf('And all for the want of a %s %s.', $qualifier, $items->[0]) and last WORD if ($qualifier && !$items->[$i+1]);
        $str .= sprintf('And all for the want of a %s.', $items->[0]) and last WORD if ( !$items->[$i+1]);
        $str .= sprintf("For want of a %s the %s was lost.\n", $items->[$i], $items->[$i+1]);
    }
    return $str;
}

1;
