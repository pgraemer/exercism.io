exports.compute = function(dna1, dna2) {
    var words_a = dna1.split('');
    var words_b = dna2.split('');
    var distance = 0;
    if (words_a.length !== words_b.length) {
        throw new Error("DNA strands must be of equal length.");
    }
    for (word_index in words_a) {
        if (words_a[word_index] !== words_b[word_index]) {
            distance += 1;
        }
    }
    return distance;
};