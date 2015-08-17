module.exports = function() {
    'use strict';
    var forNumber = function(number) {
        if (!number || number < 2) {
            return [];
        }
        var factors = [];
        for (var i = 2; i <= number; i++){
            while (number % i === 0){
                factors.push(i);
                number /= i;
            }
        }
        return factors;
    };
    
    return {
        for : forNumber
    };
}(); 
