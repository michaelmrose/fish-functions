# Defined in /home/michael/.config/fish/buffer/roficlip.fish @ line 2
function roficlip
	greenclip print|rofim -dmenu -i|xclip -selection clipboard -i > /dev/null
end
