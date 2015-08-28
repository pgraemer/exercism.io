package Gigasecond;
use strict;
use warnings;
use DateTime;

sub new {
    my ($class, $y, $m, $s) = @_;
    my $date  = DateTime->new(year => $y, month => $m, day => $s);
    $date->add_duration(DateTime::Duration->new(seconds => 1_000_000_000));
    return bless {
       date => $date,
    }, $class;
}

sub date {
    my $self = shift;
    return $self->{date}->truncate(to => 'day');
}


1;
