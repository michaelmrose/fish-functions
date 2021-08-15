function push-link-to-page-to-clipboard
	set pid (xprop -id (xdotool getwindowfocus) | grep '_NET_WM_PID' | grep -oE '[[:digit:]]*$')
	set page (increase (qdbus org.pwmt.zathura.PID-$pid /org/pwmt/zathura org.pwmt.zathura.pagenumber))
	set document (qdbus org.pwmt.zathura.PID-$pid /org/pwmt/zathura org.pwmt.zathura.filename)
	set title (basename $document)
	echo "[[file://$document][$title]]"|clipboard
end
