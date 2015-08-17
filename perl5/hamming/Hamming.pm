package Hamming;

sub compute {
    my @a = split('',shift);
    my @b = split('',shift);
    my $distance = 0;
    # c style loop is helpful here
    for(my $i = 0; $i < scalar(@a); $i++) {
        next unless defined $b[$i];
        $distance ++ if ($b[$i] ne $a[$i]);
    }
    return $distance;
}

1;
