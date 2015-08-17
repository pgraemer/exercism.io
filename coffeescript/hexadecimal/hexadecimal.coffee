class Hexadecimal
    definition:
        '0' : 0
        '1' : 1
        '2' : 2
        '3' : 3
        '4' : 4
        '5' : 5
        '6' : 6
        '7' : 7
        '8' : 8
        '9' : 9
        'A' : 10
        'B' : 11
        'C' : 12
        'D' : 13
        'E' : 14
        'F' : 15
    constructor: (@hex) ->
        @hex = @hex.toUpperCase().split('')
    isHex: ->
        return false if @hex.length <= 0
        @hex.every (ch) => @definition[ch]?
    toDecimal: ->
        return 0 if !@isHex()
        ((@hex.map (c) => @definition[c]).reverse().map (a,i) ->
            a * 16**i).reduce (b,c) ->  b + c

module.exports = Hexadecimal