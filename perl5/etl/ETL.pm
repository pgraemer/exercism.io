package ETL;

sub transform {
    my $struct = shift;
    return {
        map {
            my $score = $_;
            map {
               (lc $_ => $score)
            }
            @{$struct->{$score}}

        }
        keys %{$struct}
    };
}

1;
