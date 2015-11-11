module.exports = function(dna) {
    var complements = {
        G : 'C',
        C : 'G',
        T : 'A',
        A : 'U',
    };
    return dna.split('').map(function(nucl) {
        return complements[nucl] || '';
    }).join('');
};
