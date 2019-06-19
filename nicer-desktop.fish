# Defined in /home/michael/.config/fish/buffer/nicer-desktop.fish @ line 2
function nicer-desktop
	for p in (pgrep 'Xorg|i3|emacs')
        nicer $p
    end
end
