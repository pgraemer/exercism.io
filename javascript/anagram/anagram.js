var anagram = function(word) {
    this.word        = word;
    this.wordCompare = word.toLowerCase().split('').sort().join('');

    this.matches = function(candidates) {
        var anagrams = [];
        // handle things
        if (typeof candidates === 'string') {
            candidates = Array.prototype.slice.call(arguments);
        }
        for (i in candidates) {
            var candidate = candidates[i];
            if (this.is_anagram(candidate)) {
                anagrams.push(candidate);
            }
        }
        return anagrams;    
    };

    this.is_anagram = function(word) {
        // word cannot be anagram of itself
        if (word.toLowerCase() == this.word.toLowerCase()) {
            return 0;
        }
        // check anagram
        if (word.toLowerCase().split('').sort().join('') == this.wordCompare) {
            return 1;
        }
        return 0;
    };

    return this;
};

module.exports = anagram;
