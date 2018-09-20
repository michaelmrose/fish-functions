# Defined in /home/michael/.config/fish/buffer/restart-pulseaudio.fish @ line 1
function restart-pulseaudio
	killall pasystray
  pulseaudio --kill
  pulseaudio --start &
  pasystray &
end
