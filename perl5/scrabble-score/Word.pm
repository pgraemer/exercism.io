package Word;
use strict;
use warnings;
use Data::Munge qw(elem);
sub new {
    my $caller = shift;
    my $word   = shift;
    my $self = {
        word => $word,
    };
    return bless $self, $caller;
}

sub letter_score {
    my $self = shift;
    my $letter = shift;
    my %scores = (
        1  => [qw(a e i o u l n r s t)],
        2  => [qw(d g)],
        3  => [qw(b c m p)],
        4  => [qw(f h v w y)],
        5  => [qw(k)],
        8  => [qw(j x)],
        10 => [qw(q z)],
    );
    for my $score (keys %scores) {
        return $score if (elem(lc $letter, $scores{$score}));
    }

}

sub score {
    my $self = shift;
    my $score = 0;
    for my $letter ( split(//, $self->{word}) ) {
        $score += $self->letter_score($letter);
    }
    return $score;
}
1;
