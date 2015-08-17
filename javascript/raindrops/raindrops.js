module.exports = function() {
    var raindrops = [
        3, 'Pling',
        5, 'Plang',
        7, 'Plong' 
    ];
    var convert = function(number) {
        var drops = [];
        for (var i = 0; i <= 4; i += 2) {
            if (number % raindrops[i] === 0) {
                drops.push(raindrops[i+1]);
            }
        } 
        return drops.length > 0 ? drops.join('') : number.toString();
    };
    return {
        convert : convert    
    };
};
