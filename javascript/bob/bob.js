var Bob = function() {};

Bob.prototype.hey = function(input) {
    if (input.match(/^\s*$/)) {
        return 'Fine. Be that way!';
    }
    else if (input.toUpperCase() === input && input.toLowerCase() !== input) { 
        return 'Whoa, chill out!';
    }
    else if (input.match(/\?$/)) {
        return 'Sure.';
    }
    else {
        return 'Whatever.';
    }
};

module.exports = Bob;
