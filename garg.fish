function garg
	# if exists $argv
    # set games (ls ~/if)
  # else
    # set games (ls ~/if | grep -i $argv)
  # end
  set games 1 2 3
	set game (rfi match "select a game: " $games)
  echo $game
  # gargoyle ~/if/$game
end
