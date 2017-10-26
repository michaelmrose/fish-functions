# Defined in /home/michael/.config/fish/buffer/active-playerctl.fish @ line 2
function active-playerctl
	set players (playerctl -l)
  if not exists $players
    ssh desktop echo hi
    return 0
  end
  for player in $players
    if [ (playerctl -p $player status) = Playing ]
      set active $player
    end
  end
  if not exists $active
    set active $lastPlaying
  end
  playerctl -p $active $argv
end
