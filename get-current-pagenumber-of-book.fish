function get-current-pagenumber-of-book
set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
qdbus org.pwmt.zathura.PID-$pid /org/pwmt/zathura org.pwmt.zathura.pagenumber

end
