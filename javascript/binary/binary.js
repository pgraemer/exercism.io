module.exports = function(binary) {
    'use strict';
    var bits = binary.replace(/[^1|0]/g,'').split('');
    
    var toDecimal = function() {
        var decimal = 0;
        var exp     = bits.length - 1;
        bits.forEach(function(bit) {
            decimal += bit * Math.pow(2, exp--);
        });
        return decimal;
    };

    return {
        toDecimal : toDecimal
    };
};
