# Defined in /home/michael/.config/fish/buffer/pickclips.fish @ line 1
function pickclips
	greenclip print | rofi -dmenu | head -c -1 | clipboard
end
