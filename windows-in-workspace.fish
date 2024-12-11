function windows-in-workspace
     xdotool search --all --desktop (desktop-number-by-name $argv)
end
