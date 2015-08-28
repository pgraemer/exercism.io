module.exports = function(num) {
    'use strict';
    var letters = [
        1000, 'M', 900, 'CM', 500, 'D', 400, 'CD', 100, 'C', 90, 'XC',
          50, 'L',  40, 'XL',  10, 'X',   9, 'IX',   5, 'V',  4, 'IV', 1, 'I',
    ];
    var roman = '';
    for (var iter = 0; num > 0 && iter < letters.length; iter += 2) {
        while (num >= letters[iter]) {
            num   -= letters[iter];
            roman += letters[iter + 1];
        }
    }    
    return roman; 
};
