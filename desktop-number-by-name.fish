function desktop-number-by-name
findindex i (explode-words (xprop -root _NET_DESKTOP_NAMES|choose -f '= ' 1|sd '"|,' '')) | subtract 1
end
