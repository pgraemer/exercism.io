module.exports = function(phone) {
    var number = "0000000000";
    phone = phone.replace(/\D/g,'');
    if (phone.match(/^1\d{10}$/)) {
        number = phone.replace(/^1/,'');
    }
    else if (phone.match(/^\d{10}$/)) {
        number = phone;
    }
    var areaCode = number.substr(0,3);
    
    var getNumber = function() {
        return number;
    };
    var getAreaCode = function() {
        return areaCode;
    };
    var toString = function() {
        var number = getNumber();
        return '(' + getAreaCode() + ') ' + number.substr(3,3) + '-' +  number.substr(6, number.length);
    };
    
    return {
        number   : getNumber,
        areaCode : getAreaCode,
        toString : toString
    };
};
