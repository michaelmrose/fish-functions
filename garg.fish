function garg
	set game (rfi match "select a game: " (ls ~/if))
  gargoyle ~/if/$game
end
