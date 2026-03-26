function lockme
    symbol-lock off
    if laptop-available
        lock-laptop
    end
    betterlockscreen -l
    if laptop-available
        unlock-laptop
    end
    symbol-lock on
end
