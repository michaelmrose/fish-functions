function garg
	switch $argv[1]
    case last
      gargoyle ~/if/$LAST_GAME
      return 0
    case select
      switch (count $argv)
        case 1
          set games (findall ~/if z5)
        case '*'
          set games (findall ~/if z5 | grep -i $argv[2..-1])
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
end
