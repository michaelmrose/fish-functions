function garg
	switch (count $argv)
    case 0
      set games (ls ~/if)
    case 1
      set games (ls ~/if | grep -i $argv)
  end
	set game (rfi match "select a game: " $games)
  echo $game
  # gargoyle ~/if/$game
end
