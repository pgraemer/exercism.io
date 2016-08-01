class Leap {
    multi method is_leap($y) {
        $y %% 4 and not $y %% 100 or $y %% 400
    }
}

