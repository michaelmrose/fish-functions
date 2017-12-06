# Defined in /home/michael/.config/fish/buffer/apctl_lanplayerctl.fish @ line 31
function lanplayerctl
	if pgrep clementine
    playerctl -p clementine $argv
  else
    d playerctl -p clementine $argv
  end
end
