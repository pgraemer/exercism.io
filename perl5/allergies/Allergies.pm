package Allergies;
use strict;
use warnings;
use List::MoreUtils qw(one);
use Data::Printer colored => 1;

my @candidates = (
    'eggs',
    'peanuts',,
    'shellfish',
    'strawberries',
    'tomatoes',
    'chocolate',
    'pollen',
    'cats',
);

sub new {
    my $class = shift;
    return (bless {
        score     => shift // 0,
        allergies => [],
    }, $class)->init;
}

sub score { shift->{score} }
sub list  { shift->{allergies} }

sub init {
    my $self      = shift;
    return $self unless $self->score;

    my $allergies = [];
    my $score = $self->score;
    while($score > 0) {
        my ($index, $name) = _most_allergic($score);
        unshift @{$allergies}, $name if (defined $name);
        $score -= 2**$index;
    }
    $self->{allergies} = $allergies;
    return $self;
}

sub allergic_to {
    my $self      = shift;
    my $type      = shift;
    my @allergies = @{$self->list};

    return 0 unless @allergies;
    return (one { $_ eq $type } @allergies) ? 1 : 0;
}

sub _most_allergic {
    my $score = shift;
    my $i = scalar @candidates;
    while ($score - 2**$i < 0) {
        $i -= 1;
    }
    return ($i, $candidates[$i]);;
}

1;
