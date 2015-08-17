package SpaceAge;
use strict;
use warnings;

sub new {
    my $class = shift;
    my $sec   = shift;
    return bless {
        seconds       => $sec,
        days_on_earth => 365.25
    }, $class;
}

my %days_on = (
    # planet   days per year
    earth   => 1,
    mercury => 0.2408467,
    venus   => 0.61519726,
    mars    => 1.8808158,
    jupiter => 11.862615,
    saturn  => 29.447498,
    uranus  => 84.016846,
    neptune => 164.79132
);
{
    no strict 'refs';
    for my $planet (keys %days_on) {
        *{__PACKAGE__."::on_$planet"} = sub {
            my $self = shift;
            return $self->time_on($planet);
        }
    }
}

sub time_on {
    my $self = shift;
    my $planet = shift;
    return sprintf('%.2f',$self->{seconds} / 60 / 60 / 24 / ( $days_on{$planet} * $self->{days_on_earth} ));
}

sub seconds {
    return shift->{seconds};
}

1;
