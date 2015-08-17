module.exports = function() {
    var square = function(field) {
        return Math.pow(2, (field - 1));
    };
    var total  = function() {
        return square(65) - 1;
    };
    
    return {
        square : square,
        total  : total
    };
};
