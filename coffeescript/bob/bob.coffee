class Bob
    hey : (text) =>
        switch
            when text.match(/^\s*$/) then 'Fine. Be that way!'
            when text.toUpperCase() == text && text.toLowerCase() != text then 'Whoa, chill out!'
            when text.match(/\?$/) then 'Sure.'
            else 'Whatever.'

module.exports = Bob
