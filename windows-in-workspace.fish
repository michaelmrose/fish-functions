function windows-in-workspace
    explode-words (xdotool search --all --desktop (desktop-number-by-name $argv))
end
