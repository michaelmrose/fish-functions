function garg
	switch $argv
    case last
      set game $LAST_GAME
    case select
      switch (count $argv)
        case 1
          set games (ls ~/if)
        case '*'
          set games (ls ~/if | grep -i $argv[2..-1])
      end
  end
  if test (count $games) -gt 1
    set game (rfi match "select a game: " $games)
  else
    set game $games
  end
  if exists $game
    set -U LAST_GAME $game
  end
  gargoyle ~/if/$game
end
