package Cipher;
use strict;
use warnings;

my $LETTERS = join('', ('a'..'z'));
my $CIPHERS = reverse $LETTERS;

sub encode {
    my $text = shift;
    $text =~ s/\W//g;
    return
        join(' ',
            grep { length > 0 }
            split(
                /(.{1,5})/,
                join('',
                    map {
                        my $i = index($LETTERS,lc $_);
                        $i >= 0 ? substr($CIPHERS, $i, 1) : $_;
                    }
                    split(
                        //,
                        $text
                    )
                )
            )
        );
}

sub decode {
    my $text = shift;
    $text =~ s/\W//g;
    return
        join('',
            map {
                my $i = index($CIPHERS,lc $_);
                $i >= 0 ? substr($LETTERS, $i, 1) : $_;
            }
            split(//, $text)
        );
}

1;
