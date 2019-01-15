# Defined in /home/michael/.config/fish/buffer/roficlip.fish @ line 1
function roficlip
	greenclip print|rofi -dmenu -i|xclip -selection clipboard -i > /dev/null
end
