module.exports = function(sentence) {
    'use strict';
    var isPangram = (sentence.match(/([a-z])(?!.*\1)/ig) || []).length == 26 ? true : false;
    return {
        isPangram: function() { return isPangram  }
    };
};
