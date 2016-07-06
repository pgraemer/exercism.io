module.exports = function(word) {
    'use strict';
    return {
        isIsogram : function() {
            var letters = {}; 
            word.toLowerCase().replace(/\W/g, '').split('').forEach(function(character) {
                letters[character] = (parseInt(letters[character]) || 0) + 1;
            });
            // Object.values woud be awesome here :(
            return Object.keys(letters).map(function(k){ return letters[k] }).filter(function(v) { return v > 1;}).length == 0;
        }    
    };
};
