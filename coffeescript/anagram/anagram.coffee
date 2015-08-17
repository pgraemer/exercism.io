String::anagram = (candidate) ->
    return false if this.length != candidate.length
    return false if this.toLowerCase() == candidate.toLowerCase()
    return true  if (this.toLowerCase().split('').sort().join('') == candidate.toLowerCase().split('').sort().join(''))
    return false


class Anagram
    constructor: (@word) ->
    match: (candidates) ->
        (candidate.toLowerCase() for candidate in candidates when @word.anagram(candidate))
module.exports = Anagram
