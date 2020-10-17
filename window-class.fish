# Defined in /usr/home/michael/.config/fish/buffer/window-class.fish @ line 1
function window-class
    xprop WM_CLASS -id (xdotool getactivewindow)|choose 3|choose -f \" 0
end
