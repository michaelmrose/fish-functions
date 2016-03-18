function garg
	switch $argv[1]
    case last
      gargoyle ~/if/$LAST_GAME
      return 0
    case select
      switch (count $argv)
        case 1
          set games (ls ~/if)
        case '*'
          set games (ls ~/if | grep -i $argv[2..-1])
      end
  end
  echo game is $game and games is $games
  if test (count $games) -gt 1
    set game (rfi match "select a game: " $games)
  else
    set game $games
  end
  echo game is $game and games is $games
  if exists $game
    set -U LAST_GAME $game
  end
  gargoyle ~/if/$game
end
