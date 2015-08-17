module.exports = function(seconds) {
    var days_on = {
        'earth'   : 1,
        'mercury' : 0.2408467,
        'venus'   : 0.61519726,
        'mars'    : 1.8808158,
        'jupiter' : 11.862615,
        'saturn'  : 29.447498,
        'uranus'  : 84.016846,
        'neptune' : 164.79132 
    };
    
    var onPlanet = function(planet) {
        return +(seconds / 60 / 60 / 24 / ( days_on[planet] * 365.25)).toFixed(2);
    };

    var onEarth   = function() { return onPlanet('earth')   };
    var onMercury = function() { return onPlanet('mercury') };
    var onVenus   = function() { return onPlanet('venus')   };
    var onMars    = function() { return onPlanet('mars')    };
    var onJupiter = function() { return onPlanet('jupiter') };
    var onSaturn  = function() { return onPlanet('saturn')  };
    var onUranus  = function() { return onPlanet('uranus')  };
    var onNeptune = function() { return onPlanet('neptune') };
    
    return {
        seconds   : seconds,
        onEarth   : onEarth,
        onMercury : onMercury,
        onVenus   : onVenus,
        onMars    : onMars,
        onJupiter : onJupiter,
        onSaturn  : onSaturn,
        onUranus  : onUranus,
        onNeptune : onNeptune
    };
};
