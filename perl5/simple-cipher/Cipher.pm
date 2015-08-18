package Cipher;
use strict;
use warnings;
use List::MoreUtils qw(first_index);

use constant {
    DEFAULT_CIPHER => 'a'
};

sub new {
    my $class = shift;
    my $key   = shift // DEFAULT_CIPHER;
    die "ArgumentError" unless $key =~ m/^[a-z]+$/;
    return bless {
        key => $key
    }, $class;
}

my @ABC = ("a".."z");

sub _cipher_char {
    my $char  = shift;
    my $shift = shift // 0;
    my $position = first_index { $_ eq $char } @ABC;
    $position += $shift;
    $position -= @ABC if $position >= @ABC;
    return $ABC[$position];
}

sub _shift_length {
    my $char = shift // q{};
    return first_index { $_ eq lc($char) } @ABC;
}

sub _normalize {
    my $text = shift // q{};
    $text =~ s/[^a-zA-Z]//g;
    return lc $text;
}

sub encode {
    my $self = shift;
    my $text = _normalize(shift // q{});
    my $key  = $self->{key} x length $text;
    my @ciphers = split('', $key);
    my $encoded_text = join("", map {
        _cipher_char(
            $_,
            _shift_length(shift @ciphers)
        )
    } split('', $text));
    return $encoded_text;
}

sub decode {
    my $self = shift;
    my $text = _normalize(shift // q{});
    my $key  = $self->{key} x length $text;
    my @ciphers = split('', $key);
    my $decoded_text = join("", map {
        _cipher_char(
            $_,
            _shift_length(shift @ciphers) * -1
        )
    } split('', $text));
    return $decoded_text;
}

1;
