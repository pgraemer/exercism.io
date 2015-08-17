class Words
    constructor: (@sentence) ->
    count: ->
        @sentence.toLowerCase().replace(/[^a-z0-9 ]/g, '').split(/\s+/).reduce (counts, word) ->
            counts[word] = 0 unless counts[word]? 
            counts[word]++
            counts
        , {}

module.exports = Words
