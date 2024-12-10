function desktop-number-by-name
findindex $argv (explode-words (xprop -root _NET_DESKTOP_NAMES|choose -f '= ' 1|sd '"|,' '')) | subtract 1
end
