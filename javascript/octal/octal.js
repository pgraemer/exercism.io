'use strict';

module.exports = function(number) {
    var toDecimal = function() {
        var decimal  = 0;
        var exponent = number.length - 1;
        number.split('').forEach(function(num, i) {
            decimal += num * Math.pow(8, exponent - i);
        });
        return decimal; 
    };
    if (number.search(/[\D|8]/) > -1) {
        toDecimal = function() { return 0 }; 
    }
    return {
        toDecimal: toDecimal 
    };
};
