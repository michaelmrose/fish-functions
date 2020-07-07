# Defined in /home/michael/.config/fish/buffer/window-width.fish @ line 2
function window-width
    xwininfo -stats -id (xdotool getactivewindow)|grep Width|choose 1
end
