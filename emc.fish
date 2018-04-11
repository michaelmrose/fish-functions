# Defined in /home/michael/.config/fish/buffer/emc.fish @ line 2
function emc
	emacsclient -c $argv &
  nothing-urgent &
end
