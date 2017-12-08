# Defined in /home/michael/.config/fish/buffer/nemoautojump.fish @ line 1
function nemoautojump
	nemo (autojump (echo '' | rofi -dmenu -p "jump to...: " -m (display-number)))
end
