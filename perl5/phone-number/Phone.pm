package Phone;
use strict;
use warnings;

sub new {
    my ( $class, $phone ) = @_;
    my $self = {
        phone  => $phone,
        number => '0'x10,
    };
    return (bless $self, $class)->init;
}

sub phone { shift->{phone} }
sub number { shift->{number} }
sub area_code { shift->{area} }

sub init {
    my $self   = shift;
    my $number = $self->number;
    my $phone  = $self->phone;
    # cleanup
    $phone =~ s/\D//g;
    # validation
    if ($phone =~ m/^1\d{10}$/) {
        ($number = $phone) =~ s/^1//;
    }
    elsif ($phone =~ m/^\d{10}$/) {
        $number = $phone;
    }

    $self->{number} = $number;
    $self->{area}   = substr($number,0,3);

    return $self;
}

sub pretty {
    my $self = shift;
    my $number = $self->number;
    return
        sprintf(
            '(%s) %s-%s',
            $self->area_code,
            substr($number,3,3),
            substr($number, 6, length $number)
        );
}


1;
