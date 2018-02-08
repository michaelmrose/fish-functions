# Defined in /home/michael/.config/fish/buffer/pickclips.fish @ line 2
function pickclips
	greenclip print | rofi -dmenu -p "clipboard: " | head -c -1 | clipboard
end
