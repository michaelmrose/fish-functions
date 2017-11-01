# Defined in /home/michael/.config/fish/buffer/switch-to.fish @ line 1
function switch-to
	switch $argv
    case laptop
      ssh laptop "set -x DISPLAY :0; xdotool key F12"
    case desktop
      xdotool key F12
  end
end
