module.exports = function(dna) {
    var nucleotides = dna ? dna.split('') : [];
    if (dna && dna.search(/^[ATCG]/)) {
        throw "strand has unkown nucleotide";
    } 
    
    var count = function(type) {
        var h = histogram();
        return h[type] || 0;    
    };
    
    var histogram = function() {
        var result = {
            A : 0,
            T : 0,
            C : 0,
            G : 0
        };
        for(i = 0; i < nucleotides.length; ++i) {
            if(typeof result[nucleotides[i]] !== undefined) {
                ++result[nucleotides[i]];
            }
        }
        return result;
    };

    return {
        count     : count,
        histogram : histogram
    };
};
