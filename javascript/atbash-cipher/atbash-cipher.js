module.exports = function () {
    'use strict';
    var letters = 'abcdefghijklmnopqrstuvwxyz'.split('');
    var ciphers = letters.slice(0).reverse();

    var encodeLetter = function (letter) {
        var i = letters.indexOf(letter.toLowerCase());
        return parseInt(letter) ? letter : ciphers[i] || ''; 
    };

    var encode = function (text) {
        var str = '';
        text.split('').forEach(function (letter) {
            str += encodeLetter(letter);
        });
        return str.match(new RegExp('.{1,5}', 'g')).join(' ');
    };

    return {
        encode : encode
    };
}();
