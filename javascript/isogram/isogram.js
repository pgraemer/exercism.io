module.exports = function(word) {
    'use strict';
    return {
        isIsogram : function() {
            return word.replace(/\W/g, '').match(/(\w).*\1+/gi) == null;
        }    
    };
};
