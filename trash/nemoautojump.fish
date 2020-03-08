# Defined in /home/michael/.config/fish/buffer/nemoautojump.fish @ line 2
function nemoautojump
	nemo --no-desktop (autojump (echo '' | rofi -dmenu -p "jump to...: " -m (display-number))) &
end
