function get-number-of-current-workspace
    # findindex (get-focused-workspace) (get-workspaces-on-focused-display)
    xprop -root _NET_CURRENT_DESKTOP | choose 2
end
