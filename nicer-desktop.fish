# Defined in /home/michael/.config/fish/buffer/nicer-desktop.fish @ line 1
function nicer-desktop
	for p in (pgrep 'Xorg|i3')
        nicer $p
    end
end
