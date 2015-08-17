class Trinary
    constructor: (@number) ->
    toDecimal: ->
        return 0 if (isNaN(parseInt(@number)))
        (@number.replace(/\D/g, '').split('').map (num) -> parseInt(num)).reverse().reduce (decimal, base, power) ->
            decimal += Math.pow(3,power) * base

module.exports = Trinary
