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

module.exports = function() {
    var self = {};
    var usedNames = [];
    var initName = function() {
        var newName;
        do {
            n = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('').random(2).join('') +  "01234556789".split('').random(3).join(''); 
        } while (!usedNames.indexOf(newName));
        usedNames.push(newName);
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
