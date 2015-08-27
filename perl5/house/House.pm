package House;
use strict;
use warnings;

use constant {
    RYMES => [
        ['the house that Jack built.'],
        ['the malt', 'that lay in'],
        ['the rat', 'that ate'],
        ['the cat', 'that killed'],
        ['the dog', 'that worried'],
        ['the cow with the crumpled horn', 'that tossed'],
        ['the maiden all forlorn', 'that milked'],
        ['the man all tattered and torn', 'that kissed'],
        ['the priest all shaven and shorn', 'that married'],
        ['the rooster that crowed in the morn', 'that woke'],
        ['the farmer sowing his corn', 'that kept'],
        ['the horse and the hound and the horn', 'that belonged to'],
    ],
};

sub new {
    return bless {}, shift;
}

sub recite {
    my $self = shift;
    my @rhyme;
    my @repeat;
    for my $i ( 0 .. $#{+RYMES} ) {
        my $line = sprintf("This is %s\n", RYMES->[$i]->[0]);
        my $x     = $i - 1;
        my $what  = RYMES->[$i]->[1];
        while ($x >= 0) {
            $line .= sprintf("%s %s\n", $what, $repeat[$x]->[0]);
            $what  = $repeat[$x]->[1];
            $x--;
        }
        push @repeat, RYMES->[$i];
        push @rhyme, $line;
    }
    return join("\n", @rhyme);
}

1;
