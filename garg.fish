function garg
	set args (vals 1..-1 $argv)
	set game (rfi match "select a game: " (ls ~/if/*$args*))
  echo $game
  # gargoyle ~/if/$game
end
