class Triangle
    constructor: (@sites...) ->
        throw "negative sides are illegal" if @sites.some (site) -> site <= 0
        throw "violation of triangle inequality" unless @is_equally.apply(this, @sites)
    is_equally: (a, b, c) ->
        (a < b + c) && (b < c + a) && (c < a + b)
    kind: ->
        numberEqualSites = @sites.reduce (counts, site) ->
            counts[site]++
            counts
        , {}
        kind = switch (Object.keys numberEqualSites).length
            when 1 then "equilateral"
            when 2 then "isosceles"
            when 3 then "scalene"
        kind

module.exports = Triangle
