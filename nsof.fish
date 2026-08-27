function nsof
    rg '\(ns' $argv | head -1 | choose 0 -f "\(|\)" 0
end
