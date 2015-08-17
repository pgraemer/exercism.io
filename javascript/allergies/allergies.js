module.exports = function(ascore) {
    var candidates = [
        'eggs',
        'peanuts',
        'shellfish',
        'strawberries',
        'tomatoes',
        'chocolate',
        'pollen',
        'cats'
    ];

    var allergies = [];
    var mostAllergic = function(score) {
        var i = candidates.length;
        while(score - Math.pow(2,i) < 0) {
            i = i-1;
        }
        return i;
    };
    
    var rest = ascore;
    while(rest > 0) {
        var index = mostAllergic(rest);
        if (typeof candidates[index] !== 'undefined') {
            allergies.unshift(candidates[index]);
        }
        rest = rest - Math.pow(2,index);
    }

    var list = function() {
        return allergies;
    };

    var allergicTo = function(type) {
        // array.contains would be awesome here
        allergic = false;
        allergies.forEach(function(al) {
            if (al === type) {
                allergic = true;
            }
        });
        return allergic;
    };

    return {
        list       : list,
        allergicTo : allergicTo
    };
};
