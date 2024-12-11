function windows-in-workspace
     xdotool search  --desktop (desktop-number-by-name $argv) ''
end
