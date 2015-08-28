// somehow this should be within a other module
// without the use of protoype
Array.prototype.random = function(i) {
    var random = [];
    for(; i > 0;) {
        random.push(this[Math.random() * this.length | 0]);
        i--;
    }
    return random;
};

var usedNames = {};
module.exports = function() {
    var self = {};
    var initName = function() {
        var newName;
        do {
            newName = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('').random(2).join('') +  "01234556789".split('').random(3).join(''); 
        } while (typeof usedNames[newName] !== 'undefined');
        usedNames[newName] = true;
        return newName;
    };
    var name = initName();

    var reset = function() {
        self.name = initName();
    };

    self = {
        name  : name,
        reset : reset
    };

    return self;
};
