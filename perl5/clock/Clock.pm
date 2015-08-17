package Clock;
use strict;
use warnings;
use overload
    '+'  => \&addition,
    '-'  => \&substraction,
    'eq' => \&compare,
    '""' => \&to_string;

sub new {
    my $class = shift;
    my $time  = shift;
    return bless {
        h => $time->[0] // 0,
        m => $time->[1] // 0,
    }, $class;
}

sub to_string {
    my $self = shift;
    return sprintf("%02d:%02d", $self->{h}, $self->{m});
}

sub addition {
    my $self    = shift;
    my $minutes = shift;
    $self->{m} += ($minutes % 60);
    $self->{h} += int($minutes / 60);
    $self->{h} -= 24 if ($self->{h} > 23);
    return $self;
}
sub substraction {
    my $self    = shift;
    my $minutes = shift;
    $self->{m} -= ($minutes % 60);
    $self->{m}  = 60 - abs($self->{m}) and $self->{h}-- if ($self->{m} < 0);
    $self->{h} -= int($minutes / 60);
    $self->{h}  = 24 - abs($self->{h}) if ($self->{h} < 0);
    return $self;
}

sub compare {
    my $self    = shift;
    my $compare = shift;
    return $compare->isa('Clock') ? ($self->to_string eq $compare->to_string) : ($self->to_string eq $compare);
}

'exercism.io is awesome';
