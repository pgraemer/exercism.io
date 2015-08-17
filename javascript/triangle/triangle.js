module.exports = function(a,b,c) {
    var validateSides = function() {
        [a,b,c].forEach(function(side) {
            if (side <= 0) {
                throw 'side cannot be negative or null';
            }
        }); 
        if (!isEqually()) {
            throw 'inequallity';
        }
    };

    var isEqually = function() {
        return (a < b + c) && (b < a + c) && (c < a + b);
    };

    var kind = function() {
        var r    = {};
        [a,b,c].forEach(function(side) {
            if (typeof r[side] == 'undefined') {
                r[side] = 0;
            }
            r[side]++;
        });
        var length = Object.keys(r).length;
        if (length === 3) {
            return 'scalene';
        }
        else if (length === 2) {
            return 'isosceles';
        }
        else if (length === 1) {
            return 'equilateral';
        }
    }();

    var getKind = function() {
        validateSides();
        return kind;
    };

    return {
        kind : getKind 
    };
};
      
