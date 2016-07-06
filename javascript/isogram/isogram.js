module.exports = function(word) {
    'use strict';
    return {
        isIsogram : function() {
            return word.toLowerCase().replace(/\W/g, '').match(/(\w).*\1+/g) == null;
        }    
    };
};
