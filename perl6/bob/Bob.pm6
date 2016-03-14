class Bob {
    method hey(Str $str) {
        given $str {
            when /^\s*$/                         { 'Fine. Be that way!' }
            when /<:Upper>/ and $str.uc eq $str  { 'Whoa, chill out!' }
            when /'?'$/                          { 'Sure.' }
            default                              { 'Whatever.' }
        }
    }
}
