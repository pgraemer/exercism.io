module.exports = function() {
    var sing = function(from, to) {
        to = to || 0;
        var str = "";
        for(; from >= to;) {
            str += verse(from) + "\n";
            from--;
        }
        return str.substring(0, str.length - 1);
    };
    var refill = function(max) {
        max = max || 99
        return "No more bottles of beer on the wall, no more bottles of beer.\n" +
               "Go to the store and buy some more, " + max + " bottles of beer on the wall.\n";
    };
    var verse = function(bottles) {
        if (bottles <= 0) {
            return refill();
        }
        var lastingBottles = bottles - 1;
        var pBottle        = bottles <= 1 ? " bottle" : " bottles";
        var pLastingBottle = lastingBottles === 1 ? " bottle" : " bottles";
        
        return  bottles + pBottle + " of beer on the wall, " + bottles + pBottle + " of beer.\n" +
                "Take " + (bottles === 1 ? "it" : "one") +" down and pass it around, " + (lastingBottles === 0 ? "no more" : bottles - 1) + 
                pLastingBottle + " of beer on the wall.\n";
    };
    return {
        sing  : sing,
        verse : verse
    };
}();
