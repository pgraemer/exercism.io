module.exports = function(old) {
    var data = {};
    Object.keys(old).forEach(function(key) {
        old[key].forEach(function(letter) {
            letter = letter.toLowerCase();
            data[letter] = parseInt(key);
        });
    });
    return data;
};
