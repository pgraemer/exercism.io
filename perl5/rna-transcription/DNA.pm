package DNA;
use strict;
use warnings;

my $complements = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U',
};

sub to_rna {
    my $dna = shift;
    my $rna = '';
    for my $nucl (split(//,$dna)) {
        $rna .= $complements->{$nucl};
    }
    return $rna;
}

1;
