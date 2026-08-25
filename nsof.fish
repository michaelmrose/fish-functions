function nsof
    rg '\(ns' $argv | head -1 | choose 1
end
