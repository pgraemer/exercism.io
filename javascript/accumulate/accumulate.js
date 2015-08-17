module.exports = function(elements, callback) {
    'use strict;'
    var e = [];
    elements.forEach(function(element) {
        e.push(callback(element));
    });
    return e;
};
