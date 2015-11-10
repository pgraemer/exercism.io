var words = function(phrase) {
    var seen_words = {};
    phrase.trim().split(/\s+/).forEach(function(word) {
        seen_words[word] = (parseInt(seen_words[word]) || 0) + 1;
    });
    return seen_words;
};

module.exports = words;
