'use strict';
var lookup = {};
var convert = function(text, points) {
    text.split('').forEach(function(l) {
        lookup[l.toUpperCase()] = points;
    });
};
convert("AEIOULNRST",   1);
convert("DG",           2);
convert("BCMP",         3);
convert("FHVWY",        4);
convert("K",            5);
convert("JX",           8);
convert("QZ",           10);

module.exports = function(word) {
    if (typeof word === 'undefined' || word === null) {
        return 0;
    }
    var score = 0;
    word.split("").forEach(function(letter) {
        score = score + lookup[letter.toUpperCase()];
    });
    return score;
};
