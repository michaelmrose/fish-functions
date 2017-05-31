function smarter-ctl
	# set players (playerctl -l)
  # for player in $players
  #   if [ (playerctl -p $player status) = Playing ]
  #     set active $player
  #   end
  # end
  # set active (alt (filter-with-expr is-playing (playerctl -l)) $lastPlaying)
  set playing (filter-with-expr is-playing (playerctl -l))
  set active (alt $playing $lastPlaying)
  echo playing is $playing
  echo active is $active
  # if not exists $active
  #   set active $lastPlaying
  # end
    echo playerctl -p $active $argv
    # set -U lastPlaying $active
    signal-i3blocks playing
end
