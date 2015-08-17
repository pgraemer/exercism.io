package Bob;

sub hey {
    return 'Fine. Be that way!' if ($_[0] =~ m/^\s*$/);
    return 'Whoa, chill out!' if is_forcefully($_[0]);
    return 'Sure.' if is_question($_[0]);
    return 'Whatever.';
}

sub is_question {
    return 1 if ($_[0] =~ m/\?$/);
    return 0;
}

sub is_forcefully {
    return 1 if ($_[0] =~ m/\!/ && ($_[0] eq uc($_[0])));
    return 1 if ($_[0] eq uc($_[0]) && $_[0] !~ m/\d/);
    return 0;
}



1;
