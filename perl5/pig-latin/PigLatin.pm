package PigLatin;
use strict;
use warnings;

sub translate_word {
    my $word = shift;
    return "$2$1ay" if ($word =~ m{(.*?[^q])(u.*)}i);
    return $word."ay" if ($word =~ m{^y[^aeiou]}i);
    if ($word =~ m/(.*?)([aeoi].*)/i) {
        return $word."ay" if ("$1ay" eq $word);
        return "$2$1ay";
    }
    return $word;
}

sub translate {
    my $input = shift;
    return join(" ", map { translate_word($_) } split(" ", $input));
}

1;
