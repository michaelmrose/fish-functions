# Defined in /usr/home/michael/.config/fish/buffer/set-me-above.fish @ line 2
function set-me-above
    xprop -id (xdotool getactivewindow) -set  _NET_WM_SET_ABOVE
end
