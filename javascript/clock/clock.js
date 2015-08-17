'use strict';
module.exports = {
    at : function(h, m) {
        var clock = {};
        h = h ? h : 0;
        m = m ? m : 0;
        var minutes = h * 60 + m; 
        
        var addition = function(min) {
            minutes = minutes + min;
            return clock;
        };

        var substraction = function(min) {
            minutes = minutes - min;
            return clock;
        };

        var toString = function() {
            var hours = parseInt(minutes / 60);
            var mins  = minutes % 60;
            if (hours >= 24) {
                hours = hours - 24;
            }
            if (mins < 0) {
                hours = hours -1;
                mins = 60 - Math.abs(mins);
            }
            if (hours < 0) {
                hours = 24 - Math.abs(hours);
            }
            return ("00" + hours).slice(-2) + ":" + ("00" + mins).slice(-2);
        };

        var compare = function(c) {
            if (typeof c === 'object') {
                return clock.toString() == c.toString() ? true : false;
            }
            else {
                return clock.toString() == c ? true : false;
            }
        };

        clock = {
            toString : toString,
            plus     : addition,
            minus    : substraction,
            equals   : compare
        };
        return clock;
    } 
};
