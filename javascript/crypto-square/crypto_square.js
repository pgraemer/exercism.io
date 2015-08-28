module.exports = function(string) {
    var normalizedString = string.replace(/\W/g,'').toLowerCase();
    var blockSize        = Math.ceil(Math.sqrt(normalizedString.length));
    var blockRegExp      = new RegExp(".{1,"+blockSize+"}","g");
    var blocksPlain      = normalizedString.match(blockRegExp);
    var cipher           = '';

    for(var i = 0; i <= blockSize; i++) {
        blocksPlain.forEach(function(block) {
            cipher += block.charAt(i);
        });
    }

    var normalizedCipher = cipher.match(blockRegExp).join(' ');


    var normalizedPlaintext = function() {
        return normalizedString;
    };

    var size = function() {
        return blockSize;
    };

    var plaintextSegments = function() {
        return blocksPlain;
    };

    var ciphertext = function() {
        return cipher; 
    };

    var normalizeCiphertext = function() {
        return normalizedCipher;
    };
    
    return {
        normalizePlaintext  : normalizedPlaintext,
        size                : size,
        plaintextSegments   : plaintextSegments,
        ciphertext          : ciphertext,
        normalizeCiphertext : normalizeCiphertext
    };
};
