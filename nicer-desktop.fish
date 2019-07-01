# Defined in /home/michael/.config/fish/buffer/nicer-desktop.fish @ line 2
function nicer-desktop
	pgrep 'Xorg|i3|emacs|pulseaudio'|each nicer
end
