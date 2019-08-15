# Defined in /home/michael/.config/fish/buffer/floating_term_focus_focus-dist.fish @ line 86
function noteurlfromclipboard
	set title (rfi enter "enter title: ")
    noteit $title (xclip -o) &
    waituntilfocusedsame LilyTerm
    i3 fullscreen
    xdotool key Return
end
