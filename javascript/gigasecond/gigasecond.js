module.exports = function(date) {
    var gigaDate = new Date(new Date(date.valueOf() + 1e12).toDateString());
    return {
        date : function() {
            return gigaDate;
        }
    };

};
