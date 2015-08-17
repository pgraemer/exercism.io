package Beer;
use strict;
use warnings;

my $template = do { local $/; <DATA> };
my @verse_templates = split(/\n\n/,$template);

sub get_verse_template {
    my $verse = shift;
    return $verse_templates[0] if ($verse > 2);
    return $verse_templates[1] if ($verse > 1);
    return $verse_templates[2] if ($verse > 0);
    return $verse_templates[3];
}

sub verse {
    my $verse = shift;
    {
        no warnings;
        return sprintf(get_verse_template($verse)."\n", $verse, $verse - 1);
    }
}

sub sing {
    my $from = shift;
    my $to = shift // 0;
    my $string = "";
    for (; $from >= $to; $from--) {
        $string .= verse($from)."\n";
    }
    return $string;
}

1;

__DATA__
%1$s bottles of beer on the wall, %1$s bottles of beer.
Take one down and pass it around, %2$s bottles of beer on the wall.

2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.

1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.

No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.

