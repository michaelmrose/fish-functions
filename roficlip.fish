# Defined in /home/michael/.config/fish/buffer/roficlip.fish @ line 2
function roficlip
	rofi -m -1 -modi "clipboard:greenclip print" -show clipboard -run-command '{cmd}'
end
