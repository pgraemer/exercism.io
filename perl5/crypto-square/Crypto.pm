package Crypto;
use strict;
use warnings;
use POSIX;
use Data::Printer colored => 1;
use namespace::clean;

sub new {
    my $class  = shift;
    my $string = shift;
    return (bless {}, $class)->init($string);
}

sub init {
    my $self  = shift;
    my $plain = shift;
    ($self->{normalized_plaintext} = lc $plain) =~ s/\W//g;
    my $blocks = $self->{block_size} = ceil(sqrt(length $self->{normalized_plaintext}));
    ($self->{blocks_plaintext}) = [$self->{normalized_plaintext} =~ m/.{1,$blocks}/g];
    my @ciphers;
    for (my $i = 0; $i < $blocks; $i++) {
        for my $block (@{$self->{blocks_plaintext}}) {
            $ciphers[$i] .= length $block > $i ? substr($block, $i, 1) : '';
        }
    }
    $self->{ciphertext} = join('', @ciphers);
    $self->{normalized_ciphertext} = join(' ', @ciphers);
    return $self;
}

sub normalize_plaintext { shift->{normalized_plaintext} }
sub plaintext_segments { shift->{blocks_plaintext} }
sub normalize_ciphertext { shift->{normalized_ciphertext} }
sub ciphertext { shift->{ciphertext} }
sub size { shift->{block_size} }

1;
