function get-current-pagenumber-of-book
set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')

end
