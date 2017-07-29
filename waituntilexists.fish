# Defined in /home/michael/.config/fish/buffer/waituntilexists.fish @ line 1
function waituntilexists
	eval "$argv &"
  while not pgrep $argv
  end
end
