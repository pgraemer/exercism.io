module.exports = function () {
    'use strict';
    var keep = function (elements, callback) {
        var elem = [];
        elements.forEach(function (e) {
            if (callback(e)) {
                elem.push(e);
            }
        });
        return elem;
    };
    var discard = function (elements, callback) {
        var elem = [];
        elements.forEach(function (e) {
            if (!callback(e)) {
                elem.push(e);
            }
        });
        return elem;
    };
    return {
        keep : keep,
        discard : discard
    };
}();
