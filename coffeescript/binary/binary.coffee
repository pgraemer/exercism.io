class Binary
    constructor: (@binary) ->
        @decimal = 0
        bits     = @binary.replace(/[^1|0]/g,'').split('')
        exp      = bits.length - 1
        for bit in bits
            @decimal += bit * 2**exp--
    toDecimal: ->
        @decimal

module.exports = Binary

