package RobotName;
use strict;
use warnings;

sub new {
    return bless {
        name => _generate_name(),
    }, shift;
};

sub _generate_name {
    return
        # better use String::Random
        ('A'..'Z')[int(rand(26))] .
        ('A'..'Z')[int(rand(26))] .
        ('0'..'9')[int(rand(9))]  .
        ('0'..'9')[int(rand(9))]  .
        ('0'..'9')[int(rand(9))];

}

sub name {
    return shift->{name};
}

sub reset_name {
    shift->{name} = _generate_name();
}
1;
