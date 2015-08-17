var BUFFER_EMPTY_EXEPTION = function() {};
var BUFFER_FULL_EXEPTION  = function() {};

var circularBuffer = function(limit) {
    var pointerWrite = 0;
    var pointerRead  = 0;
    limit            = limit || 0;
    var buffer       = new Array(limit);

    var incrementPointer = function(pointer) {
        return (pointer + 1) % limit;
    };

    var read = function() {
        if (typeof buffer[pointerRead] === 'undefined') {
            throw BUFFER_EMPTY_EXEPTION;
        }
        var value = buffer[pointerRead];
        buffer[pointerRead] = undefined;
        pointerRead = incrementPointer(pointerRead);
        return value;
    };

    var write = function(value, options) {
        if (typeof buffer[pointerWrite] !== 'undefined' && !options.force) {
            throw BUFFER_FULL_EXEPTION;
        }
        if (value && typeof value !== 'undefined') {
            buffer[pointerWrite] = value;
            pointerWrite = incrementPointer(pointerWrite);
        }
        return;
    };

    var forceWrite = function(value) { 
        write(value, { force : true });
        pointerRead = incrementPointer(pointerRead);
    };

    var clear = function() {
        pointerWrite = 0;
        pointerRead  = 0;
        buffer = [];
    };

    return {
        write      : write,
        forceWrite : forceWrite,
        read       : read,
        clear      : clear
    };

};

module.exports = function() {
    return {
        circularBuffer       : circularBuffer,
        bufferEmptyException : BUFFER_EMPTY_EXEPTION,
        bufferFullException  : BUFFER_FULL_EXEPTION
    };
}();
