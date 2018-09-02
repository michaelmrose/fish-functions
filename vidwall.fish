# Defined in /home/michael/.config/fish/buffer/videowallpaper.fish @ line 1
function vidwall
	xwinwrap -ov -ni -fs -- mpv -wid WID --keepaspect=no --loop $argv
end
