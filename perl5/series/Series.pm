package Series;
use strict;
use warnings;

sub new {
    return bless \pop // q{}, shift;
}

sub slice {
    my ($self, $size) = @_;
    die 'ArgumentError' if $size > length $$self;
    my @slices;
    my $i = 0;
    while(length(substr($$self, $i, $size)) == $size) {
        push @slices, [split('',substr($$self, $i++, $size))];
    }
    return \@slices;
}

1;
