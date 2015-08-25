class Prime
    @nth: (number) ->
        throw 'Prime is not possible' unless number >= 1
        primeCandidate = 2
        primes         = []
        while primes.length < number
            if (!primes.some (prime) -> (primeCandidate % prime is 0))
                primes.push(primeCandidate)
            primeCandidate += 1
        primes[number - 1]


module.exports = Prime
