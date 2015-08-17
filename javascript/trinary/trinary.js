module.exports = function(number) {
    var decimal = 0;
    var index   = 0;
    while(number.replace(/\D/g,'').charAt(index) !== '') {
        decimal += number.charAt(index) * Math.pow(3, number.length - index - 1);
        index++;
    }
    var toDecimal = function() {
        return decimal;
    };
    return {
        toDecimal : toDecimal
    };
};
      
