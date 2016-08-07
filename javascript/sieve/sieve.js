module.exports = function(range) {
    var primes  = [];
    var max     = Math.sqrt(range);
    var current = 0;
  
    for (i = 2; i <= range; i++) {
        primes.push(i);
    }
  
    while (primes[current] <= max) {
        primes = primes.filter(function(n) {
            return (n == primes[current] || n % primes[current] != 0);
        });
        current++;
    }

    return {
        primes : primes
    };
};

