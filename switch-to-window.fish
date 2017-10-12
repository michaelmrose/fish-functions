# Defined in /home/michael/.config/fish/buffer/switch-to-window.fish @ line 1
function switch-to-window
	rofi -show window;
  and signal-i3blocks pages
end
