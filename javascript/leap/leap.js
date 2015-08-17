module.exports = function(year) {
    if (year % 100 == 0) {
        return (year % 400 == 0) ? true : false;
    }
    return (year % 4 == 0) ? true : false
};
