function noteurlfromclipboard
	set title (rfi enter "enter title: ")
    noteit $title (xclip -o) &
    waituntilfocusedsame LilyTerm
    im fullscreen
    xdotool key Return
end
